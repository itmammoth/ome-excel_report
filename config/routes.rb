ExcelReport::Application.routes.draw do
  resources :sales

  resources :products

  controller :report do
    get 'report' => 'report#index', as: :report
    get 'report/output', as: :output_report
  end
end
