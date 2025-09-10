class JobOffersController < ApplicationController
  before_action :set_job_offer, only: %i[create show edit update destroy]

  # GET /job_offers or /job_offers.json
  def index
    @job_offers = JobOffer.all
  end

  # GET /job_offers/1 or /job_offers/1.json
  def show; end

  # GET /job_offers/new
  def new
    @job_offer = JobOffer.new
    @job_offer.build_company
  end

  # GET /job_offers/1/edit
  def edit; end

  # POST /job_offers or /job_offers.json
  def create
    respond_to do |format|
      if @job_offer.save
        format.html { redirect_to @job_offer, notice: 'Job offer was successfully created.' }
        format.json { render :show, status: :created, location: @job_offer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_offers/1 or /job_offers/1.json
  def update
    respond_to do |format|
      if @job_offer.update(job_offer_params)
        format.html do
          redirect_to @job_offer, notice: 'Job offer was successfully updated.', status: :see_other
        end
        format.json { render :show, status: :ok, location: @job_offer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_offers/1 or /job_offers/1.json
  def destroy
    @job_offer.destroy!

    respond_to do |format|
      format.html do
        redirect_to job_offers_path, notice: 'Job offer was successfully destroyed.',
                                     status: :see_other
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_job_offer
    @job_offer = if action_name == 'create'
                   JobOffer.new(
                     job_offer_params.except(
                       job_offer_params[:company_id].present? ? :company_attributes : :company_id
                     )
                   )
                 else
                   JobOffer.find(params.expect(:id))
                 end
  end

  # Only allow a list of trusted parameters through.
  def job_offer_params
    params.expect(
      job_offer: [
        :company_id, :title, :description, :notes, {
          company_attributes: %i[id name address notes website phone email],
        },
      ]
    )
  end
end
