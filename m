Return-Path: <3BX8FXA8JBf4znk4uizuvxupkizmsgor.ius4uizu4uizuvxupkiz.uxm@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02F96E00C9D; Mon,  3 Dec 2018 11:08:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.73 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f73.google.com (mail-yw1-f73.google.com
	[209.85.161.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FAD9E00BB7
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2018 11:07:50 -0800 (PST)
Received: by mail-yw1-f73.google.com with SMTP id v7so9961105ywv.1
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2018 11:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=fjLjbl80JmqFDcU9PVeUYv6kQeG8a5xQCoBBjxpibhA=;
	b=EkMNS1QiRyDFhyaGqXf6UNw1ymVjlvaTkr3keB/OUkAD2yYWZKfQk16SGBhz1CihON
	uvtjABKT2qJjL3J6Sax/TKtAwM3Hdvfr0yv7Jcli1vFHw1Y0wrImoFcJU56c7WPNxYJ+
	YyCZ1f5M4KRaJ173NZAe1SvDs4qxesR9YammEBHnMsW3t6Oz53wKn578rKk0nv6SXdD3
	fn2feZ02eboeaOpYVzrEHuGf1TOorXmNbrr1J037eUtFoD/R3CGbPc+ZE9/BhxrSZySp
	QeeY1HwqqGXQ2BqAktlqHv5dfbRbPkP09ssTtUpg4fNExPma+aj6jBh7ZQOb6oAVoy/C
	SAHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=fjLjbl80JmqFDcU9PVeUYv6kQeG8a5xQCoBBjxpibhA=;
	b=VAZBeXAZyAY0LzlvEPzPN8Wlbgt1jC8hNcDj8At7QkMObjNiJoWuth32S/naUYGSXl
	sAgpHpjd9VnEhx1xW+YzfidoJ730bGeQswS25J+4g9ZXjycb+KlpPwXgZS46oRD8WE9d
	CXAhh08tFSagmliQewjsec7WTGhXlyoq5rh9kjNgabuNTTSJb+MlhHvTJ0Hw3eoHJz90
	2sG/ki80nVFJ9kPfNRHpTOO7u4NG9OJEoFVpd4tiHsckHVP+ySYFqPD4m6A2pAJfBj/Z
	GngS9z1MrKOQruZSW+7QcvKJ5B5STlwQhcgC2lyxedGQmLHu/sYBiLKG2CY60H9Aa0QJ
	ePvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=fjLjbl80JmqFDcU9PVeUYv6kQeG8a5xQCoBBjxpibhA=;
	b=Xv4PiqpTExDHRjlkjP7kJIbkPNAluvpPgIgs69b4btUIBiPEMmwIxjvZ5JD6J2Teys
	Nn3W8BMms18D9TqBsTfCpGuffNv7FuPsYM3mxEi4iy3Z6/L7+OxhA8ev8t/Gw/5+jw/R
	W/WyD7omuNyHSwL5T4SWbFmAB6AsEKp8h4DsUd8rQOaMB7Gz7xg9qwL821qSEPFNm5je
	yPeVRoOAEfhu8AaUb3b21mYsnPuc5uNCHO//nYYLf601sXR/M+8bhk+1Ldq+DFRE6cyN
	XtJjXVCtrTpIeQ/rvQJHaBLZa4J1LRLnAin2XVzEcgtI7e0auHboV24GP7ZL60irxax7
	Af9g==
X-Gm-Message-State: AA+aEWYzul5mZZ2FA5hNN20ARn+1wN3uosOgPC2tlxN2eqcGvd5MzBHd
	jSLTHuquhJ0rneUn4/wxgD3QAR+m2eVNloVFoVqs
X-Google-Smtp-Source: AFSGD/WWaK5StW0d80yQnirUXZCIhkLC82y7kLGOleyYfMk1t3YS6KtSvKxuSpRPHWrZSQnW0ZcuCgb9Cvfbc9dNibaS
MIME-Version: 1.0
X-Received: by 2002:a25:bb87:: with SMTP id y7-v6mr9522335ybg.55.1543864069897;
	Mon, 03 Dec 2018 11:07:49 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <00000000000077c55f057c22dd08@google.com>
Date: Mon, 03 Dec 2018 19:07:49 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 9am on the fourth Tuesday from Tue Nov 27 to Mon Jan 21, 2019 (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Mon, 03 Dec 2018 19:08:01 -0000
X-Groupsio-MsgNum: 43418
Content-Type: multipart/mixed; boundary="00000000000077c53b057c22dd07"

--00000000000077c53b057c22dd07
Content-Type: multipart/alternative; boundary="00000000000077c538057c22dd05"

--00000000000077c538057c22dd05
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

This event has been changed.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712
When: Monthly from 8am to 9am on the fourth Tuesday from Tue Nov 27 to Mon  
Jan 21, 2019 Pacific Time - Los Angeles (changed)
Where: Zoom Meeting: https://zoom.us/j/990892712
Calendar: yocto@yoctoproject.org
Who:
     * theyoctoproject@gmail.com - organizer
     * stephen.k.jolley@intel.com
     * yocto@yoctoproject.org

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=MXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&ctz=America%2FLos_Angeles&hl=en&es=0

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

--00000000000077c538057c22dd05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span style=3D"=
display:none" itemprop=3D"about" itemscope itemtype=3D"http://schema.org/Th=
ing/Clock"><meta itemprop=3D"description" content=3D"Time updated"/></span>=
<span itemprop=3D"object" itemscope itemtype=3D"http://schema.org/Event"><d=
iv style=3D""><table cellspacing=3D"0" cellpadding=3D"8" border=3D"0" summa=
ry=3D"" style=3D"width:100%;font-family:Arial,Sans-serif;border:1px Solid #=
ccc;border-width:1px 2px 2px 1px;background-color:#fff;"><tr><td><meta item=
prop=3D"eventStatus" content=3D"http://schema.org/EventRescheduled"/><h4 st=
yle=3D"padding:6px 0;margin:0 0 4px 0;font-family:Arial,Sans-serif;font-siz=
e:13px;line-height:1.4;border:1px Solid #fff;background:#fff;color:#090;fon=
t-weight:normal"><strong>This event has been changed.</strong></h4><div sty=
le=3D"padding:2px"><span itemprop=3D"publisher" itemscope itemtype=3D"http:=
//schema.org/Organization"><meta itemprop=3D"name" content=3D"Google Calend=
ar"/></span><meta itemprop=3D"eventId/googleCalendar" content=3D"1ssihorlhf=
1ptl6nddo58hf7q6"/><div style=3D"float:right;font-weight:bold;font-size:13p=
x"> <a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp;eid=
=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;t=
ok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZj=
g4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D=
0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more details &r=
aquo;</a><br></div><h3 style=3D"padding:0 0 6px 0;margin:0;font-family:Aria=
l,Sans-serif;font-size:16px;font-weight:bold;color:#222"><span itemprop=3D"=
name">Yocto Project Technical Team Meeting</span></h3><table cellpadding=3D=
"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">When</i></div></td><td style=3D"padding-bottom:10px;font-family=
:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"t=
ext-indent:-1px"><strong style=3D"color:#080">Changed: </strong><time itemp=
rop=3D"startDate" datetime=3D"20181127T160000Z"></time><time itemprop=3D"en=
dDate" datetime=3D"20181127T170000Z"></time>Monthly from 8am to 9am on the =
fourth Tuesday from Tue Nov 27 to Mon Jan 21, 2019 <span style=3D"color:#88=
8">Pacific Time - Los Angeles</span></div></td></tr><tr><td style=3D"paddin=
g:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white=
-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal=
">Where</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-inden=
t:-1px"><span itemprop=3D"location" itemscope itemtype=3D"http://schema.org=
/Place"><span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https:/=
/zoom.us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://maps.goog=
le.com/maps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&amp;hl=3Den" styl=
e=3D"color:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map<=
/a>)</span></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;fon=
t-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;widt=
h:90px" valign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></di=
v></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-s=
ize:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@y=
octoproject.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-f=
amily:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:9=
0px" valign=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><=
td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px=
;color:#222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr>=
<td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px=
;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font=
-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"paddi=
ng-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div =
style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span ite=
mprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span it=
emprop=3D"name" class=3D"notranslate">theyoctoproject@gmail.com</span><meta=
 itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span ite=
mprop=3D"organizer" itemscope itemtype=3D"http://schema.org/Person"><meta i=
temprop=3D"name" content=3D"theyoctoproject@gmail.com"/><meta itemprop=3D"e=
mail" content=3D"theyoctoproject@gmail.com"/></span><span style=3D"font-siz=
e:11px;color:#888"> - organizer</span></div></div></div></td></tr><tr><td s=
tyle=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-fami=
ly:Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-ri=
ght:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=
=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=
=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span itempro=
p=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com</span><meta ite=
mprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></span></div></div>=
</div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-=
serif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"=
><span style=3D"font-family:Courier New,monospace">&#x2022;</span></div></t=
d><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13=
px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 =
0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.=
org/Person"><span itemprop=3D"name" class=3D"notranslate">yocto@yoctoprojec=
t.org</span><meta itemprop=3D"email" content=3D"yocto@yoctoproject.org"/></=
span></div></div></div></td></tr></table></td></tr></table><div style=3D"pa=
dding-bottom:15px;font-family:Arial,Sans-serif;font-size:13px;color:#222;wh=
ite-space:pre-wrap!important;white-space:-moz-pre-wrap!important;white-spac=
e:-pre-wrap!important;white-space:-o-pre-wrap!important;white-space:pre;wor=
d-wrap:break-word"><span>We encourage people attending the meeting to logon=
 and announce themselves on the Yocto Project IRC chancel during the meetin=
g (optional):<br><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3Dh=
ttp%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;us=
t=3D1544296069875000&amp;usg=3DAFQjCNG3Dy1Ju7_ClFhk5B_vWcvQ0APWdg" target=
=3D"_blank">http://webchat.freenode.net/?channels=3D#yocto</a><br><br>Wiki:=
 <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.o=
rg%2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D1544296069875000&amp;u=
sg=3DAFQjCNHd0V5toiZVKDtf-rIkX3XULpIzeA" target=3D"_blank">https://www.yoct=
oproject.org/public-virtual-meetings/</a><br><br>Bridge is with Zoom at: <a=
 href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F9908927=
12&amp;sa=3DD&amp;ust=3D1544296069875000&amp;usg=3DAFQjCNGKYF7qhBSSLWX9taqO=
n9frluZSkg" target=3D"_blank">https://zoom.us/j/990892712</a></span><meta i=
temprop=3D"description" content=3D"We encourage people attending the meetin=
g to logon and announce themselves on the Yocto Project IRC chancel during =
the meeting (optional):Yocto IRC: http://webchat.freenode.net/?channels=3D#=
yoctoWiki: https://www.yoctoproject.org/public-virtual-meetings/Bridge is w=
ith Zoom at: https://zoom.us/j/990892712"/></div></div><p style=3D"color:#2=
22;font-size:13px;margin:0"><span style=3D"color:#888">Going (yocto@yoctopr=
oject.org)?&nbsp;&nbsp;&nbsp;</span><wbr>All events in this series:&nbsp;&n=
bsp;&nbsp;<strong><span itemprop=3D"potentialaction" itemscope itemtype=3D"=
http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http=
://schema.org/RsvpAttendance/Yes"/><span itemprop=3D"handler" itemscope ite=
mtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" hre=
f=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.googl=
e.com/calendar/event?action=3DRESPOND&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU=
4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jd=
G9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZl=
N2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:=
#20c;white-space:nowrap" itemprop=3D"url">Yes</a></span></span><span style=
=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"potentia=
laction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=
=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Maybe"/><span i=
temprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandl=
er"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/G=
ET"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;=
eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&am=
p;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M=
5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
Maybe</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> -=
 </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://sch=
ema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.=
org/RsvpAttendance/No"/><span itemprop=3D"handler" itemscope itemtype=3D"ht=
tp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:/=
/schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calen=
dar/event?action=3DRESPOND&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW=
9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0=
QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=
=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-=
space:nowrap" itemprop=3D"url">No</a></span></span></strong>&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr><a href=3D"https://www.google.com/calendar/event?action=3DVIE=
W&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9=
yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwY=
jI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&=
amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more o=
ptions &raquo;</a></p></td></tr><tr><td style=3D"background-color:#f6f6f6;c=
olor:#888;border-top:1px Solid #ccc;font-family:Arial,Sans-serif;font-size:=
11px"><p>Invitation from <a href=3D"https://www.google.com/calendar/" targe=
t=3D"_blank" style=3D"">Google Calendar</a></p><p>You are receiving this co=
urtesy email at the account yocto@yoctoproject.org because you are an atten=
dee of this event.</p><p>To stop receiving future updates for this event, d=
ecline this event. Alternatively you can sign up for a Google account at ht=
tps://www.google.com/calendar/ and control your notification settings for y=
our entire calendar.</p><p>Forwarding this invitation could allow any recip=
ient to modify your RSVP response. <a href=3D"https://support.google.com/ca=
lendar/answer/37135#forwarding">Learn More</a>.</p></td></tr></table></div>=
</span></span>

--00000000000077c538057c22dd05
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
DTSTART;TZID=America/Los_Angeles:20181127T080000
DTEND;TZID=America/Los_Angeles:20181127T090000
RRULE:FREQ=MONTHLY;UNTIL=20190122T075959Z;BYDAY=4TU
DTSTAMP:20181203T190749Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:1ssihorlhf1ptl6nddo58hf7q6@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@intel
 .com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20181113T155832Z
DESCRIPTION:We encourage people attending the meeting to logon and announce
  themselves on the Yocto Project IRC chancel during the meeting (optional):
 <br><br>Yocto IRC: <a href="https://www.google.com/url?q=http%3A%2F%2Fwebch
 at.freenode.net%2F%3Fchannels%3D%23yocto&amp\;sa=D&amp\;usd=2&amp\;usg=AFQj
 CNEvOHVIkxKIrfXWfUxCcVS5_8kh5w" target="_blank">http://webchat.freenode.net
 /?channels=#yocto</a><br><br>Wiki: <a href="https://www.yoctoproject.org/pu
 blic-virtual-meetings/">https://www.yoctoproject.org/public-virtual-meeting
 s/</a><br><br>Bridge is with Zoom at: <a href="https://www.google.com/url?q
 =https%3A%2F%2Fzoom.us%2Fj%2F990892712&amp\;sa=D&amp\;usd=2&amp\;usg=AFQjCN
 G2F5sUpm-S-RhkqNhXVBd3m1_3LA" target="_blank">https://zoom.us/j/990892712</
 a>\n\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~
 :~:~:~:~:~::~:~::-\nPlease do not edit this section of the description.\n\n
 View your event at https://www.google.com/calendar/event?action=VIEW&eid=MX
 NzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdG
 hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0M
 WE1MWZlN2Q&ctz=America%2FLos_Angeles&hl=en&es=0.\n-::~:~::~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20181203T190749Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:0
STATUS:CONFIRMED
SUMMARY:Yocto Project Technical Team Meeting
TRANSP:OPAQUE
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:This is an event reminder
TRIGGER:-P0DT0H15M0S
END:VALARM
END:VEVENT
END:VCALENDAR

--00000000000077c538057c22dd05--

--00000000000077c53b057c22dd07
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgxMTI3VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgxMTI3VDA5MDAwMA0KUlJVTEU6RlJFUT1NT05U
SExZO1VOVElMPTIwMTkwMTIyVDA3NTk1OVo7QllEQVk9NFRVDQpEVFNUQU1QOjIwMTgxMjAzVDE5
MDc0OVoNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0aGV5
b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6MXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTZAZ29v
Z2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9QUNDRVBURUQ7UlNWUD1UUlVFDQogO0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5j
b207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jDQogb20NCkFU
VEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFD
Q0VQVEVEO1JTVlA9VFJVRQ0KIDtDTj1zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtYLU5VTS1H
VUVTVFM9MDptYWlsdG86c3RlcGhlbi5rLmpvbGxleUBpbnRlbA0KIC5jb20NCkFUVEVOREVFO0NV
VFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JT
VlA9VFJVRQ0KIDtDTj15b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpDUkVBVEVEOjIwMTgxMTEzVDE1NTgzMloNCkRFU0NS
SVBUSU9OOldlIGVuY291cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29u
IGFuZCBhbm5vdW5jZQ0KICB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFu
Y2VsIGR1cmluZyB0aGUgbWVldGluZyAob3B0aW9uYWwpOg0KIDxicj48YnI+WW9jdG8gSVJDOiA8
YSBocmVmPSJodHRwczovL3d3dy5nb29nbGUuY29tL3VybD9xPWh0dHAlM0ElMkYlMkZ3ZWJjaA0K
IGF0LmZyZWVub2RlLm5ldCUyRiUzRmNoYW5uZWxzJTNEJTIzeW9jdG8mYW1wXDtzYT1EJmFtcFw7
dXNkPTImYW1wXDt1c2c9QUZRag0KIENORXZPSFZJa3hLSXJmWFdmVXhDY1ZTNV84a2g1dyIgdGFy
Z2V0PSJfYmxhbmsiPmh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldA0KIC8/Y2hhbm5lbHM9I3lv
Y3RvPC9hPjxicj48YnI+V2lraTogPGEgaHJlZj0iaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9y
Zy9wdQ0KIGJsaWMtdmlydHVhbC1tZWV0aW5ncy8iPmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5v
cmcvcHVibGljLXZpcnR1YWwtbWVldGluZw0KIHMvPC9hPjxicj48YnI+QnJpZGdlIGlzIHdpdGgg
Wm9vbSBhdDogPGEgaHJlZj0iaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS91cmw/cQ0KID1odHRwcyUz
QSUyRiUyRnpvb20udXMlMkZqJTJGOTkwODkyNzEyJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7
dXNnPUFGUWpDTg0KIEcyRjVzVXBtLVMtUmhrcU5oWFZCZDNtMV8zTEEiIHRhcmdldD0iX2JsYW5r
Ij5odHRwczovL3pvb20udXMvai85OTA4OTI3MTI8Lw0KIGE+XG5cbi06On46fjo6fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fg0KIDp+
On46fjp+On46On46fjo6LVxuUGxlYXNlIGRvIG5vdCBlZGl0IHRoaXMgc2VjdGlvbiBvZiB0aGUg
ZGVzY3JpcHRpb24uXG5cbg0KIFZpZXcgeW91ciBldmVudCBhdCBodHRwczovL3d3dy5nb29nbGUu
Y29tL2NhbGVuZGFyL2V2ZW50P2FjdGlvbj1WSUVXJmVpZD1NWA0KIE56YVdodmNteG9aakZ3ZEd3
MmJtUmtielU0YUdZM2NUWWdlVzlqZEc5QWVXOWpkRzl3Y205cVpXTjBMbTl5WncmdG9rPU1qVWpk
Rw0KIGhsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1OdmJUZ3hOV1ZpTnpBME5XRTRZMk01WVRJ
d1lqSTJabUpoWmpnNFptRXdOekEwTQ0KIFdFMU1XWmxOMlEmY3R6PUFtZXJpY2ElMkZMb3NfQW5n
ZWxlcyZobD1lbiZlcz0wLlxuLTo6fjp+Ojp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjo6fjp+OjotDQpMQVNU
LU1PRElGSUVEOjIwMTgxMjAzVDE5MDc0OVoNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6
Ly96b29tLnVzL2ovOTkwODkyNzEyDQpTRVFVRU5DRTowDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1N
QVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0K
QkVHSU46VkFMQVJNDQpBQ1RJT046RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVu
dCByZW1pbmRlcg0KVFJJR0dFUjotUDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQN
CkVORDpWQ0FMRU5EQVINCg==

--00000000000077c53b057c22dd07--
