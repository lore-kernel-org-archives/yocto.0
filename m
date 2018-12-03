Return-Path: <3qX4FXA8JBaIVJGaQEVQRTQLGEVIOCKN.EQOaQEVQaQEVQRTQLGEV.QTI@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79CA8E00BB7; Mon,  3 Dec 2018 11:06:19 -0800 (PST)
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
	*      [209.85.219.202 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com
	[209.85.219.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5DD8E00AD1
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2018 11:06:17 -0800 (PST)
Received: by mail-yb1-f202.google.com with SMTP id v15-v6so8803826ybk.1
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2018 11:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=KwpT6CMcmGiMEj0/o4FVSzZsUVqFkhV1YY0jI5/uDI8=;
	b=LC6y3MiakTn3r3DRTXU5YNtlT96GTu76+hGv9TBTTp2IkxuOxWV4ENhKLK/ToEv/Qg
	1KuHugkTitIxzCslqscRlYVA9c78rnBThyDBj022MLLJtJ0yNadZyibDS2/AO4dGONtJ
	7yvwnPSc+YOIiCUKsIjIGqRCGi3sjCRIdQZGzVWVcgxFfmVAMxGF6/l5UaxbDxHYXuQ9
	LwkhY77GAjR5+fioIz99+93cjchsDeFCNdq5w874hTxUP+df4MKr7cEIs3JZNeHbQUik
	HVsv/nzrFI5gaxRigllsuKt1NggiA1AQfwO2kvuH9U33deaeA+ekWTbFIOXnC3fYbl19
	PKJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=KwpT6CMcmGiMEj0/o4FVSzZsUVqFkhV1YY0jI5/uDI8=;
	b=qy8dhyr9YXaVMvS2NU7QhEHW9MeJP1IQ1GwIJaWalZz2wMu2n4hVMWFFyJpfFhVQKV
	/i/DNHoTl7M9stiyaFZrlixiWLnULM+MEZEACbpi3rvboH5XgOKV595d9kIK4DNnz6VX
	7IL5MCxzMrAScvNw44UlMHJGUa+AAXXeFq6rJ90Y2vyXhWREkhmKUMzF0ptOtAzQ+7S8
	8NWFlWMj8HaQ8aJOkTlg6AtJdM6dWJ4Szf2tsFoNAmI3Q9aAsGeIAv+CRQ12t79+ddhV
	lbeXBr5FNKEMUxHtOV+DZPIm1jKyLSQ1mYV5bxcfOuvBlFjNK47AtLtBYDY9FJ2EnsYS
	fFLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=KwpT6CMcmGiMEj0/o4FVSzZsUVqFkhV1YY0jI5/uDI8=;
	b=QrCmB/wALpsKM/S0lCIHJwLENImoB4OmwUFK4X/4+upMDA2+2lu6RK5Mx9GoB42odr
	hJS7QQHY2j7sVcLZjHbJ93z9O5ZN8390T3c1+YjfOYSyfsVne1Q5aysxyadiUSRy3Qdq
	dsV9iT9oqbLBKI4ESbcbT7nMzOMkPvv/Ps0B1UBmJZ/ey8gWucc0Xfx0eKMrFy4G7yMr
	IvADYVugzh+sypG4nFdbv+fP0mGrVWqejRUSIuKIlzpMDStMowz1MleB1KAY3EEnAkRV
	gHDBrKBVHv3RiofFk3DlLAsnyiEgQZifu2rxlrsymD8u6uE0alagcBmSnSsab8ICi2wx
	Qaaw==
X-Gm-Message-State: AA+aEWZfmgd8ADk9xFFyKi+vtTq7pDmyOU8nSLJziaPAhYk0j7zofGP4
	gFVt14fddBoNo3siekH5aU1Xgj48HbIKSdsh6WN8
X-Google-Smtp-Source: AFSGD/XH7Q9OeZBuuuACB9cg5T/tLD9flOZYP1PdiL61BIsKTqzMxEdUFCivtOfnQvbeRDPzxGQQtbkF0TOOS6kE2ObL
MIME-Version: 1.0
X-Received: by 2002:a25:7cc6:: with SMTP id
	x189-v6mr9393273ybc.96.1543863977306; 
	Mon, 03 Dec 2018 11:06:17 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000f2f1f0057c22d733@google.com>
Date: Mon, 03 Dec 2018 19:06:17 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Tue Jan 8, 2019 8am - 8:30am (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Mon, 03 Dec 2018 19:06:19 -0000
X-Groupsio-MsgNum: 43417
Content-Type: multipart/mixed; boundary="000000000000f2f1cf057c22d732"

--000000000000f2f1cf057c22d732
Content-Type: multipart/alternative; boundary="000000000000f2f1ca057c22d730"

--000000000000f2f1ca057c22d730
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjaGFuZ2VkLg0KDQpUaXRsZTogWW9jdG8gUHJvamVjdCBUZWNo
bmljYWwgVGVhbSBNZWV0aW5nDQpXZSBlbmNvdXJhZ2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVl
dGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UgdGhlbXNlbHZlcyAgDQpvbiB0aGUgWW9jdG8gUHJv
amVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcgKG9wdGlvbmFsKTpZb2N0byBJUkM6
ICANCmh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvV2lraTogIA0K
aHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5ncy9Ccmlk
Z2UgaXMgd2l0aCBab29tICANCmF0OiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINCldoZW46
IFR1ZSBKYW4gOCwgMjAxOSA4YW0g4oCTIDg6MzBhbSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxl
cyAoY2hhbmdlZCkNCldoZXJlOiBab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5
MjcxMg0KQ2FsZW5kYXI6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCldobzoNCiAgICAgKiB0aGV5
b2N0b3Byb2plY3RAZ21haWwuY29tIC0gb3JnYW5pemVyDQogICAgICogeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KICAgICAqIHN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tDQoNCkV2ZW50IGRldGFp
bHM6ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9uPVZJRVcm
ZWlkPU5qSnJiMjR6YW01cGJqVTNNR1JoT0dkbmRtTjJjemwxT1dOZk1qQXhPVEF4TURGVU1UWXdN
REF3V2lCNWIyTjBiMEI1YjJOMGIzQnliMnBsWTNRdWIzSm4mdG9rPU1qVWpkR2hsZVc5amRHOXdj
bTlxWldOMFFHZHRZV2xzTG1OdmJUSXhPR00yWldSbU9XTmpNR00wWldRMFpUSmxNbVppT0dFeU1E
YzRNR1F3T0RJeE1XTXhNMlkmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wDQoN
Ckludml0YXRpb24gZnJvbSBHb29nbGUgQ2FsZW5kYXI6IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20v
Y2FsZW5kYXIvDQoNCllvdSBhcmUgcmVjZWl2aW5nIHRoaXMgY291cnRlc3kgZW1haWwgYXQgdGhl
IGFjY291bnQgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyAgDQpiZWNhdXNlIHlvdSBhcmUgYW4gYXR0
ZW5kZWUgb2YgdGhpcyBldmVudC4NCg0KVG8gc3RvcCByZWNlaXZpbmcgZnV0dXJlIHVwZGF0ZXMg
Zm9yIHRoaXMgZXZlbnQsIGRlY2xpbmUgdGhpcyBldmVudC4gIA0KQWx0ZXJuYXRpdmVseSB5b3Ug
Y2FuIHNpZ24gdXAgZm9yIGEgR29vZ2xlIGFjY291bnQgYXQgIA0KaHR0cHM6Ly93d3cuZ29vZ2xl
LmNvbS9jYWxlbmRhci8gYW5kIGNvbnRyb2wgeW91ciBub3RpZmljYXRpb24gc2V0dGluZ3MgZm9y
ICANCnlvdXIgZW50aXJlIGNhbGVuZGFyLg0KDQpGb3J3YXJkaW5nIHRoaXMgaW52aXRhdGlvbiBj
b3VsZCBhbGxvdyBhbnkgcmVjaXBpZW50IHRvIG1vZGlmeSB5b3VyIFJTVlAgIA0KcmVzcG9uc2Uu
IExlYXJuIG1vcmUgYXQgIA0KaHR0cHM6Ly9zdXBwb3J0Lmdvb2dsZS5jb20vY2FsZW5kYXIvYW5z
d2VyLzM3MTM1I2ZvcndhcmRpbmcNCg==

--000000000000f2f1ca057c22d730
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
ar"/></span><meta itemprop=3D"eventId/googleCalendar" content=3D"62kon3jnin=
570da8ggvcvs9u9c_20190101T160000Z"/><div style=3D"float:right;font-weight:b=
old;font-size:13px"> <a href=3D"https://www.google.com/calendar/event?actio=
n=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfMjAxOTAxMDFUMTYwMDAw=
WiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWls=
LmNvbTIxOGM2ZWRmOWNjMGM0ZWQ0ZTJlMmZiOGEyMDc4MGQwODIxMWMxM2Y&amp;ctz=3DAmeri=
ca%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:no=
wrap" itemprop=3D"url">more details &raquo;</a><br></div><h3 style=3D"paddi=
ng:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;font-size:16px;font-weig=
ht:bold;color:#222"><span itemprop=3D"name">Yocto Project Technical Team Me=
eting</span></h3><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" su=
mmary=3D"Event details"><tr><td style=3D"padding:0 1em 10px 0;font-family:A=
rial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" va=
lign=3D"top"><div><i style=3D"font-style:normal">When</i></div></td><td sty=
le=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222" valign=3D"top"><div style=3D"text-indent:-1px"><strong style=3D"colo=
r:#080">Changed: </strong><time itemprop=3D"startDate" datetime=3D"20190108=
T160000Z"></time><time itemprop=3D"endDate" datetime=3D"20190108T163000Z"><=
/time>Tue Jan 8, 2019 8am =E2=80=93 8:30am <span style=3D"color:#888">Pacif=
ic Time - Los Angeles</span></div></td></tr><tr><td style=3D"padding:0 1em =
10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:n=
owrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Where<=
/i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif=
;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">=
<span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place">=
<span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us=
/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://maps.google.com/m=
aps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&amp;hl=3Den" style=3D"col=
or:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</sp=
an></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family=
:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" =
valign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td><=
td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px=
;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctoproj=
ect.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" val=
ign=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><td style=
=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><td styl=
e=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:=
Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right=
:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D=
"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D=
"attendee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=
=3D"name" class=3D"notranslate">theyoctoproject@gmail.com</span><meta itemp=
rop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span itemprop=
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
/tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-s=
ize:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=
=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0">=
<span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"=
><span itemprop=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com</=
span><meta itemprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></spa=
n></div></div></div></td></tr></table></td></tr></table><div style=3D"paddi=
ng-bottom:15px;font-family:Arial,Sans-serif;font-size:13px;color:#222;white=
-space:pre-wrap!important;white-space:-moz-pre-wrap!important;white-space:-=
pre-wrap!important;white-space:-o-pre-wrap!important;white-space:pre;word-w=
rap:break-word"><span>We encourage people attending the meeting to logon an=
d announce themselves on the Yocto Project IRC chancel during the meeting (=
optional):<br><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3Dhttp=
%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=
=3D1544295977290000&amp;usg=3DAFQjCNF2jN3IUccjl9L2Qu1vfDO3RRdrVg" target=3D=
"_blank">http://webchat.freenode.net/?channels=3D#yocto</a><br><br>Wiki: <a=
 href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%=
2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D1544295977290000&amp;usg=
=3DAFQjCNHtNwPfc3im9X6PUF0oS_l_2Aflug" target=3D"_blank">https://www.yoctop=
roject.org/public-virtual-meetings/</a><br><br>Bridge is with Zoom at: <a h=
ref=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712=
&amp;sa=3DD&amp;ust=3D1544295977291000&amp;usg=3DAFQjCNEqW9SQ1B56Qd7Ko9EAuO=
B-3wEr7g" target=3D"_blank">https://zoom.us/j/990892712</a></span><meta ite=
mprop=3D"description" content=3D"We encourage people attending the meeting =
to logon and announce themselves on the Yocto Project IRC chancel during th=
e meeting (optional):Yocto IRC: http://webchat.freenode.net/?channels=3D#yo=
ctoWiki: https://www.yoctoproject.org/public-virtual-meetings/Bridge is wit=
h Zoom at: https://zoom.us/j/990892712"/></div></div><p style=3D"color:#222=
;font-size:13px;margin:0"><span style=3D"color:#888">Going (yocto@yoctoproj=
ect.org)?&nbsp;&nbsp;&nbsp;</span><wbr><strong><span itemprop=3D"potentiala=
ction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=
=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Yes"/><span ite=
mprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandler=
"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET=
"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;ei=
d=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfMjAxOTAxMDFUMTYwMDAwWiB5b2N0b0B5b2N=
0b3Byb2plY3Qub3Jn&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmN=
vbTIxOGM2ZWRmOWNjMGM0ZWQ0ZTJlMmZiOGEyMDc4MGQwODIxMWMxM2Y&amp;ctz=3DAmerica%=
2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowra=
p" itemprop=3D"url">Yes</a></span></span><span style=3D"margin:0 0.4em;font=
-weight:normal"> - </span><span itemprop=3D"potentialaction" itemscope item=
type=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=
=3D"http://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"handler" ite=
mscope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"m=
ethod" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https:/=
/www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3M=
GRhOGdndmN2czl1OWNfMjAxOTAxMDFUMTYwMDAwWiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp=
;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTIxOGM2ZWRmOWNjMGM0=
ZWQ0ZTJlMmZiOGEyMDc4MGQwODIxMWMxM2Y&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
Maybe</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> -=
 </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://sch=
ema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.=
org/RsvpAttendance/No"/><span itemprop=3D"handler" itemscope itemtype=3D"ht=
tp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:/=
/schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calen=
dar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfMj=
AxOTAxMDFUMTYwMDAwWiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;rst=3D2&amp;tok=3DMj=
UjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTIxOGM2ZWRmOWNjMGM0ZWQ0ZTJlMmZiOGEyMDc4M=
GQwODIxMWMxM2Y&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" styl=
e=3D"color:#20c;white-space:nowrap" itemprop=3D"url">No</a></span></span></=
strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www.google.com/calen=
dar/event?action=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfMjAxO=
TAxMDFUMTYwMDAwWiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW9jdG9wc=
m9qZWN0QGdtYWlsLmNvbTIxOGM2ZWRmOWNjMGM0ZWQ0ZTJlMmZiOGEyMDc4MGQwODIxMWMxM2Y&=
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

--000000000000f2f1ca057c22d730
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
DTSTART;TZID=America/Los_Angeles:20190108T080000
DTEND;TZID=America/Los_Angeles:20190108T083000
DTSTAMP:20181203T190617Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:62kon3jnin570da8ggvcvs9u9c@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@i
 ntel.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
RECURRENCE-ID;TZID=America/Los_Angeles:20190101T080000
CREATED:20180524T181406Z
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
 View your event at https://www.google.com/calendar/event?action=VIEW&eid=Nj
 Jrb24zam5pbjU3MGRhOGdndmN2czl1OWNfMjAxOTAxMDFUMTYwMDAwWiB5b2N0b0B5b2N0b3Byb
 2plY3Qub3Jn&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTIxOGM2ZWRmOWNjMGM0ZWQ
 0ZTJlMmZiOGEyMDc4MGQwODIxMWMxM2Y&ctz=America%2FLos_Angeles&hl=en&es=0.\n-::
 ~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:
 ~::~:~::-
LAST-MODIFIED:20181203T190616Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:2
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

--000000000000f2f1ca057c22d730--

--000000000000f2f1cf057c22d732
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwMTA4VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwMTA4VDA4MzAwMA0KRFRTVEFNUDoyMDE4MTIw
M1QxOTA2MTdaDQpPUkdBTklaRVI7Q049dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86
dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0KVUlEOjYya29uM2puaW41NzBkYThnZ3ZjdnM5dTlj
QGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRSVUU7Q049eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KQVRU
RU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj1zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtYLU5V
TS1HVUVTVFM9MDptYWlsdG86c3RlcGhlbi5rLmpvbGxleUBpDQogbnRlbC5jb20NCkFUVEVOREVF
O0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVE
O1JTVlA9VFJVRQ0KIDtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0w
Om1haWx0bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuYw0KIG9tDQpSRUNVUlJFTkNFLUlEO1RaSUQ9
QW1lcmljYS9Mb3NfQW5nZWxlczoyMDE5MDEwMVQwODAwMDANCkNSRUFURUQ6MjAxODA1MjRUMTgx
NDA2Wg0KREVTQ1JJUFRJT046V2UgZW5jb3VyYWdlIHBlb3BsZSBhdHRlbmRpbmcgdGhlIG1lZXRp
bmcgdG8gbG9nb24gYW5kIGFubm91bmNlDQogIHRoZW1zZWx2ZXMgb24gdGhlIFlvY3RvIFByb2pl
Y3QgSVJDIGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aW5nIChvcHRpb25hbCk6DQogPGJyPjxicj5Z
b2N0byBJUkM6IDxhIGhyZWY9Imh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vdXJsP3E9aHR0cCUzQSUy
RiUyRndlYmNoDQogYXQuZnJlZW5vZGUubmV0JTJGJTNGY2hhbm5lbHMlM0QlMjN5b2N0byZhbXBc
O3NhPUQmYW1wXDt1c2Q9MiZhbXBcO3VzZz1BRlFqDQogQ05Fdk9IVklreEtJcmZYV2ZVeENjVlM1
XzhraDV3IiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0DQogLz9j
aGFubmVscz0jeW9jdG88L2E+PGJyPjxicj5XaWtpOiA8YSBocmVmPSJodHRwczovL3d3dy55b2N0
b3Byb2plY3Qub3JnL3B1DQogYmxpYy12aXJ0dWFsLW1lZXRpbmdzLyI+aHR0cHM6Ly93d3cueW9j
dG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5nDQogcy88L2E+PGJyPjxicj5Ccmlk
Z2UgaXMgd2l0aCBab29tIGF0OiA8YSBocmVmPSJodHRwczovL3d3dy5nb29nbGUuY29tL3VybD9x
DQogPWh0dHBzJTNBJTJGJTJGem9vbS51cyUyRmolMkY5OTA4OTI3MTImYW1wXDtzYT1EJmFtcFw7
dXNkPTImYW1wXDt1c2c9QUZRakNODQogRzJGNXNVcG0tUy1SaGtxTmhYVkJkM20xXzNMQSIgdGFy
Z2V0PSJfYmxhbmsiPmh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMjwvDQogYT5cblxuLTo6fjp+
Ojp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+DQogOn46fjp+On46fjo6fjp+OjotXG5QbGVhc2UgZG8gbm90IGVkaXQgdGhpcyBzZWN0
aW9uIG9mIHRoZSBkZXNjcmlwdGlvbi5cblxuDQogVmlldyB5b3VyIGV2ZW50IGF0IGh0dHBzOi8v
d3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9uPVZJRVcmZWlkPU5qDQogSnJiMjR6
YW01cGJqVTNNR1JoT0dkbmRtTjJjemwxT1dOZk1qQXhPVEF4TURGVU1UWXdNREF3V2lCNWIyTjBi
MEI1YjJOMGIzQnliDQogMnBsWTNRdWIzSm4mdG9rPU1qVWpkR2hsZVc5amRHOXdjbTlxWldOMFFH
ZHRZV2xzTG1OdmJUSXhPR00yWldSbU9XTmpNR00wWldRDQogMFpUSmxNbVppT0dFeU1EYzRNR1F3
T0RJeE1XTXhNMlkmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wLlxuLTo6DQog
fjp+Ojp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46DQogfjo6fjp+OjotDQpMQVNULU1PRElGSUVEOjIwMTgxMjAzVDE5
MDYxNloNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEy
DQpTRVFVRU5DRToyDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVj
aG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJNDQpBQ1RJT046
RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0KVFJJR0dFUjot
UDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--000000000000f2f1cf057c22d732--
