class ResersController < ApplicationController
  before_action :set_reser, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 
  # GET /resers
  # GET /resers.json
  def index
    @resers = Reser.all
  end
  # email

  def new
    @reser = Contact.new
  end

  def create
    @reser = Contact.new(params[:contact])

    if @reser.valid?
      ContactMailer.contact_message(params[:reser]).deliver
      flash[:notice] = 'Mensagem enviado com sucesso'
      redirect_to :action => 'new'
      return  
    end

    render :action => 'new'
  end


  # GET /resers/1
  # GET /resers/1.json
  def show
  end

  # GET /resers/new
  def new
    @reser = Reser.new
  end

  # GET /resers/1/edit
  def edit
  end

  # POST /resers
  # POST /resers.json
  def create
    @reser = Reser.new(reser_params)

    respond_to do |format|
      if @reser.save
        EmailreservaMailer.email_reserva(@reser).deliver
        format.html { redirect_to @reser, notice: 'Reser was successfully created.' }
        format.json { render :show, status: :created, location: @reser }
      else
        format.html { render :new }
        format.json { render json: @reser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resers/1
  # PATCH/PUT /resers/1.json
  def update
    respond_to do |format|
      if @reser.update(reser_params)
        format.html { redirect_to @reser, notice: 'Reser was successfully updated.' }
        format.json { render :show, status: :ok, location: @reser }
      else
        format.html { render :edit }
        format.json { render json: @reser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resers/1
  # DELETE /resers/1.json
  def destroy
    @reser.destroy
    respond_to do |format|
      format.html { redirect_to resers_url, notice: 'Reser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reser
      @reser = Reser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reser_params
      params.require(:reser).permit(:fname, :lnome, :email, :phone, :address)
    end
end
