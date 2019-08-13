Return-Path: <3TR9TXQ8JBcg7vsC2q72352xsq7u0owz.q20C2q72C2q72352xsq7.25u@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C24B3E00C81; Tue, 13 Aug 2019 13:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.161.73 listed in list.dnswl.org]
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
Received: from mail-yw1-f73.google.com (mail-yw1-f73.google.com
	[209.85.161.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033FEE00BEB
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
Received: by mail-yw1-f73.google.com with SMTP id n139so80512604ywd.22
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=PbRUKsQ8ZGj2Fc1O6FOtxtK53REijW1bHyP5fmXkrlw=;
	b=ISLHvSIvtniLhpX2GMPd7hvguzZUIPQCM/Ql5fGeze7Ls5xhILg1WRcgIjK+dxVhGJ
	+beEievC5zDSSCcBCO7Warf8e/KMOz1r/1mX7M66GwMllf174rj8Hs2Nfi2ViBN9h5zE
	B9xgqc0znswrjBgmXkK/b5sOnXSmJbXxeC/ZVuwt7vrpE3dczXWCVQu1E8enOnRotYpC
	CMm3Se+z+DZcTwmAyS365ZYWdJTVt/Wfhv2mZylP4FxFhN2nay4A+Hz+uD0iJdfBwm0a
	dlxN+djY1xnbcyW0rDUBdxNDf9rjJbVn3jqKPn2TkUO/7seaZT4bkSim694iNBNR7D9e
	TdfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=PbRUKsQ8ZGj2Fc1O6FOtxtK53REijW1bHyP5fmXkrlw=;
	b=Lfjv/elmmiyJf4wLWuMr+R9zKxLJFHL5EpP2yGMGJzFgWSMw8OH/ttLHu0Jhu/BbF7
	Kp5P0PfP6Is1pnMeahj6WXrQ8v1mIfAPUFmKoug5DtFBqyJmKcYRNo9eOSppAvlsK06x
	5e9immV8Ou3swdEOQKV5WaixImjFlYEZ8eiUCqTIHyQJwfivZhJrV9i8P+SJqUo4RXc7
	1EHCHQdpad9Z00mNcm5RN5jS/O59vuruiOl1zJ9AUdVzCe+mXgjv9R6qIBjBqVxQfi3b
	LtSBkpvR7B8JzTItFdeCHkN6uq6s39KxywYoa59GW1EyMb5LnP5jYXWQZUlg4AJ/hr5+
	x2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=PbRUKsQ8ZGj2Fc1O6FOtxtK53REijW1bHyP5fmXkrlw=;
	b=o/4BOAYLwOiD24SQSiS2rEjooy5doMP3Vg9ehS1h0tyfaaVbWMYTEdKCUMBGKeEkKs
	sJpoVsdJlpZNkzzSyQPD+2b0yIKRrrcg9kiq3RI95TDmQT9dq4Ec+XHYDg8PMGN0tvWl
	MbfiXNZFxafb51w+6w7Cegf+rmMOqqLdrUpTjLxIvGdKbLT0DR7tLD92y2kL/kp32E5h
	XkMyxZZTrwgQ1J0L37xwZ67232bBth1SFyQH8JHZZ18QHG35ZUFJtWWBe7U8N5ptM8ou
	++S+htKL2C0XOGo/4I00jnJyLyR/qrkNxZCkrga9AsVdcW2tpYPVcyDbIY5XUl3Pp8Hx
	+mug==
X-Gm-Message-State: APjAAAVo9sRZ7yvq/kJLxOpY4DzRFxzTWnS+oZXSlHg01wywwCGLiJBx
	IXfgOwO9PiBqNfcEsepz3aI9L61GfAcTpExLr2nh
X-Google-Smtp-Source: APXvYqzxfMrDQmxxhA9JEJZToNyatx8t4hOQgnWdzgdnghml3cx+W2zfoX3XXP0ZyCCAbq/qiE6pl+7FwcHQojMo7xu6
MIME-Version: 1.0
X-Received: by 2002:a5b:511:: with SMTP id o17mr27236536ybp.158.1565728589188; 
	Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000005f96760590059824@google.com>
Date: Tue, 13 Aug 2019 20:36:29 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com, 
	sjolley.yp.pm@gmail.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday from Tue Feb 5 to Mon Aug 5 (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 13 Aug 2019 20:36:32 -0000
X-Groupsio-MsgNum: 46281
Content-Type: multipart/mixed; boundary="0000000000005f96580590059823"

--0000000000005f96580590059823
Content-Type: multipart/alternative; boundary="0000000000005f96550590059821"

--0000000000005f96550590059821
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjaGFuZ2VkLg0KDQpUaXRsZTogWW9jdG8gUHJvamVjdCBUZWNo
bmljYWwgVGVhbSBNZWV0aW5nDQpXZSBlbmNvdXJhZ2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVl
dGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UgdGhlbXNlbHZlcyAgDQpvbiB0aGUgWW9jdG8gUHJv
amVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcgKG9wdGlvbmFsKTpZb2N0byBJUkM6
ICANCmh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvV2lraTogIA0K
aHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5ncy9Ccmlk
Z2UgaXMgd2l0aCBab29tICANCmF0OiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINCldoZW46
IE1vbnRobHkgZnJvbSA4YW0gdG8gODozMGFtIG9uIHRoZSBmaXJzdCBUdWVzZGF5IGZyb20gVHVl
IEZlYiA1IHRvIE1vbiAgDQpBdWcgNSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxlcyAoY2hhbmdl
ZCkNCldoZXJlOiBab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMg0KQ2Fs
ZW5kYXI6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCldobzoNCiAgICAgKiB0aGV5b2N0b3Byb2pl
Y3RAZ21haWwuY29tIC0gb3JnYW5pemVyDQogICAgICogc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5j
b20NCiAgICAgKiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQogICAgICogc2pvbGxleS55cC5wbUBn
bWFpbC5jb20NCg0KRXZlbnQgZGV0YWlsczogIA0KaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxl
bmRhci9ldmVudD9hY3Rpb249VklFVyZlaWQ9TmpKcmIyNHphbTVwYmpVM01HUmhPR2RuZG1OMmN6
bDFPV05mVWpJd01Ua3dNakExVkRFMk1EQXdNQ0I1YjJOMGIwQjViMk4wYjNCeWIycGxZM1F1YjNK
biZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkdFlXbHNMbU52YlRRMU1UazRPR05pTW1Z
d1lURXhaakkxWVROa05EYzBOV1F3TmpZNVl6bGlaRFExWVRCa1kyUSZjdHo9QW1lcmljYSUyRkxv
c19BbmdlbGVzJmhsPWVuJmVzPTANCg0KSW52aXRhdGlvbiBmcm9tIEdvb2dsZSBDYWxlbmRhcjog
aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci8NCg0KWW91IGFyZSByZWNlaXZpbmcgdGhp
cyBjb3VydGVzeSBlbWFpbCBhdCB0aGUgYWNjb3VudCB5b2N0b0B5b2N0b3Byb2plY3Qub3JnICAN
CmJlY2F1c2UgeW91IGFyZSBhbiBhdHRlbmRlZSBvZiB0aGlzIGV2ZW50Lg0KDQpUbyBzdG9wIHJl
Y2VpdmluZyBmdXR1cmUgdXBkYXRlcyBmb3IgdGhpcyBldmVudCwgZGVjbGluZSB0aGlzIGV2ZW50
LiAgDQpBbHRlcm5hdGl2ZWx5IHlvdSBjYW4gc2lnbiB1cCBmb3IgYSBHb29nbGUgYWNjb3VudCBh
dCAgDQpodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyLyBhbmQgY29udHJvbCB5b3VyIG5v
dGlmaWNhdGlvbiBzZXR0aW5ncyBmb3IgIA0KeW91ciBlbnRpcmUgY2FsZW5kYXIuDQoNCkZvcndh
cmRpbmcgdGhpcyBpbnZpdGF0aW9uIGNvdWxkIGFsbG93IGFueSByZWNpcGllbnQgdG8gc2VuZCBh
IHJlc3BvbnNlIHRvICANCnRoZSBvcmdhbml6ZXIgYW5kIGJlIGFkZGVkIHRvIHRoZSBndWVzdCBs
aXN0LCBvciBpbnZpdGUgb3RoZXJzIHJlZ2FyZGxlc3MgIA0Kb2YgdGhlaXIgb3duIGludml0YXRp
b24gc3RhdHVzLCBvciB0byBtb2RpZnkgeW91ciBSU1ZQLiBMZWFybiBtb3JlIGF0ICANCmh0dHBz
Oi8vc3VwcG9ydC5nb29nbGUuY29tL2NhbGVuZGFyL2Fuc3dlci8zNzEzNSNmb3J3YXJkaW5nDQo=

--0000000000005f96550590059821
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
570da8ggvcvs9u9c_R20190205T160000"/><div style=3D"float:right;font-weight:b=
old;font-size:13px"> <a href=3D"https://www.google.com/calendar/event?actio=
n=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfUjIwMTkwMjA1VDE2MDAw=
MCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWls=
LmNvbTQ1MTk4OGNiMmYwYTExZjI1YTNkNDc0NWQwNjY5YzliZDQ1YTBkY2Q&amp;ctz=3DAmeri=
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
r:#080">Changed: </strong><time itemprop=3D"startDate" datetime=3D"20190205=
T160000Z"></time><time itemprop=3D"endDate" datetime=3D"20190205T163000Z"><=
/time>Monthly from 8am to 8:30am on the first Tuesday from Tue Feb 5 to Mon=
 Aug 5 <span style=3D"color:#888">Pacific Time - Los Angeles</span></div></=
td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;=
font-size:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><di=
v><i style=3D"font-style:normal">Where</i></div></td><td style=3D"padding-b=
ottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=
=3D"top"><div style=3D"text-indent:-1px"><span itemprop=3D"location" itemsc=
ope itemtype=3D"http://schema.org/Place"><span itemprop=3D"name" class=3D"n=
otranslate">Zoom Meeting: https://zoom.us/j/990892712</span><span dir=3D"lt=
r"> (<a href=3D"https://www.google.com/maps/search/Zoom+Meeting:+https:%2F%=
2Fzoom.us%2Fj%2F990892712?hl=3Den" style=3D"color:#20c;white-space:nowrap" =
target=3D"_blank" itemprop=3D"map">map</a>)</span></span></div></td></tr><t=
r><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:=
13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=
=3D"font-style:normal">Calendar</i></div></td><td style=3D"padding-bottom:1=
0px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top">=
<div style=3D"text-indent:-1px">yocto@yoctoproject.org</div></td></tr><tr><=
td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13p=
x;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D=
"font-style:normal">Who</i></div></td><td style=3D"padding-bottom:10px;font=
-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><table c=
ellspacing=3D"0" cellpadding=3D"0"><tr><td style=3D"padding-right:10px;font=
-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=
=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x=
2022;</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><d=
iv style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemt=
ype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notransla=
te">theyoctoproject@gmail.com</span><meta itemprop=3D"email" content=3D"the=
yoctoproject@gmail.com"/></span><span itemprop=3D"organizer" itemscope item=
type=3D"http://schema.org/Person"><meta itemprop=3D"name" content=3D"theyoc=
toproject@gmail.com"/><meta itemprop=3D"email" content=3D"theyoctoproject@g=
mail.com"/></span><span style=3D"font-size:11px;color:#888"> - organizer</s=
pan></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"t=
ext-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;=
</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-se=
rif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div st=
yle=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=
=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate"=
>stephen.k.jolley@intel.com</span><meta itemprop=3D"email" content=3D"steph=
en.k.jolley@intel.com"/></span></div></div></div></td></tr><tr><td style=3D=
"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;=
width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Cour=
ier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10p=
x;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"tex=
t-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"att=
endee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"na=
me" class=3D"notranslate">yocto@yoctoproject.org</span><meta itemprop=3D"em=
ail" content=3D"yocto@yoctoproject.org"/></span></div></div></div></td></tr=
><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size=
:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D=
"font-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"=
padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222">=
<div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><spa=
n itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><sp=
an itemprop=3D"name" class=3D"notranslate">sjolley.yp.pm@gmail.com</span><m=
eta itemprop=3D"email" content=3D"sjolley.yp.pm@gmail.com"/></span></div></=
div></div></td></tr></table></td></tr></table><div style=3D"padding-bottom:=
15px;font-family:Arial,Sans-serif;font-size:13px;color:#222;white-space:pre=
-wrap!important;white-space:-moz-pre-wrap!important;white-space:-pre-wrap!i=
mportant;white-space:-o-pre-wrap!important;white-space:pre;word-wrap:break-=
word"><span>We encourage people attending the meeting to logon and announce=
 themselves on the Yocto Project IRC chancel during the meeting (optional):=
<br><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fw=
ebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D156616058=
9168000&amp;usg=3DAFQjCNEnirBhsaZPpwISQteW4pgXSyikjA" target=3D"_blank">htt=
p://webchat.freenode.net/?channels=3D#yocto</a><br><br>Wiki: <a href=3D"htt=
ps://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fpublic-vir=
tual-meetings%2F&amp;sa=3DD&amp;ust=3D1566160589168000&amp;usg=3DAFQjCNHPcR=
jqytilKDSL7gg9jB5rIrAvkw" target=3D"_blank">https://www.yoctoproject.org/pu=
blic-virtual-meetings/</a><br><br>Bridge is with Zoom at: <a href=3D"https:=
//www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&a=
mp;ust=3D1566160589168000&amp;usg=3DAFQjCNEifkTBT9ijo4EIbbR1488xJjKP7w" tar=
get=3D"_blank">https://zoom.us/j/990892712</a></span><meta itemprop=3D"desc=
ription" content=3D"We encourage people attending the meeting to logon and =
announce themselves on the Yocto Project IRC chancel during the meeting (op=
tional):Yocto IRC: http://webchat.freenode.net/?channels=3D#yoctoWiki: http=
s://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom at: ht=
tps://zoom.us/j/990892712"/></div></div><p style=3D"color:#222;font-size:13=
px;margin:0"><span style=3D"color:#888">Going (yocto@yoctoproject.org)?&nbs=
p;&nbsp;&nbsp;</span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<stro=
ng><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schema.o=
rg/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.org/R=
svpAttendance/Yes"/><span itemprop=3D"handler" itemscope itemtype=3D"http:/=
/schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http://sch=
ema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calendar/=
event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfUjIwMT=
kwMjA1VDE2MDAwMCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;rst=3D1&amp;tok=3DMjUjdG=
hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTQ1MTk4OGNiMmYwYTExZjI1YTNkNDc0NWQwNjY5YzliZ=
DQ1YTBkY2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D=
"color:#20c;white-space:nowrap" itemprop=3D"url">Yes</a></span></span><span=
 style=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"po=
tentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta it=
emprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Maybe"/><=
span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActio=
nHandler"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMe=
thod/GET"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPON=
D&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfUjIwMTkwMjA1VDE2MDAwMCB5b2N=
0b0B5b2N0b3Byb2plY3Qub3Jn&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGd=
tYWlsLmNvbTQ1MTk4OGNiMmYwYTExZjI1YTNkNDc0NWQwNjY5YzliZDQ1YTBkY2Q&amp;ctz=3D=
America%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-spa=
ce:nowrap" itemprop=3D"url">Maybe</a></span></span><span style=3D"margin:0 =
0.4em;font-weight:normal"> - </span><span itemprop=3D"potentialaction" item=
scope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendanc=
e" content=3D"http://schema.org/RsvpAttendance/No"/><span itemprop=3D"handl=
er" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link itempr=
op=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"=
https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam=
5pbjU3MGRhOGdndmN2czl1OWNfUjIwMTkwMjA1VDE2MDAwMCB5b2N0b0B5b2N0b3Byb2plY3Qub=
3Jn&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTQ1MTk4OGNiM=
mYwYTExZjI1YTNkNDc0NWQwNjY5YzliZDQ1YTBkY2Q&amp;ctz=3DAmerica%2FLos_Angeles&=
amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D=
"url">No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"=
https://www.google.com/calendar/event?action=3DVIEW&amp;eid=3DNjJrb24zam5pb=
jU3MGRhOGdndmN2czl1OWNfUjIwMTkwMjA1VDE2MDAwMCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn=
&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTQ1MTk4OGNiMmYwYTExZjI1YTNk=
NDc0NWQwNjY5YzliZDQ1YTBkY2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp=
;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more opti=
ons &raquo;</a></p></td></tr><tr><td style=3D"background-color:#f6f6f6;colo=
r:#888;border-top:1px Solid #ccc;font-family:Arial,Sans-serif;font-size:11p=
x"><p>Invitation from <a href=3D"https://www.google.com/calendar/" target=
=3D"_blank" style=3D"">Google Calendar</a></p><p>You are receiving this cou=
rtesy email at the account yocto@yoctoproject.org because you are an attend=
ee of this event.</p><p>To stop receiving future updates for this event, de=
cline this event. Alternatively you can sign up for a Google account at htt=
ps://www.google.com/calendar/ and control your notification settings for yo=
ur entire calendar.</p><p>Forwarding this invitation could allow any recipi=
ent to send a response to the organizer and be added to the guest list, or =
invite others regardless of their own invitation status, or to modify your =
RSVP. <a href=3D"https://support.google.com/calendar/answer/37135#forwardin=
g">Learn More</a>.</p></td></tr></table></div></span></span>

--0000000000005f96550590059821
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
DTSTART;TZID=America/Los_Angeles:20190205T080000
DTEND;TZID=America/Los_Angeles:20190205T083000
RRULE:FREQ=MONTHLY;UNTIL=20190806T065959Z;BYDAY=1TU
DTSTAMP:20190813T203629Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:62kon3jnin570da8ggvcvs9u9c_R20190205T160000@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@intel
 .com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=sjolley.yp.pm@gmail.com;X-NUM-GUESTS=0:mailto:sjolley.yp.pm@gmail.c
 om
X-MICROSOFT-CDO-OWNERAPPTID:-1544847343
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
 Jrb24zam5pbjU3MGRhOGdndmN2czl1OWNfUjIwMTkwMjA1VDE2MDAwMCB5b2N0b0B5b2N0b3Byb
 2plY3Qub3Jn&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTQ1MTk4OGNiMmYwYTExZjI
 1YTNkNDc0NWQwNjY5YzliZDQ1YTBkY2Q&ctz=America%2FLos_Angeles&hl=en&es=0.\n-::
 ~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:
 ~::~:~::-
LAST-MODIFIED:20190813T203624Z
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

--0000000000005f96550590059821--

--0000000000005f96580590059823
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwMjA1VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwMjA1VDA4MzAwMA0KUlJVTEU6RlJFUT1NT05U
SExZO1VOVElMPTIwMTkwODA2VDA2NTk1OVo7QllEQVk9MVRVDQpEVFNUQU1QOjIwMTkwODEzVDIw
MzYyOVoNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0aGV5
b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNfUjIw
MTkwMjA1VDE2MDAwMEBnb29nbGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xF
PVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049c3RlcGhl
bi5rLmpvbGxleUBpbnRlbC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnN0ZXBoZW4uay5qb2xs
ZXlAaW50ZWwNCiAuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KQVRU
RU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9QUND
RVBURUQ7UlNWUD1UUlVFDQogO0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb207WC1OVU0tR1VF
U1RTPTA6bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jDQogb20NCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPQ0KIFRSVUU7Q049c2pvbGxleS55cC5wbUBnbWFpbC5jb207WC1OVU0tR1VFU1RTPTA6bWFp
bHRvOnNqb2xsZXkueXAucG1AZ21haWwuYw0KIG9tDQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBU
SUQ6LTE1NDQ4NDczNDMNCkNSRUFURUQ6MjAxODA1MjRUMTgxNDA2Wg0KREVTQ1JJUFRJT046V2Ug
ZW5jb3VyYWdlIHBlb3BsZSBhdHRlbmRpbmcgdGhlIG1lZXRpbmcgdG8gbG9nb24gYW5kIGFubm91
bmNlDQogIHRoZW1zZWx2ZXMgb24gdGhlIFlvY3RvIFByb2plY3QgSVJDIGNoYW5jZWwgZHVyaW5n
IHRoZSBtZWV0aW5nIChvcHRpb25hbCk6DQogPGJyPjxicj5Zb2N0byBJUkM6IDxhIGhyZWY9Imh0
dHBzOi8vd3d3Lmdvb2dsZS5jb20vdXJsP3E9aHR0cCUzQSUyRiUyRndlYmNoDQogYXQuZnJlZW5v
ZGUubmV0JTJGJTNGY2hhbm5lbHMlM0QlMjN5b2N0byZhbXBcO3NhPUQmYW1wXDt1c2Q9MiZhbXBc
O3VzZz1BRlFqDQogQ05Fdk9IVklreEtJcmZYV2ZVeENjVlM1XzhraDV3IiB0YXJnZXQ9Il9ibGFu
ayI+aHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0DQogLz9jaGFubmVscz0jeW9jdG88L2E+PGJy
Pjxicj5XaWtpOiA8YSBocmVmPSJodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1DQogYmxp
Yy12aXJ0dWFsLW1lZXRpbmdzLyI+aHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMt
dmlydHVhbC1tZWV0aW5nDQogcy88L2E+PGJyPjxicj5CcmlkZ2UgaXMgd2l0aCBab29tIGF0OiA8
YSBocmVmPSJodHRwczovL3d3dy5nb29nbGUuY29tL3VybD9xDQogPWh0dHBzJTNBJTJGJTJGem9v
bS51cyUyRmolMkY5OTA4OTI3MTImYW1wXDtzYT1EJmFtcFw7dXNkPTImYW1wXDt1c2c9QUZRakNO
DQogRzJGNXNVcG0tUy1SaGtxTmhYVkJkM20xXzNMQSIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8v
em9vbS51cy9qLzk5MDg5MjcxMjwvDQogYT5cblxuLTo6fjp+Ojp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+DQogOn46fjp+On46fjo6
fjp+OjotXG5QbGVhc2UgZG8gbm90IGVkaXQgdGhpcyBzZWN0aW9uIG9mIHRoZSBkZXNjcmlwdGlv
bi5cblxuDQogVmlldyB5b3VyIGV2ZW50IGF0IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5k
YXIvZXZlbnQ/YWN0aW9uPVZJRVcmZWlkPU5qDQogSnJiMjR6YW01cGJqVTNNR1JoT0dkbmRtTjJj
emwxT1dOZlVqSXdNVGt3TWpBMVZERTJNREF3TUNCNWIyTjBiMEI1YjJOMGIzQnliDQogMnBsWTNR
dWIzSm4mdG9rPU1qVWpkR2hsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1OdmJUUTFNVGs0T0dO
aU1tWXdZVEV4WmpJDQogMVlUTmtORGMwTldRd05qWTVZemxpWkRRMVlUQmtZMlEmY3R6PUFtZXJp
Y2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wLlxuLTo6DQogfjp+Ojp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46DQog
fjo6fjp+OjotDQpMQVNULU1PRElGSUVEOjIwMTkwODEzVDIwMzYyNFoNCkxPQ0FUSU9OOlpvb20g
TWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyDQpTRVFVRU5DRToxDQpTVEFUVVM6
Q09ORklSTUVEDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0K
VFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJNDQpBQ1RJT046RElTUExBWQ0KREVTQ1JJUFRJT046
VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0KVFJJR0dFUjotUDBEVDBIMTVNMFMNCkVORDpWQUxB
Uk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--0000000000005f96580590059823--
