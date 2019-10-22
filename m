Return-Path: <3phqvXQ8JBYs8wtD3r83463ytr8v1px0.r31D3r83D3r83463ytr8.36v@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20B4DE00E3A; Tue, 22 Oct 2019 08:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.222.201 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
	*  0.1 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f201.google.com (mail-qk1-f201.google.com
	[209.85.222.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CAA6E00DE1
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 08:05:11 -0700 (PDT)
Received: by mail-qk1-f201.google.com with SMTP id k67so17043047qkc.3
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 08:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=mcd+fHonDjX/tFJQWrAh+aNDCyIvUF0xfyZ0ZqDvmP8=;
	b=CZ2HvpQy591ffQTzs9A9OPAGVpTWhFytw+Mh1yjWz3iVUn7tcIi5OJWpfcbke5J2ZC
	Arn3sSg4k17h/XX6M8fkCrEVCcy1ldLm5BaQvoWl8yU9soMb1QuDblAjsdWMmvftQ1i2
	JYHRKm9nPTs+ECWkFwtbQaJNR/JSayuDiApjV4FJ3efDOUfM0ArKFbSRmP277VlKX5/E
	vH0q+4TKls3WXKgXhKZDPDeAuP1g7Fifrs20mUlvMHpuLQsS8DN1IqjNjrx4rSLQSRL2
	wCKrVpGg30yIyW442HTzaA6MOKNauxBxGP+zQsIhDk3JOX/XxitfSmmoW+9+yP90tAgU
	3TBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=mcd+fHonDjX/tFJQWrAh+aNDCyIvUF0xfyZ0ZqDvmP8=;
	b=gQ691FYy4bjY17NBL3nYM/JsJ7GhhG9lZ9Sj5FHcpHorRXODD/j9LpjBBPjU5uYMoS
	JRhV5h7A24FcTWmoEwS9BM1u8Oo5TZC3bFnw1ChsaMvkq8edXUUrKYYCm3eJksEPwSbW
	eZXBdK8ef55QgL2JdWwJfwlj1QivkIw+o3zo84OvQ8+5aGIrADaDz/eiKFbvYJSRdmth
	+M1EBHR1/QhpRkBaZluED7kp75eEVUfvAoEiale82FpUO+zhD8LXEhOztnTNZT+EcmOv
	cwCH8KKFnuHqY2YjNfnT39wDRqn1RJSYFz9gvINjfjYOx40uPI579Qfl9L6LZ2MbJR9b
	m9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=mcd+fHonDjX/tFJQWrAh+aNDCyIvUF0xfyZ0ZqDvmP8=;
	b=f3f9wk3P3sRvYH8u1WHX90EIoPlXNUPsHYSQTDm5loud1aF9vrgFAa9K9VCOpkeE0A
	Rhtiuguz8OhW8bjrkR1f231fssZrRsY8F9FWuUVih14NIc7m9SC78KdClkp4A+Sy2CSH
	gJLvcpk6x+S2JRT90WfCFf3ayuHnB8uY+qD+LdVSxbMXvRZek7087TuJWMMxh2jE9rbE
	/n0f47dKpIQ5wSSDMgY2gz2BGI/YYO9yyAY0QacEwUKRcOmycZ2Ye+yZTMQUK0QsdhfF
	7N8HkHOLAmh1moGsXjGbMbymcRcaM5s874yl/Fh/4NL32KTTGvvruPBAcgsGD+F4MrdW
	qApw==
X-Gm-Message-State: APjAAAW4crIgTrhN5TAnXvljCp/CazRvyQgR98W+iKHv8XiV6e6zVEHz
	SLZTWiUc/rAF4rd+eJO/3zbeGNyfVJR237OzrnhT
X-Google-Smtp-Source: APXvYqwaTmt6hHhD7Us2kLy0CSgDNgDLZ+abpgi5Uo+bVMNXGXk1XilRV/H2fBImdQcJYKBrOxXmVbmR6Bd7jJFDtsxc
MIME-Version: 1.0
X-Received: by 2002:a37:4812:: with SMTP id v18mr3260065qka.27.1571756710584; 
	Tue, 22 Oct 2019 08:05:10 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000006868ec05958120b4@google.com>
Date: Tue, 22 Oct 2019 15:05:10 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
Subject: Canceled event with note: Yocto Project Technical Team Meeting / Engineering Sync @ Tue Oct 29, 2019 8am - 9am (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 22 Oct 2019 15:07:53 -0000
X-Groupsio-MsgNum: 47016
Content-Type: multipart/mixed; boundary="0000000000006868d505958120b1"

--0000000000006868d505958120b1
Content-Type: multipart/alternative; boundary="0000000000006868d205958120af"

--0000000000006868d205958120af
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjYW5jZWxlZCB3aXRoIHRoaXMgbm90ZToNCiJEdWUgdG8gRUxD
LUUiDQoNClRpdGxlOiBZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcgLyBFbmdp
bmVlcmluZyBTeW5jDQpUaGUgWW9jdG8gUHJvamVjdCBob3N0cyBhIHRlY2huaWNhbCBjYWxsLiBB
bGwgY29tbXVuaXR5IG1lbWJlcnMgYXJlIGludml0ZWQgIA0KdG8gam9pbiBvbiBib3RoIHRoZSBj
YWxsIGFuZCBpbiB0aGUgSVJDIGNoYW5uZWwsIHdoaWNoIGFyZSB1c2VkICANCnNpbXVsdGFuZW91
c2x5LldlIGVuY291cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIGFu
ZCAgDQphbm5vdW5jZSB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFuY2Vs
IGR1cmluZyB0aGUgbWVldGluZyAgDQoob3B0aW9uYWwpOllvY3RvIElSQzogaHR0cDovL3dlYmNo
YXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG9XaWtpOiAgDQpodHRwczovL3d3dy55b2N0
b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0dWFsLW1lZXRpbmdzL0JyaWRnZSBpcyB3aXRoIFpvb20g
IA0KYXQ6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMlR1ZXNkYXlzIHdoZW4gd2UgYXJlbuKA
mXQgaGF2aW5nIHRoZSBNb250aGx5ICANClRlY2huaWNhbCBDYWxsIFRoZSBZb2N0byBQcm9qZWN0
IGhvc3RzIGEgZW5naW5lZXJpbmcgc3luYyBieSB3aGljaCB0aGUgIA0KdGVjaG5pY2FsIHRlYW0g
ZGlzY3Vzc2VzIHRoZSBjdXJyZW50IHN0YXR1cyBvZiBlbmdpbmVlcmluZyB0b3BpY3MsICANCmlu
Y2x1ZGluZyB0aGUgYXV0b2J1aWxkZXIsIGRvY3VtZW50YXRpb24sIGJ1aWxkcywgYW5kIHJlbGVh
c2VzLg0KV2hlbjogVHVlIE9jdCAyOSwgMjAxOSA4YW0g4oCTIDlhbSBQYWNpZmljIFRpbWUgLSBM
b3MgQW5nZWxlcw0KV2hlcmU6IFpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkwODky
NzEyDQpDYWxlbmRhcjogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KV2hvOg0KICAgICAqIHRoZXlv
Y3RvcHJvamVjdEBnbWFpbC5jb20gLSBvcmdhbml6ZXINCiAgICAgKiBraGVtX3JhakBjb21jYXN0
LmNvbQ0KICAgICAqIG5pY2sucG9uZ3JhdHpAc2luZ2xld2lyZS5jb20NCiAgICAgKiBicnVjZS5h
c2hmaWVsZEBnbWFpbC5jb20NCiAgICAgKiBobmplQHRyaWF4LmNvbQ0KICAgICAqIGxhemFyb3Mu
bGF6YXJpZGlzQGF0b3MubmV0DQogICAgICogZXJpay5ob29nZXZlZW5Ab3V0bG9vay5jb20NCiAg
ICAgKiBydWRvbGYuc3RyZWlmQGdtYWlsLmNvbQ0KICAgICAqIG1hbmp1a3VtQHhpbGlueC5jb20N
CiAgICAgKiBraGVtX3JhakBjYWJsZS5jb21jYXN0LmNvbQ0KICAgICAqIHJvYi5yYW5zbGFtQHdp
bmRyaXZlci5jb20NCiAgICAgKiBiaWtyYW1fYmhvbGFAbWVudG9yLmNvbQ0KICAgICAqIHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCiAgICAgKiBvYW5kcmVhc3NvbkBsdXhvZnQuY29tDQogICAgICog
eWFubmljay5rb2VobGVyQGhwZS5jb20NCiAgICAgKiBzdGVwaGVuLmsuam9sbGV5QGludGVsLmNv
bQ0KICAgICAqIGFzZWlsaXNAY2llbmEuY29tDQogICAgICogamRtYXNvbkBrdWR6dS51cw0KICAg
ICAqIGpvbmF0aGFuLmhhd3NAc2RsLnVzdS5lZHUNCiAgICAgKiBkd2F0a2luc0BzaWVycmF3aXJl
bGVzcy5jb20NCiAgICAgKiByYWoua2hlbUBnbWFpbC5jb20NCiAgICAgKiByYXltb25kLnRhbkBp
bnRlbC5jb20NCiAgICAgKiB0aG9yZS5ib2Vja2VsbWFubkBpbm9leC5kZQ0KICAgICAqIHJjYWxo
b3VuQHNob3RzcG90dGVyLmNvbQ0KICAgICAqIG5hbmRvanZlQGdtYWlsLmNvbQ0KICAgICAqIGFy
YXZpbmRobGFsZ3NzQGVtYmVkdXIuY29tDQogICAgICogc2pvbGxleS55cC5wbUBnbWFpbC5jb20N
CiAgICAgKiBwYXRyaWNrLnNjaG5laWRlckBiaHRyb25pay5kZQ0KDQoNCkludml0YXRpb24gZnJv
bSBHb29nbGUgQ2FsZW5kYXI6IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvDQoNCllv
dSBhcmUgcmVjZWl2aW5nIHRoaXMgY291cnRlc3kgZW1haWwgYXQgdGhlIGFjY291bnQgeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZyAgDQpiZWNhdXNlIHlvdSBhcmUgYW4gYXR0ZW5kZWUgb2YgdGhpcyBl
dmVudC4NCg0KVG8gc3RvcCByZWNlaXZpbmcgZnV0dXJlIHVwZGF0ZXMgZm9yIHRoaXMgZXZlbnQs
IGRlY2xpbmUgdGhpcyBldmVudC4gIA0KQWx0ZXJuYXRpdmVseSB5b3UgY2FuIHNpZ24gdXAgZm9y
IGEgR29vZ2xlIGFjY291bnQgYXQgIA0KaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci8g
YW5kIGNvbnRyb2wgeW91ciBub3RpZmljYXRpb24gc2V0dGluZ3MgZm9yICANCnlvdXIgZW50aXJl
IGNhbGVuZGFyLg0KDQpGb3J3YXJkaW5nIHRoaXMgaW52aXRhdGlvbiBjb3VsZCBhbGxvdyBhbnkg
cmVjaXBpZW50IHRvIHNlbmQgYSByZXNwb25zZSB0byAgDQp0aGUgb3JnYW5pemVyIGFuZCBiZSBh
ZGRlZCB0byB0aGUgZ3Vlc3QgbGlzdCwgb3IgaW52aXRlIG90aGVycyByZWdhcmRsZXNzICANCm9m
IHRoZWlyIG93biBpbnZpdGF0aW9uIHN0YXR1cywgb3IgdG8gbW9kaWZ5IHlvdXIgUlNWUC4gTGVh
cm4gbW9yZSBhdCAgDQpodHRwczovL3N1cHBvcnQuZ29vZ2xlLmNvbS9jYWxlbmRhci9hbnN3ZXIv
MzcxMzUjZm9yd2FyZGluZw0K

--0000000000006868d205958120af
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
ntent=3D"74pj8d1h6op62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4_2019102=
9T150000Z"/><h3 style=3D"padding:0 0 6px 0;margin:0;font-family:Arial,Sans-=
serif;font-size:16px;font-weight:bold;color:#222"><span itemprop=3D"name">Y=
octo Project Technical Team Meeting / Engineering Sync</span></h3><table ce=
llpadding=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"><t=
r><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:=
13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=
=3D"font-style:normal">When</i></div></td><td style=3D"padding-bottom:10px;=
font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div=
 style=3D"text-indent:-1px"><time itemprop=3D"startDate" datetime=3D"201910=
29T150000Z"></time><time itemprop=3D"endDate" datetime=3D"20191029T160000Z"=
></time>Tue Oct 29, 2019 8am =E2=80=93 9am <span style=3D"color:#888">Pacif=
ic Time - Los Angeles</span></div></td></tr><tr><td style=3D"padding:0 1em =
10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:n=
owrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Where<=
/i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif=
;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">=
<span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place">=
<span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us=
/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://www.google.com/ma=
ps/search/Zoom+Meeting:+https:%2F%2Fzoom.us%2Fj%2F990892712?hl=3Den" style=
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
p=3D"name" class=3D"notranslate">khem_raj@comcast.com</span><meta itemprop=
=3D"email" content=3D"khem_raj@comcast.com"/></span></div></div></div></td>=
</tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-=
size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span styl=
e=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0">=
<span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"=
><span itemprop=3D"name" class=3D"notranslate">nick.pongratz@singlewire.com=
</span><meta itemprop=3D"email" content=3D"nick.pongratz@singlewire.com"/><=
/span></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-=
family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D=
"text-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x202=
2;</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-=
serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div =
style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=
=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate"=
>bruce.ashfield@gmail.com</span><meta itemprop=3D"email" content=3D"bruce.a=
shfield@gmail.com"/></span></div></div></div></td></tr><tr><td style=3D"pad=
ding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;widt=
h:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier =
New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;fo=
nt-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-in=
dent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attende=
e" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" =
class=3D"notranslate">hnje@triax.com</span><meta itemprop=3D"email" content=
=3D"hnje@triax.com"/></span></div></div></div></td></tr><tr><td style=3D"pa=
dding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;wid=
th:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier=
 New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;f=
ont-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-i=
ndent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attend=
ee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name"=
 class=3D"notranslate">lazaros.lazaridis@atos.net</span><meta itemprop=3D"e=
mail" content=3D"lazaros.lazaridis@atos.net"/></span></div></div></div></td=
></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font=
-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span sty=
le=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td styl=
e=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"=
><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person=
"><span itemprop=3D"name" class=3D"notranslate">erik.hoogeveen@outlook.com<=
/span><meta itemprop=3D"email" content=3D"erik.hoogeveen@outlook.com"/></sp=
an></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-fam=
ily:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"te=
xt-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;<=
/span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-ser=
if;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div sty=
le=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D=
"http://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">ru=
dolf.streif@gmail.com</span><meta itemprop=3D"email" content=3D"rudolf.stre=
if@gmail.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-=
right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10p=
x"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,m=
onospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:=
-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" it=
emscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=
=3D"notranslate">manjukum@xilinx.com</span><meta itemprop=3D"email" content=
=3D"manjukum@xilinx.com"/></span></div></div></div></td></tr><tr><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:C=
ourier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:=
10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"=
text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"=
attendee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D=
"name" class=3D"notranslate">khem_raj@cable.comcast.com</span><meta itempro=
p=3D"email" content=3D"khem_raj@cable.comcast.com"/></span></div></div></di=
v></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-seri=
f;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><sp=
an style=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><t=
d style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;c=
olor:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.=
3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/=
Person"><span itemprop=3D"name" class=3D"notranslate">rob.ranslam@windriver=
.com</span><meta itemprop=3D"email" content=3D"rob.ranslam@windriver.com"/>=
</span></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font=
-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=
=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x=
2022;</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><d=
iv style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemt=
ype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notransla=
te">bikram_bhola@mentor.com</span><meta itemprop=3D"email" content=3D"bikra=
m_bhola@mentor.com"/></span></div></div></div></td></tr><tr><td style=3D"pa=
dding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;wid=
th:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier=
 New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;f=
ont-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-i=
ndent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attend=
ee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name"=
 class=3D"notranslate">yocto@yoctoproject.org</span><meta itemprop=3D"email=
" content=3D"yocto@yoctoproject.org"/></span></div></div></div></td></tr><t=
r><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13=
px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"fo=
nt-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"pad=
ding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><di=
v style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span i=
temprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span =
itemprop=3D"name" class=3D"notranslate">oandreasson@luxoft.com</span><meta =
itemprop=3D"email" content=3D"oandreasson@luxoft.com"/></span></div></div><=
/div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-s=
erif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px">=
<span style=3D"font-family:Courier New,monospace">&#x2022;</span></div></td=
><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13p=
x;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0=
 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.o=
rg/Person"><span itemprop=3D"name" class=3D"notranslate">yannick.koehler@hp=
e.com</span><meta itemprop=3D"email" content=3D"yannick.koehler@hpe.com"/><=
/span></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-=
family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D=
"text-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x202=
2;</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-=
serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div =
style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=
=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate"=
>stephen.k.jolley@intel.com</span><meta itemprop=3D"email" content=3D"steph=
en.k.jolley@intel.com"/></span></div></div></div></td></tr><tr><td style=3D=
"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;=
width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Cour=
ier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10p=
x;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"tex=
t-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"att=
endee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"na=
me" class=3D"notranslate">aseilis@ciena.com</span><meta itemprop=3D"email" =
content=3D"aseilis@ciena.com"/></span></div></div></div></td></tr><tr><td s=
tyle=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-fami=
ly:Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-ri=
ght:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=
=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=
=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span itempro=
p=3D"name" class=3D"notranslate">jdmason@kudzu.us</span><meta itemprop=3D"e=
mail" content=3D"jdmason@kudzu.us"/></span></div></div></div></td></tr><tr>=
<td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px=
;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font=
-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"paddi=
ng-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div =
style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span ite=
mprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span it=
emprop=3D"name" class=3D"notranslate">jonathan.haws@sdl.usu.edu</span><meta=
 itemprop=3D"email" content=3D"jonathan.haws@sdl.usu.edu"/></span></div></d=
iv></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1=
px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span></div>=
</td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size=
:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin=
:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://sche=
ma.org/Person"><span itemprop=3D"name" class=3D"notranslate">dwatkins@sierr=
awireless.com</span><meta itemprop=3D"email" content=3D"dwatkins@sierrawire=
less.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-righ=
t:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><=
div style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monos=
pace">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-family=
:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px=
"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemsc=
ope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"=
notranslate">raj.khem@gmail.com</span><meta itemprop=3D"email" content=3D"r=
aj.khem@gmail.com"/></span></div></div></div></td></tr><tr><td style=3D"pad=
ding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;widt=
h:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier =
New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;fo=
nt-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-in=
dent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attende=
e" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" =
class=3D"notranslate">raymond.tan@intel.com</span><meta itemprop=3D"email" =
content=3D"raymond.tan@intel.com"/></span></div></div></div></td></tr><tr><=
td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;=
color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-=
family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"paddin=
g-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div s=
tyle=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span item=
prop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span ite=
mprop=3D"name" class=3D"notranslate">thore.boeckelmann@inoex.de</span><meta=
 itemprop=3D"email" content=3D"thore.boeckelmann@inoex.de"/></span></div></=
div></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,S=
ans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-=
1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span></div=
></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-siz=
e:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margi=
n:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://sch=
ema.org/Person"><span itemprop=3D"name" class=3D"notranslate">rcalhoun@shot=
spotter.com</span><meta itemprop=3D"email" content=3D"rcalhoun@shotspotter.=
com"/></span></div></div></div></td></tr><tr><td style=3D"padding-right:10p=
x;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div s=
tyle=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospace"=
>&#x2022;</span></div></td><td style=3D"padding-right:10px;font-family:Aria=
l,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><di=
v><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope i=
temtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notra=
nslate">nandojve@gmail.com</span><meta itemprop=3D"email" content=3D"nandoj=
ve@gmail.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-=
right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10p=
x"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,m=
onospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:=
-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" it=
emscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=
=3D"notranslate">aravindhlalgss@embedur.com</span><meta itemprop=3D"email" =
content=3D"aravindhlalgss@embedur.com"/></span></div></div></div></td></tr>=
<tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:=
13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"=
font-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"p=
adding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><=
div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span=
 itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><spa=
n itemprop=3D"name" class=3D"notranslate">sjolley.yp.pm@gmail.com</span><me=
ta itemprop=3D"email" content=3D"sjolley.yp.pm@gmail.com"/></span></div></d=
iv></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1=
px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span></div>=
</td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size=
:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin=
:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://sche=
ma.org/Person"><span itemprop=3D"name" class=3D"notranslate">patrick.schnei=
der@bhtronik.de</span><meta itemprop=3D"email" content=3D"patrick.schneider=
@bhtronik.de"/></span></div></div></div></td></tr></table></td></tr></table=
><div style=3D"padding-bottom:15px;font-family:Arial,Sans-serif;font-size:1=
3px;color:#222;white-space:pre-wrap!important;white-space:-moz-pre-wrap!imp=
ortant;white-space:-pre-wrap!important;white-space:-o-pre-wrap!important;wh=
ite-space:pre;word-wrap:break-word"><span><br>The Yocto Project hosts a tec=
hnical call. All community members are invited to join on both the call and=
 in the IRC channel, which are used simultaneously.<br>We encourage people =
attending the meeting to logon and announce themselves on the Yocto Project=
 IRC chancel during the meeting (optional):<br><br>Yocto IRC: <a href=3D"ht=
tps://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3Fchannel=
s%3D%23yocto&amp;sa=3DD&amp;ust=3D1572188710552000&amp;usg=3DAFQjCNHUg4Gt6T=
62LNFDIKSCaoc6XDxSqQ" target=3D"_blank">http://webchat.freenode.net/?channe=
ls=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttp=
s%3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;=
ust=3D1572188710554000&amp;usg=3DAFQjCNGB3xpA1G2U2fe0WCywD0-2VcJe6w" target=
=3D"_blank">https://www.yoctoproject.org/public-virtual-meetings/</a><br><b=
r>Bridge is with Zoom at: <a href=3D"https://www.google.com/url?q=3Dhttps%3=
A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D1572188710556000&amp;us=
g=3DAFQjCNEqYyFp9VMHYeRU1JJy1lj90_i8Rg" target=3D"_blank">https://zoom.us/j=
/990892712</a><br><br>Tuesdays when we aren=E2=80=99t having the Monthly Te=
chnical Call The Yocto Project hosts a engineering sync by which the techni=
cal team discusses the current status of engineering topics, including the =
autobuilder, documentation, builds, and releases.</span><meta itemprop=3D"d=
escription" content=3D"The Yocto Project hosts a technical call. All commun=
ity members are invited to join on both the call and in the IRC channel, wh=
ich are used simultaneously.We encourage people attending the meeting to lo=
gon and announce themselves on the Yocto Project IRC chancel during the mee=
ting (optional):Yocto IRC: http://webchat.freenode.net/?channels=3D#yoctoWi=
ki: https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoo=
m at: https://zoom.us/j/990892712Tuesdays when we aren=E2=80=99t having the=
 Monthly Technical Call The Yocto Project hosts a engineering sync by which=
 the technical team discusses the current status of engineering topics, inc=
luding the autobuilder, documentation, builds, and releases."/></div></div>=
</td></tr><tr><td style=3D"background-color:#f6f6f6;color:#888;border-top:1=
px Solid #ccc;font-family:Arial,Sans-serif;font-size:11px"><p>Invitation fr=
om <a href=3D"https://www.google.com/calendar/" target=3D"_blank" style=3D"=
">Google Calendar</a></p><p>You are receiving this courtesy email at the ac=
count yocto@yoctoproject.org because you are an attendee of this event.</p>=
<p>To stop receiving future updates for this event, decline this event. Alt=
ernatively you can sign up for a Google account at https://www.google.com/c=
alendar/ and control your notification settings for your entire calendar.</=
p><p>Forwarding this invitation could allow any recipient to send a respons=
e to the organizer and be added to the guest list, or invite others regardl=
ess of their own invitation status, or to modify your RSVP. <a href=3D"http=
s://support.google.com/calendar/answer/37135#forwarding">Learn More</a>.</p=
></td></tr></table></div></span></span>

--0000000000006868d205958120af
Content-Type: text/calendar; charset="UTF-8"; method=CANCEL
Content-Transfer-Encoding: quoted-printable

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
DTSTART;TZID=3DAmerica/Los_Angeles:20191029T080000
DTEND;TZID=3DAmerica/Los_Angeles:20191029T090000
DTSTAMP:20191022T150510Z
ORGANIZER;CN=3Dtheyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:74pj8d1h6op62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4_R20190827T15
 0000@google.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dkh
 em_raj@comcast.com;X-NUM-GUESTS=3D0:mailto:khem_raj@comcast.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dni
 ck.pongratz@singlewire.com;X-NUM-GUESTS=3D0:mailto:nick.pongratz@singlewir=
e.c
 om
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dbr
 uce.ashfield@gmail.com;X-NUM-GUESTS=3D0:mailto:bruce.ashfield@gmail.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dhn
 je@triax.com;X-NUM-GUESTS=3D0:mailto:hnje@triax.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dla
 zaros.lazaridis@atos.net;X-NUM-GUESTS=3D0:mailto:lazaros.lazaridis@atos.ne=
t
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Der
 ik.hoogeveen@outlook.com;X-NUM-GUESTS=3D0:mailto:erik.hoogeveen@outlook.co=
m
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dru
 dolf.streif@gmail.com;X-NUM-GUESTS=3D0:mailto:rudolf.streif@gmail.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dma
 njukum@xilinx.com;X-NUM-GUESTS=3D0:mailto:manjukum@xilinx.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dkh
 em_raj@cable.comcast.com;X-NUM-GUESTS=3D0:mailto:khem_raj@cable.comcast.co=
m
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dro
 b.ranslam@windriver.com;X-NUM-GUESTS=3D0:mailto:rob.ranslam@windriver.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dbi
 kram_bhola@mentor.com;X-NUM-GUESTS=3D0:mailto:bikram_bhola@mentor.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dyo
 cto@yoctoproject.org;X-NUM-GUESTS=3D0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Doa
 ndreasson@luxoft.com;X-NUM-GUESTS=3D0:mailto:oandreasson@luxoft.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dya
 nnick.koehler@hpe.com;X-NUM-GUESTS=3D0:mailto:yannick.koehler@hpe.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dst
 ephen.k.jolley@intel.com;X-NUM-GUESTS=3D0:mailto:stephen.k.jolley@intel.co=
m
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Das
 eilis@ciena.com;X-NUM-GUESTS=3D0:mailto:aseilis@ciena.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Djd
 mason@kudzu.us;X-NUM-GUESTS=3D0:mailto:jdmason@kudzu.us
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Djo
 nathan.haws@sdl.usu.edu;X-NUM-GUESTS=3D0:mailto:jonathan.haws@sdl.usu.edu
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Ddw
 atkins@sierrawireless.com;X-NUM-GUESTS=3D0:mailto:dwatkins@sierrawireless.=
com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DACCEPTED;CN=
=3Dtheyoc
 toproject@gmail.com;X-NUM-GUESTS=3D0:mailto:theyoctoproject@gmail.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dra
 j.khem@gmail.com;X-NUM-GUESTS=3D0:mailto:raj.khem@gmail.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dra
 ymond.tan@intel.com;X-NUM-GUESTS=3D0:mailto:raymond.tan@intel.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dth
 ore.boeckelmann@inoex.de;X-NUM-GUESTS=3D0:mailto:thore.boeckelmann@inoex.d=
e
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Drc
 alhoun@shotspotter.com;X-NUM-GUESTS=3D0:mailto:rcalhoun@shotspotter.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dna
 ndojve@gmail.com;X-NUM-GUESTS=3D0:mailto:nandojve@gmail.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dar
 avindhlalgss@embedur.com;X-NUM-GUESTS=3D0:mailto:aravindhlalgss@embedur.co=
m
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dsj
 olley.yp.pm@gmail.com;X-NUM-GUESTS=3D0:mailto:sjolley.yp.pm@gmail.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;CN=3Dpa
 trick.schneider@bhtronik.de;X-NUM-GUESTS=3D0:mailto:patrick.schneider@bhtr=
oni
 k.de
RECURRENCE-ID;TZID=3DAmerica/Los_Angeles:20191029T080000
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
  the autobuilder\, documentation\, builds\, and releases.
LAST-MODIFIED:20191022T150509Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:3
STATUS:CANCELLED
SUMMARY:Yocto Project Technical Team Meeting / Engineering Sync
TRANSP:OPAQUE
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:This is an event reminder
TRIGGER:-P0DT0H15M0S
END:VALARM
END:VEVENT
END:VCALENDAR

--0000000000006868d205958120af--

--0000000000006868d505958120b1
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
RFRTVEFSVDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTEwMjlUMDgwMDAwDQpEVEVORDtU
WklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTEwMjlUMDkwMDAwDQpEVFNUQU1QOjIwMTkxMDIy
VDE1MDUxMFoNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0
aGV5b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3Bn
amdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF9SMjAxOTA4MjdUMTUNCiAwMDAwQGdvb2ds
ZS5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtDTj1raA0KIGVtX3JhakBjb21jYXN0LmNvbTtYLU5VTS1HVUVT
VFM9MDptYWlsdG86a2hlbV9yYWpAY29tY2FzdC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklE
VUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj1uaQ0KIGNr
LnBvbmdyYXR6QHNpbmdsZXdpcmUuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzpuaWNrLnBvbmdy
YXR6QHNpbmdsZXdpcmUuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049YnINCiB1Y2UuYXNoZmllbGRA
Z21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzpicnVjZS5hc2hmaWVsZEBnbWFpbC5jb20N
CkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFU
PU5FRURTLUFDVElPTjtDTj1obg0KIGplQHRyaWF4LmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86
aG5qZUB0cmlheC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj1sYQ0KIHphcm9zLmxhemFyaWRpc0BhdG9z
Lm5ldDtYLU5VTS1HVUVTVFM9MDptYWlsdG86bGF6YXJvcy5sYXphcmlkaXNAYXRvcy5uZXQNCkFU
VEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtDTj1lcg0KIGlrLmhvb2dldmVlbkBvdXRsb29rLmNvbTtYLU5VTS1HVUVTVFM9
MDptYWlsdG86ZXJpay5ob29nZXZlZW5Ab3V0bG9vay5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJ
VklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj1ydQ0K
IGRvbGYuc3RyZWlmQGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86cnVkb2xmLnN0cmVp
ZkBnbWFpbC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQ
QU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj1tYQ0KIG5qdWt1bUB4aWxpbnguY29tO1gtTlVN
LUdVRVNUUz0wOm1haWx0bzptYW5qdWt1bUB4aWxpbnguY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5E
SVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049a2gN
CiBlbV9yYWpAY2FibGUuY29tY2FzdC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOmtoZW1fcmFq
QGNhYmxlLmNvbWNhc3QuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049cm8NCiBiLnJhbnNsYW1Ad2luZHJp
dmVyLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86cm9iLnJhbnNsYW1Ad2luZHJpdmVyLmNvbQ0K
QVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
TkVFRFMtQUNUSU9OO0NOPWJpDQoga3JhbV9iaG9sYUBtZW50b3IuY29tO1gtTlVNLUdVRVNUUz0w
Om1haWx0bzpiaWtyYW1fYmhvbGFAbWVudG9yLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURV
QUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO0NOPXlvDQogY3Rv
QHlvY3RvcHJvamVjdC5vcmc7WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtDTj1vYQ0KIG5kcmVhc3NvbkBsdXhvZnQuY29tO1gtTlVNLUdV
RVNUUz0wOm1haWx0bzpvYW5kcmVhc3NvbkBsdXhvZnQuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5E
SVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049eWEN
CiBubmljay5rb2VobGVyQGhwZS5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnlhbm5pY2sua29l
aGxlckBocGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049c3QNCiBlcGhlbi5rLmpvbGxleUBpbnRlbC5j
b207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tDQpBVFRF
TkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVE
Uy1BQ1RJT047Q049YXMNCiBlaWxpc0BjaWVuYS5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOmFz
ZWlsaXNAY2llbmEuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049amQNCiBtYXNvbkBrdWR6dS51cztYLU5V
TS1HVUVTVFM9MDptYWlsdG86amRtYXNvbkBrdWR6dS51cw0KQVRURU5ERUU7Q1VUWVBFPUlORElW
SURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO0NOPWpvDQog
bmF0aGFuLmhhd3NAc2RsLnVzdS5lZHU7WC1OVU0tR1VFU1RTPTA6bWFpbHRvOmpvbmF0aGFuLmhh
d3NAc2RsLnVzdS5lZHUNCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj1kdw0KIGF0a2luc0BzaWVycmF3aXJlbGVz
cy5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOmR3YXRraW5zQHNpZXJyYXdpcmVsZXNzLmNvbQ0K
QVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
QUNDRVBURUQ7Q049dGhleW9jDQogdG9wcm9qZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDpt
YWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURV
QUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO0NOPXJhDQogai5r
aGVtQGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86cmFqLmtoZW1AZ21haWwuY29tDQpB
VFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1O
RUVEUy1BQ1RJT047Q049cmENCiB5bW9uZC50YW5AaW50ZWwuY29tO1gtTlVNLUdVRVNUUz0wOm1h
aWx0bzpyYXltb25kLnRhbkBpbnRlbC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JP
TEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj10aA0KIG9yZS5ib2Vj
a2VsbWFubkBpbm9leC5kZTtYLU5VTS1HVUVTVFM9MDptYWlsdG86dGhvcmUuYm9lY2tlbG1hbm5A
aW5vZXguZGUNCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5U
O1BBUlRTVEFUPU5FRURTLUFDVElPTjtDTj1yYw0KIGFsaG91bkBzaG90c3BvdHRlci5jb207WC1O
VU0tR1VFU1RTPTA6bWFpbHRvOnJjYWxob3VuQHNob3RzcG90dGVyLmNvbQ0KQVRURU5ERUU7Q1VU
WVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9O
O0NOPW5hDQogbmRvanZlQGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86bmFuZG9qdmVA
Z21haWwuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049YXINCiBhdmluZGhsYWxnc3NAZW1iZWR1ci5jb207
WC1OVU0tR1VFU1RTPTA6bWFpbHRvOmFyYXZpbmRobGFsZ3NzQGVtYmVkdXIuY29tDQpBVFRFTkRF
RTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1B
Q1RJT047Q049c2oNCiBvbGxleS55cC5wbUBnbWFpbC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRv
OnNqb2xsZXkueXAucG1AZ21haWwuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049cGENCiB0cmljay5zY2hu
ZWlkZXJAYmh0cm9uaWsuZGU7WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnBhdHJpY2suc2NobmVpZGVy
QGJodHJvbmkNCiBrLmRlDQpSRUNVUlJFTkNFLUlEO1RaSUQ9QW1lcmljYS9Mb3NfQW5nZWxlczoy
MDE5MTAyOVQwODAwMDANCkNSRUFURUQ6MjAxODA1MjRUMTgxNDA2Wg0KREVTQ1JJUFRJT046PGJy
PlRoZSBZb2N0byBQcm9qZWN0IGhvc3RzIGEgdGVjaG5pY2FsIGNhbGwuIEFsbCBjb21tdW5pdHkg
bWVtDQogYmVycyBhcmUgaW52aXRlZCB0byBqb2luIG9uIGJvdGggdGhlIGNhbGwgYW5kIGluIHRo
ZSBJUkMgY2hhbm5lbFwsIHdoaWNoIGFyDQogZSB1c2VkIHNpbXVsdGFuZW91c2x5Ljxicj5XZSBl
bmNvdXJhZ2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvDQogbiBhbmQgYW5u
b3VuY2UgdGhlbXNlbHZlcyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcg
dGhlIG1lZXRpDQogbmcgKG9wdGlvbmFsKTo8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0
cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFuDQogbmVscz0jeW9jdG8iPmh0dHA6Ly93ZWJj
aGF0LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvPC9hPjxicj48YnI+V2lraTogDQogPGEg
aHJlZj0iaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5n
cy8iPmh0dHBzOi8vd3d3DQogLnlvY3RvcHJvamVjdC5vcmcvcHVibGljLXZpcnR1YWwtbWVldGlu
Z3MvPC9hPjxicj48YnI+QnJpZGdlIGlzIHdpdGggWm9vbSBhDQogdDogPGEgaHJlZj0iaHR0cHM6
Ly96b29tLnVzL2ovOTkwODkyNzEyIiBpZD0ib3c2MzQiIF9faXNfb3duZXI9InRydWUiPmh0dHBz
DQogOi8vem9vbS51cy9qLzk5MDg5MjcxMjwvYT48YnI+PGJyPlR1ZXNkYXlzIHdoZW4gd2UgYXJl
buKAmXQgaGF2aW5nIHRoZSBNb250aGwNCiB5IFRlY2huaWNhbCBDYWxsIFRoZSBZb2N0byBQcm9q
ZWN0IGhvc3RzIGEgZW5naW5lZXJpbmcgc3luYyBieSB3aGljaCB0aGUgdGUNCiBjaG5pY2FsIHRl
YW0gZGlzY3Vzc2VzIHRoZSBjdXJyZW50IHN0YXR1cyBvZiBlbmdpbmVlcmluZyB0b3BpY3NcLCBp
bmNsdWRpbmcNCiAgdGhlIGF1dG9idWlsZGVyXCwgZG9jdW1lbnRhdGlvblwsIGJ1aWxkc1wsIGFu
ZCByZWxlYXNlcy4NCkxBU1QtTU9ESUZJRUQ6MjAxOTEwMjJUMTUwNTA5Wg0KTE9DQVRJT046Wm9v
bSBNZWV0aW5nOiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINClNFUVVFTkNFOjMNClNUQVRV
UzpDQU5DRUxMRUQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5n
IC8gRW5naW5lZXJpbmcgU3luYw0KVFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJNDQpBQ1RJT046
RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0KVFJJR0dFUjot
UDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--0000000000006868d505958120b1--
