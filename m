Return-Path: <theyoctoproject@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96729E016E6; Tue,  5 Jun 2018 09:31:31 -0700 (PDT)
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
	*      [209.85.213.201 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f201.google.com (mail-yb0-f201.google.com
	[209.85.213.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E69CE01635
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 09:31:29 -0700 (PDT)
Received: by mail-yb0-f201.google.com with SMTP id t12-v6so2276163ybg.5
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2018 09:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=4WSkjE0t38E8NcP8BVESy4p6Kkj5FxRiZf8kEiBE12w=;
	b=DJydSh/9CXWTspS8Peum9/OZMKdALH83UzMIM/YSWBbkjWmvnRobSHr1f/l8R3Z1ka
	GSwN/ylc/MGZPRjyaBzslCcnlSzCCHm6d0SVz5Yvs4Ns+tZIa94jSvKWe7qGpAbBZBeW
	bbm/WWdVZXoYdttraBdVQzClBW9A5prThhquAinF6ifsCpjDRR4Be4f8DDc+QquicWla
	wPRPYDqFx2XfqJjs0cqyVPkVwUxadHERoQQxPvMkNjEB+UzDZgEDrnnEZMCvekri3tPR
	GWaOIOMOBuXU7vzV91J7GpZ9GiYp65TZCMdAdcGbvYhmGEKXSzgv0bkWIpr84JqKKYE8
	sRJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=4WSkjE0t38E8NcP8BVESy4p6Kkj5FxRiZf8kEiBE12w=;
	b=loZZM4vEECwCp/ERkvK8JKPSTZszfcaP3DS1ur+Ut8uIcmJ3NYpTGmImbbvJ/a4WNI
	ZZgCnYiISmlQJbvT97mGMi4j77mzerhGCRki+5p8tx0pbfgXqVNlcVNFHkYc+xDffxKB
	REAYFSdZWCaf9HOK1WGw0BohmTOphwlR+biFt7H8WXdEkDQ/Pw9Hoz8QlcIqnkFcrEeT
	LesTdl69E5aLGrEJVY6lDMPC78Bey9nC8HjxDsLQHdz+sKciALf7mfgXdqBevrl4KDZH
	unD1FSIM2a1AQbEc/xjUBwLaxYk2sAKaOxokSRhCAb98OlvL9LxhURGtw9q3tP+NgY7P
	pocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:message-id:date
	:subject:from:to;
	bh=4WSkjE0t38E8NcP8BVESy4p6Kkj5FxRiZf8kEiBE12w=;
	b=COGVJFGe8Kj7M+CBfXii9Ltcoyi5qkLBQLAholhtThtkCKZXxbGU170/isPRiwinoI
	gpvy3bRgIoqPo+3O6fftflu6ZTCbxsAnaQrjhSgvUXFM3nQBeQcQURS6wI2krI69tdzT
	UTmZMJQMCcyPc/7RfbYFPlzO4iLMdlKd/FhLtAtelEigYJi+DMBklbCaB3Ru2qVvliWg
	F69jlW7CLnLRQZAQRYpxEtZ06eNmlL/ZXKgM3++hk/E8L81WzzCBNLh6TQ5uDfFbDtLm
	q/f0MeKp/waBJgyHdPJPkB6gyuCTlPKadxcBKtiJg91qEyZgY8dmWppg9icH5DtquTeB
	8rhg==
X-Gm-Message-State: APt69E38I8DGFsjgPtxnKkdQ2eIpAe44qOa5M7UIWE6bTRL1oFXD3ujW
	26i5FzpW69VUQOsJ0SMBdmcsyf/i36VkO37pZL0W
X-Google-Smtp-Source: ADUXVKJDdHIJXLjWJBl9/88nWWPQ2nucdBRqNm0jkRmHWNk6F0F5YB5v41qmjcPpAGS+dJkmIjHEep4gs0MkJWEXB3zm
MIME-Version: 1.0
X-Received: by 2002:a81:2c54:: with SMTP id
	s81-v6mr4273060yws.240.1528216289504; 
	Tue, 05 Jun 2018 09:31:29 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Message-ID: <000000000000137487056de795e3@google.com>
Date: Tue, 05 Jun 2018 16:31:29 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Invitation: Yocto Project Technical Team Meeting @ Tue Jun 19, 2018 8am - 9am (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 05 Jun 2018 16:31:31 -0000
X-Groupsio-MsgNum: 41336
Content-Type: multipart/mixed; boundary="000000000000137473056de795e2"

--000000000000137473056de795e2
Content-Type: multipart/alternative; boundary="000000000000137470056de795e0"

--000000000000137470056de795e0
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

WW91IGhhdmUgYmVlbiBpbnZpdGVkIHRvIHRoZSBmb2xsb3dpbmcgZXZlbnQuDQoNClRpdGxlOiBZ
b2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNCldlIGVuY291cmFnZSBwZW9wbGUg
YXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIGFuZCBhbm5vdW5jZSB0aGVtc2VsdmVzICAN
Cm9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFuY2VsIGR1cmluZyB0aGUgbWVldGluZyAob3B0
aW9uYWwpOllvY3RvIElSQzogIA0KaHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVs
cz0jeW9jdG9XaWtpOiAgDQpodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0
dWFsLW1lZXRpbmdzL0JyaWRnZSBpcyB3aXRoIFpvb20gIA0KYXQ6IGh0dHBzOi8vem9vbS51cy9q
Lzk5MDg5MjcxMg0KV2hlbjogVHVlIEp1biAxOSwgMjAxOCA4YW0g4oCTIDlhbSBQYWNpZmljIFRp
bWUNCldoZXJlOiBab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMg0KQ2Fs
ZW5kYXI6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCldobzoNCiAgICAgKiB0aGV5b2N0b3Byb2pl
Y3RAZ21haWwuY29tIC0gb3JnYW5pemVyDQogICAgICogc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5j
b20NCiAgICAgKiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQoNCkV2ZW50IGRldGFpbHM6ICANCmh0
dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9uPVZJRVcmZWlkPU4zWmlk
bWRoWjJJM1kzRjFZemh2Tkc1d2NtZG9OamMyY1RnZ2VXOWpkRzlBZVc5amRHOXdjbTlxWldOMExt
OXladyZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkdFlXbHNMbU52YldKaVpqZGtOVGcw
T0Rka09HUXdZVE5rTkdFelpqbGxPV1ZrTW1ZMU9HSXhOMlV5TUdSbE1qSSZjdHo9QW1lcmljYSUy
Rkxvc19BbmdlbGVzJmhsPWVuJmVzPTANCg0KSW52aXRhdGlvbiBmcm9tIEdvb2dsZSBDYWxlbmRh
cjogaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci8NCg0KWW91IGFyZSByZWNlaXZpbmcg
dGhpcyBjb3VydGVzeSBlbWFpbCBhdCB0aGUgYWNjb3VudCB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
ICANCmJlY2F1c2UgeW91IGFyZSBhbiBhdHRlbmRlZSBvZiB0aGlzIGV2ZW50Lg0KDQpUbyBzdG9w
IHJlY2VpdmluZyBmdXR1cmUgdXBkYXRlcyBmb3IgdGhpcyBldmVudCwgZGVjbGluZSB0aGlzIGV2
ZW50LiAgDQpBbHRlcm5hdGl2ZWx5IHlvdSBjYW4gc2lnbiB1cCBmb3IgYSBHb29nbGUgYWNjb3Vu
dCBhdCAgDQpodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyLyBhbmQgY29udHJvbCB5b3Vy
IG5vdGlmaWNhdGlvbiBzZXR0aW5ncyBmb3IgIA0KeW91ciBlbnRpcmUgY2FsZW5kYXIuDQoNCkZv
cndhcmRpbmcgdGhpcyBpbnZpdGF0aW9uIGNvdWxkIGFsbG93IGFueSByZWNpcGllbnQgdG8gbW9k
aWZ5IHlvdXIgUlNWUCAgDQpyZXNwb25zZS4gTGVhcm4gbW9yZSBhdCAgDQpodHRwczovL3N1cHBv
cnQuZ29vZ2xlLmNvbS9jYWxlbmRhci9hbnN3ZXIvMzcxMzUjZm9yd2FyZGluZw0K

--000000000000137470056de795e0
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
ar" content=3D"7vbvgagb7cquc8o4nprgh676q8"/><div style=3D"float:right;font-=
weight:bold;font-size:13px"> <a href=3D"https://www.google.com/calendar/eve=
nt?action=3DVIEW&amp;eid=3DN3ZidmdhZ2I3Y3F1YzhvNG5wcmdoNjc2cTggeW9jdG9AeW9j=
dG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWJiZjdkNT=
g0ODdkOGQwYTNkNGEzZjllOWVkMmY1OGIxN2UyMGRlMjI&amp;ctz=3DAmerica%2FLos_Angel=
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
ime=3D"20180619T150000Z"></time><time itemprop=3D"endDate" datetime=3D"2018=
0619T160000Z"></time>Tue Jun 19, 2018 8am =E2=80=93 9am <span style=3D"colo=
r:#888">Pacific Time</span></div></td></tr><tr><td style=3D"padding:0 1em 1=
0px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:no=
wrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Where</=
i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;=
font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><=
span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place"><=
span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us/=
j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://maps.google.com/ma=
ps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&amp;hl=3Den" style=3D"colo=
r:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</spa=
n></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:=
Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" v=
align=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td><t=
d style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;=
color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctoproje=
ct.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Ari=
al,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" vali=
gn=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><td style=
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
ap:break-word"><span>We encourage people attending the meeting to logon and=
 announce themselves on the Yocto Project IRC chancel during the meeting (o=
ptional):<br><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%=
3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;usd=3D=
2&amp;usg=3DAFQjCNEh9OQrs1YBcw7IAy-tvGf0ilzcGA" target=3D"_blank">http://we=
bchat.freenode.net/?channels=3D#yocto</a><br><br>Wiki: <a href=3D"https://w=
ww.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-m=
eetings%2F&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNGuv3-PMohkZImjCRVm8IQS5yY=
2iw" target=3D"_blank">https://www.yoctoproject.org/public-virtual-meetings=
/</a><br><br>Bridge is with Zoom at: <a href=3D"https://www.google.com/url?=
q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&amp;usd=3D2&amp;usg=3D=
AFQjCNHX_hluoIn561yqnT2i0scv-HJOEw" target=3D"_blank">https://zoom.us/j/990=
892712</a></span><meta itemprop=3D"description" content=3D"We encourage peo=
ple attending the meeting to logon and announce themselves on the Yocto Pro=
ject IRC chancel during the meeting (optional):Yocto IRC: http://webchat.fr=
eenode.net/?channels=3D#yoctoWiki: https://www.yoctoproject.org/public-virt=
ual-meetings/Bridge is with Zoom at: https://zoom.us/j/990892712"/></div></=
div><p style=3D"color:#222;font-size:13px;margin:0"><span style=3D"color:#8=
88">Going?&nbsp;&nbsp;&nbsp;</span><wbr><strong><span itemprop=3D"potential=
action" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=
=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Yes"/><span ite=
mprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandler=
"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET=
"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;ei=
d=3DN3ZidmdhZ2I3Y3F1YzhvNG5wcmdoNjc2cTggeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;=
rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWJiZjdkNTg0ODdkOGQwY=
TNkNGEzZjllOWVkMmY1OGIxN2UyMGRlMjI&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
Yes</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> - <=
/span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schem=
a.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.or=
g/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemscope itemtype=3D"h=
ttp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:=
//schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/cale=
ndar/event?action=3DRESPOND&amp;eid=3DN3ZidmdhZ2I3Y3F1YzhvNG5wcmdoNjc2cTgge=
W9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN=
0QGdtYWlsLmNvbWJiZjdkNTg0ODdkOGQwYTNkNGEzZjllOWVkMmY1OGIxN2UyMGRlMjI&amp;ct=
z=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white=
-space:nowrap" itemprop=3D"url">Maybe</a></span></span><span style=3D"margi=
n:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"potentialaction" =
itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"atten=
dance" content=3D"http://schema.org/RsvpAttendance/No"/><span itemprop=3D"h=
andler" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link it=
emprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=
=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DN3Zidm=
dhZ2I3Y3F1YzhvNG5wcmdoNjc2cTggeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D2&am=
p;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWJiZjdkNTg0ODdkOGQwYTNkNGEzZjl=
lOWVkMmY1OGIxN2UyMGRlMjI&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=
=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">No</a></span=
></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www.google=
.com/calendar/event?action=3DVIEW&amp;eid=3DN3ZidmdhZ2I3Y3F1YzhvNG5wcmdoNjc=
2cTggeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtY=
WlsLmNvbWJiZjdkNTg0ODdkOGQwYTNkNGEzZjllOWVkMmY1OGIxN2UyMGRlMjI&amp;ctz=3DAm=
erica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space=
:nowrap" itemprop=3D"url">more options &raquo;</a></p></td></tr><tr><td sty=
le=3D"background-color:#f6f6f6;color:#888;border-top:1px Solid #ccc;font-fa=
mily:Arial,Sans-serif;font-size:11px"><p>Invitation from <a href=3D"https:/=
/www.google.com/calendar/" target=3D"_blank" style=3D"">Google Calendar</a>=
</p><p>You are receiving this courtesy email at the account yocto@yoctoproj=
ect.org because you are an attendee of this event.</p><p>To stop receiving =
future updates for this event, decline this event. Alternatively you can si=
gn up for a Google account at https://www.google.com/calendar/ and control =
your notification settings for your entire calendar.</p><p>Forwarding this =
invitation could allow any recipient to modify your RSVP response. <a href=
=3D"https://support.google.com/calendar/answer/37135#forwarding">Learn More=
</a>.</p></td></tr></table></div></span></span>

--000000000000137470056de795e0
Content-Type: text/calendar; charset="UTF-8"; method=REQUEST
Content-Transfer-Encoding: 7bit

BEGIN:VCALENDAR
PRODID:-//Google Inc//Google Calendar 70.9054//EN
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:REQUEST
BEGIN:VEVENT
DTSTART:20180619T150000Z
DTEND:20180619T160000Z
DTSTAMP:20180605T163129Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:7vbvgagb7cquc8o4nprgh676q8@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@i
 ntel.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20180605T163128Z
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
 View your event at https://www.google.com/calendar/event?action=VIEW&eid=N3
 ZidmdhZ2I3Y3F1YzhvNG5wcmdoNjc2cTggeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdG
 hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWJiZjdkNTg0ODdkOGQwYTNkNGEzZjllOWVkMmY1OGIxN
 2UyMGRlMjI&ctz=America%2FLos_Angeles&hl=en&es=1.\n-::~:~::~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20180605T163129Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:0
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

--000000000000137470056de795e0--

--000000000000137473056de795e2
Content-Type: application/ics; name="invite.ics"
Content-Disposition: attachment; filename="invite.ics"
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpQUk9ESUQ6LS8vR29vZ2xlIEluYy8vR29vZ2xlIENhbGVuZGFyIDcw
LjkwNTQvL0VODQpWRVJTSU9OOjIuMA0KQ0FMU0NBTEU6R1JFR09SSUFODQpNRVRIT0Q6UkVRVUVT
VA0KQkVHSU46VkVWRU5UDQpEVFNUQVJUOjIwMTgwNjE5VDE1MDAwMFoNCkRURU5EOjIwMTgwNjE5
VDE2MDAwMFoNCkRUU1RBTVA6MjAxODA2MDVUMTYzMTI5Wg0KT1JHQU5JWkVSO0NOPXRoZXlvY3Rv
cHJvamVjdEBnbWFpbC5jb206bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb20NClVJRDo3
dmJ2Z2FnYjdjcXVjOG80bnByZ2g2NzZxOEBnb29nbGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5E
SVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUN
CiA7Q049dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmMNCiBvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj1z
dGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86c3RlcGhlbi5r
LmpvbGxleUBpDQogbnRlbC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRSVUU7Q049eW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KQ1JFQVRFRDoyMDE4MDYwNVQxNjMxMjhaDQpERVNDUklQVElPTjpXZSBlbmNvdXJhZ2Ug
cGVvcGxlIGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UNCiAgdGhl
bXNlbHZlcyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRp
bmcgKG9wdGlvbmFsKToNCiA8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0cHM6Ly93d3cu
Z29vZ2xlLmNvbS91cmw/cT1odHRwJTNBJTJGJTJGd2ViY2gNCiBhdC5mcmVlbm9kZS5uZXQlMkYl
M0ZjaGFubmVscyUzRCUyM3lvY3RvJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7dXNnPUFGUWoN
CiBDTkV2T0hWSWt4S0lyZlhXZlV4Q2NWUzVfOGtoNXciIHRhcmdldD0iX2JsYW5rIj5odHRwOi8v
d2ViY2hhdC5mcmVlbm9kZS5uZXQNCiAvP2NoYW5uZWxzPSN5b2N0bzwvYT48YnI+PGJyPldpa2k6
IDxhIGhyZWY9Imh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHUNCiBibGljLXZpcnR1YWwt
bWVldGluZ3MvIj5odHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0dWFsLW1l
ZXRpbmcNCiBzLzwvYT48YnI+PGJyPkJyaWRnZSBpcyB3aXRoIFpvb20gYXQ6IDxhIGhyZWY9Imh0
dHBzOi8vd3d3Lmdvb2dsZS5jb20vdXJsP3ENCiA9aHR0cHMlM0ElMkYlMkZ6b29tLnVzJTJGaiUy
Rjk5MDg5MjcxMiZhbXBcO3NhPUQmYW1wXDt1c2Q9MiZhbXBcO3VzZz1BRlFqQ04NCiBHMkY1c1Vw
bS1TLVJoa3FOaFhWQmQzbTFfM0xBIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly96b29tLnVzL2ov
OTkwODkyNzEyPC8NCiBhPlxuXG4tOjp+On46On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+Ojp+On46Oi1cblBs
ZWFzZSBkbyBub3QgZWRpdCB0aGlzIHNlY3Rpb24gb2YgdGhlIGRlc2NyaXB0aW9uLlxuXG4NCiBW
aWV3IHlvdXIgZXZlbnQgYXQgaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci9ldmVudD9h
Y3Rpb249VklFVyZlaWQ9TjMNCiBaaWRtZGhaMkkzWTNGMVl6aHZORzV3Y21kb05qYzJjVGdnZVc5
amRHOUFlVzlqZEc5d2NtOXFaV04wTG05eVp3JnRvaz1NalVqZEcNCiBobGVXOWpkRzl3Y205cVpX
TjBRR2R0WVdsc0xtTnZiV0ppWmpka05UZzBPRGRrT0dRd1lUTmtOR0V6WmpsbE9XVmtNbVkxT0dJ
eE4NCiAyVXlNR1JsTWpJJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MS5cbi06
On46fjo6fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46On46fjo6LQ0KTEFTVC1NT0RJRklFRDoyMDE4MDYwNVQx
NjMxMjlaDQpMT0NBVElPTjpab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5Mjcx
Mg0KU0VRVUVOQ0U6MA0KU1RBVFVTOkNPTkZJUk1FRA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRl
Y2huaWNhbCBUZWFtIE1lZXRpbmcNClRSQU5TUDpPUEFRVUUNCkJFR0lOOlZBTEFSTQ0KQUNUSU9O
OkRJU1BMQVkNCkRFU0NSSVBUSU9OOlRoaXMgaXMgYW4gZXZlbnQgcmVtaW5kZXINClRSSUdHRVI6
LVAwRFQwSDE1TTBTDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--000000000000137473056de795e2--
