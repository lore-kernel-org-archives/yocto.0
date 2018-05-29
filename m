Return-Path: <3L5QNWw8JBWwdROiYMdYZbYTOMdQWKSV.MYWiYMdYiYMdYZbYTOMd.YbQ@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 316F1E00B4C; Tue, 29 May 2018 10:56:02 -0700 (PDT)
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
	*      [209.85.161.201 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f201.google.com (mail-yw0-f201.google.com
	[209.85.161.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FEE6E00A26
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 10:56:00 -0700 (PDT)
Received: by mail-yw0-f201.google.com with SMTP id l80-v6so10516460ywe.21
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 10:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=UPOj6T9n/QFBOg2WUqETsN3uqo6iF9GCk2OcS/x60NI=;
	b=WrC5F+8qIQmBmoqz0rb6hHDs8r9DXKvCmTGQgZE9iX7ekUlNe8vmGPg1iJcrWzlv1I
	qftAxKyRcoi0V0Kw64iGtOrLlps+dgxtz1Y6kORIrP8bBG9cwvdGF+Ei6MGp/tnBEBKa
	as5k6HO9W4JWKsnRPS3s/RL2mk2v2hJUuq0kkbSjAGIFj9T/43Lw+maiM4lJjBLK7gbh
	I/YvV0zjzATaJPfPhLkHbqSiV/OpdZDMeAXhk3HM4tDyTpAZKo6zCXs7ZJ7zu2qmZVey
	QHahF5ZAZ9Kn6dw/kK7o3dBpW/CHm5W5N0vwWCLuUa+GI0Xtm4rAtpw3eyrFrKxC/S6R
	AMEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=UPOj6T9n/QFBOg2WUqETsN3uqo6iF9GCk2OcS/x60NI=;
	b=YPkSZXteAuEQsO+AS/hp73eYPtLnrgzARjZWUaZnyiJ2YizRizJ6MKHwD5hGsUWqti
	AZ2GpwCapGk1GGkl1HDx6Am4RHr3IArkKFphHC66JVBTRffwawvjYCq5GB57ba1+I+v+
	xDSCXyjwxxi0w06N1y4DWOS69Vzbhz+S8DpTaZwveIPd73nLC0r2NntX3MWvwSm8IN0+
	do5KdYnVBnWgxJfSuvtjLKcBMvQS3FdDyrvRyvIjtcSJ7m3Y/yq79Zqo7+GgmDXwnLca
	Fvt1jidKE2+Fn1y1hAyN/zwBKE72Mi5nsOuCThg9kgu0hzLAEEZQMvUK8OXVn+LRhADI
	SUbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=UPOj6T9n/QFBOg2WUqETsN3uqo6iF9GCk2OcS/x60NI=;
	b=A1Zow1rfy3f+AnBFxO+H7tHfDtUrDdS/+E58FBXnBcc8QzfxXNmvkNxY/iOGVmfD9O
	wm9P8C2Prlcl8g/zx/lS5e5DX2tM84o2WRuNzcakU9vOsyMGCOOivblEH3213BcI2XZJ
	zarR7Kf+nYxA6wzkAVgTLV16oe4v1Wejh3JEg+EkVAwOvwM1jQXhdiOoda2uFDc4JtxZ
	ZqdW6F8EOail4Ufzm66OsAq4DJFNRbXr+WbzJ0MSE5V9l1To+G3+hBLhueLucUf+Rj9U
	I4udDEHNskJWT5gQDWfWmwCehQK91iArmF8Da5zGMaPY1I5xcWw+ZJwLapNJ71kwe283
	wr5A==
X-Gm-Message-State: ALKqPwc5mLN4rMxxvfiFbceTwKIqtd61BlTveqvHyoNVIZfpJ8ONTEJY
	TywflygcPnmGCeN/9Psg+07sIw3vsi79IBoHE5S2
X-Google-Smtp-Source: ADUXVKKI/0GpwqBQiT770t8VPXLmS8OAypcz1n31LpdI+znu9UOtoiqHbFCuV8tJS/r0AjGN6iWLL0rbDYtzTZa/PDkk
MIME-Version: 1.0
X-Received: by 2002:a25:6f43:: with SMTP id k64-v6mr5106199ybc.5.1527616559594;
	Tue, 29 May 2018 10:55:59 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000634527056d5bf2dd@google.com>
Date: Tue, 29 May 2018 17:55:59 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 29 May 2018 17:56:02 -0000
X-Groupsio-MsgNum: 41268
Content-Type: multipart/mixed; boundary="0000000000006344fb056d5bf2dc"

--0000000000006344fb056d5bf2dc
Content-Type: multipart/alternative; boundary="0000000000006344f7056d5bf2da"

--0000000000006344f7056d5bf2da
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

This event has been changed.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712 (changed)
When: Monthly from 8am to 8:30am on the first Tuesday Pacific Time
Where: Zoom Meeting: https://zoom.us/j/990892712
Calendar: yocto@yoctoproject.org
Who:
     * theyoctoproject@gmail.com - organizer
     * stephen.k.jolley@intel.com
     * yocto@yoctoproject.org

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&ctz=America%2FLos_Angeles&hl=en&es=0

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

--0000000000006344f7056d5bf2da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span style=3D"=
display:none" itemprop=3D"about" itemscope itemtype=3D"http://schema.org/Th=
ing/Paragraph"><meta itemprop=3D"description" content=3D"Description update=
d"/></span><span itemprop=3D"object" itemscope itemtype=3D"http://schema.or=
g/Event"><div style=3D""><table cellspacing=3D"0" cellpadding=3D"8" border=
=3D"0" summary=3D"" style=3D"width:100%;font-family:Arial,Sans-serif;border=
:1px Solid #ccc;border-width:1px 2px 2px 1px;background-color:#fff;"><tr><t=
d><meta itemprop=3D"eventStatus" content=3D"http://schema.org/EventReschedu=
led"/><h4 style=3D"padding:6px 0;margin:0 0 4px 0;font-family:Arial,Sans-se=
rif;font-size:13px;line-height:1.4;border:1px Solid #fff;background:#fff;co=
lor:#090;font-weight:normal"><strong>This event has been changed.</strong><=
/h4><div style=3D"padding:2px"><span itemprop=3D"publisher" itemscope itemt=
ype=3D"http://schema.org/Organization"><meta itemprop=3D"name" content=3D"G=
oogle Calendar"/></span><meta itemprop=3D"eventId/googleCalendar" content=
=3D"62kon3jnin570da8ggvcvs9u9c"/><div style=3D"float:right;font-weight:bold=
;font-size:13px"> <a href=3D"https://www.google.com/calendar/event?action=
=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZ=
WN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q=
0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
more details &raquo;</a><br></div><h3 style=3D"padding:0 0 6px 0;margin:0;f=
ont-family:Arial,Sans-serif;font-size:16px;font-weight:bold;color:#222"><sp=
an itemprop=3D"name">Yocto Project Technical Team Meeting</span></h3><table=
 cellpadding=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"=
><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-si=
ze:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i st=
yle=3D"font-style:normal">When</i></div></td><td style=3D"padding-bottom:10=
px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><=
div style=3D"text-indent:-1px"><time itemprop=3D"startDate" datetime=3D"201=
80605T150000Z"></time><time itemprop=3D"endDate" datetime=3D"20180605T15300=
0Z"></time>Monthly from 8am to 8:30am on the first Tuesday <span style=3D"c=
olor:#888">Pacific Time</span></div></td></tr><tr><td style=3D"padding:0 1e=
m 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space=
:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Wher=
e</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-ser=
if;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px=
"><span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place=
"><span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.=
us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://maps.google.com=
/maps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&amp;hl=3Den" style=3D"c=
olor:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</=
span></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-fami=
ly:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px=
" valign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td=
><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13=
px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctopr=
oject.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:=
Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" v=
align=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><td sty=
le=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><td st=
yle=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-famil=
y:Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-rig=
ht:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=
=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=
=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span itempro=
p=3D"name" class=3D"notranslate">theyoctoproject@gmail.com</span><meta item=
prop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span itemprop=
=3D"organizer" itemscope itemtype=3D"http://schema.org/Person"><meta itempr=
op=3D"name" content=3D"theyoctoproject@gmail.com"/><meta itemprop=3D"email"=
 content=3D"theyoctoproject@gmail.com"/></span><span style=3D"font-size:11p=
x;color:#888"> - organizer</span></div></div></div></td></tr><tr><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:C=
ourier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:=
10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"=
text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"=
attendee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D=
"name" class=3D"notranslate">stephen.k.jolley@intel.com</span><meta itempro=
p=3D"email" content=3D"stephen.k.jolley@intel.com"/></span></div></div></di=
v></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-seri=
f;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><sp=
an style=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><t=
d style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;c=
olor:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.=
3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/=
Person"><span itemprop=3D"name" class=3D"notranslate">yocto@yoctoproject.or=
g</span><meta itemprop=3D"email" content=3D"yocto@yoctoproject.org"/></span=
></div></div></div></td></tr></table></td></tr></table><div style=3D"paddin=
g-bottom:15px;font-family:Arial,Sans-serif;font-size:13px;color:#222;white-=
space:pre-wrap!important;white-space:-moz-pre-wrap!important;white-space:-p=
re-wrap!important;white-space:-o-pre-wrap!important;white-space:pre;word-wr=
ap:break-word"><strong style=3D"color:#080">Changed: </strong><span>We enco=
urage people attending the meeting to logon and announce themselves on the =
Yocto Project IRC chancel during the meeting (optional):<br><br>Yocto IRC: =
<a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net=
%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNEh9OQrs1YB=
cw7IAy-tvGf0ilzcGA" target=3D"_blank">http://webchat.freenode.net/?channels=
=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%=
3A%2F%2Fwww.yoctoproject.org%2Fmonthly-technical-call%2F&amp;sa=3DD&amp;usd=
=3D2&amp;usg=3DAFQjCNGMy6HWSDQC3zS08bf7hZ0Lrg0XcA" target=3D"_blank">https:=
//www.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is with Z=
oom at: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj=
%2F990892712&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNHX_hluoIn561yqnT2i0scv-=
HJOEw" target=3D"_blank">https://zoom.us/j/990892712</a></span><meta itempr=
op=3D"description" content=3D"We encourage people attending the meeting to =
logon and announce themselves on the Yocto Project IRC chancel during the m=
eeting (optional):Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto=
Wiki: https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Z=
oom at: https://zoom.us/j/990892712"/></div></div><p style=3D"color:#222;fo=
nt-size:13px;margin:0"><span style=3D"color:#888">Going?&nbsp;&nbsp;&nbsp;<=
/span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<strong><span itempr=
op=3D"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction">=
<meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Y=
es"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/Htt=
pActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/HttpReq=
uestMethod/GET"/><a href=3D"https://www.google.com/calendar/event?action=3D=
RESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZ=
WN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTE=
zYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_An=
geles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemp=
rop=3D"url">Yes</a></span></span><span style=3D"margin:0 0.4em;font-weight:=
normal"> - </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"=
http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http=
://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemscope i=
temtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" h=
ref=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.goo=
gle.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdnd=
mN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGhleW9=
jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYT=
hkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"colo=
r:#20c;white-space:nowrap" itemprop=3D"url">Maybe</a></span></span><span st=
yle=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"poten=
tialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemp=
rop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/No"/><span i=
temprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandl=
er"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/G=
ET"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;=
eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&am=
p;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q=
0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https:=
//www.google.com/calendar/event?action=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGR=
hOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wc=
m9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&=
amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c=
;white-space:nowrap" itemprop=3D"url">more options &raquo;</a></p></td></tr=
><tr><td style=3D"background-color:#f6f6f6;color:#888;border-top:1px Solid =
#ccc;font-family:Arial,Sans-serif;font-size:11px"><p>Invitation from <a hre=
f=3D"https://www.google.com/calendar/" target=3D"_blank" style=3D"">Google =
Calendar</a></p><p>You are receiving this courtesy email at the account yoc=
to@yoctoproject.org because you are an attendee of this event.</p><p>To sto=
p receiving future updates for this event, decline this event. Alternativel=
y you can sign up for a Google account at https://www.google.com/calendar/ =
and control your notification settings for your entire calendar.</p><p>Forw=
arding this invitation could allow any recipient to modify your RSVP respon=
se. <a href=3D"https://support.google.com/calendar/answer/37135#forwarding"=
>Learn More</a>.</p></td></tr></table></div></span></span>

--0000000000006344f7056d5bf2da
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
DTSTART;TZID=America/Los_Angeles:20180605T080000
DTEND;TZID=America/Los_Angeles:20180605T083000
RRULE:FREQ=MONTHLY;BYDAY=1TU
DTSTAMP:20180529T175559Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:62kon3jnin570da8ggvcvs9u9c@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@intel
 .com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20180524T181406Z
DESCRIPTION:We encourage people attending the meeting to logon and announce
  themselves on the Yocto Project IRC chancel during the meeting (optional):
 <br><br>Yocto IRC: <a href="https://www.google.com/url?q=http%3A%2F%2Fwebch
 at.freenode.net%2F%3Fchannels%3D%23yocto&amp\;sa=D&amp\;usd=2&amp\;usg=AFQj
 CNEvOHVIkxKIrfXWfUxCcVS5_8kh5w" target="_blank">http://webchat.freenode.net
 /?channels=#yocto</a><br><br>Wiki: <a href="https://www.google.com/url?q=ht
 tps%3A%2F%2Fwww.yoctoproject.org%2Fmonthly-technical-call%2F&amp\;sa=D&amp\
 ;usd=2&amp\;usg=AFQjCNHoSQyjbIyR8svGWh4_dnL5VNbyig" target="_blank">https:/
 /www.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is with Zo
 om at: <a href="https://www.google.com/url?q=https%3A%2F%2Fzoom.us%2Fj%2F99
 0892712&amp\;sa=D&amp\;usd=2&amp\;usg=AFQjCNG2F5sUpm-S-RhkqNhXVBd3m1_3LA" t
 arget="_blank">https://zoom.us/j/990892712</a>\n\n-::~:~::~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-\nPlease do n
 ot edit this section of the description.\n\nView your event at https://www.
 google.com/calendar/event?action=VIEW&eid=NjJrb24zam5pbjU3MGRhOGdndmN2czl1O
 WMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvb
 TcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&ctz=America%2FLos_An
 geles&hl=en&es=0.\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:
 ~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20180529T175559Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:1
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

--0000000000006344f7056d5bf2da--

--0000000000006344fb056d5bf2dc
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgwNjA1VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgwNjA1VDA4MzAwMA0KUlJVTEU6RlJFUT1NT05U
SExZO0JZREFZPTFUVQ0KRFRTVEFNUDoyMDE4MDUyOVQxNzU1NTlaDQpPUkdBTklaRVI7Q049dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0K
VUlEOjYya29uM2puaW41NzBkYThnZ3ZjdnM5dTljQGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JTVlA9
VFJVRQ0KIDtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVB
TDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049
c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnN0ZXBoZW4u
ay5qb2xsZXlAaW50ZWwNCiAuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049eW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KQ1JFQVRFRDoyMDE4MDUyNFQxODE0MDZaDQpERVNDUklQVElPTjpXZSBlbmNvdXJhZ2UgcGVv
cGxlIGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UNCiAgdGhlbXNl
bHZlcyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcg
KG9wdGlvbmFsKToNCiA8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0cHM6Ly93d3cuZ29v
Z2xlLmNvbS91cmw/cT1odHRwJTNBJTJGJTJGd2ViY2gNCiBhdC5mcmVlbm9kZS5uZXQlMkYlM0Zj
aGFubmVscyUzRCUyM3lvY3RvJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7dXNnPUFGUWoNCiBD
TkV2T0hWSWt4S0lyZlhXZlV4Q2NWUzVfOGtoNXciIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vd2Vi
Y2hhdC5mcmVlbm9kZS5uZXQNCiAvP2NoYW5uZWxzPSN5b2N0bzwvYT48YnI+PGJyPldpa2k6IDxh
IGhyZWY9Imh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vdXJsP3E9aHQNCiB0cHMlM0ElMkYlMkZ3d3cu
eW9jdG9wcm9qZWN0Lm9yZyUyRm1vbnRobHktdGVjaG5pY2FsLWNhbGwlMkYmYW1wXDtzYT1EJmFt
cFwNCiA7dXNkPTImYW1wXDt1c2c9QUZRakNOSG9TUXlqYkl5UjhzdkdXaDRfZG5MNVZOYnlpZyIg
dGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8NCiAvd3d3LnlvY3RvcHJvamVjdC5vcmcvcHVibGljLXZp
cnR1YWwtbWVldGluZ3MvPC9hPjxicj48YnI+QnJpZGdlIGlzIHdpdGggWm8NCiBvbSBhdDogPGEg
aHJlZj0iaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS91cmw/cT1odHRwcyUzQSUyRiUyRnpvb20udXMl
MkZqJTJGOTkNCiAwODkyNzEyJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7dXNnPUFGUWpDTkcy
RjVzVXBtLVMtUmhrcU5oWFZCZDNtMV8zTEEiIHQNCiBhcmdldD0iX2JsYW5rIj5odHRwczovL3pv
b20udXMvai85OTA4OTI3MTI8L2E+XG5cbi06On46fjo6fjp+On46fjp+On46fjp+On4NCiA6fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46On46fjo6
LVxuUGxlYXNlIGRvIG4NCiBvdCBlZGl0IHRoaXMgc2VjdGlvbiBvZiB0aGUgZGVzY3JpcHRpb24u
XG5cblZpZXcgeW91ciBldmVudCBhdCBodHRwczovL3d3dy4NCiBnb29nbGUuY29tL2NhbGVuZGFy
L2V2ZW50P2FjdGlvbj1WSUVXJmVpZD1OakpyYjI0emFtNXBialUzTUdSaE9HZG5kbU4yY3psMU8N
CiBXTWdlVzlqZEc5QWVXOWpkRzl3Y205cVpXTjBMbTl5WncmdG9rPU1qVWpkR2hsZVc5amRHOXdj
bTlxWldOMFFHZHRZV2xzTG1OdmINCiBUY3daVEV6WW1ObU9URTJNMlEwWldJNFlXSTVPREEyTkda
a1lqZzNabVEzWVdaaFlUaGtaRFEmY3R6PUFtZXJpY2ElMkZMb3NfQW4NCiBnZWxlcyZobD1lbiZl
cz0wLlxuLTo6fjp+Ojp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjoNCiB+On46fjp+On46fjp+On46fjp+On46fjo6fjp+OjotDQpMQVNULU1PRElGSUVEOjIw
MTgwNTI5VDE3NTU1OVoNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ov
OTkwODkyNzEyDQpTRVFVRU5DRToxDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1NQVJZOllvY3RvIFBy
b2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJN
DQpBQ1RJT046RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0K
VFJJR0dFUjotUDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5E
QVINCg==

--0000000000006344fb056d5bf2dc--
