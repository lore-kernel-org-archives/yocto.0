Return-Path: <3TR9TXQ8JBcg7vsC2q72352xsq7u0owz.q20C2q72C2q72352xsq7.25u@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA04BE00C81; Tue, 13 Aug 2019 13:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.73 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01BEAE007AA
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
Received: by mail-yw1-f73.google.com with SMTP id z201so13026047ywz.12
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=wB1oM3c1jVQ2qo08WbWI9ehXW/vYKagFeDLrPrTEjnM=;
	b=VWHmSxkuaVymAf9dGL/DGNTf2rlBAl2yplnUomaqje0xlkPXiucMulvPw5SVfko59t
	wSUYrlEdW8Y/skcJlCcVzHG4MZFfBt01A5jlT3JKwZRsdYSPQoM/RIkNPWmN2cDHkQzO
	VlDhXRj7A518mGRlxUv9LKpy7Mor3QhcQSIdnv2y+MucqO+NYsgcq1vFHTYNWYLCDO3N
	gSKtxg99tiNkS6M/Hxx+5HSSmEbiivNC4lsTp1Za9aq2/unWbQ4bHN3i3aW/OQRALvn+
	36Iakqvw9nrvppCJTzzUleVOq7Y1MRbPY/5NclIGHFixMjcR6lC1PvjwfAAdlleqZCf3
	R+0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=wB1oM3c1jVQ2qo08WbWI9ehXW/vYKagFeDLrPrTEjnM=;
	b=nXYTAnvtDe79TOfSF+39vRClla9pJZSPNl4P6a6QeGfH1BILl4XxBT2Ifyt+eOx4po
	cSvw9SPT9GaGrglYLtVUKOfrGgH/gERhDQB0mLAbIM/kNvKFpzto28V2lpPA3/pbbQEB
	lGwCMRQcVQRH5NDcacq+ucAg8agoY+50EEsxscye8Zgmof2FsTPWY0bVmse2hu68rYq6
	xsue/U4tEnLI8UiQAOO9U09ck4xjTYq0SIY00bHdYc7m6G+92umna/kNoiHF/1BAPHy/
	1YlQcWdJYUgaqhIKoH1ucfXQE4SgXP/rw7Gl8ZeMseILMUclq0N3DVKyYlHlnWfTU6L1
	QXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=wB1oM3c1jVQ2qo08WbWI9ehXW/vYKagFeDLrPrTEjnM=;
	b=udsAoVMAh9rG0nZffJys9eQDH7BTHtKIiskX6QMtxy/wVK9WRaVuMXW46c07jBHByB
	zV90SEGtz+foa9W2l1vw+1Cj9uoLP8o/ARJfXK001QKUGK0Wvm6Zc1yRmAUr62diPNQ8
	b6eCf9ln32K4rOhDQ7KDL9gPMQSKu028qDBC2jFodTl96wxeUGcsNVdB/3BgMcx7umPi
	dldDNW7qFnUPCp8LFnOW2o1IA8p2h9Ck0TrE2QR2fLHXfKt8j8i0kRsOnLCoezLb1Rrc
	j/eyeo+gBOPuooq029DTg7LiGfassszA5Yq8R8AAJBDIVaxDhIktje/wEzNlbuF8sJLA
	cJ8A==
X-Gm-Message-State: APjAAAUNvR2QpaT8b+AWck4WbKBn98d4uDLyfswyLd1e6xuKQoiYBcjo
	vAL/9T4Tw22XvzKRE9cEB66lPpQ2II5+ljD+6arm
X-Google-Smtp-Source: APXvYqxb8G6CMTAEw4fFu/jdnRgo861X8/vN84FrUEecX2gjCM2gpz2LUu9+sOOjfWG7h3xsUL9SXFZEySfFLwMyo914
MIME-Version: 1.0
X-Received: by 2002:a0d:c3c4:: with SMTP id
	f187mr24686191ywd.325.1565728589270; 
	Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <00000000000060d498059005980b@google.com>
Date: Tue, 13 Aug 2019 20:36:29 +0000
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
X-List-Received-Date: Tue, 13 Aug 2019 20:36:31 -0000
X-Groupsio-MsgNum: 46280
Content-Type: multipart/mixed; boundary="00000000000060d478059005980a"

--00000000000060d478059005980a
Content-Type: multipart/alternative; boundary="00000000000060d4750590059808"

--00000000000060d4750590059808
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjaGFuZ2VkLg0KDQpUaXRsZTogWW9jdG8gUHJvamVjdCBUZWNo
bmljYWwgVGVhbSBNZWV0aW5nIC8gRW5naW5lZXJpbmcgU3luYyAoY2hhbmdlZCkNClRoZSBZb2N0
byBQcm9qZWN0IGhvc3RzIGEgdGVjaG5pY2FsIGNhbGwuIEFsbCBjb21tdW5pdHkgbWVtYmVycyBh
cmUgaW52aXRlZCAgDQp0byBqb2luIG9uIGJvdGggdGhlIGNhbGwgYW5kIGluIHRoZSBJUkMgY2hh
bm5lbCwgd2hpY2ggYXJlIHVzZWQgIA0Kc2ltdWx0YW5lb3VzbHkuV2UgZW5jb3VyYWdlIHBlb3Bs
ZSBhdHRlbmRpbmcgdGhlIG1lZXRpbmcgdG8gbG9nb24gYW5kICANCmFubm91bmNlIHRoZW1zZWx2
ZXMgb24gdGhlIFlvY3RvIFByb2plY3QgSVJDIGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aW5nICAN
CihvcHRpb25hbCk6WW9jdG8gSVJDOiBodHRwOi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQvP2NoYW5u
ZWxzPSN5b2N0b1dpa2k6ICANCmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHVibGljLXZp
cnR1YWwtbWVldGluZ3MvQnJpZGdlIGlzIHdpdGggWm9vbSAgDQphdDogaHR0cHM6Ly96b29tLnVz
L2ovOTkwODkyNzEyVHVlc2RheXMgd2hlbiB3ZSBhcmVu4oCZdCBoYXZpbmcgdGhlIE1vbnRobHkg
IA0KVGVjaG5pY2FsIENhbGwgVGhlIFlvY3RvIFByb2plY3QgaG9zdHMgYSBlbmdpbmVlcmluZyBz
eW5jIGJ5IHdoaWNoIHRoZSAgDQp0ZWNobmljYWwgdGVhbSBkaXNjdXNzZXMgdGhlIGN1cnJlbnQg
c3RhdHVzIG9mIGVuZ2luZWVyaW5nIHRvcGljcywgIA0KaW5jbHVkaW5nIHRoZSBhdXRvYnVpbGRl
ciwgZG9jdW1lbnRhdGlvbiwgYnVpbGRzLCBhbmQgcmVsZWFzZXMuIChjaGFuZ2VkKQ0KV2hlbjog
V2Vla2x5IGF0IDhhbSBvbiBUdWVzZGF5IFBhY2lmaWMgVGltZSAtIExvcyBBbmdlbGVzIChjaGFu
Z2VkKQ0KV2hlcmU6IFpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyDQpD
YWxlbmRhcjogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KV2hvOg0KICAgICAqIHRoZXlvY3RvcHJv
amVjdEBnbWFpbC5jb20gLSBvcmdhbml6ZXINCiAgICAgKiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQogICAgICogc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20NCiAgICAgKiBzam9sbGV5LnlwLnBt
QGdtYWlsLmNvbQ0KDQpFdmVudCBkZXRhaWxzOiAgDQpodHRwczovL3d3dy5nb29nbGUuY29tL2Nh
bGVuZGFyL2V2ZW50P2FjdGlvbj1WSUVXJmVpZD1OelJ3YWpoa01XZzJiM0EyTW1JNWFqYzBiMjFq
WWpsclkzQm5hbWRpT1c5amJHaHFNR0k1YW1OdmN6TnBiemxvTmpGcGFtZGtNVzVqTkNCNWIyTjBi
MEI1YjJOMGIzQnliMnBsWTNRdWIzSm4mdG9rPU1qVWpkR2hsZVc5amRHOXdjbTlxWldOMFFHZHRZ
V2xzTG1OdmJXUXlOell6TkRWa04ySmlabVZtWlRsa1lXTTFNRGszTkdFd1ptVTJabVl5Wm1FeVpE
WmxOR0UmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wDQoNCkludml0YXRpb24g
ZnJvbSBHb29nbGUgQ2FsZW5kYXI6IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvDQoN
CllvdSBhcmUgcmVjZWl2aW5nIHRoaXMgY291cnRlc3kgZW1haWwgYXQgdGhlIGFjY291bnQgeW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZyAgDQpiZWNhdXNlIHlvdSBhcmUgYW4gYXR0ZW5kZWUgb2YgdGhp
cyBldmVudC4NCg0KVG8gc3RvcCByZWNlaXZpbmcgZnV0dXJlIHVwZGF0ZXMgZm9yIHRoaXMgZXZl
bnQsIGRlY2xpbmUgdGhpcyBldmVudC4gIA0KQWx0ZXJuYXRpdmVseSB5b3UgY2FuIHNpZ24gdXAg
Zm9yIGEgR29vZ2xlIGFjY291bnQgYXQgIA0KaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRh
ci8gYW5kIGNvbnRyb2wgeW91ciBub3RpZmljYXRpb24gc2V0dGluZ3MgZm9yICANCnlvdXIgZW50
aXJlIGNhbGVuZGFyLg0KDQpGb3J3YXJkaW5nIHRoaXMgaW52aXRhdGlvbiBjb3VsZCBhbGxvdyBh
bnkgcmVjaXBpZW50IHRvIHNlbmQgYSByZXNwb25zZSB0byAgDQp0aGUgb3JnYW5pemVyIGFuZCBi
ZSBhZGRlZCB0byB0aGUgZ3Vlc3QgbGlzdCwgb3IgaW52aXRlIG90aGVycyByZWdhcmRsZXNzICAN
Cm9mIHRoZWlyIG93biBpbnZpdGF0aW9uIHN0YXR1cywgb3IgdG8gbW9kaWZ5IHlvdXIgUlNWUC4g
TGVhcm4gbW9yZSBhdCAgDQpodHRwczovL3N1cHBvcnQuZ29vZ2xlLmNvbS9jYWxlbmRhci9hbnN3
ZXIvMzcxMzUjZm9yd2FyZGluZw0K

--00000000000060d4750590059808
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span style=3D"=
display:none" itemprop=3D"about" itemscope itemtype=3D"http://schema.org/Th=
ing/Paragraph"><meta itemprop=3D"description" content=3D"Title updated"/></=
span><span style=3D"display:none" itemprop=3D"about" itemscope itemtype=3D"=
http://schema.org/Thing/Paragraph"><meta itemprop=3D"description" content=
=3D"Description updated"/></span><span style=3D"display:none" itemprop=3D"a=
bout" itemscope itemtype=3D"http://schema.org/Thing/Clock"><meta itemprop=
=3D"description" content=3D"Time updated"/></span><span itemprop=3D"object"=
 itemscope itemtype=3D"http://schema.org/Event"><div style=3D""><table cell=
spacing=3D"0" cellpadding=3D"8" border=3D"0" summary=3D"" style=3D"width:10=
0%;font-family:Arial,Sans-serif;border:1px Solid #ccc;border-width:1px 2px =
2px 1px;background-color:#fff;"><tr><td><meta itemprop=3D"eventStatus" cont=
ent=3D"http://schema.org/EventRescheduled"/><h4 style=3D"padding:6px 0;marg=
in:0 0 4px 0;font-family:Arial,Sans-serif;font-size:13px;line-height:1.4;bo=
rder:1px Solid #fff;background:#fff;color:#090;font-weight:normal"><strong>=
This event has been changed.</strong></h4><div style=3D"padding:2px"><span =
itemprop=3D"publisher" itemscope itemtype=3D"http://schema.org/Organization=
"><meta itemprop=3D"name" content=3D"Google Calendar"/></span><meta itempro=
p=3D"eventId/googleCalendar" content=3D"74pj8d1h6op62b9j74omcb9kcpgjgb9oclh=
j0b9jcos3io9h61ijgd1nc4"/><div style=3D"float:right;font-weight:bold;font-s=
ize:13px"> <a href=3D"https://www.google.com/calendar/event?action=3DVIEW&a=
mp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNj=
FpamdkMW5jNCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW9jdG9wcm9qZW=
N0QGdtYWlsLmNvbWQyNzYzNDVkN2JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;c=
tz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;whit=
e-space:nowrap" itemprop=3D"url">more details &raquo;</a><br></div><h3 styl=
e=3D"padding:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;font-size:16px=
;font-weight:bold;color:#222"><strong style=3D"color:#080">Changed: </stron=
g><span itemprop=3D"name">Yocto Project Technical Team Meeting / Engineerin=
g Sync</span></h3><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" s=
ummary=3D"Event details"><tr><td style=3D"padding:0 1em 10px 0;font-family:=
Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" v=
align=3D"top"><div><i style=3D"font-style:normal">When</i></div></td><td st=
yle=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#222" valign=3D"top"><div style=3D"text-indent:-1px"><strong style=3D"col=
or:#080">Changed: </strong><time itemprop=3D"startDate" datetime=3D"2019082=
0T150000Z"></time><time itemprop=3D"endDate" datetime=3D"20190903T160000Z">=
</time>Weekly at 8am on Tuesday <span style=3D"color:#888">Pacific Time - L=
os Angeles</span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font=
-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width=
:90px" valign=3D"top"><div><i style=3D"font-style:normal">Where</i></div></=
td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:=
13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><span itemp=
rop=3D"location" itemscope itemtype=3D"http://schema.org/Place"><span itemp=
rop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us/j/99089271=
2</span><span dir=3D"ltr"> (<a href=3D"https://www.google.com/maps/search/Z=
oom+Meeting:+https:%2F%2Fzoom.us%2Fj%2F990892712?hl=3Den" style=3D"color:#2=
0c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</span></=
span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Aria=
l,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valig=
n=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td><td st=
yle=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctoproject.o=
rg</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,S=
ans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=
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
><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size=
:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D=
"font-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"=
padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222">=
<div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><spa=
n itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><sp=
an itemprop=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com</span=
><meta itemprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></span></=
div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-family:A=
rial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-in=
dent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span=
></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;fo=
nt-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D=
"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http=
://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">sjolley=
.yp.pm@gmail.com</span><meta itemprop=3D"email" content=3D"sjolley.yp.pm@gm=
ail.com"/></span></div></div></div></td></tr></table></td></tr></table><div=
 style=3D"padding-bottom:15px;font-family:Arial,Sans-serif;font-size:13px;c=
olor:#222;white-space:pre-wrap!important;white-space:-moz-pre-wrap!importan=
t;white-space:-pre-wrap!important;white-space:-o-pre-wrap!important;white-s=
pace:pre;word-wrap:break-word"><strong style=3D"color:#080">Changed: </stro=
ng><span><br>The Yocto Project hosts a technical call. All community member=
s are invited to join on both the call and in the IRC channel, which are us=
ed simultaneously.<br>We encourage people attending the meeting to logon an=
d announce themselves on the Yocto Project IRC chancel during the meeting (=
optional):<br><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3Dhttp=
%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=
=3D1566160589248000&amp;usg=3DAFQjCNFK8Vmz294h5xCaip0eKAWbcrAdLQ" target=3D=
"_blank">http://webchat.freenode.net/?channels=3D#yocto</a><br><br>Wiki: <a=
 href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%=
2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D1566160589248000&amp;usg=
=3DAFQjCNGN2cBQC1sfvcN_CKBKTbPF2nBSYw" target=3D"_blank">https://www.yoctop=
roject.org/public-virtual-meetings/</a><br><br>Bridge is with Zoom at: <a h=
ref=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712=
&amp;sa=3DD&amp;ust=3D1566160589249000&amp;usg=3DAFQjCNG8i2y2u0GF4HAjqm5TVK=
jdD1Gl8A" target=3D"_blank">https://zoom.us/j/990892712</a><br><br>Tuesdays=
 when we aren=E2=80=99t having the Monthly Technical Call The Yocto Project=
 hosts a engineering sync by which the technical team discusses the current=
 status of engineering topics, including the autobuilder, documentation, bu=
ilds, and releases.</span><meta itemprop=3D"description" content=3D"The Yoc=
to Project hosts a technical call. All community members are invited to joi=
n on both the call and in the IRC channel, which are used simultaneously.We=
 encourage people attending the meeting to logon and announce themselves on=
 the Yocto Project IRC chancel during the meeting (optional):Yocto IRC: htt=
p://webchat.freenode.net/?channels=3D#yoctoWiki: https://www.yoctoproject.o=
rg/public-virtual-meetings/Bridge is with Zoom at: https://zoom.us/j/990892=
712Tuesdays when we aren=E2=80=99t having the Monthly Technical Call The Yo=
cto Project hosts a engineering sync by which the technical team discusses =
the current status of engineering topics, including the autobuilder, docume=
ntation, builds, and releases."/></div></div><p style=3D"color:#222;font-si=
ze:13px;margin:0"><span style=3D"color:#888">Going (yocto@yoctoproject.org)=
?&nbsp;&nbsp;&nbsp;</span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;=
<strong><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://sch=
ema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.=
org/RsvpAttendance/Yes"/><span itemprop=3D"handler" itemscope itemtype=3D"h=
ttp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:=
//schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/cale=
ndar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3Bna=
mdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp=
;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWQyNzYzNDVkN2JiZmVm=
ZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
Yes</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> - <=
/span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schem=
a.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.or=
g/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemscope itemtype=3D"h=
ttp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:=
//schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/cale=
ndar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3Bna=
mdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp=
;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWQyNzYzNDVkN2JiZmVm=
ZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
Maybe</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> -=
 </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://sch=
ema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.=
org/RsvpAttendance/No"/><span itemprop=3D"handler" itemscope itemtype=3D"ht=
tp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:/=
/schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calen=
dar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3Bnam=
diOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn&amp;=
rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWQyNzYzNDVkN2JiZmVmZ=
TlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https:=
//www.google.com/calendar/event?action=3DVIEW&amp;eid=3DNzRwajhkMWg2b3A2MmI=
5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNCB5b2N0b0B5b2N0b3=
Byb2plY3Qub3Jn&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWQyNzYzNDVkN2=
JiZmVmZTlkYWM1MDk3NGEwZmU2ZmYyZmEyZDZlNGE&amp;ctz=3DAmerica%2FLos_Angeles&a=
mp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"=
url">more options &raquo;</a></p></td></tr><tr><td style=3D"background-colo=
r:#f6f6f6;color:#888;border-top:1px Solid #ccc;font-family:Arial,Sans-serif=
;font-size:11px"><p>Invitation from <a href=3D"https://www.google.com/calen=
dar/" target=3D"_blank" style=3D"">Google Calendar</a></p><p>You are receiv=
ing this courtesy email at the account yocto@yoctoproject.org because you a=
re an attendee of this event.</p><p>To stop receiving future updates for th=
is event, decline this event. Alternatively you can sign up for a Google ac=
count at https://www.google.com/calendar/ and control your notification set=
tings for your entire calendar.</p><p>Forwarding this invitation could allo=
w any recipient to send a response to the organizer and be added to the gue=
st list, or invite others regardless of their own invitation status, or to =
modify your RSVP. <a href=3D"https://support.google.com/calendar/answer/371=
35#forwarding">Learn More</a>.</p></td></tr></table></div></span></span>

--00000000000060d4750590059808
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
RRULE:FREQ=3DWEEKLY;BYDAY=3DTU
DTSTAMP:20190813T203629Z
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
LAST-MODIFIED:20190813T203624Z
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

--00000000000060d4750590059808--

--00000000000060d478059005980a
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
TFk7QllEQVk9VFUNCkRUU1RBTVA6MjAxOTA4MTNUMjAzNjI5Wg0KT1JHQU5JWkVSO0NOPXRoZXlv
Y3RvcHJvamVjdEBnbWFpbC5jb206bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb20NClVJ
RDo3NHBqOGQxaDZvcDYyYjlqNzRvbWNiOWtjcGdqZ2I5b2NsaGowYjlqY29zM2lvOWg2MWlqZ2Qx
bmM0QGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRSVUU7Q049eW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
QVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9
QUNDRVBURUQ7UlNWUD1UUlVFDQogO0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb207WC1OVU0t
R1VFU1RTPTA6bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jDQogb20NCkFUVEVOREVFO0NV
VFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElP
TjtSU1ZQPQ0KIFRSVUU7Q049c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb207WC1OVU0tR1VFU1RT
PTA6bWFpbHRvOnN0ZXBoZW4uay5qb2xsZXlAaQ0KIG50ZWwuY29tDQpBVFRFTkRFRTtDVVRZUEU9
SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNW
UD0NCiBUUlVFO0NOPXNqb2xsZXkueXAucG1AZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzpzam9sbGV5LnlwLnBtQGdtYWlsLmMNCiBvbQ0KWC1NSUNST1NPRlQtQ0RPLU9XTkVSQVBQVElE
OjE5MjMxNDg0MDgNCkNSRUFURUQ6MjAxODA1MjRUMTgxNDA2Wg0KREVTQ1JJUFRJT046PGJyPlRo
ZSBZb2N0byBQcm9qZWN0IGhvc3RzIGEgdGVjaG5pY2FsIGNhbGwuIEFsbCBjb21tdW5pdHkgbWVt
DQogYmVycyBhcmUgaW52aXRlZCB0byBqb2luIG9uIGJvdGggdGhlIGNhbGwgYW5kIGluIHRoZSBJ
UkMgY2hhbm5lbFwsIHdoaWNoIGFyDQogZSB1c2VkIHNpbXVsdGFuZW91c2x5Ljxicj5XZSBlbmNv
dXJhZ2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvDQogbiBhbmQgYW5ub3Vu
Y2UgdGhlbXNlbHZlcyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhl
IG1lZXRpDQogbmcgKG9wdGlvbmFsKTo8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0cDov
L3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFuDQogbmVscz0jeW9jdG8iPmh0dHA6Ly93ZWJjaGF0
LmZyZWVub2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvPC9hPjxicj48YnI+V2lraTogDQogPGEgaHJl
Zj0iaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5ncy8i
Pmh0dHBzOi8vd3d3DQogLnlvY3RvcHJvamVjdC5vcmcvcHVibGljLXZpcnR1YWwtbWVldGluZ3Mv
PC9hPjxicj48YnI+QnJpZGdlIGlzIHdpdGggWm9vbSBhDQogdDogPGEgaHJlZj0iaHR0cHM6Ly96
b29tLnVzL2ovOTkwODkyNzEyIiBpZD0ib3c2MzQiIF9faXNfb3duZXI9InRydWUiPmh0dHBzDQog
Oi8vem9vbS51cy9qLzk5MDg5MjcxMjwvYT48YnI+PGJyPlR1ZXNkYXlzIHdoZW4gd2UgYXJlbuKA
mXQgaGF2aW5nIHRoZSBNb250aGwNCiB5IFRlY2huaWNhbCBDYWxsIFRoZSBZb2N0byBQcm9qZWN0
IGhvc3RzIGEgZW5naW5lZXJpbmcgc3luYyBieSB3aGljaCB0aGUgdGUNCiBjaG5pY2FsIHRlYW0g
ZGlzY3Vzc2VzIHRoZSBjdXJyZW50IHN0YXR1cyBvZiBlbmdpbmVlcmluZyB0b3BpY3NcLCBpbmNs
dWRpbmcNCiAgdGhlIGF1dG9idWlsZGVyXCwgZG9jdW1lbnRhdGlvblwsIGJ1aWxkc1wsIGFuZCBy
ZWxlYXNlcy5cblxuLTo6fjp+Ojp+On46fjoNCiB+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjo6fjp+OjotXG4NCiBQbGVhc2Ug
ZG8gbm90IGVkaXQgdGhpcyBzZWN0aW9uIG9mIHRoZSBkZXNjcmlwdGlvbi5cblxuVmlldyB5b3Vy
IGV2ZW50IGF0IGgNCiB0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9u
PVZJRVcmZWlkPU56UndhamhrTVdnMmIzQTJNbUk1YWoNCiBjMGIyMWpZamxyWTNCbmFtZGlPVzlq
YkdocU1HSTVhbU52Y3pOcGJ6bG9OakZwYW1ka01XNWpOQ0I1YjJOMGIwQjViMk4wYjNCeWINCiAy
cGxZM1F1YjNKbiZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkdFlXbHNMbU52YldReU56
WXpORFZrTjJKaVptVm1aVGwNCiBrWVdNMU1EazNOR0V3Wm1VMlptWXlabUV5WkRabE5HRSZjdHo9
QW1lcmljYSUyRkxvc19BbmdlbGVzJmhsPWVuJmVzPTAuXG4tOjoNCiB+On46On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjoNCiB+Ojp+On46Oi0NCkxBU1QtTU9ESUZJRUQ6MjAxOTA4MTNUMjAzNjI0Wg0KTE9DQVRJT046
Wm9vbSBNZWV0aW5nOiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINClNFUVVFTkNFOjINClNU
QVRVUzpDT05GSVJNRUQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0
aW5nIC8gRW5naW5lZXJpbmcgU3luYw0KVFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJNDQpBQ1RJ
T046RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0KVFJJR0dF
UjotUDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--00000000000060d478059005980a--
