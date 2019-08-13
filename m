Return-Path: <3px9TXQ8JBSQTHEYOCTOPROJECTGMAIL.COMYOCTOYOCTOPROJECT.ORG@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6B5CE00E39; Tue, 13 Aug 2019 13:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.219.202 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com
	[209.85.219.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21951E00E4D
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:38:00 -0700 (PDT)
Received: by mail-yb1-f202.google.com with SMTP id s17so42848474ybg.15
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=M7H9OVAklufEk7DZ0nxj+7EUDZ0CV0DqQTMEFpvQYRo=;
	b=DtSdUn9HDtN2uUyPdC0xCURZcZu2NH7azE0+bVZYX2c5FQisnHtZusPBuih9DrLnLt
	Db/a3P+N+cyqJGs8yXWIM9qQEoj0y57DaS17E4zVF5H/nPtcU2GM8lwiHpp+9/ALRPQW
	srvmxiurFgFjkjeAMJn7kAYUpFJ3vu85XCFFa65j/HCx10Yuy8RIA5e4lDR8OLpgzYWI
	Ql5nE6Z/IXXbR7gq0Q1UsGufQUSve7WnsBD3sg6E6IBaXvJhWig9yYkRmh9QMlWlpQDE
	UNCdNVSPPU+Oq2t0MCAcmvf4lCrWKFotYIzE9ZumQCs6XCokyxESTwJqL5enhzbEJ8NB
	QrMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=M7H9OVAklufEk7DZ0nxj+7EUDZ0CV0DqQTMEFpvQYRo=;
	b=crSLxpef9mSUpg93KtbLcdxZGTdoSy76vhKiMCCJ2f6YxxvJLKW0uzXt8iE/c5wdKT
	n9PWVDNH0LGNebu9QKDxcHZvs0lpA5zIaKDdeoMnfiJGnqB8zLr+WX+yzm1VNPlE+seV
	E7BiVwwcADJkI6OhRQFixsgRiLT+fjdlfr1inJWsHHeWgBn9cCl7k0CiG0eiES4iab6X
	vONDZYYQOdgorrV7JjwLYtdqKdCWHDZ6V2R7PzE8XICumBGuoSIRoiDohtuKHTEPpoYe
	UL9s+7QZu9U05CbPen5TBT8eDybjINM4jJAaRJDpiDLztCkl6aP9/zPKIcwjB7ES+LC0
	uFHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=M7H9OVAklufEk7DZ0nxj+7EUDZ0CV0DqQTMEFpvQYRo=;
	b=se//uSInLjs4UZ3zr47vEKUUEJeqiFEKEdHp4trFUIQLw3na+a3rPNz98fCHGKJkcm
	xeFTRdr8Trv6/HRdRxeZm+XJ2QjsRNZV6s677cuLtIzcBMXqTxtn2s/OrYrehG1PRGwd
	vw5sOiZFpnhjIDZXB+3p6JJ6P42rcqYPPWYf1dpRihPCxJ3DJzChR6MaKEGS9/m6hWZf
	JenW7LFfW/Ov5RDNMe+Z33tvD/oi5wRU2WtopimIPcOnjzsvn+SSf7UHXxl1h3mxoPYA
	c5+IdYsQpq8FmmwYVKRd8NdKMPXDnnLDQpJfoWCbZi1F5WRRyo5XbEKmPaaXl8ljK2b8
	zIBQ==
X-Gm-Message-State: APjAAAV9NSDL1A6mBPw/v19rRWjBhvJk4bp6Gn7Wel8vnl10OEU5s32k
	QllIl+RdJLaNyXfiR/uPr1/J65zaCsqnhArADYMG
X-Google-Smtp-Source: APXvYqxhpguZ1d281zUHxxywss+90sJQkqHmlcxWlpPMx0mIGxwPBZRZRzxG8h3wBJlMuFg7s2KkVbMctWeaMpiPVmKR
MIME-Version: 1.0
X-Received: by 2002:a5b:a82:: with SMTP id h2mr1257353ybq.430.1565728679595;
	Tue, 13 Aug 2019 13:37:59 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000c31ade0590059d6d@google.com>
Date: Tue, 13 Aug 2019 20:37:59 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com, 
	sjolley.yp.pm@gmail.com
Subject: Updated invitation: Yocto Project Technical Team Meeting / Engineering Sync @ Weekly at 8am on Tuesday (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 13 Aug 2019 20:38:27 -0000
X-Groupsio-MsgNum: 46284
Content-Type: multipart/mixed; boundary="000000000000c31ac50590059d6a"

--000000000000c31ac50590059d6a
Content-Type: multipart/alternative; boundary="000000000000c31ac20590059d68"

--000000000000c31ac20590059d68
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjaGFuZ2VkLg0KDQpUaXRsZTogWW9jdG8gUHJvamVjdCBUZWNo
bmljYWwgVGVhbSBNZWV0aW5nIC8gRW5naW5lZXJpbmcgU3luYw0KVGhlIFlvY3RvIFByb2plY3Qg
aG9zdHMgYSB0ZWNobmljYWwgY2FsbC4gQWxsIGNvbW11bml0eSBtZW1iZXJzIGFyZSBpbnZpdGVk
ICANCnRvIGpvaW4gb24gYm90aCB0aGUgY2FsbCBhbmQgaW4gdGhlIElSQyBjaGFubmVsLCB3aGlj
aCBhcmUgdXNlZCAgDQpzaW11bHRhbmVvdXNseS5XZSBlbmNvdXJhZ2UgcGVvcGxlIGF0dGVuZGlu
ZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgIA0KYW5ub3VuY2UgdGhlbXNlbHZlcyBvbiB0aGUg
WW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcgIA0KKG9wdGlvbmFs
KTpZb2N0byBJUkM6IGh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3Rv
V2lraTogIA0KaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0
aW5ncy9CcmlkZ2UgaXMgd2l0aCBab29tICANCmF0OiBodHRwczovL3pvb20udXMvai85OTA4OTI3
MTJUdWVzZGF5cyB3aGVuIHdlIGFyZW7igJl0IGhhdmluZyB0aGUgTW9udGhseSAgDQpUZWNobmlj
YWwgQ2FsbCBUaGUgWW9jdG8gUHJvamVjdCBob3N0cyBhIGVuZ2luZWVyaW5nIHN5bmMgYnkgd2hp
Y2ggdGhlICANCnRlY2huaWNhbCB0ZWFtIGRpc2N1c3NlcyB0aGUgY3VycmVudCBzdGF0dXMgb2Yg
ZW5naW5lZXJpbmcgdG9waWNzLCAgDQppbmNsdWRpbmcgdGhlIGF1dG9idWlsZGVyLCBkb2N1bWVu
dGF0aW9uLCBidWlsZHMsIGFuZCByZWxlYXNlcy4NCldoZW46IFdlZWtseSBhdCA4YW0gb24gVHVl
c2RheSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxlcw0KV2hlcmU6IFpvb20gTWVldGluZzogaHR0
cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyDQpDYWxlbmRhcjogeW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KV2hvOg0KICAgICAqIHRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb20gLSBvcmdhbml6ZXINCiAg
ICAgKiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQogICAgICogc3RlcGhlbi5rLmpvbGxleUBpbnRl
bC5jb20NCiAgICAgKiBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbQ0KDQpFdmVudCBkZXRhaWxzOiAg
DQpodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyL2V2ZW50P2FjdGlvbj1WSUVXJmVpZD1O
elJ3YWpoa01XZzJiM0EyTW1JNWFqYzBiMjFqWWpsclkzQm5hbWRpT1c5amJHaHFNR0k1YW1OdmN6
TnBiemxvTmpGcGFtZGtNVzVqTkNCNWIyTjBiMEI1YjJOMGIzQnliMnBsWTNRdWIzSm4mdG9rPU1q
VWpkR2hsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1OdmJXUXlOell6TkRWa04ySmlabVZtWlRs
a1lXTTFNRGszTkdFd1ptVTJabVl5Wm1FeVpEWmxOR0UmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxl
cyZobD1lbiZlcz0wDQoNCkludml0YXRpb24gZnJvbSBHb29nbGUgQ2FsZW5kYXI6IGh0dHBzOi8v
d3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvDQoNCllvdSBhcmUgcmVjZWl2aW5nIHRoaXMgY291cnRl
c3kgZW1haWwgYXQgdGhlIGFjY291bnQgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyAgDQpiZWNhdXNl
IHlvdSBhcmUgYW4gYXR0ZW5kZWUgb2YgdGhpcyBldmVudC4NCg0KVG8gc3RvcCByZWNlaXZpbmcg
ZnV0dXJlIHVwZGF0ZXMgZm9yIHRoaXMgZXZlbnQsIGRlY2xpbmUgdGhpcyBldmVudC4gIA0KQWx0
ZXJuYXRpdmVseSB5b3UgY2FuIHNpZ24gdXAgZm9yIGEgR29vZ2xlIGFjY291bnQgYXQgIA0KaHR0
cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci8gYW5kIGNvbnRyb2wgeW91ciBub3RpZmljYXRp
b24gc2V0dGluZ3MgZm9yICANCnlvdXIgZW50aXJlIGNhbGVuZGFyLg0KDQpGb3J3YXJkaW5nIHRo
aXMgaW52aXRhdGlvbiBjb3VsZCBhbGxvdyBhbnkgcmVjaXBpZW50IHRvIHNlbmQgYSByZXNwb25z
ZSB0byAgDQp0aGUgb3JnYW5pemVyIGFuZCBiZSBhZGRlZCB0byB0aGUgZ3Vlc3QgbGlzdCwgb3Ig
aW52aXRlIG90aGVycyByZWdhcmRsZXNzICANCm9mIHRoZWlyIG93biBpbnZpdGF0aW9uIHN0YXR1
cywgb3IgdG8gbW9kaWZ5IHlvdXIgUlNWUC4gTGVhcm4gbW9yZSBhdCAgDQpodHRwczovL3N1cHBv
cnQuZ29vZ2xlLmNvbS9jYWxlbmRhci9hbnN3ZXIvMzcxMzUjZm9yd2FyZGluZw0K

--000000000000c31ac20590059d68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span itemprop=
=3D"object" itemscope itemtype=3D"http://schema.org/Event"><div style=3D"">=
<table cellspacing=3D"0" cellpadding=3D"8" border=3D"0" summary=3D"" style=
=3D"width:100%;font-family:Arial,Sans-serif;border:1px Solid #ccc;border-wi=
dth:1px 2px 2px 1px;background-color:#fff;"><tr><td><meta itemprop=3D"event=
Status" content=3D"http://schema.org/EventRescheduled"/><h4 style=3D"paddin=
g:6px 0;margin:0 0 4px 0;font-family:Arial,Sans-serif;font-size:13px;line-h=
eight:1.4;border:1px Solid #fff;background:#fff;color:#090;font-weight:norm=
al"><strong>This event has been changed.</strong></h4><div style=3D"padding=
:2px"><span itemprop=3D"publisher" itemscope itemtype=3D"http://schema.org/=
Organization"><meta itemprop=3D"name" content=3D"Google Calendar"/></span><=
meta itemprop=3D"eventId/googleCalendar" content=3D"74pj8d1h6op62b9j74omcb9=
kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4"/><div style=3D"float:right;font-weight=
:bold;font-size:13px"> <a href=3D"https://www.google.com/calendar/event?act=
ion=3DVIEW&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5am=
NvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW=
9jdG9wcm9qZWN0QGdtYWlsLmNvbWQyNzYzNDVkN2JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZ=
DZlNGE&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"col=
or:#20c;white-space:nowrap" itemprop=3D"url">more details &raquo;</a><br></=
div><h3 style=3D"padding:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;fo=
nt-size:16px;font-weight:bold;color:#222"><span itemprop=3D"name">Yocto Pro=
ject Technical Team Meeting / Engineering Sync</span></h3><table cellpaddin=
g=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"><tr><td st=
yle=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;col=
or:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font=
-style:normal">When</i></div></td><td style=3D"padding-bottom:10px;font-fam=
ily:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=
=3D"text-indent:-1px"><time itemprop=3D"startDate" datetime=3D"20190820T150=
000Z"></time><time itemprop=3D"endDate" datetime=3D"20190903T160000Z"></tim=
e>Weekly at 8am on Tuesday <span style=3D"color:#888">Pacific Time - Los An=
geles</span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-fami=
ly:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px=
" valign=3D"top"><div><i style=3D"font-style:normal">Where</i></div></td><t=
d style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;=
color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><span itemprop=
=3D"location" itemscope itemtype=3D"http://schema.org/Place"><span itemprop=
=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us/j/990892712</=
span><span dir=3D"ltr"> (<a href=3D"https://www.google.com/maps/search/Zoom=
+Meeting:+https:%2F%2Fzoom.us%2Fj%2F990892712?hl=3Den" style=3D"color:#20c;=
white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</span></spa=
n></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,S=
ans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=
=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td><td sty=
le=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctoproject.or=
g</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=3D=
"top"><div><i style=3D"font-style:normal">Who</i></div></td><td style=3D"pa=
dding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" v=
align=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><td style=3D"p=
adding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;wi=
dth:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courie=
r New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;=
font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-=
indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"atten=
dee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name=
" class=3D"notranslate">theyoctoproject@gmail.com</span><meta itemprop=3D"e=
mail" content=3D"theyoctoproject@gmail.com"/></span><span itemprop=3D"organ=
izer" itemscope itemtype=3D"http://schema.org/Person"><meta itemprop=3D"nam=
e" content=3D"theyoctoproject@gmail.com"/><meta itemprop=3D"email" content=
=3D"theyoctoproject@gmail.com"/></span><span style=3D"font-size:11px;color:=
#888"> - organizer</span></div></div></div></td></tr><tr><td style=3D"paddi=
ng-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:=
10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier Ne=
w,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;font=
-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-inde=
nt:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee"=
 itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" cl=
ass=3D"notranslate">yocto@yoctoproject.org</span><meta itemprop=3D"email" c=
ontent=3D"yocto@yoctoproject.org"/></span></div></div></div></td></tr><tr><=
td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;=
color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-=
family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"paddin=
g-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div s=
tyle=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span item=
prop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span ite=
mprop=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com</span><meta=
 itemprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></span></div></=
div></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,S=
ans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-=
1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span></div=
></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-siz=
e:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margi=
n:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://sch=
ema.org/Person"><span itemprop=3D"name" class=3D"notranslate">sjolley.yp.pm=
@gmail.com</span><meta itemprop=3D"email" content=3D"sjolley.yp.pm@gmail.co=
m"/></span></div></div></div></td></tr></table></td></tr></table><div style=
=3D"padding-bottom:15px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222;white-space:pre-wrap!important;white-space:-moz-pre-wrap!important;whit=
e-space:-pre-wrap!important;white-space:-o-pre-wrap!important;white-space:p=
re;word-wrap:break-word"><span><br>The Yocto Project hosts a technical call=
. All community members are invited to join on both the call and in the IRC=
 channel, which are used simultaneously.<br>We encourage people attending t=
he meeting to logon and announce themselves on the Yocto Project IRC chance=
l during the meeting (optional):<br><br>Yocto IRC: <a href=3D"https://www.g=
oogle.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yoct=
o&amp;sa=3DD&amp;ust=3D1566160679567000&amp;usg=3DAFQjCNGww46cBkNByr1MAwb11=
Yiz9olsGQ" target=3D"_blank">http://webchat.freenode.net/?channels=3D#yocto=
</a><br><br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fw=
ww.yoctoproject.org%2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D15661=
60679567000&amp;usg=3DAFQjCNGKb2NDSE-JFIIyQvZRhvlepnSnhw" target=3D"_blank"=
>https://www.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is=
 with Zoom at: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom=
.us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D1566160679567000&amp;usg=3DAFQjCNG=
DZT8AvDN9FD4CSq4w87ZelrViiw" target=3D"_blank">https://zoom.us/j/990892712<=
/a><br><br>Tuesdays when we aren=E2=80=99t having the Monthly Technical Cal=
l The Yocto Project hosts a engineering sync by which the technical team di=
scusses the current status of engineering topics, including the autobuilder=
, documentation, builds, and releases.</span><meta itemprop=3D"description"=
 content=3D"The Yocto Project hosts a technical call. All community members=
 are invited to join on both the call and in the IRC channel, which are use=
d simultaneously.We encourage people attending the meeting to logon and ann=
ounce themselves on the Yocto Project IRC chancel during the meeting (optio=
nal):Yocto IRC: http://webchat.freenode.net/?channels=3D#yoctoWiki: https:/=
/www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom at: https=
://zoom.us/j/990892712Tuesdays when we aren=E2=80=99t having the Monthly Te=
chnical Call The Yocto Project hosts a engineering sync by which the techni=
cal team discusses the current status of engineering topics, including the =
autobuilder, documentation, builds, and releases."/></div></div><p style=3D=
"color:#222;font-size:13px;margin:0"><span style=3D"color:#888">Going (yoct=
o@yoctoproject.org)?&nbsp;&nbsp;&nbsp;</span><wbr>All events in this series=
:&nbsp;&nbsp;&nbsp;<strong><span itemprop=3D"potentialaction" itemscope ite=
mtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" conten=
t=3D"http://schema.org/RsvpAttendance/Yes"/><span itemprop=3D"handler" item=
scope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"me=
thod" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://=
www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2Mm=
I5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b=
3Byb2plY3Qub3Jn&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvb=
WQyNzYzNDVkN2JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2F=
Los_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap"=
 itemprop=3D"url">Yes</a></span></span><span style=3D"margin:0 0.4em;font-w=
eight:normal"> - </span><span itemprop=3D"potentialaction" itemscope itemty=
pe=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=
=3D"http://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"handler" ite=
mscope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"m=
ethod" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https:/=
/www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2M=
mI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0=
b3Byb2plY3Qub3Jn&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNv=
bWQyNzYzNDVkN2JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2=
FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap=
" itemprop=3D"url">Maybe</a></span></span><span style=3D"margin:0 0.4em;fon=
t-weight:normal"> - </span><span itemprop=3D"potentialaction" itemscope ite=
mtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" conten=
t=3D"http://schema.org/RsvpAttendance/No"/><span itemprop=3D"handler" items=
cope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"met=
hod" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://w=
ww.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI=
5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3=
Byb2plY3Qub3Jn&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbW=
QyNzYzNDVkN2JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2FL=
os_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" =
itemprop=3D"url">No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr>=
<a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp;eid=3DNz=
RwajhkMWg2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jN=
CB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsL=
mNvbWQyNzYzNDVkN2JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmeric=
a%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:now=
rap" itemprop=3D"url">more options &raquo;</a></p></td></tr><tr><td style=
=3D"background-color:#f6f6f6;color:#888;border-top:1px Solid #ccc;font-fami=
ly:Arial,Sans-serif;font-size:11px"><p>Invitation from <a href=3D"https://w=
ww.google.com/calendar/" target=3D"_blank" style=3D"">Google Calendar</a></=
p><p>You are receiving this courtesy email at the account yocto@yoctoprojec=
t.org because you are an attendee of this event.</p><p>To stop receiving fu=
ture updates for this event, decline this event. Alternatively you can sign=
 up for a Google account at https://www.google.com/calendar/ and control yo=
ur notification settings for your entire calendar.</p><p>Forwarding this in=
vitation could allow any recipient to send a response to the organizer and =
be added to the guest list, or invite others regardless of their own invita=
tion status, or to modify your RSVP. <a href=3D"https://support.google.com/=
calendar/answer/37135#forwarding">Learn More</a>.</p></td></tr></table></di=
v></span></span>

--000000000000c31ac20590059d68
Content-Type: text/calendar; charset="UTF-8"; method=REQUEST
Content-Transfer-Encoding: quoted-printable

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
RRULE:FREQ=3DYEARLY;BYMONTH=3D3;BYDAY=3D2SU
END:DAYLIGHT
BEGIN:STANDARD
TZOFFSETFROM:-0700
TZOFFSETTO:-0800
TZNAME:PST
DTSTART:19701101T020000
RRULE:FREQ=3DYEARLY;BYMONTH=3D11;BYDAY=3D1SU
END:STANDARD
END:VTIMEZONE
BEGIN:VEVENT
DTSTART;TZID=3DAmerica/Los_Angeles:20190820T080000
DTEND;TZID=3DAmerica/Los_Angeles:20190903T090000
RRULE:FREQ=3DWEEKLY;UNTIL=3D20190827T065959Z;BYDAY=3DTU
DTSTAMP:20190813T203759Z
ORGANIZER;CN=3Dtheyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:74pj8d1h6op62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4@google.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;RSVP=3D
 TRUE;CN=3Dyocto@yoctoproject.org;X-NUM-GUESTS=3D0:mailto:yocto@yoctoprojec=
t.org
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DACCEPTED;RSV=
P=3DTRUE
 ;CN=3Dtheyoctoproject@gmail.com;X-NUM-GUESTS=3D0:mailto:theyoctoproject@gm=
ail.c
 om
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;RSVP=3D
 TRUE;CN=3Dstephen.k.jolley@intel.com;X-NUM-GUESTS=3D0:mailto:stephen.k.jol=
ley@i
 ntel.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;RSVP=3D
 TRUE;CN=3Dsjolley.yp.pm@gmail.com;X-NUM-GUESTS=3D0:mailto:sjolley.yp.pm@gm=
ail.c
 om
X-MICROSOFT-CDO-OWNERAPPTID:1923148408
CREATED:20180524T181406Z
DESCRIPTION:<br>The Yocto Project hosts a technical call. All community mem
 bers are invited to join on both the call and in the IRC channel\, which a=
r
 e used simultaneously.<br>We encourage people attending the meeting to log=
o
 n and announce themselves on the Yocto Project IRC chancel during the meet=
i
 ng (optional):<br><br>Yocto IRC: <a href=3D"http://webchat.freenode.net/?c=
han
 nels=3D#yocto">http://webchat.freenode.net/?channels=3D#yocto</a><br><br>W=
iki:=20
 <a href=3D"https://www.yoctoproject.org/public-virtual-meetings/">https://=
www
 .yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is with Zoom =
a
 t: <a href=3D"https://zoom.us/j/990892712" id=3D"ow634" __is_owner=3D"true=
">https
 ://zoom.us/j/990892712</a><br><br>Tuesdays when we aren=E2=80=99t having t=
he Monthl
 y Technical Call The Yocto Project hosts a engineering sync by which the t=
e
 chnical team discusses the current status of engineering topics\, includin=
g
  the autobuilder\, documentation\, builds\, and releases.\n\n-::~:~::~:~:~=
:
 ~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-\=
n
 Please do not edit this section of the description.\n\nView your event at =
h
 ttps://www.google.com/calendar/event?action=3DVIEW&eid=3DNzRwajhkMWg2b3A2M=
mI5aj
 c0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3By=
b
 2plY3Qub3Jn&tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWQyNzYzNDVkN2JiZmVm=
ZTl
 kYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&ctz=3DAmerica%2FLos_Angeles&hl=3Den&es=3D=
0.\n-::
 ~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~=
:
 ~::~:~::-
LAST-MODIFIED:20190813T203755Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:2
STATUS:CONFIRMED
SUMMARY:Yocto Project Technical Team Meeting / Engineering Sync
TRANSP:OPAQUE
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:This is an event reminder
TRIGGER:-P0DT0H15M0S
END:VALARM
END:VEVENT
END:VCALENDAR

--000000000000c31ac20590059d68--

--000000000000c31ac50590059d6a
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwODIwVDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwOTAzVDA5MDAwMA0KUlJVTEU6RlJFUT1XRUVL
TFk7VU5USUw9MjAxOTA4MjdUMDY1OTU5WjtCWURBWT1UVQ0KRFRTVEFNUDoyMDE5MDgxM1QyMDM3
NTlaDQpPUkdBTklaRVI7Q049dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86dGhleW9j
dG9wcm9qZWN0QGdtYWlsLmNvbQ0KVUlEOjc0cGo4ZDFoNm9wNjJiOWo3NG9tY2I5a2NwZ2pnYjlv
Y2xoajBiOWpjb3MzaW85aDYxaWpnZDFuYzRAZ29vZ2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlO
RElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
DQogVFJVRTtDTj15b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5
b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049dGhleW9jdG9w
cm9qZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdt
YWlsLmMNCiBvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBB
TlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj1zdGVwaGVuLmsuam9sbGV5
QGludGVsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86c3RlcGhlbi5rLmpvbGxleUBpDQogbnRl
bC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRSVUU7Q049c2pvbGxleS55cC5wbUBnbWFpbC5j
b207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnNqb2xsZXkueXAucG1AZ21haWwuYw0KIG9tDQpYLU1J
Q1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6MTkyMzE0ODQwOA0KQ1JFQVRFRDoyMDE4MDUyNFQxODE0
MDZaDQpERVNDUklQVElPTjo8YnI+VGhlIFlvY3RvIFByb2plY3QgaG9zdHMgYSB0ZWNobmljYWwg
Y2FsbC4gQWxsIGNvbW11bml0eSBtZW0NCiBiZXJzIGFyZSBpbnZpdGVkIHRvIGpvaW4gb24gYm90
aCB0aGUgY2FsbCBhbmQgaW4gdGhlIElSQyBjaGFubmVsXCwgd2hpY2ggYXINCiBlIHVzZWQgc2lt
dWx0YW5lb3VzbHkuPGJyPldlIGVuY291cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5n
IHRvIGxvZ28NCiBuIGFuZCBhbm5vdW5jZSB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0
IElSQyBjaGFuY2VsIGR1cmluZyB0aGUgbWVldGkNCiBuZyAob3B0aW9uYWwpOjxicj48YnI+WW9j
dG8gSVJDOiA8YSBocmVmPSJodHRwOi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQvP2NoYW4NCiBuZWxz
PSN5b2N0byI+aHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG88L2E+
PGJyPjxicj5XaWtpOiANCiA8YSBocmVmPSJodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1
YmxpYy12aXJ0dWFsLW1lZXRpbmdzLyI+aHR0cHM6Ly93d3cNCiAueW9jdG9wcm9qZWN0Lm9yZy9w
dWJsaWMtdmlydHVhbC1tZWV0aW5ncy88L2E+PGJyPjxicj5CcmlkZ2UgaXMgd2l0aCBab29tIGEN
CiB0OiA8YSBocmVmPSJodHRwczovL3pvb20udXMvai85OTA4OTI3MTIiIGlkPSJvdzYzNCIgX19p
c19vd25lcj0idHJ1ZSI+aHR0cHMNCiA6Ly96b29tLnVzL2ovOTkwODkyNzEyPC9hPjxicj48YnI+
VHVlc2RheXMgd2hlbiB3ZSBhcmVu4oCZdCBoYXZpbmcgdGhlIE1vbnRobA0KIHkgVGVjaG5pY2Fs
IENhbGwgVGhlIFlvY3RvIFByb2plY3QgaG9zdHMgYSBlbmdpbmVlcmluZyBzeW5jIGJ5IHdoaWNo
IHRoZSB0ZQ0KIGNobmljYWwgdGVhbSBkaXNjdXNzZXMgdGhlIGN1cnJlbnQgc3RhdHVzIG9mIGVu
Z2luZWVyaW5nIHRvcGljc1wsIGluY2x1ZGluZw0KICB0aGUgYXV0b2J1aWxkZXJcLCBkb2N1bWVu
dGF0aW9uXCwgYnVpbGRzXCwgYW5kIHJlbGVhc2VzLlxuXG4tOjp+On46On46fjp+Og0KIH46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+Ojp+On46Oi1cbg0KIFBsZWFzZSBkbyBub3QgZWRpdCB0aGlzIHNlY3Rpb24gb2YgdGhlIGRl
c2NyaXB0aW9uLlxuXG5WaWV3IHlvdXIgZXZlbnQgYXQgaA0KIHR0cHM6Ly93d3cuZ29vZ2xlLmNv
bS9jYWxlbmRhci9ldmVudD9hY3Rpb249VklFVyZlaWQ9TnpSd2FqaGtNV2cyYjNBMk1tSTVhag0K
IGMwYjIxallqbHJZM0JuYW1kaU9XOWpiR2hxTUdJNWFtTnZjek5wYnpsb05qRnBhbWRrTVc1ak5D
QjViMk4wYjBCNWIyTjBiM0J5Yg0KIDJwbFkzUXViM0puJnRvaz1NalVqZEdobGVXOWpkRzl3Y205
cVpXTjBRR2R0WVdsc0xtTnZiV1F5TnpZek5EVmtOMkppWm1WbVpUbA0KIGtZV00xTURrM05HRXda
bVUyWm1ZeVptRXlaRFpsTkdFJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MC5c
bi06Og0KIH46fjo6fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+Og0KIH46On46fjo6LQ0KTEFTVC1NT0RJRklFRDoyMDE5
MDgxM1QyMDM3NTVaDQpMT0NBVElPTjpab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5
MDg5MjcxMg0KU0VRVUVOQ0U6Mg0KU1RBVFVTOkNPTkZJUk1FRA0KU1VNTUFSWTpZb2N0byBQcm9q
ZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcgLyBFbmdpbmVlcmluZyBTeW5jDQpUUkFOU1A6T1BB
UVVFDQpCRUdJTjpWQUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpUaGlzIGlzIGFu
IGV2ZW50IHJlbWluZGVyDQpUUklHR0VSOi1QMERUMEgxNU0wUw0KRU5EOlZBTEFSTQ0KRU5EOlZF
VkVOVA0KRU5EOlZDQUxFTkRBUg0K

--000000000000c31ac50590059d6a--
