Return-Path: <theyoctoproject@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 430B7E006F1; Thu, 24 May 2018 14:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (theyoctoproject[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.202 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f202.google.com (mail-yb0-f202.google.com
	[209.85.213.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82132E0044F
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:17:20 -0700 (PDT)
Received: by mail-yb0-f202.google.com with SMTP id s16-v6so1476341ybp.12
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=X8mC4IBMLiE+DEvSGx0fStSxdiwLGyoAwO/XMkrvT0Q=;
	b=sUqPNUtBwVppdaNH/UB7ZrlLAQacthrBlcwrSu2C/RNsgN0A937kwVspzjgqUH1oxX
	ajAXYuKXg5t5taSdmtfKzKHjltl2P8I6fYl/LSlU4d/prGTT0SiVP40A+Lb2bInsoQNw
	A0lKXY/dzIQAksZ2OPTxohs5aJgjgCSYgNwX0KbWWWdQ0kbjFhbOgRp6tuykUaEdpnlr
	kvfgNyL4vhWR5PoPBhaBC2UaskznTGRpNTxCq9YxbtbpCJExwuOJ3TCpjIIRJMgXmzac
	L8ss98ZTprRopvRjip5k+xvjyYrsNSB2gw8vAm7X8CakWk+gcLvwbSrzuf78MsFOPbqM
	vhrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=X8mC4IBMLiE+DEvSGx0fStSxdiwLGyoAwO/XMkrvT0Q=;
	b=O+iiDOisbE4E1xZvbn4lFZGIXPZZnSCp3HzbRb9zZ0O7tndIB9YI+o0iRx6UfVRnXH
	neoBiSriqDoLGKJ0tv22LIvfjtsoVHWhwDlaann6ZuCq+8iUf2Vj9LPlrNsytGFiAEqy
	RWYHHv1N5EPY9m0JKbvrkzHDxdEYayq1gMYb9vXBr94oLGXCpyh/z1qLSjhPtdESvz/2
	we/lbGeVoYSyQyLAV1ppStiPgLhUz+OaIjNDn4kIkbmNoDn9eRCYNHxqwCo4EVmuEsVb
	VEbD6TwSjP/F9pbgBZDnCU1A4ZX1YxFIOmGSde7zNi79ozn6wIju4piTmNw+7ggMp2p3
	x0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:message-id:date
	:subject:from:to;
	bh=X8mC4IBMLiE+DEvSGx0fStSxdiwLGyoAwO/XMkrvT0Q=;
	b=W5YWBJzZfvX21rwbXvL4Z/F8sRPSTuTuU29hv3UTEOXxPdpGM6T79HqzT5dQc+5w5z
	lKfz+FdhNwcntpm3lFYm4WMx0BFkvJsLQWc4gSPB8kE+O78uFjANQdqexf4S8z/E1Y7O
	WGY+PDeijyWABJ9FXZQxP3PWeuTxt6dGwXxLBnMV86pVNg1TvYnGS5NWOKSBXo4TA8Nk
	dFmwbT/ES1WGAeyfsRiazBWfY6JO5C63cFr6fP6SdcX2hrvJe7Mz8BYKTWx22rcMPTkn
	v897TBRezpKv2Cke8kLgf2pGBKqScOdV6Vl41D20IN8Jl14GD6lRhM/Fnf5GSbrLHF4l
	IZdw==
X-Gm-Message-State: ALKqPwc1vni5xB5GKQj6U1dqKpfN2KZqWaROrKCwdt3SGqxg69QRcmkx
	BPF87C9aaTXRedgvZM2cVoa4mJwujgf9AaSsv+o2
X-Google-Smtp-Source: ADUXVKK2JYiW4iwbJfIChWU+s5u3SsIH64uLt/v4K3LZ6Nr6mFan/hl1j3sAzJPfAmdwrWxrQU/M2CBQnm6gVMnIU1Ii
MIME-Version: 1.0
X-Received: by 2002:a25:26d0:: with SMTP id
	m199-v6mr2744246ybm.2.1527196639631; 
	Thu, 24 May 2018 14:17:19 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Message-ID: <0000000000003522ad056cfa2dcb@google.com>
Date: Thu, 24 May 2018 21:17:19 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 24 May 2018 14:21:32 -0700
Subject: Invitation: Yocto Project Weekly Triage Meeting @ Weekly from 7:30am to 8:30am on Thursday (PDT) (yocto@yoctoproject.org)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: theyoctoproject@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 May 2018 21:17:22 -0000
X-Groupsio-MsgNum: 41235
Content-Type: multipart/mixed; boundary="000000000000352287056cfa2dca"

--000000000000352287056cfa2dca
Content-Type: multipart/alternative; boundary="000000000000352282056cfa2dc8"

--000000000000352282056cfa2dc8
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

You have been invited to the following event.

Title: Yocto Project Weekly Triage Meeting
Yocto Project Weekly Triage Meeting Details


Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage


Yocto IRC: http://webchat.freenode.net/?channels=#yocto - When you join  
state your name on the bridge or IRC.

We use a Zoom Bridge at: https://zoom.us/j/454367603
When: Weekly from 7:30am to 8:30am on Thursday Pacific Time
Where: Zoom Meeting: https://zoom.us/j/454367603
Calendar: yocto@yoctoproject.org
Who:
     * theyoctoproject@gmail.com - organizer
     * yocto@yoctoproject.org

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=NjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWM3NzY4Mjk4YTA2NThkYzZmNTA3MzNlYzZhYzk5MTVhZTdiNTE5ZmQ&ctz=America%2FLos_Angeles&hl=en&es=0

Invitation from Google Calendar: https://www.google.com/calendar/

You are receiving this courtesy email at the account yocto@yoctoproject.org  
because you are an attendee of this event.

To stop receiving future updates for this event, decline this event.  
Alternatively you can sign up for a Google account at  
https://www.google.com/calendar/ and control your notification settings for  
your entire calendar.

Forwarding this invitation could allow any recipient to modify your RSVP  
response. Learn more at  
https://support.google.com/calendar/answer/37135#forwarding

--000000000000352282056cfa2dc8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span style=3D"=
display:none" itemprop=3D"about" itemscope itemtype=3D"http://schema.org/Pe=
rson"><meta itemprop=3D"description" content=3D"Invitation from theyoctopro=
ject@gmail.com"/></span><span itemprop=3D"object" itemscope itemtype=3D"htt=
p://schema.org/Event"><div style=3D""><table cellspacing=3D"0" cellpadding=
=3D"8" border=3D"0" summary=3D"" style=3D"width:100%;font-family:Arial,Sans=
-serif;border:1px Solid #ccc;border-width:1px 2px 2px 1px;background-color:=
#fff;"><tr><td><meta itemprop=3D"eventStatus" content=3D"http://schema.org/=
EventScheduled"/><div style=3D"padding:2px"><span itemprop=3D"publisher" it=
emscope itemtype=3D"http://schema.org/Organization"><meta itemprop=3D"name"=
 content=3D"Google Calendar"/></span><meta itemprop=3D"eventId/googleCalend=
ar" content=3D"69b8n4lifp3et8i02e5gp0h9dk"/><div style=3D"float:right;font-=
weight:bold;font-size:13px"> <a href=3D"https://www.google.com/calendar/eve=
nt?action=3DVIEW&amp;eid=3DNjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGsgeW9jdG9AeW9j=
dG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWM3NzY4Mj=
k4YTA2NThkYzZmNTA3MzNlYzZhYzk5MTVhZTdiNTE5ZmQ&amp;ctz=3DAmerica%2FLos_Angel=
es&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=
=3D"url">more details &raquo;</a><br></div><h3 style=3D"padding:0 0 6px 0;m=
argin:0;font-family:Arial,Sans-serif;font-size:16px;font-weight:bold;color:=
#222"><span itemprop=3D"name">Yocto Project Weekly Triage Meeting</span></h=
3><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event =
details"><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif=
;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><d=
iv><i style=3D"font-style:normal">When</i></div></td><td style=3D"padding-b=
ottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=
=3D"top"><div style=3D"text-indent:-1px"><time itemprop=3D"startDate" datet=
ime=3D"20180531T143000Z"></time><time itemprop=3D"endDate" datetime=3D"2018=
0531T153000Z"></time>Weekly from 7:30am to 8:30am on Thursday <span style=
=3D"color:#888">Pacific Time</span></div></td></tr><tr><td style=3D"padding=
:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-=
space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal"=
>Where</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,San=
s-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent=
:-1px"><span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/=
Place"><span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://=
zoom.us/j/454367603</span><span dir=3D"ltr"> (<a href=3D"https://maps.googl=
e.com/maps?q=3DZoom+Meeting:+https://zoom.us/j/454367603&amp;hl=3Den" style=
=3D"color:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</=
a>)</span></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font=
-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width=
:90px" valign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div=
></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-si=
ze:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yo=
ctoproject.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90=
px" valign=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><t=
d style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;=
color:#222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><=
td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;=
color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-=
family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"paddin=
g-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div s=
tyle=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span item=
prop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span ite=
mprop=3D"name" class=3D"notranslate">theyoctoproject@gmail.com</span><meta =
itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span item=
prop=3D"organizer" itemscope itemtype=3D"http://schema.org/Person"><meta it=
emprop=3D"name" content=3D"theyoctoproject@gmail.com"/><meta itemprop=3D"em=
ail" content=3D"theyoctoproject@gmail.com"/></span><span style=3D"font-size=
:11px;color:#888"> - organizer</span></div></div></div></td></tr><tr><td st=
yle=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-famil=
y:Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-rig=
ht:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=
=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=
=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span itempro=
p=3D"name" class=3D"notranslate">yocto@yoctoproject.org</span><meta itempro=
p=3D"email" content=3D"yocto@yoctoproject.org"/></span></div></div></div></=
td></tr></table></td></tr></table><div style=3D"padding-bottom:15px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222;white-space:pre-wrap!import=
ant;white-space:-moz-pre-wrap!important;white-space:-pre-wrap!important;whi=
te-space:-o-pre-wrap!important;white-space:pre;word-wrap:break-word"><span>=
Yocto Project Weekly Triage Meeting Details<p><br>Wiki: <a href=3D"https://=
www.google.com/url?q=3Dhttps%3A%2F%2Fwiki.yoctoproject.org%2Fwiki%2FBug_Tri=
age&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNE_o2BoFvX8cyQwP5Qk4flwm7xASA" ta=
rget=3D"_blank">https://wiki.yoctoproject.org/wiki/Bug_Triage</a><p><br>Yoc=
to IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.free=
node.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNEh=
9OQrs1YBcw7IAy-tvGf0ilzcGA" target=3D"_blank">http://webchat.freenode.net/?=
channels=3D#yocto</a> - When you join state your name on the bridge or IRC.=
<p>We use a Zoom Bridge at: <a href=3D"https://www.google.com/url?q=3Dhttps=
%3A%2F%2Fzoom.us%2Fj%2F454367603&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNHvi=
1ostr5K5BQFeK_c9o4i60JmrA" target=3D"_blank">https://zoom.us/j/454367603</a=
></p></p></p></span><meta itemprop=3D"description" content=3D"Yocto Project=
 Weekly Triage Meeting Details


Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage


Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto - When you join s=
tate your name on the bridge or IRC.

We use a Zoom Bridge at: https://zoom.us/j/454367603"/></div></div><p style=
=3D"color:#222;font-size:13px;margin:0"><span style=3D"color:#888">Going?&n=
bsp;&nbsp;&nbsp;</span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<st=
rong><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schema=
.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.org=
/RsvpAttendance/Yes"/><span itemprop=3D"handler" itemscope itemtype=3D"http=
://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http://s=
chema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calenda=
r/event?action=3DRESPOND&amp;eid=3DNjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGsgeW9j=
dG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QG=
dtYWlsLmNvbWM3NzY4Mjk4YTA2NThkYzZmNTA3MzNlYzZhYzk5MTVhZTdiNTE5ZmQ&amp;ctz=
=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-=
space:nowrap" itemprop=3D"url">Yes</a></span></span><span style=3D"margin:0=
 0.4em;font-weight:normal"> - </span><span itemprop=3D"potentialaction" ite=
mscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendan=
ce" content=3D"http://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"h=
andler" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link it=
emprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=
=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjliOG=
40bGlmcDNldDhpMDJlNWdwMGg5ZGsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&am=
p;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWM3NzY4Mjk4YTA2NThkYzZmNTA3MzN=
lYzZhYzk5MTVhZTdiNTE5ZmQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=
=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">Maybe</a></s=
pan></span><span style=3D"margin:0 0.4em;font-weight:normal"> - </span><spa=
n itemprop=3D"potentialaction" itemscope itemtype=3D"http://schema.org/Rsvp=
Action"><meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAtte=
ndance/No"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.=
org/HttpActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/=
HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calendar/event?ac=
tion=3DRESPOND&amp;eid=3DNjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGsgeW9jdG9AeW9jdG=
9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNv=
bWM3NzY4Mjk4YTA2NThkYzZmNTA3MzNlYzZhYzk5MTVhZTdiNTE5ZmQ&amp;ctz=3DAmerica%2=
FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap=
" itemprop=3D"url">No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wb=
r><a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp;eid=3D=
NjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=
=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWM3NzY4Mjk4YTA2NThkYzZmNTA3MzNlYzZh=
Yzk5MTVhZTdiNTE5ZmQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0"=
 style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more options &raq=
uo;</a></p></td></tr><tr><td style=3D"background-color:#f6f6f6;color:#888;b=
order-top:1px Solid #ccc;font-family:Arial,Sans-serif;font-size:11px"><p>In=
vitation from <a href=3D"https://www.google.com/calendar/" target=3D"_blank=
" style=3D"">Google Calendar</a></p><p>You are receiving this courtesy emai=
l at the account yocto@yoctoproject.org because you are an attendee of this=
 event.</p><p>To stop receiving future updates for this event, decline this=
 event. Alternatively you can sign up for a Google account at https://www.g=
oogle.com/calendar/ and control your notification settings for your entire =
calendar.</p><p>Forwarding this invitation could allow any recipient to mod=
ify your RSVP response. <a href=3D"https://support.google.com/calendar/answ=
er/37135#forwarding">Learn More</a>.</p></td></tr></table></div></span></sp=
an>

--000000000000352282056cfa2dc8
Content-Type: text/calendar; charset="UTF-8"; method=REQUEST
Content-Transfer-Encoding: 7bit

BEGIN:VCALENDAR
PRODID:-//Google Inc//Google Calendar 70.9054//EN
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:REQUEST
BEGIN:VTIMEZONE
TZID:America/Los_Angeles
X-LIC-LOCATION:America/Los_Angeles
BEGIN:DAYLIGHT
TZOFFSETFROM:-0800
TZOFFSETTO:-0700
TZNAME:PDT
DTSTART:19700308T020000
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=2SU
END:DAYLIGHT
BEGIN:STANDARD
TZOFFSETFROM:-0700
TZOFFSETTO:-0800
TZNAME:PST
DTSTART:19701101T020000
RRULE:FREQ=YEARLY;BYMONTH=11;BYDAY=1SU
END:STANDARD
END:VTIMEZONE
BEGIN:VEVENT
DTSTART;TZID=America/Los_Angeles:20180531T073000
DTEND;TZID=America/Los_Angeles:20180531T083000
RRULE:FREQ=WEEKLY;BYDAY=TH
DTSTAMP:20180524T211719Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:69b8n4lifp3et8i02e5gp0h9dk@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20180524T175433Z
DESCRIPTION:Yocto Project Weekly Triage Meeting Details\n\n\nWiki: https://
 wiki.yoctoproject.org/wiki/Bug_Triage\n\n\nYocto IRC: http://webchat.freeno
 de.net/?channels=#yocto - When you join state your name on the bridge or IR
 C.\n\nWe use a Zoom Bridge at: https://zoom.us/j/454367603\n\n-::~:~::~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-\
 nPlease do not edit this section of the description.\n\nView your event at 
 https://www.google.com/calendar/event?action=VIEW&eid=NjliOG40bGlmcDNldDhpM
 DJlNWdwMGg5ZGsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0Q
 GdtYWlsLmNvbWM3NzY4Mjk4YTA2NThkYzZmNTA3MzNlYzZhYzk5MTVhZTdiNTE5ZmQ&ctz=Amer
 ica%2FLos_Angeles&hl=en&es=1.\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:
 ~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20180524T211719Z
LOCATION:Zoom Meeting: https://zoom.us/j/454367603
SEQUENCE:0
STATUS:CONFIRMED
SUMMARY:Yocto Project Weekly Triage Meeting
TRANSP:OPAQUE
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:This is an event reminder
TRIGGER:-P0DT0H15M0S
END:VALARM
END:VEVENT
END:VCALENDAR

--000000000000352282056cfa2dc8--

--000000000000352287056cfa2dca
Content-Type: application/ics; name="invite.ics"
Content-Disposition: attachment; filename="invite.ics"
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpQUk9ESUQ6LS8vR29vZ2xlIEluYy8vR29vZ2xlIENhbGVuZGFyIDcw
LjkwNTQvL0VODQpWRVJTSU9OOjIuMA0KQ0FMU0NBTEU6R1JFR09SSUFODQpNRVRIT0Q6UkVRVUVT
VA0KQkVHSU46VlRJTUVaT05FDQpUWklEOkFtZXJpY2EvTG9zX0FuZ2VsZXMNClgtTElDLUxPQ0FU
SU9OOkFtZXJpY2EvTG9zX0FuZ2VsZXMNCkJFR0lOOkRBWUxJR0hUDQpUWk9GRlNFVEZST006LTA4
MDANClRaT0ZGU0VUVE86LTA3MDANClRaTkFNRTpQRFQNCkRUU1RBUlQ6MTk3MDAzMDhUMDIwMDAw
DQpSUlVMRTpGUkVRPVlFQVJMWTtCWU1PTlRIPTM7QllEQVk9MlNVDQpFTkQ6REFZTElHSFQNCkJF
R0lOOlNUQU5EQVJEDQpUWk9GRlNFVEZST006LTA3MDANClRaT0ZGU0VUVE86LTA4MDANClRaTkFN
RTpQU1QNCkRUU1RBUlQ6MTk3MDExMDFUMDIwMDAwDQpSUlVMRTpGUkVRPVlFQVJMWTtCWU1PTlRI
PTExO0JZREFZPTFTVQ0KRU5EOlNUQU5EQVJEDQpFTkQ6VlRJTUVaT05FDQpCRUdJTjpWRVZFTlQN
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgwNTMxVDA3MzAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgwNTMxVDA4MzAwMA0KUlJVTEU6RlJFUT1XRUVL
TFk7QllEQVk9VEgNCkRUU1RBTVA6MjAxODA1MjRUMjExNzE5Wg0KT1JHQU5JWkVSO0NOPXRoZXlv
Y3RvcHJvamVjdEBnbWFpbC5jb206bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb20NClVJ
RDo2OWI4bjRsaWZwM2V0OGkwMmU1Z3AwaDlka0Bnb29nbGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9
SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRS
VUUNCiA7Q049dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86
dGhleW9jdG9wcm9qZWN0QGdtYWlsLmMNCiBvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7
Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtD
Tj15b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpDUkVBVEVEOjIwMTgwNTI0VDE3NTQzM1oNCkRFU0NSSVBUSU9OOllvY3Rv
IFByb2plY3QgV2Vla2x5IFRyaWFnZSBNZWV0aW5nIERldGFpbHNcblxuXG5XaWtpOiBodHRwczov
Lw0KIHdpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2VcblxuXG5Zb2N0byBJUkM6
IGh0dHA6Ly93ZWJjaGF0LmZyZWVubw0KIGRlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvIC0gV2hlbiB5
b3Ugam9pbiBzdGF0ZSB5b3VyIG5hbWUgb24gdGhlIGJyaWRnZSBvciBJUg0KIEMuXG5cbldlIHVz
ZSBhIFpvb20gQnJpZGdlIGF0OiBodHRwczovL3pvb20udXMvai80NTQzNjc2MDNcblxuLTo6fjp+
Ojp+On46fg0KIDp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjo6fjp+OjotXA0KIG5QbGVhc2UgZG8gbm90IGVkaXQgdGhpcyBz
ZWN0aW9uIG9mIHRoZSBkZXNjcmlwdGlvbi5cblxuVmlldyB5b3VyIGV2ZW50IGF0IA0KIGh0dHBz
Oi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9uPVZJRVcmZWlkPU5qbGlPRzQw
YkdsbWNETmxkRGhwTQ0KIERKbE5XZHdNR2c1WkdzZ2VXOWpkRzlBZVc5amRHOXdjbTlxWldOMExt
OXladyZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUQ0KIEdkdFlXbHNMbU52YldNM056WTRN
ams0WVRBMk5UaGtZelptTlRBM016TmxZelpoWXprNU1UVmhaVGRpTlRFNVptUSZjdHo9QW1lcg0K
IGljYSUyRkxvc19BbmdlbGVzJmhsPWVuJmVzPTEuXG4tOjp+On46On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+Og0KIH46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
Ojp+On46Oi0NCkxBU1QtTU9ESUZJRUQ6MjAxODA1MjRUMjExNzE5Wg0KTE9DQVRJT046Wm9vbSBN
ZWV0aW5nOiBodHRwczovL3pvb20udXMvai80NTQzNjc2MDMNClNFUVVFTkNFOjANClNUQVRVUzpD
T05GSVJNRUQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBXZWVrbHkgVHJpYWdlIE1lZXRpbmcNClRS
QU5TUDpPUEFRVUUNCkJFR0lOOlZBTEFSTQ0KQUNUSU9OOkRJU1BMQVkNCkRFU0NSSVBUSU9OOlRo
aXMgaXMgYW4gZXZlbnQgcmVtaW5kZXINClRSSUdHRVI6LVAwRFQwSDE1TTBTDQpFTkQ6VkFMQVJN
DQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--000000000000352287056cfa2dca--
