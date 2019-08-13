Return-Path: <3px9TXQ8JBSQTHEYOCTOPROJECTGMAIL.COMYOCTOYOCTOPROJECT.ORG@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93E17E00C78; Tue, 13 Aug 2019 13:38:26 -0700 (PDT)
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
	*      [209.85.219.202 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 218C4E00E48
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:37:59 -0700 (PDT)
Received: by mail-yb1-f202.google.com with SMTP id n62so5530092ybg.0
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=wyNcM+ArxQZfh00mnEp06aTpvKkbags3Rby2meRryzg=;
	b=T1vMWQG0HYWUtVFDh+u82YJhWwLSbeIDuaGRYiVjZP9J+OJomN0YE1WD9TsqytIOz3
	EFInb0VKc+ANaw5pY3zTjenG8rF2wZbqnNMt7xT4VeSI1cv3u23X8F6tH7puyzSK+nYP
	e9Utf8llIhJf5lXA6U9qLKbw5BZW6tL8enTJ3Pyj5/iQldsit6QSpoXIQmJ4O+83j+09
	RUBHKkMqJKpDTbiJgooJhztyc8ghykhFUP5VIE+iBYgh49LXKManS8cFGr4wTMmvoZDy
	ZX/Wm8P3zjbP+zCvJzjpyY37EfEJ1zqeXeDgSOJSYn4LoxLMeV6dUqDCWnShFMZXe/vb
	TE1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=wyNcM+ArxQZfh00mnEp06aTpvKkbags3Rby2meRryzg=;
	b=BnxLtDlpKtaBgQF8We99tn6WwT75Mtb+bsQJpZqgcplcSDtnplGiV4Hqx+JcKVAP0y
	K8K7CJzMAPn8cCtjlPgqhNNQt8yfNPDAeGptCK0RWbv6eqew99Q91IUUtww8YM1vt335
	JiHwnoEaEG/s+msd26t5qu7ElBwlH7r1IldS6ymx3xT9HEP233U1zNOIcxdSe+3JaH7y
	RRms8Z7Obriv4jETESkdk/73ID9ctcsHdKONjqMeBoGAvDvDd9m3UisE9uIBJzJM1qIb
	SvLjMhjOiYmvVuae6l+PkYMN+SGVOwUoabbduJ6axcUNTsknQrWrIJqk20u8h7iNBqe8
	trUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=wyNcM+ArxQZfh00mnEp06aTpvKkbags3Rby2meRryzg=;
	b=OuwZ65NLwyEVLlEtqFPLMw3Cvu5e4qTsSDt3aGu1obJCNwxvX9hvqr5a5HSjDJJhMB
	jwao8WIEWGi7R/yaYt3a3tNtBzA8cbL4fkQwaBRIQqI69MYbScNpnZtXh6E+nEwBPNzb
	fcoTJMyckr6IZ/gR/kXk1aNZkahxdoBvpV5J+tvxq8t86hZRa30IKEBbeit6BXTtA9OL
	WDKVUVPZ8uG6TTXPp5cLiFl3/btow8N84Wni4ASBUW75Ij5R+O++S0GKiTMpecInRHH8
	DGjzzj8HEA71IgjCM4BqZourav1tqeBbIrDxvkMpI5/4jigeWYbZrJYT0ciEh3FXE/eZ
	zabg==
X-Gm-Message-State: APjAAAUp4kP20VIvneoGU/rltn5JUKiP6r84AK+tgJvZyGqU/3GOXD6D
	2iLQEXJxja1hFbVeN3Xgv/qmdjYCovG6tgnDRhW+
X-Google-Smtp-Source: APXvYqylOKawwTw0tGKXO2eK3QxEQ5HlJwC2okpaYlTVSbLc4ePsr+7XBYw+XJCHw1QTx/sK5Vvv1p7hVzKIfxXvNtIK
MIME-Version: 1.0
X-Received: by 2002:a81:6284:: with SMTP id
	w126mr18655070ywb.159.1565728679545; 
	Tue, 13 Aug 2019 13:37:59 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000c253a10590059d6f@google.com>
Date: Tue, 13 Aug 2019 20:37:59 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com, 
	sjolley.yp.pm@gmail.com
Subject: Updated invitation: Yocto Project Technical Team Meeting / Engineering Sync @ Weekly from 8am to 9am on Tuesday (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 13 Aug 2019 20:38:26 -0000
X-Groupsio-MsgNum: 46283
Content-Type: multipart/mixed; boundary="000000000000c253880590059d6e"

--000000000000c253880590059d6e
Content-Type: multipart/alternative; boundary="000000000000c253830590059d6c"

--000000000000c253830590059d6c
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
dGF0aW9uLCBidWlsZHMsIGFuZCByZWxlYXNlcy4NCldoZW46IFdlZWtseSBmcm9tIDhhbSB0byA5
YW0gb24gVHVlc2RheSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxlcyAoY2hhbmdlZCkNCldoZXJl
OiBab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMg0KQ2FsZW5kYXI6IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCldobzoNCiAgICAgKiB0aGV5b2N0b3Byb2plY3RAZ21haWwu
Y29tIC0gb3JnYW5pemVyDQogICAgICogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KICAgICAqIHN0
ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tDQogICAgICogc2pvbGxleS55cC5wbUBnbWFpbC5jb20N
Cg0KRXZlbnQgZGV0YWlsczogIA0KaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci9ldmVu
dD9hY3Rpb249VklFVyZlaWQ9TnpSd2FqaGtNV2cyYjNBMk1tSTVhamMwYjIxallqbHJZM0JuYW1k
aU9XOWpiR2hxTUdJNWFtTnZjek5wYnpsb05qRnBhbWRrTVc1ak5GOVNNakF4T1RBNE1qZFVNVFV3
TURBd0lIbHZZM1J2UUhsdlkzUnZjSEp2YW1WamRDNXZjbWMmdG9rPU1qVWpkR2hsZVc5amRHOXdj
bTlxWldOMFFHZHRZV2xzTG1OdmJXSTBPVEkxTW1FMU9EQTFOek5rT1RkaU9UTm1aVGhpWkRjME5X
WTBZVEpoTXpCak9EZGxaVGsmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wDQoN
Ckludml0YXRpb24gZnJvbSBHb29nbGUgQ2FsZW5kYXI6IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20v
Y2FsZW5kYXIvDQoNCllvdSBhcmUgcmVjZWl2aW5nIHRoaXMgY291cnRlc3kgZW1haWwgYXQgdGhl
IGFjY291bnQgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyAgDQpiZWNhdXNlIHlvdSBhcmUgYW4gYXR0
ZW5kZWUgb2YgdGhpcyBldmVudC4NCg0KVG8gc3RvcCByZWNlaXZpbmcgZnV0dXJlIHVwZGF0ZXMg
Zm9yIHRoaXMgZXZlbnQsIGRlY2xpbmUgdGhpcyBldmVudC4gIA0KQWx0ZXJuYXRpdmVseSB5b3Ug
Y2FuIHNpZ24gdXAgZm9yIGEgR29vZ2xlIGFjY291bnQgYXQgIA0KaHR0cHM6Ly93d3cuZ29vZ2xl
LmNvbS9jYWxlbmRhci8gYW5kIGNvbnRyb2wgeW91ciBub3RpZmljYXRpb24gc2V0dGluZ3MgZm9y
ICANCnlvdXIgZW50aXJlIGNhbGVuZGFyLg0KDQpGb3J3YXJkaW5nIHRoaXMgaW52aXRhdGlvbiBj
b3VsZCBhbGxvdyBhbnkgcmVjaXBpZW50IHRvIHNlbmQgYSByZXNwb25zZSB0byAgDQp0aGUgb3Jn
YW5pemVyIGFuZCBiZSBhZGRlZCB0byB0aGUgZ3Vlc3QgbGlzdCwgb3IgaW52aXRlIG90aGVycyBy
ZWdhcmRsZXNzICANCm9mIHRoZWlyIG93biBpbnZpdGF0aW9uIHN0YXR1cywgb3IgdG8gbW9kaWZ5
IHlvdXIgUlNWUC4gTGVhcm4gbW9yZSBhdCAgDQpodHRwczovL3N1cHBvcnQuZ29vZ2xlLmNvbS9j
YWxlbmRhci9hbnN3ZXIvMzcxMzUjZm9yd2FyZGluZw0K

--000000000000c253830590059d6c
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
ar"/></span><meta itemprop=3D"eventId/googleCalendar" content=3D"74pj8d1h6o=
p62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4_R20190827T150000"/><div st=
yle=3D"float:right;font-weight:bold;font-size:13px"> <a href=3D"https://www=
.google.com/calendar/event?action=3DVIEW&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0=
b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF9SMjAxOTA4MjdUMTUwMDA=
wIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWls=
LmNvbWI0OTI1MmE1ODA1NzNkOTdiOTNmZThiZDc0NWY0YTJhMzBjODdlZTk&amp;ctz=3DAmeri=
ca%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:no=
wrap" itemprop=3D"url">more details &raquo;</a><br></div><h3 style=3D"paddi=
ng:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;font-size:16px;font-weig=
ht:bold;color:#222"><span itemprop=3D"name">Yocto Project Technical Team Me=
eting / Engineering Sync</span></h3><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" summary=3D"Event details"><tr><td style=3D"padding:0 1em 1=
0px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:no=
wrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">When</i=
></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;f=
ont-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><s=
trong style=3D"color:#080">Changed: </strong><time itemprop=3D"startDate" d=
atetime=3D"20190827T150000Z"></time><time itemprop=3D"endDate" datetime=3D"=
20190827T160000Z"></time>Weekly from 8am to 9am on Tuesday <span style=3D"c=
olor:#888">Pacific Time - Los Angeles</span></div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">Where</i></div></td><td style=3D"padding-bottom:10px;font-famil=
y:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"=
text-indent:-1px"><span itemprop=3D"location" itemscope itemtype=3D"http://=
schema.org/Place"><span itemprop=3D"name" class=3D"notranslate">Zoom Meetin=
g: https://zoom.us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https:/=
/www.google.com/maps/search/Zoom+Meeting:+https:%2F%2Fzoom.us%2Fj%2F9908927=
12?hl=3Den" style=3D"color:#20c;white-space:nowrap" target=3D"_blank" itemp=
rop=3D"map">map</a>)</span></span></div></td></tr><tr><td style=3D"padding:=
0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-s=
pace:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">=
Calendar</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,S=
ans-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-inde=
nt:-1px">yocto@yoctoproject.org</div></td></tr><tr><td style=3D"padding:0 1=
em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-spac=
e:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Who=
</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-seri=
f;font-size:13px;color:#222" valign=3D"top"><table cellspacing=3D"0" cellpa=
dding=3D"0"><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-seri=
f;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><sp=
an style=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><t=
d style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;c=
olor:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.=
3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/=
Person"><span itemprop=3D"name" class=3D"notranslate">theyoctoproject@gmail=
.com</span><meta itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/>=
</span><span itemprop=3D"organizer" itemscope itemtype=3D"http://schema.org=
/Person"><meta itemprop=3D"name" content=3D"theyoctoproject@gmail.com"/><me=
ta itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span s=
tyle=3D"font-size:11px;color:#888"> - organizer</span></div></div></div></t=
d></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;fon=
t-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span st=
yle=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td sty=
le=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:=
#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0=
"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Perso=
n"><span itemprop=3D"name" class=3D"notranslate">yocto@yoctoproject.org</sp=
an><meta itemprop=3D"email" content=3D"yocto@yoctoproject.org"/></span></di=
v></div></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Ari=
al,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-inde=
nt:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span><=
/div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font=
-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"m=
argin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http:/=
/schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">stephen.k=
.jolley@intel.com</span><meta itemprop=3D"email" content=3D"stephen.k.jolle=
y@intel.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-r=
ight:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px=
"><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,mo=
nospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-fam=
ily:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-=
1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" ite=
mscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=
=3D"notranslate">sjolley.yp.pm@gmail.com</span><meta itemprop=3D"email" con=
tent=3D"sjolley.yp.pm@gmail.com"/></span></div></div></div></td></tr></tabl=
e></td></tr></table><div style=3D"padding-bottom:15px;font-family:Arial,San=
s-serif;font-size:13px;color:#222;white-space:pre-wrap!important;white-spac=
e:-moz-pre-wrap!important;white-space:-pre-wrap!important;white-space:-o-pr=
e-wrap!important;white-space:pre;word-wrap:break-word"><span><br>The Yocto =
Project hosts a technical call. All community members are invited to join o=
n both the call and in the IRC channel, which are used simultaneously.<br>W=
e encourage people attending the meeting to logon and announce themselves o=
n the Yocto Project IRC chancel during the meeting (optional):<br><br>Yocto=
 IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freeno=
de.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D1566160679517000&amp;u=
sg=3DAFQjCNGgm5d_EFLQ5p3suA4z_PDVz9uHVw" target=3D"_blank">http://webchat.f=
reenode.net/?channels=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.goog=
le.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-meetings=
%2F&amp;sa=3DD&amp;ust=3D1566160679517000&amp;usg=3DAFQjCNHptWK0gGclD_X6EZi=
40OZy489f8Q" target=3D"_blank">https://www.yoctoproject.org/public-virtual-=
meetings/</a><br><br>Bridge is with Zoom at: <a href=3D"https://www.google.=
com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D1566=
160679517000&amp;usg=3DAFQjCNH9h9yDub0iiAFKzB57l5cYn5wnuA" target=3D"_blank=
">https://zoom.us/j/990892712</a><br><br>Tuesdays when we aren=E2=80=99t ha=
ving the Monthly Technical Call The Yocto Project hosts a engineering sync =
by which the technical team discusses the current status of engineering top=
ics, including the autobuilder, documentation, builds, and releases.</span>=
<meta itemprop=3D"description" content=3D"The Yocto Project hosts a technic=
al call. All community members are invited to join on both the call and in =
the IRC channel, which are used simultaneously.We encourage people attendin=
g the meeting to logon and announce themselves on the Yocto Project IRC cha=
ncel during the meeting (optional):Yocto IRC: http://webchat.freenode.net/?=
channels=3D#yoctoWiki: https://www.yoctoproject.org/public-virtual-meetings=
/Bridge is with Zoom at: https://zoom.us/j/990892712Tuesdays when we aren=
=E2=80=99t having the Monthly Technical Call The Yocto Project hosts a engi=
neering sync by which the technical team discusses the current status of en=
gineering topics, including the autobuilder, documentation, builds, and rel=
eases."/></div></div><p style=3D"color:#222;font-size:13px;margin:0"><span =
style=3D"color:#888">Going (yocto@yoctoproject.org)?&nbsp;&nbsp;&nbsp;</spa=
n><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<strong><span itemprop=
=3D"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><m=
eta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Yes=
"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpA=
ctionHandler"><link itemprop=3D"method" href=3D"http://schema.org/HttpReque=
stMethod/GET"/><a href=3D"https://www.google.com/calendar/event?action=3DRE=
SPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczN=
pbzloNjFpamdkMW5jNF9SMjAxOTA4MjdUMTUwMDAwIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&am=
p;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWI0OTI1MmE1ODA1NzN=
kOTdiOTNmZThiZDc0NWY0YTJhMzBjODdlZTk&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
Yes</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> - <=
/span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schem=
a.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.or=
g/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemscope itemtype=3D"h=
ttp://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http:=
//schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/cale=
ndar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3Bna=
mdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF9SMjAxOTA4MjdUMTUwMDAwIHlvY3RvQHlv=
Y3RvcHJvamVjdC5vcmc&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsL=
mNvbWI0OTI1MmE1ODA1NzNkOTdiOTNmZThiZDc0NWY0YTJhMzBjODdlZTk&amp;ctz=3DAmeric=
a%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:now=
rap" itemprop=3D"url">Maybe</a></span></span><span style=3D"margin:0 0.4em;=
font-weight:normal"> - </span><span itemprop=3D"potentialaction" itemscope =
itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" con=
tent=3D"http://schema.org/RsvpAttendance/No"/><span itemprop=3D"handler" it=
emscope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"=
method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https:=
//www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2=
MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF9SMjAxOTA4Mjd=
UMTUwMDAwIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&amp;rst=3D2&amp;tok=3DMjUjdGhleW9j=
dG9wcm9qZWN0QGdtYWlsLmNvbWI0OTI1MmE1ODA1NzNkOTdiOTNmZThiZDc0NWY0YTJhMzBjODd=
lZTk&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color=
:#20c;white-space:nowrap" itemprop=3D"url">No</a></span></span></strong>&nb=
sp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www.google.com/calendar/event?=
action=3DVIEW&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI=
5amNvczNpbzloNjFpamdkMW5jNF9SMjAxOTA4MjdUMTUwMDAwIHlvY3RvQHlvY3RvcHJvamVjdC=
5vcmc&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWI0OTI1MmE1ODA1NzNkOTd=
iOTNmZThiZDc0NWY0YTJhMzBjODdlZTk&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3De=
n&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more=
 options &raquo;</a></p></td></tr><tr><td style=3D"background-color:#f6f6f6=
;color:#888;border-top:1px Solid #ccc;font-family:Arial,Sans-serif;font-siz=
e:11px"><p>Invitation from <a href=3D"https://www.google.com/calendar/" tar=
get=3D"_blank" style=3D"">Google Calendar</a></p><p>You are receiving this =
courtesy email at the account yocto@yoctoproject.org because you are an att=
endee of this event.</p><p>To stop receiving future updates for this event,=
 decline this event. Alternatively you can sign up for a Google account at =
https://www.google.com/calendar/ and control your notification settings for=
 your entire calendar.</p><p>Forwarding this invitation could allow any rec=
ipient to send a response to the organizer and be added to the guest list, =
or invite others regardless of their own invitation status, or to modify yo=
ur RSVP. <a href=3D"https://support.google.com/calendar/answer/37135#forwar=
ding">Learn More</a>.</p></td></tr></table></div></span></span>

--000000000000c253830590059d6c
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
DTSTART;TZID=3DAmerica/Los_Angeles:20190827T080000
DTEND;TZID=3DAmerica/Los_Angeles:20190827T090000
RRULE:FREQ=3DWEEKLY;BYDAY=3DTU
DTSTAMP:20190813T203759Z
ORGANIZER;CN=3Dtheyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:74pj8d1h6op62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4_R20190827T15
 0000@google.com
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
X-MICROSOFT-CDO-OWNERAPPTID:963975502
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
 c0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF9SMjAxOTA4MjdUMTUw=
M
 DAwIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsL=
mNv
 bWI0OTI1MmE1ODA1NzNkOTdiOTNmZThiZDc0NWY0YTJhMzBjODdlZTk&ctz=3DAmerica%2FLo=
s_A
 ngeles&hl=3Den&es=3D0.\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:=
~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
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

--000000000000c253830590059d6c--

--000000000000c253880590059d6e
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwODI3VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwODI3VDA5MDAwMA0KUlJVTEU6RlJFUT1XRUVL
TFk7QllEQVk9VFUNCkRUU1RBTVA6MjAxOTA4MTNUMjAzNzU5Wg0KT1JHQU5JWkVSO0NOPXRoZXlv
Y3RvcHJvamVjdEBnbWFpbC5jb206bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb20NClVJ
RDo3NHBqOGQxaDZvcDYyYjlqNzRvbWNiOWtjcGdqZ2I5b2NsaGowYjlqY29zM2lvOWg2MWlqZ2Qx
bmM0X1IyMDE5MDgyN1QxNQ0KIDAwMDBAZ29vZ2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElW
SURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQog
VFJVRTtDTj15b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5b2N0
b0B5b2N0b3Byb2plY3Qub3JnDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049dGhleW9jdG9wcm9q
ZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWls
LmMNCiBvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj1zdGVwaGVuLmsuam9sbGV5QGlu
dGVsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86c3RlcGhlbi5rLmpvbGxleUBpDQogbnRlbC5j
b20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRT
VEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRSVUU7Q049c2pvbGxleS55cC5wbUBnbWFpbC5jb207
WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnNqb2xsZXkueXAucG1AZ21haWwuYw0KIG9tDQpYLU1JQ1JP
U09GVC1DRE8tT1dORVJBUFBUSUQ6OTYzOTc1NTAyDQpDUkVBVEVEOjIwMTgwNTI0VDE4MTQwNloN
CkRFU0NSSVBUSU9OOjxicj5UaGUgWW9jdG8gUHJvamVjdCBob3N0cyBhIHRlY2huaWNhbCBjYWxs
LiBBbGwgY29tbXVuaXR5IG1lbQ0KIGJlcnMgYXJlIGludml0ZWQgdG8gam9pbiBvbiBib3RoIHRo
ZSBjYWxsIGFuZCBpbiB0aGUgSVJDIGNoYW5uZWxcLCB3aGljaCBhcg0KIGUgdXNlZCBzaW11bHRh
bmVvdXNseS48YnI+V2UgZW5jb3VyYWdlIHBlb3BsZSBhdHRlbmRpbmcgdGhlIG1lZXRpbmcgdG8g
bG9nbw0KIG4gYW5kIGFubm91bmNlIHRoZW1zZWx2ZXMgb24gdGhlIFlvY3RvIFByb2plY3QgSVJD
IGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aQ0KIG5nIChvcHRpb25hbCk6PGJyPjxicj5Zb2N0byBJ
UkM6IDxhIGhyZWY9Imh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldC8/Y2hhbg0KIG5lbHM9I3lv
Y3RvIj5odHRwOi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQvP2NoYW5uZWxzPSN5b2N0bzwvYT48YnI+
PGJyPldpa2k6IA0KIDxhIGhyZWY9Imh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHVibGlj
LXZpcnR1YWwtbWVldGluZ3MvIj5odHRwczovL3d3dw0KIC55b2N0b3Byb2plY3Qub3JnL3B1Ymxp
Yy12aXJ0dWFsLW1lZXRpbmdzLzwvYT48YnI+PGJyPkJyaWRnZSBpcyB3aXRoIFpvb20gYQ0KIHQ6
IDxhIGhyZWY9Imh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMiIgaWQ9Im93NjM0IiBfX2lzX293
bmVyPSJ0cnVlIj5odHRwcw0KIDovL3pvb20udXMvai85OTA4OTI3MTI8L2E+PGJyPjxicj5UdWVz
ZGF5cyB3aGVuIHdlIGFyZW7igJl0IGhhdmluZyB0aGUgTW9udGhsDQogeSBUZWNobmljYWwgQ2Fs
bCBUaGUgWW9jdG8gUHJvamVjdCBob3N0cyBhIGVuZ2luZWVyaW5nIHN5bmMgYnkgd2hpY2ggdGhl
IHRlDQogY2huaWNhbCB0ZWFtIGRpc2N1c3NlcyB0aGUgY3VycmVudCBzdGF0dXMgb2YgZW5naW5l
ZXJpbmcgdG9waWNzXCwgaW5jbHVkaW5nDQogIHRoZSBhdXRvYnVpbGRlclwsIGRvY3VtZW50YXRp
b25cLCBidWlsZHNcLCBhbmQgcmVsZWFzZXMuXG5cbi06On46fjo6fjp+On46DQogfjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
On46fjo6LVxuDQogUGxlYXNlIGRvIG5vdCBlZGl0IHRoaXMgc2VjdGlvbiBvZiB0aGUgZGVzY3Jp
cHRpb24uXG5cblZpZXcgeW91ciBldmVudCBhdCBoDQogdHRwczovL3d3dy5nb29nbGUuY29tL2Nh
bGVuZGFyL2V2ZW50P2FjdGlvbj1WSUVXJmVpZD1OelJ3YWpoa01XZzJiM0EyTW1JNWFqDQogYzBi
MjFqWWpsclkzQm5hbWRpT1c5amJHaHFNR0k1YW1OdmN6TnBiemxvTmpGcGFtZGtNVzVqTkY5U01q
QXhPVEE0TWpkVU1UVXdNDQogREF3SUhsdlkzUnZRSGx2WTNSdmNISnZhbVZqZEM1dmNtYyZ0b2s9
TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkdFlXbHNMbU52DQogYldJME9USTFNbUUxT0RBMU56
TmtPVGRpT1RObVpUaGlaRGMwTldZMFlUSmhNekJqT0RkbFpUayZjdHo9QW1lcmljYSUyRkxvc19B
DQogbmdlbGVzJmhsPWVuJmVzPTAuXG4tOjp+On46On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+DQogOn46fjp+On46fjp+On46fjp+On46fjp+Ojp+On46Oi0N
CkxBU1QtTU9ESUZJRUQ6MjAxOTA4MTNUMjAzNzU1Wg0KTE9DQVRJT046Wm9vbSBNZWV0aW5nOiBo
dHRwczovL3pvb20udXMvai85OTA4OTI3MTINClNFUVVFTkNFOjINClNUQVRVUzpDT05GSVJNRUQN
ClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nIC8gRW5naW5lZXJp
bmcgU3luYw0KVFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJNDQpBQ1RJT046RElTUExBWQ0KREVT
Q1JJUFRJT046VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0KVFJJR0dFUjotUDBEVDBIMTVNMFMN
CkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVINCg==

--000000000000c253880590059d6e--
