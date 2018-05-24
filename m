Return-Path: <theyoctoproject@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B78EE006F1; Thu, 24 May 2018 14:44:41 -0700 (PDT)
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
	*      [209.85.161.202 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f202.google.com (mail-yw0-f202.google.com
	[209.85.161.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD92AE0044F
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:44:39 -0700 (PDT)
Received: by mail-yw0-f202.google.com with SMTP id i2-v6so1506844ywc.8
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=z7xr4fQHpWxST3bmsdZvrJxz4MMHWUqJQBTyr2r3hCM=;
	b=uZIeX1p5GvgfYW9W1gE/WnKJfC56ahh27+qJIl8nX+ujWvsUJ9f94fB7PkpIlsnIL7
	fa5ej1KQDmUT6fNl11GZIEJwoAxfKVpG3j8ni8HIJXIoBVsEvjzJxQZupLFuB8tXgnDj
	0EnQwOslfi6Gl/DHen+SDk4BTqwGAUcfrjo2yx6OLQKp3KSJjytZF4sgqVWa37OOeQUp
	UqGLSQz9tZbPJTMBmYD5OumrjM0KuUL0L6So3ebHA/SeEy4C1ulhvWIlrNvGB4D5uyfC
	Ylx78Wp+t4VUruBvWrookHzQugu4dSzqu7xI7etPgrX1fM6ytVLKa7XkP75NcNLxVo6F
	f9Ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=z7xr4fQHpWxST3bmsdZvrJxz4MMHWUqJQBTyr2r3hCM=;
	b=natKyF7Q/3piwlesWs5xKp6W0e2+cKnMLbQOm92i1EKSjs4u9sqLCHXMZ9ofqKxTgc
	PMiASl8thLNqTtqh+lac05iqYGt0xYYzywENvM+HnGdyEJ4W+etqMWvgQtaEJ6b4vjPF
	sXd+asAoj4KYos0vxs2nDFMDWYxOeNR3dmfIZVRPiSiZJ0hugeLSknExf9nXoBOP5aPB
	2iG+thNbzPzQRt+K4trf7ZoXuqFd0f/a1Xgv37Z56IPRXFn2ZWJG6KrVIk7MpVzHcBVG
	5a+ocbUD07TJSxitNvVrg24PopFaeqfjv2IRUfcBgxed6wKrgZLTlKMBSSknGUO5SVML
	d1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:message-id:date
	:subject:from:to;
	bh=z7xr4fQHpWxST3bmsdZvrJxz4MMHWUqJQBTyr2r3hCM=;
	b=KfbdqgOawcgNmLdy+IxUR1INmGJ5jvudvwJztNFVJIlBHF/af1/OvFcc8ZoZzik1wf
	1MuV1J39wNxTlWZVqXYNiQWAFYPmJRimYC+fRbtUL2UNMQpAaFw5PqY3ucuP6tGW9GLU
	pYrgmJCO/a4uXugWB39ey1wi1JQmD22Qqa+OJebNmrsY3f8ohtr04QUWUu4a9E1+bpI5
	PGaMrTVeUCwwwn+jrgwXiNjlwZq4iMBsjR5RhGOBMWbUQDL96VN0IUxuu/PDH5Ku4JJd
	9hftW2s29nQAOnHxGgf/ywV0hm7cRIZXDL4tLAkGQEoS8DHBoq/95vYfFqCXBtKvyGSx
	8Xcw==
X-Gm-Message-State: ALKqPwelTdK8xrr1LAuq89njTkpoFpMVZ7Yp8FwGCfJDtlaYUmK/uEac
	azSca5gDTogM67DII2lR+ovbruV2oRnOojvtG0nU
X-Google-Smtp-Source: AB8JxZoMtPXA8Zcipxrvn9bQ/FSzaDwiRn6sYeoMtgz+ZL+2ID+oMuEhVPTjpF8lwegsDuqawtefR8ICgCnSJy8/NN2Z
MIME-Version: 1.0
X-Received: by 2002:a25:4247:: with SMTP id
	p68-v6mr2705134yba.58.1527198278939; 
	Thu, 24 May 2018 14:44:38 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Message-ID: <000000000000eafd0b056cfa8e3a@google.com>
Date: Thu, 24 May 2018 21:44:38 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
Subject: Invitation: Yocto Project Technical Team Meeting @ Tue Jun 5, 2018 8am - 8:30am (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Thu, 24 May 2018 21:44:41 -0000
X-Groupsio-MsgNum: 41236
Content-Type: multipart/mixed; boundary="000000000000eafcf1056cfa8e39"

--000000000000eafcf1056cfa8e39
Content-Type: multipart/alternative; boundary="000000000000eafced056cfa8e37"

--000000000000eafced056cfa8e37
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

WW91IGhhdmUgYmVlbiBpbnZpdGVkIHRvIHRoZSBmb2xsb3dpbmcgZXZlbnQuDQoNClRpdGxlOiBZ
b2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCldlIGVuY291cmFnZSBwZW9wbGUg
YXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIGFuZCBhbm5vdW5jZSB0aGVtc2VsdmVzICAN
Cm9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFuY2VsIGR1cmluZyB0aGUgbWVldGluZyAob3B0
aW9uYWwpOg0KDQpZb2N0byBJUkM6IGh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldC8/Y2hhbm5l
bHM9I3lvY3RvDQoNCldpa2k6IGh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvbW9udGhseS10
ZWNobmljYWwtY2FsbC8NCg0KQnJpZGdlIGlzIHdpdGggWm9vbSBhdDogaHR0cHM6Ly96b29tLnVz
L2ovOTkwODkyNzEyDQpXaGVuOiBUdWUgSnVuIDUsIDIwMTggOGFtIOKAkyA4OjMwYW0gUGFjaWZp
YyBUaW1lDQpXaGVyZTogWm9vbSBNZWV0aW5nOiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTIN
CkNhbGVuZGFyOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpXaG86DQogICAgICogdGhleW9jdG9w
cm9qZWN0QGdtYWlsLmNvbSAtIG9yZ2FuaXplcg0KICAgICAqIHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCg0KRXZlbnQgZGV0YWlsczogIA0KaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci9l
dmVudD9hY3Rpb249VklFVyZlaWQ9TmpKcmIyNHphbTVwYmpVM01HUmhPR2RuZG1OMmN6bDFPV01n
ZVc5amRHOUFlVzlqZEc5d2NtOXFaV04wTG05eVp3JnRvaz1NalVqZEdobGVXOWpkRzl3Y205cVpX
TjBRR2R0WVdsc0xtTnZiVGN3WlRFelltTm1PVEUyTTJRMFpXSTRZV0k1T0RBMk5HWmtZamczWm1R
M1lXWmhZVGhrWkRRJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MA0KDQpJbnZp
dGF0aW9uIGZyb20gR29vZ2xlIENhbGVuZGFyOiBodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVu
ZGFyLw0KDQpZb3UgYXJlIHJlY2VpdmluZyB0aGlzIGNvdXJ0ZXN5IGVtYWlsIGF0IHRoZSBhY2Nv
dW50IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcgIA0KYmVjYXVzZSB5b3UgYXJlIGFuIGF0dGVuZGVl
IG9mIHRoaXMgZXZlbnQuDQoNClRvIHN0b3AgcmVjZWl2aW5nIGZ1dHVyZSB1cGRhdGVzIGZvciB0
aGlzIGV2ZW50LCBkZWNsaW5lIHRoaXMgZXZlbnQuICANCkFsdGVybmF0aXZlbHkgeW91IGNhbiBz
aWduIHVwIGZvciBhIEdvb2dsZSBhY2NvdW50IGF0ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20v
Y2FsZW5kYXIvIGFuZCBjb250cm9sIHlvdXIgbm90aWZpY2F0aW9uIHNldHRpbmdzIGZvciAgDQp5
b3VyIGVudGlyZSBjYWxlbmRhci4NCg0KRm9yd2FyZGluZyB0aGlzIGludml0YXRpb24gY291bGQg
YWxsb3cgYW55IHJlY2lwaWVudCB0byBtb2RpZnkgeW91ciBSU1ZQICANCnJlc3BvbnNlLiBMZWFy
biBtb3JlIGF0ICANCmh0dHBzOi8vc3VwcG9ydC5nb29nbGUuY29tL2NhbGVuZGFyL2Fuc3dlci8z
NzEzNSNmb3J3YXJkaW5nDQo=

--000000000000eafced056cfa8e37
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
ar" content=3D"62kon3jnin570da8ggvcvs9u9c"/><div style=3D"float:right;font-=
weight:bold;font-size:13px"> <a href=3D"https://www.google.com/calendar/eve=
nt?action=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9j=
dG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYm=
NmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angel=
es&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=
=3D"url">more details &raquo;</a><br></div><h3 style=3D"padding:0 0 6px 0;m=
argin:0;font-family:Arial,Sans-serif;font-size:16px;font-weight:bold;color:=
#222"><span itemprop=3D"name">Yocto Project Technical Team Meeting</span></=
h3><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event=
 details"><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-seri=
f;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><=
div><i style=3D"font-style:normal">When</i></div></td><td style=3D"padding-=
bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=
=3D"top"><div style=3D"text-indent:-1px"><time itemprop=3D"startDate" datet=
ime=3D"20180605T150000Z"></time><time itemprop=3D"endDate" datetime=3D"2018=
0605T153000Z"></time>Tue Jun 5, 2018 8am =E2=80=93 8:30am <span style=3D"co=
lor:#888">Pacific Time</span></div></td></tr><tr><td style=3D"padding:0 1em=
 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:=
nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Where=
</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-seri=
f;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"=
><span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place"=
><span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.u=
s/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://maps.google.com/=
maps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&amp;hl=3Den" style=3D"co=
lor:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</s=
pan></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-famil=
y:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px"=
 valign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td>=
<td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13p=
x;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctopro=
ject.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:A=
rial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" va=
lign=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><td styl=
e=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:=
#222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><td sty=
le=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:=
#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family=
:Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-righ=
t:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=
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
"name" class=3D"notranslate">yocto@yoctoproject.org</span><meta itemprop=3D=
"email" content=3D"yocto@yoctoproject.org"/></span></div></div></div></td><=
/tr></table></td></tr></table><div style=3D"padding-bottom:15px;font-family=
:Arial,Sans-serif;font-size:13px;color:#222;white-space:pre-wrap!important;=
white-space:-moz-pre-wrap!important;white-space:-pre-wrap!important;white-s=
pace:-o-pre-wrap!important;white-space:pre;word-wrap:break-word"><span>We e=
ncourage people attending the meeting to logon and announce themselves on t=
he Yocto Project IRC chancel during the meeting (optional):<p>Yocto IRC: <a=
 href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2=
F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNEh9OQrs1YBcw=
7IAy-tvGf0ilzcGA" target=3D"_blank">http://webchat.freenode.net/?channels=
=3D#yocto</a><p>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F=
%2Fwww.yoctoproject.org%2Fmonthly-technical-call%2F&amp;sa=3DD&amp;usd=3D2&=
amp;usg=3DAFQjCNGMy6HWSDQC3zS08bf7hZ0Lrg0XcA" target=3D"_blank">https://www=
.yoctoproject.org/monthly-technical-call/</a><p>Bridge is with Zoom at: <a =
href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F99089271=
2&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNHX_hluoIn561yqnT2i0scv-HJOEw" targ=
et=3D"_blank">https://zoom.us/j/990892712</a></p></p></p></span><meta itemp=
rop=3D"description" content=3D"We encourage people attending the meeting to=
 logon and announce themselves on the Yocto Project IRC chancel during the =
meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto

Wiki: https://www.yoctoproject.org/monthly-technical-call/

Bridge is with Zoom at: https://zoom.us/j/990892712"/></div></div><p style=
=3D"color:#222;font-size:13px;margin:0"><span style=3D"color:#888">Going?&n=
bsp;&nbsp;&nbsp;</span><wbr><strong><span itemprop=3D"potentialaction" item=
scope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendanc=
e" content=3D"http://schema.org/RsvpAttendance/Yes"/><span itemprop=3D"hand=
ler" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link itemp=
rop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D=
"https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24za=
m5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;t=
ok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NG=
ZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D=
0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">Yes</a></span><=
/span><span style=3D"margin:0 0.4em;font-weight:normal"> - </span><span ite=
mprop=3D"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpActio=
n"><meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendanc=
e/Maybe"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.or=
g/HttpActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/Ht=
tpRequestMethod/GET"/><a href=3D"https://www.google.com/calendar/event?acti=
on=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9w=
cm9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbT=
cwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FL=
os_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" =
itemprop=3D"url">Maybe</a></span></span><span style=3D"margin:0 0.4em;font-=
weight:normal"> - </span><span itemprop=3D"potentialaction" itemscope itemt=
ype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=
=3D"http://schema.org/RsvpAttendance/No"/><span itemprop=3D"handler" itemsc=
ope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"meth=
od" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://ww=
w.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRh=
OGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdG=
hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3Y=
WZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D=
"color:#20c;white-space:nowrap" itemprop=3D"url">No</a></span></span></stro=
ng>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www.google.com/calendar/=
event?action=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9Ae=
W9jdG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTE=
zYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_An=
geles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemp=
rop=3D"url">more options &raquo;</a></p></td></tr><tr><td style=3D"backgrou=
nd-color:#f6f6f6;color:#888;border-top:1px Solid #ccc;font-family:Arial,San=
s-serif;font-size:11px"><p>Invitation from <a href=3D"https://www.google.co=
m/calendar/" target=3D"_blank" style=3D"">Google Calendar</a></p><p>You are=
 receiving this courtesy email at the account yocto@yoctoproject.org becaus=
e you are an attendee of this event.</p><p>To stop receiving future updates=
 for this event, decline this event. Alternatively you can sign up for a Go=
ogle account at https://www.google.com/calendar/ and control your notificat=
ion settings for your entire calendar.</p><p>Forwarding this invitation cou=
ld allow any recipient to modify your RSVP response. <a href=3D"https://sup=
port.google.com/calendar/answer/37135#forwarding">Learn More</a>.</p></td><=
/tr></table></div></span></span>

--000000000000eafced056cfa8e37
Content-Type: text/calendar; charset="UTF-8"; method=REQUEST
Content-Transfer-Encoding: 7bit

BEGIN:VCALENDAR
PRODID:-//Google Inc//Google Calendar 70.9054//EN
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:REQUEST
BEGIN:VEVENT
DTSTART:20180605T150000Z
DTEND:20180605T153000Z
DTSTAMP:20180524T214438Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:62kon3jnin570da8ggvcvs9u9c@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20180524T181406Z
DESCRIPTION:We encourage people attending the meeting to logon and announce
  themselves on the Yocto Project IRC chancel during the meeting (optional):
 \n\nYocto IRC: http://webchat.freenode.net/?channels=#yocto\n\nWiki: https:
 //www.yoctoproject.org/monthly-technical-call/\n\nBridge is with Zoom at: h
 ttps://zoom.us/j/990892712\n\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-\nPlease do not edit this section
  of the description.\n\nView your event at https://www.google.com/calendar/
 event?action=VIEW&eid=NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wc
 m9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0Z
 WI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&ctz=America%2FLos_Angeles&hl=en&es=1.\n-
 ::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:
 ~:~::~:~::-
LAST-MODIFIED:20180524T214438Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:0
STATUS:CONFIRMED
SUMMARY:Yocto Project Technical Team Meeting
TRANSP:OPAQUE
END:VEVENT
END:VCALENDAR

--000000000000eafced056cfa8e37--

--000000000000eafcf1056cfa8e39
Content-Type: application/ics; name="invite.ics"
Content-Disposition: attachment; filename="invite.ics"
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpQUk9ESUQ6LS8vR29vZ2xlIEluYy8vR29vZ2xlIENhbGVuZGFyIDcw
LjkwNTQvL0VODQpWRVJTSU9OOjIuMA0KQ0FMU0NBTEU6R1JFR09SSUFODQpNRVRIT0Q6UkVRVUVT
VA0KQkVHSU46VkVWRU5UDQpEVFNUQVJUOjIwMTgwNjA1VDE1MDAwMFoNCkRURU5EOjIwMTgwNjA1
VDE1MzAwMFoNCkRUU1RBTVA6MjAxODA1MjRUMjE0NDM4Wg0KT1JHQU5JWkVSO0NOPXRoZXlvY3Rv
cHJvamVjdEBnbWFpbC5jb206bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb20NClVJRDo2
MmtvbjNqbmluNTcwZGE4Z2d2Y3ZzOXU5Y0Bnb29nbGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5E
SVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUN
CiA7Q049dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmMNCiBvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj15
b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQpDUkVBVEVEOjIwMTgwNTI0VDE4MTQwNloNCkRFU0NSSVBUSU9OOldlIGVuY291
cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIGFuZCBhbm5vdW5jZQ0K
ICB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFuY2VsIGR1cmluZyB0aGUg
bWVldGluZyAob3B0aW9uYWwpOg0KIFxuXG5Zb2N0byBJUkM6IGh0dHA6Ly93ZWJjaGF0LmZyZWVu
b2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvXG5cbldpa2k6IGh0dHBzOg0KIC8vd3d3LnlvY3RvcHJv
amVjdC5vcmcvbW9udGhseS10ZWNobmljYWwtY2FsbC9cblxuQnJpZGdlIGlzIHdpdGggWm9vbSBh
dDogaA0KIHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyXG5cbi06On46fjo6fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46On46fjo6LVxuUGxlYXNlIGRvIG5vdCBlZGl0IHRoaXMgc2VjdGlvbg0KICBvZiB0aGUg
ZGVzY3JpcHRpb24uXG5cblZpZXcgeW91ciBldmVudCBhdCBodHRwczovL3d3dy5nb29nbGUuY29t
L2NhbGVuZGFyLw0KIGV2ZW50P2FjdGlvbj1WSUVXJmVpZD1OakpyYjI0emFtNXBialUzTUdSaE9H
ZG5kbU4yY3psMU9XTWdlVzlqZEc5QWVXOWpkRzl3Yw0KIG05cVpXTjBMbTl5WncmdG9rPU1qVWpk
R2hsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1OdmJUY3daVEV6WW1ObU9URTJNMlEwWg0KIFdJ
NFlXSTVPREEyTkdaa1lqZzNabVEzWVdaaFlUaGtaRFEmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxl
cyZobD1lbiZlcz0xLlxuLQ0KIDo6fjp+Ojp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+Og0KIH46fjo6fjp+OjotDQpMQVNU
LU1PRElGSUVEOjIwMTgwNTI0VDIxNDQzOFoNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6
Ly96b29tLnVzL2ovOTkwODkyNzEyDQpTRVFVRU5DRTowDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1N
QVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0K
RU5EOlZFVkVOVA0KRU5EOlZDQUxFTkRBUg0K

--000000000000eafcf1056cfa8e39--
