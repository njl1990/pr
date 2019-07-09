from django.urls import path
from . import views

urlpatterns = [
    path('', views.Index, name='Index'),
	path('hstr-yy1', views.HsytYY1, name='HsytYY1'),
	path('index.html', views.Index, name='Index'),
# API
	## Load 
	#path('GetHeartBeat', views.GetHeartBeat, name='GetHeartBeat'),
	#path('HeartBeat', views.HeartBeat, name='HeartBeat'),
]