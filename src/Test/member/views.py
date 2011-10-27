from django.shortcuts import render_to_response
def index(request):
    hello = 'hello world'
    return render_to_response('member/member.html', {'hello': hello})
    