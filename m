Return-Path: <3eh9TXQ8JBfUqebvlZqlmolgbZqdjXfi.ZljvlZqlvlZqlmolgbZq.lod@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6FBE00E13; Tue, 13 Aug 2019 13:37:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C298E00BEB
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:37:14 -0700 (PDT)
Received: by mail-yw1-f73.google.com with SMTP id n139so80513736ywd.22
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=/1aLFAjqqGfCtkhlpUiUnsKFV/qDycCIgq0lzXw/Mok=;
	b=GzyPRNcc/IBNNJ1wGXNmqze4G+VWcOUTBGfprppNdOeLR1Wt/7RfAo7vjaKTWtNOLG
	lQa3PXAaJJEnDgSWFuK0u/RpkeQC2H5robQz79uHV0VKYjnwiTWVDiOH/XMxoxZ64Oxg
	k6tpsNmBiYMt92F8SgjPN6DHkPGyuGzMmjwAq0a5IUpaY4X4FlAnXodh0Zmnt7fgjHXN
	lJ8ynDKYVfQETHZ8gzzLoyx3F9H1oemRVwjz11N4hujHPzHDiziY4Lwl+ek8z1wnNbUI
	Yz4ejVucLVgZalv9gB+Sf6C+vmzQGFMw7MEnKTVR0670Ol4732PbD325U34YYMXGyfaH
	mGrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=/1aLFAjqqGfCtkhlpUiUnsKFV/qDycCIgq0lzXw/Mok=;
	b=JZMyE7t4fxEvpOWo3kzis9n6yYO3Tr6QaWNWYLJA/QUgouXcZGJnwrFZN6Nr6+XBDM
	+7xehfYQerWCTOWS1lmCnreiDgZ/tPI+VyPkJ1BsjT5jdgXRY0YGAHaIBeyy4EJbFxW3
	MBIsPJtS2CNU5W3R3I+RFSo/N5i9AAndjSgVDYNU56ENOMZP1DXNCukC3sGGwpQ6Lvdg
	Sv0O+O+dpYVQ4siMfnb9CMi3miF4INksc0TjD5gr47ZuYlR2MOVR7H++/2Nx11lW3U5z
	SUtqmlwDx8OjED3NNUg0ADmvITbkRN3yKi7Zyo+eBxEehDqyIlJ1puMC2zFt92ls+JyI
	juZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=/1aLFAjqqGfCtkhlpUiUnsKFV/qDycCIgq0lzXw/Mok=;
	b=Y6teG6DMe5+d1S3+maqLFWket0hmHm1E+xgLyB3q9gbIFtYLO3897ZBJWh+Y9Q/sq1
	EOGiaNoGipvvX4uUqZVKtG6oC2cpXlygl7oJ1mT8zzhpBorM/wsISdwkgtG4FPXky2aI
	gjLnnlEejmIU0R/ks74BFNOwzTUP9BlmFcVuNGY7OzyuCVNjVZ1fLLoNi+Nqanp4wFlU
	avoeylGBFxk56yaKHIjVUnOCf1phav7oCwRX694TEUf6r9J42hvUlu3qg6z/HYsySB8A
	RxFhRBBhatSRYBc2LkdtFSLSrYk8ff9cXt/dzkaLx4Ui3OmGaNh7ciUBSQ55+TCzhoze
	ayCw==
X-Gm-Message-State: APjAAAWj8ziHOXcqL81bVKZ92QanhOyYK7VYsCthfZIMu21jx2w6kORa
	AXwWgrYopR1CQMvrsKMJRt3PNMueTHAiOqDEPbH/
X-Google-Smtp-Source: APXvYqyqZ9J1kvE9KVp/oVfGwyq0NOVn63ymjG2OmpJwPS1uBbA681NM4qL0yEC09o3o0+so67KPsMN56X2svKmdRzux
MIME-Version: 1.0
X-Received: by 2002:a05:6902:4ca:: with SMTP id
	v10mr416328ybs.20.1565728634200; 
	Tue, 13 Aug 2019 13:37:14 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000000e68380590059ba8@google.com>
Date: Tue, 13 Aug 2019 20:37:14 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, sjolley.yp.pm@gmail.com, 
	stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting / Engineering Sync @ Tue Aug 20, 2019 8am - 9am (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 13 Aug 2019 20:37:34 -0000
X-Groupsio-MsgNum: 46282
Content-Type: multipart/mixed; boundary="0000000000000e681d0590059ba7"

--0000000000000e681d0590059ba7
Content-Type: multipart/alternative; boundary="0000000000000e681a0590059ba5"

--0000000000000e681a0590059ba5
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
dGF0aW9uLCBidWlsZHMsIGFuZCByZWxlYXNlcy4NCldoZW46IFR1ZSBBdWcgMjAsIDIwMTkgOGFt
IOKAkyA5YW0gUGFjaWZpYyBUaW1lIC0gTG9zIEFuZ2VsZXMgKGNoYW5nZWQpDQpXaGVyZTogWm9v
bSBNZWV0aW5nOiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINCkNhbGVuZGFyOiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQpXaG86DQogICAgICogdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbSAt
IG9yZ2FuaXplcg0KICAgICAqIHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCiAgICAgKiBzam9sbGV5
LnlwLnBtQGdtYWlsLmNvbQ0KICAgICAqIHN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tDQoNCkV2
ZW50IGRldGFpbHM6ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0
aW9uPVZJRVcmZWlkPU56UndhamhrTVdnMmIzQTJNbUk1YWpjMGIyMWpZamxyWTNCbmFtZGlPVzlq
YkdocU1HSTVhbU52Y3pOcGJ6bG9OakZwYW1ka01XNWpORjh5TURFNU1EZ3lNRlF4TlRBd01EQmFJ
SGx2WTNSdlFIbHZZM1J2Y0hKdmFtVmpkQzV2Y21jJnRvaz1NalVqZEdobGVXOWpkRzl3Y205cVpX
TjBRR2R0WVdsc0xtTnZiV1poTTJObFlUTmtORFF5T1dKak5XSmtOekJoWkdJM09EWTFZakJqTW1a
bU1EY3pOMk01WkRnJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MA0KDQpJbnZp
dGF0aW9uIGZyb20gR29vZ2xlIENhbGVuZGFyOiBodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVu
ZGFyLw0KDQpZb3UgYXJlIHJlY2VpdmluZyB0aGlzIGNvdXJ0ZXN5IGVtYWlsIGF0IHRoZSBhY2Nv
dW50IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcgIA0KYmVjYXVzZSB5b3UgYXJlIGFuIGF0dGVuZGVl
IG9mIHRoaXMgZXZlbnQuDQoNClRvIHN0b3AgcmVjZWl2aW5nIGZ1dHVyZSB1cGRhdGVzIGZvciB0
aGlzIGV2ZW50LCBkZWNsaW5lIHRoaXMgZXZlbnQuICANCkFsdGVybmF0aXZlbHkgeW91IGNhbiBz
aWduIHVwIGZvciBhIEdvb2dsZSBhY2NvdW50IGF0ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20v
Y2FsZW5kYXIvIGFuZCBjb250cm9sIHlvdXIgbm90aWZpY2F0aW9uIHNldHRpbmdzIGZvciAgDQp5
b3VyIGVudGlyZSBjYWxlbmRhci4NCg0KRm9yd2FyZGluZyB0aGlzIGludml0YXRpb24gY291bGQg
YWxsb3cgYW55IHJlY2lwaWVudCB0byBzZW5kIGEgcmVzcG9uc2UgdG8gIA0KdGhlIG9yZ2FuaXpl
ciBhbmQgYmUgYWRkZWQgdG8gdGhlIGd1ZXN0IGxpc3QsIG9yIGludml0ZSBvdGhlcnMgcmVnYXJk
bGVzcyAgDQpvZiB0aGVpciBvd24gaW52aXRhdGlvbiBzdGF0dXMsIG9yIHRvIG1vZGlmeSB5b3Vy
IFJTVlAuIExlYXJuIG1vcmUgYXQgIA0KaHR0cHM6Ly9zdXBwb3J0Lmdvb2dsZS5jb20vY2FsZW5k
YXIvYW5zd2VyLzM3MTM1I2ZvcndhcmRpbmcNCg==

--0000000000000e681a0590059ba5
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
p62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4_20190820T150000Z"/><div st=
yle=3D"float:right;font-weight:bold;font-size:13px"> <a href=3D"https://www=
.google.com/calendar/event?action=3DVIEW&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0=
b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF8yMDE5MDgyMFQxNTAwMDB=
aIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWls=
LmNvbWZhM2NlYTNkNDQyOWJjNWJkNzBhZGI3ODY1YjBjMmZmMDczN2M5ZDg&amp;ctz=3DAmeri=
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
atetime=3D"20190820T150000Z"></time><time itemprop=3D"endDate" datetime=3D"=
20190820T160000Z"></time>Tue Aug 20, 2019 8am =E2=80=93 9am <span style=3D"=
color:#888">Pacific Time - Los Angeles</span></div></td></tr><tr><td style=
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
/schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">sjolley.y=
p.pm@gmail.com</span><meta itemprop=3D"email" content=3D"sjolley.yp.pm@gmai=
l.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-right:1=
0px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div=
 style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospac=
e">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><=
div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope=
 itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"not=
ranslate">stephen.k.jolley@intel.com</span><meta itemprop=3D"email" content=
=3D"stephen.k.jolley@intel.com"/></span></div></div></div></td></tr></table=
></td></tr></table><div style=3D"padding-bottom:15px;font-family:Arial,Sans=
-serif;font-size:13px;color:#222;white-space:pre-wrap!important;white-space=
:-moz-pre-wrap!important;white-space:-pre-wrap!important;white-space:-o-pre=
-wrap!important;white-space:pre;word-wrap:break-word"><span><br>The Yocto P=
roject hosts a technical call. All community members are invited to join on=
 both the call and in the IRC channel, which are used simultaneously.<br>We=
 encourage people attending the meeting to logon and announce themselves on=
 the Yocto Project IRC chancel during the meeting (optional):<br><br>Yocto =
IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenod=
e.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D1566160634184000&amp;us=
g=3DAFQjCNG_zR-czzGupKK1sq5bsmPBKNN2BA" target=3D"_blank">http://webchat.fr=
eenode.net/?channels=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.googl=
e.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-meetings%=
2F&amp;sa=3DD&amp;ust=3D1566160634184000&amp;usg=3DAFQjCNEyHpiQVHbq4wnGt5oI=
c5QRw7i1xg" target=3D"_blank">https://www.yoctoproject.org/public-virtual-m=
eetings/</a><br><br>Bridge is with Zoom at: <a href=3D"https://www.google.c=
om/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D15661=
60634184000&amp;usg=3DAFQjCNFlWW0N_3Qkxqx6RnIQQVdHemdJcw" target=3D"_blank"=
>https://zoom.us/j/990892712</a><br><br>Tuesdays when we aren=E2=80=99t hav=
ing the Monthly Technical Call The Yocto Project hosts a engineering sync b=
y which the technical team discusses the current status of engineering topi=
cs, including the autobuilder, documentation, builds, and releases.</span><=
meta itemprop=3D"description" content=3D"The Yocto Project hosts a technica=
l call. All community members are invited to join on both the call and in t=
he IRC channel, which are used simultaneously.We encourage people attending=
 the meeting to logon and announce themselves on the Yocto Project IRC chan=
cel during the meeting (optional):Yocto IRC: http://webchat.freenode.net/?c=
hannels=3D#yoctoWiki: https://www.yoctoproject.org/public-virtual-meetings/=
Bridge is with Zoom at: https://zoom.us/j/990892712Tuesdays when we aren=E2=
=80=99t having the Monthly Technical Call The Yocto Project hosts a enginee=
ring sync by which the technical team discusses the current status of engin=
eering topics, including the autobuilder, documentation, builds, and releas=
es."/></div></div><p style=3D"color:#222;font-size:13px;margin:0"><span sty=
le=3D"color:#888">Going (yocto@yoctoproject.org)?&nbsp;&nbsp;&nbsp;</span><=
wbr><strong><span itemprop=3D"potentialaction" itemscope itemtype=3D"http:/=
/schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://sch=
ema.org/RsvpAttendance/Yes"/><span itemprop=3D"handler" itemscope itemtype=
=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"=
http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com=
/calendar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlr=
Y3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF8yMDE5MDgyMFQxNTAwMDBaIHlvY3R=
vQHlvY3RvcHJvamVjdC5vcmc&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdt=
YWlsLmNvbWZhM2NlYTNkNDQyOWJjNWJkNzBhZGI3ODY1YjBjMmZmMDczN2M5ZDg&amp;ctz=3DA=
merica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-spac=
e:nowrap" itemprop=3D"url">Yes</a></span></span><span style=3D"margin:0 0.4=
em;font-weight:normal"> - </span><span itemprop=3D"potentialaction" itemsco=
pe itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" =
content=3D"http://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"handl=
er" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link itempr=
op=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"=
https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNzRwajhkMW=
g2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF8yMDE5M=
DgyMFQxNTAwMDBaIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&amp;rst=3D3&amp;tok=3DMjUjdG=
hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWZhM2NlYTNkNDQyOWJjNWJkNzBhZGI3ODY1YjBjMmZmM=
DczN2M5ZDg&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D=
"color:#20c;white-space:nowrap" itemprop=3D"url">Maybe</a></span></span><sp=
an style=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"=
potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta =
itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/No"/><s=
pan itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpAction=
Handler"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMet=
hod/GET"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND=
&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzlo=
NjFpamdkMW5jNF8yMDE5MDgyMFQxNTAwMDBaIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&amp;rst=
=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWZhM2NlYTNkNDQyOWJjNWJk=
NzBhZGI3ODY1YjBjMmZmMDczN2M5ZDg&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den=
&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">No</a=
></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www=
.google.com/calendar/event?action=3DVIEW&amp;eid=3DNzRwajhkMWg2b3A2MmI5ajc0=
b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF8yMDE5MDgyMFQxNTAwMDB=
aIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWls=
LmNvbWZhM2NlYTNkNDQyOWJjNWJkNzBhZGI3ODY1YjBjMmZmMDczN2M5ZDg&amp;ctz=3DAmeri=
ca%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:no=
wrap" itemprop=3D"url">more options &raquo;</a></p></td></tr><tr><td style=
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

--0000000000000e681a0590059ba5
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
DTEND;TZID=3DAmerica/Los_Angeles:20190820T090000
DTSTAMP:20190813T203714Z
ORGANIZER;CN=3Dtheyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:74pj8d1h6op62b9j74omcb9kcpgjgb9oclhj0b9jcos3io9h61ijgd1nc4@google.com
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DACCEPTED;RSV=
P=3DTRUE
 ;CN=3Dtheyoctoproject@gmail.com;X-NUM-GUESTS=3D0:mailto:theyoctoproject@gm=
ail.c
 om
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;RSVP=3D
 TRUE;CN=3Dyocto@yoctoproject.org;X-NUM-GUESTS=3D0:mailto:yocto@yoctoprojec=
t.org
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;RSVP=3D
 TRUE;CN=3Dsjolley.yp.pm@gmail.com;X-NUM-GUESTS=3D0:mailto:sjolley.yp.pm@gm=
ail.c
 om
ATTENDEE;CUTYPE=3DINDIVIDUAL;ROLE=3DREQ-PARTICIPANT;PARTSTAT=3DNEEDS-ACTION=
;RSVP=3D
 TRUE;CN=3Dstephen.k.jolley@intel.com;X-NUM-GUESTS=3D0:mailto:stephen.k.jol=
ley@i
 ntel.com
X-MICROSOFT-CDO-OWNERAPPTID:-1512728414
RECURRENCE-ID;TZID=3DAmerica/Los_Angeles:20190820T080000
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
 c0b21jYjlrY3BnamdiOW9jbGhqMGI5amNvczNpbzloNjFpamdkMW5jNF8yMDE5MDgyMFQxNTAw=
M
 DBaIHlvY3RvQHlvY3RvcHJvamVjdC5vcmc&tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsL=
mNv
 bWZhM2NlYTNkNDQyOWJjNWJkNzBhZGI3ODY1YjBjMmZmMDczN2M5ZDg&ctz=3DAmerica%2FLo=
s_A
 ngeles&hl=3Den&es=3D0.\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:=
~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20190813T203711Z
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

--0000000000000e681a0590059ba5--

--0000000000000e681d0590059ba7
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
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwODIwVDA5MDAwMA0KRFRTVEFNUDoyMDE5MDgx
M1QyMDM3MTRaDQpPUkdBTklaRVI7Q049dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86
dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0KVUlEOjc0cGo4ZDFoNm9wNjJiOWo3NG9tY2I5a2Nw
Z2pnYjlvY2xoajBiOWpjb3MzaW85aDYxaWpnZDFuYzRAZ29vZ2xlLmNvbQ0KQVRURU5ERUU7Q1VU
WVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9QUNDRVBURUQ7UlNW
UD1UUlVFDQogO0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb207WC1OVU0tR1VFU1RTPTA6bWFp
bHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jDQogb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklE
VUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRS
VUU7Q049eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZw0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFS
VElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj1zam9sbGV5Lnlw
LnBtQGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86c2pvbGxleS55cC5wbUBnbWFpbC5j
DQogb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0KIFRSVUU7Q049c3RlcGhlbi5rLmpvbGxleUBpbnRl
bC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnN0ZXBoZW4uay5qb2xsZXlAaQ0KIG50ZWwuY29t
DQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6LTE1MTI3Mjg0MTQNClJFQ1VSUkVOQ0UtSUQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwODIwVDA4MDAwMA0KQ1JFQVRFRDoyMDE4MDUy
NFQxODE0MDZaDQpERVNDUklQVElPTjo8YnI+VGhlIFlvY3RvIFByb2plY3QgaG9zdHMgYSB0ZWNo
bmljYWwgY2FsbC4gQWxsIGNvbW11bml0eSBtZW0NCiBiZXJzIGFyZSBpbnZpdGVkIHRvIGpvaW4g
b24gYm90aCB0aGUgY2FsbCBhbmQgaW4gdGhlIElSQyBjaGFubmVsXCwgd2hpY2ggYXINCiBlIHVz
ZWQgc2ltdWx0YW5lb3VzbHkuPGJyPldlIGVuY291cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBt
ZWV0aW5nIHRvIGxvZ28NCiBuIGFuZCBhbm5vdW5jZSB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQ
cm9qZWN0IElSQyBjaGFuY2VsIGR1cmluZyB0aGUgbWVldGkNCiBuZyAob3B0aW9uYWwpOjxicj48
YnI+WW9jdG8gSVJDOiA8YSBocmVmPSJodHRwOi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQvP2NoYW4N
CiBuZWxzPSN5b2N0byI+aHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9j
dG88L2E+PGJyPjxicj5XaWtpOiANCiA8YSBocmVmPSJodHRwczovL3d3dy55b2N0b3Byb2plY3Qu
b3JnL3B1YmxpYy12aXJ0dWFsLW1lZXRpbmdzLyI+aHR0cHM6Ly93d3cNCiAueW9jdG9wcm9qZWN0
Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5ncy88L2E+PGJyPjxicj5CcmlkZ2UgaXMgd2l0aCBa
b29tIGENCiB0OiA8YSBocmVmPSJodHRwczovL3pvb20udXMvai85OTA4OTI3MTIiIGlkPSJvdzYz
NCIgX19pc19vd25lcj0idHJ1ZSI+aHR0cHMNCiA6Ly96b29tLnVzL2ovOTkwODkyNzEyPC9hPjxi
cj48YnI+VHVlc2RheXMgd2hlbiB3ZSBhcmVu4oCZdCBoYXZpbmcgdGhlIE1vbnRobA0KIHkgVGVj
aG5pY2FsIENhbGwgVGhlIFlvY3RvIFByb2plY3QgaG9zdHMgYSBlbmdpbmVlcmluZyBzeW5jIGJ5
IHdoaWNoIHRoZSB0ZQ0KIGNobmljYWwgdGVhbSBkaXNjdXNzZXMgdGhlIGN1cnJlbnQgc3RhdHVz
IG9mIGVuZ2luZWVyaW5nIHRvcGljc1wsIGluY2x1ZGluZw0KICB0aGUgYXV0b2J1aWxkZXJcLCBk
b2N1bWVudGF0aW9uXCwgYnVpbGRzXCwgYW5kIHJlbGVhc2VzLlxuXG4tOjp+On46On46fjp+Og0K
IH46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+Ojp+On46Oi1cbg0KIFBsZWFzZSBkbyBub3QgZWRpdCB0aGlzIHNlY3Rpb24gb2Yg
dGhlIGRlc2NyaXB0aW9uLlxuXG5WaWV3IHlvdXIgZXZlbnQgYXQgaA0KIHR0cHM6Ly93d3cuZ29v
Z2xlLmNvbS9jYWxlbmRhci9ldmVudD9hY3Rpb249VklFVyZlaWQ9TnpSd2FqaGtNV2cyYjNBMk1t
STVhag0KIGMwYjIxallqbHJZM0JuYW1kaU9XOWpiR2hxTUdJNWFtTnZjek5wYnpsb05qRnBhbWRr
TVc1ak5GOHlNREU1TURneU1GUXhOVEF3TQ0KIERCYUlIbHZZM1J2UUhsdlkzUnZjSEp2YW1WamRD
NXZjbWMmdG9rPU1qVWpkR2hsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1Odg0KIGJXWmhNMk5s
WVROa05EUXlPV0pqTldKa056QmhaR0kzT0RZMVlqQmpNbVptTURjek4yTTVaRGcmY3R6PUFtZXJp
Y2ElMkZMb3NfQQ0KIG5nZWxlcyZobD1lbiZlcz0wLlxuLTo6fjp+Ojp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46fjp+On46fjp+On46
fjo6fjp+OjotDQpMQVNULU1PRElGSUVEOjIwMTkwODEzVDIwMzcxMVoNCkxPQ0FUSU9OOlpvb20g
TWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyDQpTRVFVRU5DRToyDQpTVEFUVVM6
Q09ORklSTUVEDQpTVU1NQVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZyAv
IEVuZ2luZWVyaW5nIFN5bmMNClRSQU5TUDpPUEFRVUUNCkJFR0lOOlZBTEFSTQ0KQUNUSU9OOkRJ
U1BMQVkNCkRFU0NSSVBUSU9OOlRoaXMgaXMgYW4gZXZlbnQgcmVtaW5kZXINClRSSUdHRVI6LVAw
RFQwSDE1TTBTDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--0000000000000e681d0590059ba7--
