class JobLinksController < ApplicationController
  before_action :set_parent
  before_action :set_job_link, only: %i[show edit update destroy]

  def index
    @job_links = @job_offer.job_links
  end

  def show; end

  def new
    @job_link = @job_offer.job_links.build
  end

  def edit; end

  def create
    @job_link = @job_offer.job_links.build(job_link_params)

    respond_to do |format|
      if @job_link.save
        format.html do
          redirect_to job_offer_path(@job_offer), notice: 'Job link was successfully created.'
        end
        format.json { render :show, status: :created, location: @job_link }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @job_link.update(job_link_params)
        format.html do
          redirect_to job_offer_path(@job_offer), notice: 'Job link was successfully updated.',
                                                  status: :see_other
        end
        format.json { render :show, status: :ok, location: @job_link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job_link.destroy!

    respond_to do |format|
      format.html do
        redirect_to job_offer_path(@job_offer),
                    notice: 'Job link was successfully destroyed.',
                    status: :see_other
      end
      format.json { head :no_content }
    end
  end

  private

  def set_parent
    @job_offer = JobOffer.find(params.expect(:job_offer_id))
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_job_link
    @job_link = @job_offer.job_links.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def job_link_params
    params.expect(job_link: %i[url title])
  end
end
