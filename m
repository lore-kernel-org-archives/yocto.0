Return-Path: <3xMOxXQ8JBQc0ol5vj0vwyvqlj0nthps.jvt5vj0v5vj0vwyvqlj0.vyn@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F26E5E00DAA; Thu, 24 Oct 2019 08:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.74 listed in list.dnswl.org]
	*  0.1 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-yw1-f74.google.com (mail-yw1-f74.google.com
	[209.85.161.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27492E00D4F
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:31:17 -0700 (PDT)
Received: by mail-yw1-f74.google.com with SMTP id u131so18551122ywa.1
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=lLMZ+YOri4e8v5PCp8XLVh6Z871hYfzmKtIPqmyeRE0=;
	b=lz7dlJaBwchWtm5YGnLuxAQjEVM/4Kb4egDzjvGXtnhw7jqNIkS8uBTvq7wpJZyh9E
	NnLywaWj1yjZeA9psvmMu9cMrj/oVokp3ZH7x2MOvzFqIldhG89Ev09hGRpB3OzZ273C
	EQQL8+pYk6ixhhAdiXRscmMJKxgOYs47TxopTfJjcAbhGn+wmuOQDJkUaKgmSgngLf1R
	X3pr3UZ0heKLfSwgTlEvBwkkHk2f9AdeuZWMFDC5icl5TLkr6Mgh6CMgR2911Ac4yh1g
	Oit+bDwpwmREYjfOLhrbEAepK6c+6YFMkTFO+9yNtB2YcvMI5nosuCADkowpzK/t+Amu
	3Chg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=lLMZ+YOri4e8v5PCp8XLVh6Z871hYfzmKtIPqmyeRE0=;
	b=FaWVFYsWupJPkYhXJywl0ZyPJLrSsre6Uh3IZMIvKNy51qrd6rGS9XsjO41aLAt/Hx
	Oq8dZqI6LrIO7stzJdrA320gNTzYRc/0KeJBUO+zxiQcSDifecRTVajBcfcvw8tBEj2n
	yDxtfHT1BTJnxI83dTTfm5iAQUd+8IRMsu/lKmRLaWe0uAW42edb1F74WPuvs5xFhKQe
	ca2k09jcK/wvQS1ZffU4ZOjofGWf4HObDCERbyqtT+7wClq0Rs9nWzFyvhMGg8n4wHyZ
	Ewv1BVA0PKuSz92hJJnUnXfLSto4aqFeb5zUI4Eo/AfYtQmqXh2CT8sGNDMlZGYvaAjz
	uFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=lLMZ+YOri4e8v5PCp8XLVh6Z871hYfzmKtIPqmyeRE0=;
	b=MuVjpUpxGHBr2R5i7jN/vMedJGWTzQtaBYNlk3XA5CDGRQhGmDd0dQMGnkoM6barVd
	+A1fPEb+M2Ae98gm/ibC5Z9Jci3ca04zIJeNUjiA/sV3tal8ca4C1J+7VtXCvfIGMtBE
	5x9H+ITR7U0UzzBt9qpyooJrZBBceZbVQ+6VOC+ifnPXkLWyfpu9hGq0jNeuiz9+Cv0t
	g8QrimaAzqmFldMLRcRdnS4igt+z54toOiMsABTsuwJq2FXlod0fsW6HJMsNeqwE4iOf
	7B47GWkQ6wKwt9SXWRHuYcD4+nLJEeqFIZJ1Azx9mxbuR7uHOUrc/awhsoAhJr0USJ28
	3ZQQ==
X-Gm-Message-State: APjAAAVGcxeFOQUS00ZiE7e4dgSoD+GakrDseFlnEfg9+3YTOmjSMTiy
	ruC6vn5fMH08Ko20cXUagtpO62YKg3JVWUnRIBRj
X-Google-Smtp-Source: APXvYqxF3yIvowZkmEBus5dSiRPVfIN6ah7wioqdcJaGduV9UIUC408uo27w194O7wNWUJ5tOWxG3t44tQLLtsmjCEIV
MIME-Version: 1.0
X-Received: by 2002:a25:3b51:: with SMTP id i78mr11007163yba.186.1571931076182;
	Thu, 24 Oct 2019 08:31:16 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000006848390595a9b904@google.com>
Date: Thu, 24 Oct 2019 15:31:16 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
Subject: Canceled event with note: Yocto Project Weekly Triage Meeting @ Thu Oct 31, 2019 7:30am - 8:30am (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Thu, 24 Oct 2019 15:31:19 -0000
X-Groupsio-MsgNum: 47045
Content-Type: multipart/mixed; boundary="0000000000006848210595a9b903"

--0000000000006848210595a9b903
Content-Type: multipart/alternative; boundary="00000000000068481d0595a9b901"

--00000000000068481d0595a9b901
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjYW5jZWxlZCB3aXRoIHRoaXMgbm90ZToNCiJEdWUgdG8gRUxD
LUUiDQoNClRpdGxlOiBZb2N0byBQcm9qZWN0IFdlZWtseSBUcmlhZ2UgTWVldGluZw0KWW9jdG8g
UHJvamVjdCBXZWVrbHkgVHJpYWdlIE1lZXRpbmcgRGV0YWlscw0KDQoNCldpa2k6IGh0dHBzOi8v
d2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZQ0KDQoNCllvY3RvIElSQzogaHR0
cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG8gLSBXaGVuIHlvdSBqb2lu
ICANCnN0YXRlIHlvdXIgbmFtZSBvbiB0aGUgYnJpZGdlIG9yIElSQy4NCg0KV2UgdXNlIGEgWm9v
bSBCcmlkZ2UgYXQ6IGh0dHBzOi8vem9vbS51cy9qLzQ1NDM2NzYwMw0KV2hlbjogVGh1IE9jdCAz
MSwgMjAxOSA3OjMwYW0g4oCTIDg6MzBhbSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxlcw0KV2hl
cmU6IFpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovNDU0MzY3NjAzDQpDYWxlbmRhcjog
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KV2hvOg0KICAgICAqIHRoZXlvY3RvcHJvamVjdEBnbWFp
bC5jb20gLSBvcmdhbml6ZXINCiAgICAgKiBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbQ0KICAgICAq
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCg0KDQpJbnZpdGF0aW9uIGZyb20gR29vZ2xlIENhbGVu
ZGFyOiBodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyLw0KDQpZb3UgYXJlIHJlY2Vpdmlu
ZyB0aGlzIGNvdXJ0ZXN5IGVtYWlsIGF0IHRoZSBhY2NvdW50IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcgIA0KYmVjYXVzZSB5b3UgYXJlIGFuIGF0dGVuZGVlIG9mIHRoaXMgZXZlbnQuDQoNClRvIHN0
b3AgcmVjZWl2aW5nIGZ1dHVyZSB1cGRhdGVzIGZvciB0aGlzIGV2ZW50LCBkZWNsaW5lIHRoaXMg
ZXZlbnQuICANCkFsdGVybmF0aXZlbHkgeW91IGNhbiBzaWduIHVwIGZvciBhIEdvb2dsZSBhY2Nv
dW50IGF0ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvIGFuZCBjb250cm9sIHlv
dXIgbm90aWZpY2F0aW9uIHNldHRpbmdzIGZvciAgDQp5b3VyIGVudGlyZSBjYWxlbmRhci4NCg0K
Rm9yd2FyZGluZyB0aGlzIGludml0YXRpb24gY291bGQgYWxsb3cgYW55IHJlY2lwaWVudCB0byBz
ZW5kIGEgcmVzcG9uc2UgdG8gIA0KdGhlIG9yZ2FuaXplciBhbmQgYmUgYWRkZWQgdG8gdGhlIGd1
ZXN0IGxpc3QsIG9yIGludml0ZSBvdGhlcnMgcmVnYXJkbGVzcyAgDQpvZiB0aGVpciBvd24gaW52
aXRhdGlvbiBzdGF0dXMsIG9yIHRvIG1vZGlmeSB5b3VyIFJTVlAuIExlYXJuIG1vcmUgYXQgIA0K
aHR0cHM6Ly9zdXBwb3J0Lmdvb2dsZS5jb20vY2FsZW5kYXIvYW5zd2VyLzM3MTM1I2ZvcndhcmRp
bmcNCg==

--00000000000068481d0595a9b901
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
"><strong>This event has been canceled with this note:</strong><br>"Due to =
ELC-E"</h4><div style=3D"padding:2px"><span itemprop=3D"publisher" itemscop=
e itemtype=3D"http://schema.org/Organization"><meta itemprop=3D"name" conte=
nt=3D"Google Calendar"/></span><meta itemprop=3D"eventId/googleCalendar" co=
ntent=3D"69b8n4lifp3et8i02e5gp0h9dk_20191031T143000Z"/><h3 style=3D"padding=
:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;font-size:16px;font-weight=
:bold;color:#222"><span itemprop=3D"name">Yocto Project Weekly Triage Meeti=
ng</span></h3><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" summa=
ry=3D"Event details"><tr><td style=3D"padding:0 1em 10px 0;font-family:Aria=
l,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valig=
n=3D"top"><div><i style=3D"font-style:normal">When</i></div></td><td style=
=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222" valign=3D"top"><div style=3D"text-indent:-1px"><time itemprop=3D"start=
Date" datetime=3D"20191031T143000Z"></time><time itemprop=3D"endDate" datet=
ime=3D"20191031T153000Z"></time>Thu Oct 31, 2019 7:30am =E2=80=93 8:30am <s=
pan style=3D"color:#888">Pacific Time - Los Angeles</span></div></td></tr><=
tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size=
:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i styl=
e=3D"font-style:normal">Where</i></div></td><td style=3D"padding-bottom:10p=
x;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><d=
iv style=3D"text-indent:-1px"><span itemprop=3D"location" itemscope itemtyp=
e=3D"http://schema.org/Place"><span itemprop=3D"name" class=3D"notranslate"=
>Zoom Meeting: https://zoom.us/j/454367603</span><span dir=3D"ltr"> (<a hre=
f=3D"https://www.google.com/maps/search/Zoom+Meeting:+https:%2F%2Fzoom.us%2=
Fj%2F454367603?hl=3Den" style=3D"color:#20c;white-space:nowrap" target=3D"_=
blank" itemprop=3D"map">map</a>)</span></span></div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">Calendar</i></div></td><td style=3D"padding-bottom:10px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=
=3D"text-indent:-1px">yocto@yoctoproject.org</div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">Who</i></div></td><td style=3D"padding-bottom:10px;font-family:=
Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><table cellspaci=
ng=3D"0" cellpadding=3D"0"><tr><td style=3D"padding-right:10px;font-family:=
Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-i=
ndent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</spa=
n></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;f=
ont-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=
=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"h=
ttp://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">they=
octoproject@gmail.com</span><meta itemprop=3D"email" content=3D"theyoctopro=
ject@gmail.com"/></span><span itemprop=3D"organizer" itemscope itemtype=3D"=
http://schema.org/Person"><meta itemprop=3D"name" content=3D"theyoctoprojec=
t@gmail.com"/><meta itemprop=3D"email" content=3D"theyoctoproject@gmail.com=
"/></span><span style=3D"font-size:11px;color:#888"> - organizer</span></di=
v></div></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Ari=
al,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-inde=
nt:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span><=
/div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font=
-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"m=
argin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http:/=
/schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">sjolley.y=
p.pm@gmail.com</span><meta itemprop=3D"email" content=3D"sjolley.yp.pm@gmai=
l.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-right:1=
0px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div=
 style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospac=
e">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><=
div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope=
 itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"not=
ranslate">yocto@yoctoproject.org</span><meta itemprop=3D"email" content=3D"=
yocto@yoctoproject.org"/></span></div></div></div></td></tr></table></td></=
tr></table><div style=3D"padding-bottom:15px;font-family:Arial,Sans-serif;f=
ont-size:13px;color:#222;white-space:pre-wrap!important;white-space:-moz-pr=
e-wrap!important;white-space:-pre-wrap!important;white-space:-o-pre-wrap!im=
portant;white-space:pre;word-wrap:break-word"><span>Yocto Project Weekly Tr=
iage Meeting Details<p><br>Wiki: <a href=3D"https://www.google.com/url?q=3D=
https%3A%2F%2Fwiki.yoctoproject.org%2Fwiki%2FBug_Triage&amp;sa=3DD&amp;ust=
=3D1572363076167000&amp;usg=3DAFQjCNGX8sGgCLqqtTnvCjL7nzvo2r2CJQ" target=3D=
"_blank">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p><p><br>Yocto =
IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenod=
e.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D1572363076167000&amp;us=
g=3DAFQjCNH5R8nSUildmwJh_h-fIFXjypVVEA" target=3D"_blank">http://webchat.fr=
eenode.net/?channels=3D#yocto</a> - When you join state your name on the br=
idge or IRC.</p><p>We use a Zoom Bridge at: <a href=3D"https://www.google.c=
om/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F454367603&amp;sa=3DD&amp;ust=3D15723=
63076167000&amp;usg=3DAFQjCNHPdQgR-YM5613UeKXRsUBR2fVp8Q" target=3D"_blank"=
>https://zoom.us/j/454367603</a></p></span><meta itemprop=3D"description" c=
ontent=3D"Yocto Project Weekly Triage Meeting Details


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
warding this invitation could allow any recipient to send a response to the=
 organizer and be added to the guest list, or invite others regardless of t=
heir own invitation status, or to modify your RSVP. <a href=3D"https://supp=
ort.google.com/calendar/answer/37135#forwarding">Learn More</a>.</p></td></=
tr></table></div></span></span>

--00000000000068481d0595a9b901
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
DTSTART;TZID=America/Los_Angeles:20191031T073000
DTEND;TZID=America/Los_Angeles:20191031T083000
DTSTAMP:20191024T153116Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:69b8n4lifp3et8i02e5gp0h9dk_R20190124T153000@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;CN=sj
 olley.yp.pm@gmail.com;X-NUM-GUESTS=0:mailto:sjolley.yp.pm@gmail.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;CN=theyoc
 toproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;CN=yo
 cto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
RECURRENCE-ID;TZID=America/Los_Angeles:20191031T073000
CREATED:20180524T175433Z
DESCRIPTION:Yocto Project Weekly Triage Meeting Details\n\n\nWiki: https://
 wiki.yoctoproject.org/wiki/Bug_Triage\n\n\nYocto IRC: http://webchat.freeno
 de.net/?channels=#yocto - When you join state your name on the bridge or IR
 C.\n\nWe use a Zoom Bridge at: https://zoom.us/j/454367603
LAST-MODIFIED:20191024T153115Z
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

--00000000000068481d0595a9b901--

--0000000000006848210595a9b903
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
RFRTVEFSVDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTEwMzFUMDczMDAwDQpEVEVORDtU
WklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTEwMzFUMDgzMDAwDQpEVFNUQU1QOjIwMTkxMDI0
VDE1MzExNloNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0
aGV5b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGtf
UjIwMTkwMTI0VDE1MzAwMEBnb29nbGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtS
T0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049c2oNCiBvbGxleS55
cC5wbUBnbWFpbC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnNqb2xsZXkueXAucG1AZ21haWwu
Y29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1BQ0NFUFRFRDtDTj10aGV5b2MNCiB0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNU
Uz0wOm1haWx0bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5E
SVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049eW8N
CiBjdG9AeW9jdG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KUkVDVVJSRU5DRS1JRDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTEw
MzFUMDczMDAwDQpDUkVBVEVEOjIwMTgwNTI0VDE3NTQzM1oNCkRFU0NSSVBUSU9OOllvY3RvIFBy
b2plY3QgV2Vla2x5IFRyaWFnZSBNZWV0aW5nIERldGFpbHNcblxuXG5XaWtpOiBodHRwczovLw0K
IHdpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2VcblxuXG5Zb2N0byBJUkM6IGh0
dHA6Ly93ZWJjaGF0LmZyZWVubw0KIGRlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvIC0gV2hlbiB5b3Ug
am9pbiBzdGF0ZSB5b3VyIG5hbWUgb24gdGhlIGJyaWRnZSBvciBJUg0KIEMuXG5cbldlIHVzZSBh
IFpvb20gQnJpZGdlIGF0OiBodHRwczovL3pvb20udXMvai80NTQzNjc2MDMNCkxBU1QtTU9ESUZJ
RUQ6MjAxOTEwMjRUMTUzMTE1Wg0KTE9DQVRJT046Wm9vbSBNZWV0aW5nOiBodHRwczovL3pvb20u
dXMvai80NTQzNjc2MDMNClNFUVVFTkNFOjENClNUQVRVUzpDQU5DRUxMRUQNClNVTU1BUlk6WW9j
dG8gUHJvamVjdCBXZWVrbHkgVHJpYWdlIE1lZXRpbmcNClRSQU5TUDpPUEFRVUUNCkJFR0lOOlZB
TEFSTQ0KQUNUSU9OOkRJU1BMQVkNCkRFU0NSSVBUSU9OOlRoaXMgaXMgYW4gZXZlbnQgcmVtaW5k
ZXINClRSSUdHRVI6LVAwRFQwSDE1TTBTDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpFTkQ6VkNB
TEVOREFSDQo=

--0000000000006848210595a9b903--
