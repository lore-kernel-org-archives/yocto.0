Return-Path: <358cbXA8JBcwBzwG6uB67961wuBy4s03.u64G6uB6G6uB67961wuB.69y@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C623AE00D1F; Thu, 20 Dec 2018 08:48:40 -0800 (PST)
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
	*      [209.85.160.202 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
	[209.85.160.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99212E00CF3
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 08:48:39 -0800 (PST)
Received: by mail-qt1-f202.google.com with SMTP id 41so2396469qto.17
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 08:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=EuDUprT4p6YnnRptHVV8r2zlhgCH5q/QvOoAouWqqd8=;
	b=nFi4lt8wv1vDtLtRneYlNdf6ISmojTCqxo4DaEq8lcaSOecrNwvUBBZe4QeZYdK1Ho
	oD8pUTUrZzRgiEGbgKPu5ZMAS2co2e9QDAG97CvfBFZ27a58P2QJ+7uZFINqQjjWp7Iw
	a/xPhPGhrajOrqzPJvBQaQk0kDEMXxN8JKBVZyvb2UCnRseDQqXmtPc54oQ9g8n3F3fK
	dYSc/uDcIFQjiWX9ZWKMnrLx++F8w/XHQSs8oUFU/q3FHMS0X4s6u+TsvSWUTjAGKwGm
	P0QsBIYI+iy8QC/60M7AxVkw2g5eCud8sRmZVYu9C3jXtoh1MR8MhvwS+7ActZpR8W9z
	1IEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=EuDUprT4p6YnnRptHVV8r2zlhgCH5q/QvOoAouWqqd8=;
	b=meoH/F8zoubehuv63fhE/n+Gl9Isfw5581iZNfgeIhvhPGMZKuN+bXhU5CnexFGb9e
	N+RNWUe+NZuDyPobna3bo0mYMJoo/7z/K9lI4J5BtJSxiMVig2hcU2iFlHQ++L/uK5R9
	zQZsR/MVFXzfP/YyHSef4E166J8yGoWiU3IiGX9cPq5SRvH7JGcQkJVQqxpS0iOWIndY
	ci/oXkTnBQkJvu6z1g2IVxiZPm4Ux5LVTMHRhY9NlCamYu5sIqbex7hTYzm0JfNjouEg
	irktY/DM46tEzviBPAeNXe0QZ2bqWMGvHDfUoO2cEx9emQErhJS2xu+qItMO+oLEtAXa
	W7rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=EuDUprT4p6YnnRptHVV8r2zlhgCH5q/QvOoAouWqqd8=;
	b=a9obdTUm83tNZ5rq8P0Ebgc/Qrq/0eUT6O8zyPAYmvE/l4mKheW7aEyjR0ZdFQrgVQ
	Qbi4etoojB2lHbfSuQ13wtKx9hPQ+mEcggp9m3/r1Ql4dyMdQ4hZIBXLhbjZmaOH/uTJ
	F5aJbTxS+M12LK2XLgTVSQNZcL62NYJ63Kh+pn7wSCLTIDyS56yfHjsq2qHRKNqNllD0
	Rv2kYBu8dho0mBhm1L1w8HJtWMT2u+c3yC/HRRA01gy+8sXt+s5l/f9A5G6rwj4lTI92
	GHv2CFrKG3t9pkMJaTmXLHsVCWxzExYajJrgAjm277zTxpBoSBVkHkwdc6GDNcHY1Ctl
	abYA==
X-Gm-Message-State: AA+aEWbSbHbQRArJ/t1qg0TTAUjK7AB/h+ygf/UpLQuSTtIfGFOT9B8n
	IwHvntFF5AS6OX5xhOSl9d4c1urmbmG7i1kpxHIL
X-Google-Smtp-Source: AFSGD/US9L3zopDu9H9GaSxgJ73n/zzy+0nJM7gjsap2t/AX/agvXg9EncvogkpNW6aQ8dUGtwHfzkTKCuMbhrBFaAsk
MIME-Version: 1.0
X-Received: by 2002:a0c:b61a:: with SMTP id f26mr24070376qve.9.1545324519014; 
	Thu, 20 Dec 2018 08:48:39 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <00000000000004c5b9057d76e7e0@google.com>
Date: Thu, 20 Dec 2018 16:48:39 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
Subject: Canceled event: Yocto Project Weekly Triage Meeting @ Thu Dec 27, 2018 7:30am - 8:30am (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Thu, 20 Dec 2018 16:48:40 -0000
X-Groupsio-MsgNum: 43578
Content-Type: multipart/mixed; boundary="00000000000004c59d057d76e7df"

--00000000000004c59d057d76e7df
Content-Type: multipart/alternative; boundary="00000000000004c59a057d76e7dd"

--00000000000004c59a057d76e7dd
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjYW5jZWxlZC4NCg0KVGl0bGU6IFlvY3RvIFByb2plY3QgV2Vl
a2x5IFRyaWFnZSBNZWV0aW5nDQpZb2N0byBQcm9qZWN0IFdlZWtseSBUcmlhZ2UgTWVldGluZyBE
ZXRhaWxzDQoNCg0KV2lraTogaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9CdWdf
VHJpYWdlDQoNCg0KWW9jdG8gSVJDOiBodHRwOi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQvP2NoYW5u
ZWxzPSN5b2N0byAtIFdoZW4geW91IGpvaW4gIA0Kc3RhdGUgeW91ciBuYW1lIG9uIHRoZSBicmlk
Z2Ugb3IgSVJDLg0KDQpXZSB1c2UgYSBab29tIEJyaWRnZSBhdDogaHR0cHM6Ly96b29tLnVzL2ov
NDU0MzY3NjAzDQpXaGVuOiBUaHUgRGVjIDI3LCAyMDE4IDc6MzBhbSDigJMgODozMGFtIFBhY2lm
aWMgVGltZSAtIExvcyBBbmdlbGVzDQpXaGVyZTogWm9vbSBNZWV0aW5nOiBodHRwczovL3pvb20u
dXMvai80NTQzNjc2MDMNCkNhbGVuZGFyOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpXaG86DQog
ICAgICogdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbSAtIG9yZ2FuaXplcg0KICAgICAqIHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCg0KDQpJbnZpdGF0aW9uIGZyb20gR29vZ2xlIENhbGVuZGFyOiBo
dHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyLw0KDQpZb3UgYXJlIHJlY2VpdmluZyB0aGlz
IGNvdXJ0ZXN5IGVtYWlsIGF0IHRoZSBhY2NvdW50IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcgIA0K
YmVjYXVzZSB5b3UgYXJlIGFuIGF0dGVuZGVlIG9mIHRoaXMgZXZlbnQuDQoNClRvIHN0b3AgcmVj
ZWl2aW5nIGZ1dHVyZSB1cGRhdGVzIGZvciB0aGlzIGV2ZW50LCBkZWNsaW5lIHRoaXMgZXZlbnQu
ICANCkFsdGVybmF0aXZlbHkgeW91IGNhbiBzaWduIHVwIGZvciBhIEdvb2dsZSBhY2NvdW50IGF0
ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvIGFuZCBjb250cm9sIHlvdXIgbm90
aWZpY2F0aW9uIHNldHRpbmdzIGZvciAgDQp5b3VyIGVudGlyZSBjYWxlbmRhci4NCg0KRm9yd2Fy
ZGluZyB0aGlzIGludml0YXRpb24gY291bGQgYWxsb3cgYW55IHJlY2lwaWVudCB0byBtb2RpZnkg
eW91ciBSU1ZQICANCnJlc3BvbnNlLiBMZWFybiBtb3JlIGF0ICANCmh0dHBzOi8vc3VwcG9ydC5n
b29nbGUuY29tL2NhbGVuZGFyL2Fuc3dlci8zNzEzNSNmb3J3YXJkaW5nDQo=

--00000000000004c59a057d76e7dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span itemprop=
=3D"object" itemscope itemtype=3D"http://schema.org/Event"><div style=3D"">=
<table cellspacing=3D"0" cellpadding=3D"8" border=3D"0" summary=3D"" style=
=3D"width:100%;font-family:Arial,Sans-serif;border:1px Solid #ccc;border-wi=
dth:1px 2px 2px 1px;background-color:#fff;"><tr><td><meta itemprop=3D"event=
Status" content=3D"http://schema.org/EventCancelled"/><h4 style=3D"padding:=
6px 0;margin:0 0 4px 0;font-family:Arial,Sans-serif;font-size:13px;line-hei=
ght:1.4;border:1px Solid #fff;background:#fff;color:#f00;font-weight:normal=
"><strong>This event has been canceled.</strong></h4><div style=3D"padding:=
2px"><span itemprop=3D"publisher" itemscope itemtype=3D"http://schema.org/O=
rganization"><meta itemprop=3D"name" content=3D"Google Calendar"/></span><m=
eta itemprop=3D"eventId/googleCalendar" content=3D"69b8n4lifp3et8i02e5gp0h9=
dk_20181227T153000Z"/><h3 style=3D"padding:0 0 6px 0;margin:0;font-family:A=
rial,Sans-serif;font-size:16px;font-weight:bold;color:#222"><span itemprop=
=3D"name">Yocto Project Weekly Triage Meeting</span></h3><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"><tr><td sty=
le=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-=
style:normal">When</i></div></td><td style=3D"padding-bottom:10px;font-fami=
ly:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D=
"text-indent:-1px"><time itemprop=3D"startDate" datetime=3D"20181227T153000=
Z"></time><time itemprop=3D"endDate" datetime=3D"20181227T163000Z"></time>T=
hu Dec 27, 2018 7:30am =E2=80=93 8:30am <span style=3D"color:#888">Pacific =
Time - Los Angeles</span></div></td></tr><tr><td style=3D"padding:0 1em 10p=
x 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowr=
ap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Where</i>=
</div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;fo=
nt-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><sp=
an itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place"><sp=
an itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us/j/=
454367603</span><span dir=3D"ltr"> (<a href=3D"https://maps.google.com/maps=
?q=3DZoom+Meeting:+https://zoom.us/j/454367603&amp;hl=3Den" style=3D"color:=
#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</span>=
</span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" val=
ign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td><td =
style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;co=
lor:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctoproject=
.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial=
,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=
=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><td style=3D=
"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222=
" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:C=
ourier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:=
10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"=
text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"=
attendee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D=
"name" class=3D"notranslate">theyoctoproject@gmail.com</span><meta itemprop=
=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span itemprop=3D"=
organizer" itemscope itemtype=3D"http://schema.org/Person"><meta itemprop=
=3D"name" content=3D"theyoctoproject@gmail.com"/><meta itemprop=3D"email" c=
ontent=3D"theyoctoproject@gmail.com"/></span><span style=3D"font-size:11px;=
color:#888"> - organizer</span></div></div></div></td></tr><tr><td style=3D=
"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;=
width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Cour=
ier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10p=
x;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"tex=
t-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"att=
endee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"na=
me" class=3D"notranslate">yocto@yoctoproject.org</span><meta itemprop=3D"em=
ail" content=3D"yocto@yoctoproject.org"/></span></div></div></div></td></tr=
></table></td></tr></table><div style=3D"padding-bottom:15px;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#222;white-space:pre-wrap!important;whi=
te-space:-moz-pre-wrap!important;white-space:-pre-wrap!important;white-spac=
e:-o-pre-wrap!important;white-space:pre;word-wrap:break-word"><span>Yocto P=
roject Weekly Triage Meeting Details<p><br>Wiki: <a href=3D"https://www.goo=
gle.com/url?q=3Dhttps%3A%2F%2Fwiki.yoctoproject.org%2Fwiki%2FBug_Triage&amp=
;sa=3DD&amp;ust=3D1545756518996000&amp;usg=3DAFQjCNGYA2hDRZwDvrd8IHEsxgDQmQ=
UtIQ" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Bug_Triage</a><p=
><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebc=
hat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D154575651899=
6000&amp;usg=3DAFQjCNHs-_yweFBAiAEtlqdT-GgSSCvJ8A" target=3D"_blank">http:/=
/webchat.freenode.net/?channels=3D#yocto</a> - When you join state your nam=
e on the bridge or IRC.<p>We use a Zoom Bridge at: <a href=3D"https://www.g=
oogle.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F454367603&amp;sa=3DD&amp;ust=
=3D1545756518996000&amp;usg=3DAFQjCNG08FsjSZN6hLCrPNV_XWEyhyD5Mw" target=3D=
"_blank">https://zoom.us/j/454367603</a></p></p></p></span><meta itemprop=
=3D"description" content=3D"Yocto Project Weekly Triage Meeting Details


Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage


Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto - When you join s=
tate your name on the bridge or IRC.

We use a Zoom Bridge at: https://zoom.us/j/454367603"/></div></div></td></t=
r><tr><td style=3D"background-color:#f6f6f6;color:#888;border-top:1px Solid=
 #ccc;font-family:Arial,Sans-serif;font-size:11px"><p>Invitation from <a hr=
ef=3D"https://www.google.com/calendar/" target=3D"_blank" style=3D"">Google=
 Calendar</a></p><p>You are receiving this courtesy email at the account yo=
cto@yoctoproject.org because you are an attendee of this event.</p><p>To st=
op receiving future updates for this event, decline this event. Alternative=
ly you can sign up for a Google account at https://www.google.com/calendar/=
 and control your notification settings for your entire calendar.</p><p>For=
warding this invitation could allow any recipient to modify your RSVP respo=
nse. <a href=3D"https://support.google.com/calendar/answer/37135#forwarding=
">Learn More</a>.</p></td></tr></table></div></span></span>

--00000000000004c59a057d76e7dd
Content-Type: text/calendar; charset="UTF-8"; method=CANCEL
Content-Transfer-Encoding: 7bit

BEGIN:VCALENDAR
PRODID:-//Google Inc//Google Calendar 70.9054//EN
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:CANCEL
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
DTSTART;TZID=America/Los_Angeles:20181227T073000
DTEND;TZID=America/Los_Angeles:20181227T083000
DTSTAMP:20181220T164839Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:69b8n4lifp3et8i02e5gp0h9dk@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;CN=theyoc
 toproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;CN=yo
 cto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
RECURRENCE-ID;TZID=America/Los_Angeles:20181227T073000
CREATED:20180524T175433Z
DESCRIPTION:Yocto Project Weekly Triage Meeting Details\n\n\nWiki: https://
 wiki.yoctoproject.org/wiki/Bug_Triage\n\n\nYocto IRC: http://webchat.freeno
 de.net/?channels=#yocto - When you join state your name on the bridge or IR
 C.\n\nWe use a Zoom Bridge at: https://zoom.us/j/454367603
LAST-MODIFIED:20181220T164836Z
LOCATION:Zoom Meeting: https://zoom.us/j/454367603
SEQUENCE:1
STATUS:CANCELLED
SUMMARY:Yocto Project Weekly Triage Meeting
TRANSP:OPAQUE
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:This is an event reminder
TRIGGER:-P0DT0H15M0S
END:VALARM
END:VEVENT
END:VCALENDAR

--00000000000004c59a057d76e7dd--

--00000000000004c59d057d76e7df
Content-Type: application/ics; name="invite.ics"
Content-Disposition: attachment; filename="invite.ics"
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpQUk9ESUQ6LS8vR29vZ2xlIEluYy8vR29vZ2xlIENhbGVuZGFyIDcw
LjkwNTQvL0VODQpWRVJTSU9OOjIuMA0KQ0FMU0NBTEU6R1JFR09SSUFODQpNRVRIT0Q6Q0FOQ0VM
DQpCRUdJTjpWVElNRVpPTkUNClRaSUQ6QW1lcmljYS9Mb3NfQW5nZWxlcw0KWC1MSUMtTE9DQVRJ
T046QW1lcmljYS9Mb3NfQW5nZWxlcw0KQkVHSU46REFZTElHSFQNClRaT0ZGU0VURlJPTTotMDgw
MA0KVFpPRkZTRVRUTzotMDcwMA0KVFpOQU1FOlBEVA0KRFRTVEFSVDoxOTcwMDMwOFQwMjAwMDAN
ClJSVUxFOkZSRVE9WUVBUkxZO0JZTU9OVEg9MztCWURBWT0yU1UNCkVORDpEQVlMSUdIVA0KQkVH
SU46U1RBTkRBUkQNClRaT0ZGU0VURlJPTTotMDcwMA0KVFpPRkZTRVRUTzotMDgwMA0KVFpOQU1F
OlBTVA0KRFRTVEFSVDoxOTcwMTEwMVQwMjAwMDANClJSVUxFOkZSRVE9WUVBUkxZO0JZTU9OVEg9
MTE7QllEQVk9MVNVDQpFTkQ6U1RBTkRBUkQNCkVORDpWVElNRVpPTkUNCkJFR0lOOlZFVkVOVA0K
RFRTVEFSVDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxODEyMjdUMDczMDAwDQpEVEVORDtU
WklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxODEyMjdUMDgzMDAwDQpEVFNUQU1QOjIwMTgxMjIw
VDE2NDgzOVoNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0
aGV5b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGtA
Z29vZ2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9QUNDRVBURUQ7Q049dGhleW9jDQogdG9wcm9qZWN0QGdtYWlsLmNvbTtYLU5V
TS1HVUVTVFM9MDptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0KQVRURU5ERUU7Q1VU
WVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O0NOPXlvDQogY3RvQHlvY3RvcHJvamVjdC5vcmc7WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNClJFQ1VSUkVOQ0UtSUQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVz
OjIwMTgxMjI3VDA3MzAwMA0KQ1JFQVRFRDoyMDE4MDUyNFQxNzU0MzNaDQpERVNDUklQVElPTjpZ
b2N0byBQcm9qZWN0IFdlZWtseSBUcmlhZ2UgTWVldGluZyBEZXRhaWxzXG5cblxuV2lraTogaHR0
cHM6Ly8NCiB3aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9CdWdfVHJpYWdlXG5cblxuWW9jdG8g
SVJDOiBodHRwOi8vd2ViY2hhdC5mcmVlbm8NCiBkZS5uZXQvP2NoYW5uZWxzPSN5b2N0byAtIFdo
ZW4geW91IGpvaW4gc3RhdGUgeW91ciBuYW1lIG9uIHRoZSBicmlkZ2Ugb3IgSVINCiBDLlxuXG5X
ZSB1c2UgYSBab29tIEJyaWRnZSBhdDogaHR0cHM6Ly96b29tLnVzL2ovNDU0MzY3NjAzDQpMQVNU
LU1PRElGSUVEOjIwMTgxMjIwVDE2NDgzNloNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6
Ly96b29tLnVzL2ovNDU0MzY3NjAzDQpTRVFVRU5DRToxDQpTVEFUVVM6Q0FOQ0VMTEVEDQpTVU1N
QVJZOllvY3RvIFByb2plY3QgV2Vla2x5IFRyaWFnZSBNZWV0aW5nDQpUUkFOU1A6T1BBUVVFDQpC
RUdJTjpWQUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpUaGlzIGlzIGFuIGV2ZW50
IHJlbWluZGVyDQpUUklHR0VSOi1QMERUMEgxNU0wUw0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0K
RU5EOlZDQUxFTkRBUg0K

--00000000000004c59d057d76e7df--
