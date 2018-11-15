Return-Path: <33aDtWw8JBboymj3thytuwtojhylrfnq.htr3thyt3thytuwtojhy.twl@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D534E0095C; Thu, 15 Nov 2018 08:37:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.74 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f74.google.com (mail-yw1-f74.google.com
	[209.85.161.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5369FE008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 08:37:50 -0800 (PST)
Received: by mail-yw1-f74.google.com with SMTP id x186-v6so15046065ywd.18
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 08:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=Pnn/fa4/l3q6hvxxvoe4Vz9ySbywdHxTiIm74mViKj8=;
	b=P0DBXpBBYi/B679qBLTpbkpMytY1hbmnbhH0LWybZrzLakhdEdxe5Ut4IT/Jb6zKeL
	BEBvi4QvecI0zcdF/fdGuix+eghzXCRxiLf2vGicGeK1ytuBtAuYlHw2gZHF0aVWLJpi
	/Ng87CbWPKJ8/uglfeBv1esNDM/9yZOivSLW4qJLZXM6Z/E601v7OJGOn7iUQiDIs8al
	4GUaV+o13mPThS1AEkF3NCE3TCZ8DJCplUwhYypkmIFuUM1/B1nsVNOl1BgDwRSYJdr/
	gRqhTZ+Z0Dv3xO/d7egm3V6+0oRbMjS0FB488k/uvfrv4BIW+WU2MUK7uWDaA6baWwbu
	FvTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=Pnn/fa4/l3q6hvxxvoe4Vz9ySbywdHxTiIm74mViKj8=;
	b=HsGFHJtmnJCFh8AuhAafm9eSwDsaHyDjZ/QNFk91zdUFLLfr559wtul2uSCEq5fFBi
	4Y9tmuBkkAHq+v7ia3zt417eXOV1GetejE4nOHvsytb/6ltCZmkg6uB/Kqwnx4DeLjhV
	OiSb7T5IVFrZoNEMbwp/R0KwTO7CqMpNrok1y31MxIGTnVlC1jm5FXto5U1eAKZKipIQ
	mDTtO1KNlXT6U6Vz9WDA/j4V/cdZjT8yOH4Furh+hkt0fbohdLKKjqsgqwXn0F1HgcRm
	XMZWdaZjRtwWLmATLdJtFWPo9dGOg3paaQZrxYFrWCFecb7lUrcjyGBrrcIwWuJmWdBc
	EPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=Pnn/fa4/l3q6hvxxvoe4Vz9ySbywdHxTiIm74mViKj8=;
	b=aODJdr38RgLbP2mzJWpcI4Z0HwzrWGBRU/EVZxMfg/gWtV+9BWO+ij/pQM0Utt39ws
	B2ehjpKrMq09P0itt1FodGAMewK5WOx4IOTzB6VtFEZAhj5p3e/FT3iw1h8UqOtosZXm
	bFneWeDnqYAKH66DyYD5IveSkUmdZ2TjXO5u4I5eypInfreWxpjrcswHjcJmPnYDCS6X
	Hv4Wgn37ntPmZODvljH1NYe94G+zowL9L/6sXlKdYHeXE3wPGMDOjKF1RGkyYqPOytNs
	+kEQEE6AU5NX5m5oI3nw8+F7JNSbJgjLeaP41CRWbgQ863LgKQChvQvXy1v1d+9C7xVp
	NSFg==
X-Gm-Message-State: AGRZ1gIzRHWTEkaa4h+unV8UqKjU0TxsScpznBjryV24cRx/SKxVd6A3
	oJdUz6/qcrKgRXfr/aomLc/Dh5FdqXlQAa+un53v
X-Google-Smtp-Source: AJdET5f72Sy+4awKbVcPLOaeqYDGZPlXRZ6TT2TGuCWQQ6Q4NsKEo7BNrwLjVTl77rIQ48Q0Cx+0mFL4iX2Xsyv6nRVB
MIME-Version: 1.0
X-Received: by 2002:a25:bdc5:: with SMTP id g5-v6mr605211ybk.93.1542299869763; 
	Thu, 15 Nov 2018 08:37:49 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000dfde1b057ab6ab32@google.com>
Date: Thu, 15 Nov 2018 16:37:49 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
Subject: Canceled event with note: Yocto Project Weekly Triage Meeting @ Thu Nov 22, 2018 7:30am - 8:30am (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Thu, 15 Nov 2018 16:37:51 -0000
X-Groupsio-MsgNum: 43255
Content-Type: multipart/mixed; boundary="000000000000dfde02057ab6ab31"

--000000000000dfde02057ab6ab31
Content-Type: multipart/alternative; boundary="000000000000dfddff057ab6ab2f"

--000000000000dfddff057ab6ab2f
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjYW5jZWxlZCB3aXRoIHRoaXMgbm90ZToNCiJDYW5jZWwgZHVl
IHRvIFVTIFRoYW5rc2dpdmluZy4iDQoNClRpdGxlOiBZb2N0byBQcm9qZWN0IFdlZWtseSBUcmlh
Z2UgTWVldGluZw0KWW9jdG8gUHJvamVjdCBXZWVrbHkgVHJpYWdlIE1lZXRpbmcgRGV0YWlscw0K
DQoNCldpa2k6IGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZQ0K
DQoNCllvY3RvIElSQzogaHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9j
dG8gLSBXaGVuIHlvdSBqb2luICANCnN0YXRlIHlvdXIgbmFtZSBvbiB0aGUgYnJpZGdlIG9yIElS
Qy4NCg0KV2UgdXNlIGEgWm9vbSBCcmlkZ2UgYXQ6IGh0dHBzOi8vem9vbS51cy9qLzQ1NDM2NzYw
Mw0KV2hlbjogVGh1IE5vdiAyMiwgMjAxOCA3OjMwYW0g4oCTIDg6MzBhbSBQYWNpZmljIFRpbWUg
LSBMb3MgQW5nZWxlcw0KV2hlcmU6IFpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovNDU0
MzY3NjAzDQpDYWxlbmRhcjogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KV2hvOg0KICAgICAqIHRo
ZXlvY3RvcHJvamVjdEBnbWFpbC5jb20gLSBvcmdhbml6ZXINCiAgICAgKiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQoNCg0KSW52aXRhdGlvbiBmcm9tIEdvb2dsZSBDYWxlbmRhcjogaHR0cHM6Ly93
d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci8NCg0KWW91IGFyZSByZWNlaXZpbmcgdGhpcyBjb3VydGVz
eSBlbWFpbCBhdCB0aGUgYWNjb3VudCB5b2N0b0B5b2N0b3Byb2plY3Qub3JnICANCmJlY2F1c2Ug
eW91IGFyZSBhbiBhdHRlbmRlZSBvZiB0aGlzIGV2ZW50Lg0KDQpUbyBzdG9wIHJlY2VpdmluZyBm
dXR1cmUgdXBkYXRlcyBmb3IgdGhpcyBldmVudCwgZGVjbGluZSB0aGlzIGV2ZW50LiAgDQpBbHRl
cm5hdGl2ZWx5IHlvdSBjYW4gc2lnbiB1cCBmb3IgYSBHb29nbGUgYWNjb3VudCBhdCAgDQpodHRw
czovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyLyBhbmQgY29udHJvbCB5b3VyIG5vdGlmaWNhdGlv
biBzZXR0aW5ncyBmb3IgIA0KeW91ciBlbnRpcmUgY2FsZW5kYXIuDQoNCkZvcndhcmRpbmcgdGhp
cyBpbnZpdGF0aW9uIGNvdWxkIGFsbG93IGFueSByZWNpcGllbnQgdG8gbW9kaWZ5IHlvdXIgUlNW
UCAgDQpyZXNwb25zZS4gTGVhcm4gbW9yZSBhdCAgDQpodHRwczovL3N1cHBvcnQuZ29vZ2xlLmNv
bS9jYWxlbmRhci9hbnN3ZXIvMzcxMzUjZm9yd2FyZGluZw0K

--000000000000dfddff057ab6ab2f
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
"><strong>This event has been canceled with this note:</strong><br>"Cancel =
due to US Thanksgiving."</h4><div style=3D"padding:2px"><span itemprop=3D"p=
ublisher" itemscope itemtype=3D"http://schema.org/Organization"><meta itemp=
rop=3D"name" content=3D"Google Calendar"/></span><meta itemprop=3D"eventId/=
googleCalendar" content=3D"69b8n4lifp3et8i02e5gp0h9dk_20181122T153000Z"/><h=
3 style=3D"padding:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;font-siz=
e:16px;font-weight:bold;color:#222"><span itemprop=3D"name">Yocto Project W=
eekly Triage Meeting</span></h3><table cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" summary=3D"Event details"><tr><td style=3D"padding:0 1em 10px =
0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap=
;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">When</i></d=
iv></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-=
size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><time =
itemprop=3D"startDate" datetime=3D"20181122T153000Z"></time><time itemprop=
=3D"endDate" datetime=3D"20181122T163000Z"></time>Thu Nov 22, 2018 7:30am =
=E2=80=93 8:30am <span style=3D"color:#888">Pacific Time - Los Angeles</spa=
n></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,S=
ans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=
=3D"top"><div><i style=3D"font-style:normal">Where</i></div></td><td style=
=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222" valign=3D"top"><div style=3D"text-indent:-1px"><span itemprop=3D"locat=
ion" itemscope itemtype=3D"http://schema.org/Place"><span itemprop=3D"name"=
 class=3D"notranslate">Zoom Meeting: https://zoom.us/j/454367603</span><spa=
n dir=3D"ltr"> (<a href=3D"https://maps.google.com/maps?q=3DZoom+Meeting:+h=
ttps://zoom.us/j/454367603&amp;hl=3Den" style=3D"color:#20c;white-space:now=
rap" target=3D"_blank" itemprop=3D"map">map</a>)</span></span></div></td></=
tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-=
size:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i =
style=3D"font-style:normal">Calendar</i></div></td><td style=3D"padding-bot=
tom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"=
top"><div style=3D"text-indent:-1px">yocto@yoctoproject.org</div></td></tr>=
<tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-siz=
e:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i sty=
le=3D"font-style:normal">Who</i></div></td><td style=3D"padding-bottom:10px=
;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><ta=
ble cellspacing=3D"0" cellpadding=3D"0"><tr><td style=3D"padding-right:10px=
;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div st=
yle=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospace">=
&#x2022;</span></div></td><td style=3D"padding-right:10px;font-family:Arial=
,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div=
><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope it=
emtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notran=
slate">theyoctoproject@gmail.com</span><meta itemprop=3D"email" content=3D"=
theyoctoproject@gmail.com"/></span><span itemprop=3D"organizer" itemscope i=
temtype=3D"http://schema.org/Person"><meta itemprop=3D"name" content=3D"the=
yoctoproject@gmail.com"/><meta itemprop=3D"email" content=3D"theyoctoprojec=
t@gmail.com"/></span><span style=3D"font-size:11px;color:#888"> - organizer=
</span></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font=
-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=
=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x=
2022;</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><d=
iv style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemt=
ype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notransla=
te">yocto@yoctoproject.org</span><meta itemprop=3D"email" content=3D"yocto@=
yoctoproject.org"/></span></div></div></div></td></tr></table></td></tr></t=
able><div style=3D"padding-bottom:15px;font-family:Arial,Sans-serif;font-si=
ze:13px;color:#222;white-space:pre-wrap!important;white-space:-moz-pre-wrap=
!important;white-space:-pre-wrap!important;white-space:-o-pre-wrap!importan=
t;white-space:pre;word-wrap:break-word"><span>Yocto Project Weekly Triage M=
eeting Details<p><br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%=
3A%2F%2Fwiki.yoctoproject.org%2Fwiki%2FBug_Triage&amp;sa=3DD&amp;ust=3D1542=
731869746000&amp;usg=3DAFQjCNGdI5S76QPiGuOc6hBgktePer8GAQ" target=3D"_blank=
">https://wiki.yoctoproject.org/wiki/Bug_Triage</a><p><br>Yocto IRC: <a hre=
f=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3F=
channels%3D%23yocto&amp;sa=3DD&amp;ust=3D1542731869746000&amp;usg=3DAFQjCNE=
vGcvr6YIV3KEb1MmI14EJTvNqYQ" target=3D"_blank">http://webchat.freenode.net/=
?channels=3D#yocto</a> - When you join state your name on the bridge or IRC=
.<p>We use a Zoom Bridge at: <a href=3D"https://www.google.com/url?q=3Dhttp=
s%3A%2F%2Fzoom.us%2Fj%2F454367603&amp;sa=3DD&amp;ust=3D1542731869746000&amp=
;usg=3DAFQjCNE2JzY3DhXGl1jHWkbDGL1GBDjuNQ" target=3D"_blank">https://zoom.u=
s/j/454367603</a></p></p></p></span><meta itemprop=3D"description" content=
=3D"Yocto Project Weekly Triage Meeting Details


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

--000000000000dfddff057ab6ab2f
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
DTSTART;TZID=America/Los_Angeles:20181122T073000
DTEND;TZID=America/Los_Angeles:20181122T083000
DTSTAMP:20181115T163749Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:69b8n4lifp3et8i02e5gp0h9dk@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;CN=yo
 cto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;CN=theyoc
 toproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.com
RECURRENCE-ID;TZID=America/Los_Angeles:20181122T073000
CREATED:20180524T175433Z
DESCRIPTION:Yocto Project Weekly Triage Meeting Details\n\n\nWiki: https://
 wiki.yoctoproject.org/wiki/Bug_Triage\n\n\nYocto IRC: http://webchat.freeno
 de.net/?channels=#yocto - When you join state your name on the bridge or IR
 C.\n\nWe use a Zoom Bridge at: https://zoom.us/j/454367603
LAST-MODIFIED:20181115T163749Z
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

--000000000000dfddff057ab6ab2f--

--000000000000dfde02057ab6ab31
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
RFRTVEFSVDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxODExMjJUMDczMDAwDQpEVEVORDtU
WklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxODExMjJUMDgzMDAwDQpEVFNUQU1QOjIwMTgxMTE1
VDE2Mzc0OVoNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0
aGV5b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGtA
Z29vZ2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO0NOPXlvDQogY3RvQHlvY3RvcHJvamVjdC5vcmc7WC1O
VU0tR1VFU1RTPTA6bWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO0NOPXRo
ZXlvYw0KIHRvcHJvamVjdEBnbWFpbC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnRoZXlvY3Rv
cHJvamVjdEBnbWFpbC5jb20NClJFQ1VSUkVOQ0UtSUQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVz
OjIwMTgxMTIyVDA3MzAwMA0KQ1JFQVRFRDoyMDE4MDUyNFQxNzU0MzNaDQpERVNDUklQVElPTjpZ
b2N0byBQcm9qZWN0IFdlZWtseSBUcmlhZ2UgTWVldGluZyBEZXRhaWxzXG5cblxuV2lraTogaHR0
cHM6Ly8NCiB3aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9CdWdfVHJpYWdlXG5cblxuWW9jdG8g
SVJDOiBodHRwOi8vd2ViY2hhdC5mcmVlbm8NCiBkZS5uZXQvP2NoYW5uZWxzPSN5b2N0byAtIFdo
ZW4geW91IGpvaW4gc3RhdGUgeW91ciBuYW1lIG9uIHRoZSBicmlkZ2Ugb3IgSVINCiBDLlxuXG5X
ZSB1c2UgYSBab29tIEJyaWRnZSBhdDogaHR0cHM6Ly96b29tLnVzL2ovNDU0MzY3NjAzDQpMQVNU
LU1PRElGSUVEOjIwMTgxMTE1VDE2Mzc0OVoNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6
Ly96b29tLnVzL2ovNDU0MzY3NjAzDQpTRVFVRU5DRToxDQpTVEFUVVM6Q0FOQ0VMTEVEDQpTVU1N
QVJZOllvY3RvIFByb2plY3QgV2Vla2x5IFRyaWFnZSBNZWV0aW5nDQpUUkFOU1A6T1BBUVVFDQpC
RUdJTjpWQUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpUaGlzIGlzIGFuIGV2ZW50
IHJlbWluZGVyDQpUUklHR0VSOi1QMERUMEgxNU0wUw0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0K
RU5EOlZDQUxFTkRBUg0K

--000000000000dfde02057ab6ab31--
