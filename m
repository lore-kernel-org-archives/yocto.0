Return-Path: <38rbWXQ8JBa8iWTndRidegdYTRiVbPXa.RdbndRidndRidegdYTRi.dgV@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C197E00E04; Thu, 21 Nov 2019 08:10:30 -0800 (PST)
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
	*      [209.85.160.201 listed in list.dnswl.org]
	*  0.1 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com
	[209.85.160.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A028CE00852
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 08:10:28 -0800 (PST)
Received: by mail-qt1-f201.google.com with SMTP id v92so2566082qtd.18
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 08:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=Mxu5pUzF2IWYZJP6XVHACbCq7rEF2rR0ukNDeP2tRCU=;
	b=NsR9co5Vv+JYbQ44zkEHMiAqr4OinsI2KZSIVcQYvJID42FGLqgPO0ls60yn3avUko
	sEAmJrWyHbK56jZBL2LcoU5WTe0/J0eV1lge+hsyyP6zVaP8ndXVU3b4qjbaiSw2/HC3
	hhDArjgSLUyVgsFeeDmz2IBPB9jSWX5nGdWnzsSvrTQTx8gjj6GeC7vpWGbXiBtNeP5G
	B4TbDXCSw5F2UzCQ93ErmdcqAGtuwKSJx0SioZkCx/oR8nlTmwBRIWdkBTjDK0hBFD9T
	aAEZ6Am6UcxEBSo6qzx/bbDbaj7dNdCL95UUISKodsA6H1hsyNzQ4/G3BMXLZl8VDQMD
	T4Hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=Mxu5pUzF2IWYZJP6XVHACbCq7rEF2rR0ukNDeP2tRCU=;
	b=gropLgZMT/bKMqzcZXweJtDxV0GpfmP5Al7UqqYjlXAgCcVYzH4QlU1jW5LqLresJ8
	VYLpFajvTl65tMHngKJ3TJWu0gDTFkuax1hOcrCla6DSZEfz2TJr02GHwB5PJ7dWWGCJ
	dSubJkjA/PrQ5coBvzK91tctuL/5sSQSvaQ+1kHqB4tCROmwtAjdQbpC25xJ7fkmsrKF
	5iJF9D1ORtNSW/HbiTN7BDqi9yZkZn8AaDz5nBoa9mR4vCNQDTh89fmXvUzf2HbW5Ee7
	E4h9NAvkTj+cYC+FzYSP9IBp3V9OdYnhFzwi9nd9NCftiKmwtBzKBc1woZDlz0lyXebV
	91wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=Mxu5pUzF2IWYZJP6XVHACbCq7rEF2rR0ukNDeP2tRCU=;
	b=MbOHlR5gKvJPP+nPB/UUEJvqGEstZ90X1Nh+fDbFo/ZnysRJJ741DwqhK74CWSF5AH
	Ti6giYHoFvnjrWKKFNpmezIb1l3y5rDOberxhj5VnJEhMioLHlUKm/H/1VDqPKcUlj40
	1xHsTh7xuCbIvHl9LdjpaH2bf/TUCjaZG5LwlUPDb2N/QjTjUB7ksB8E/yINNN5+tELV
	1p/+lU+COofpO1h7Q5zorf3d3Wv5M4m/sVePDdPXjkeTrs3VKCtZlP1INybn7rlFrwfo
	/K/bqyj3XHsbV/lhkqnI1AuElex2+bH3RKykicKY7Ob4GmUaSi/GbmH9pMsCLq26jsrQ
	dFRA==
X-Gm-Message-State: APjAAAXzerBYP0Cxlv/XZHOlvrp4Tj5dQFMRPkRju7PYeUDBCXffVxAx
	nuimyoA1DpTq4eTxGsN+52kFbdtdhnrqj3P98nlM
X-Google-Smtp-Source: APXvYqw37MkUDAElFFaHxtm3lUJnGliLMY1JXPIcMz2oEHBDCAtZx2Tb4wzkc+zRBJd8ehAlYqx80kGRiZ1Wm8HxofAu
MIME-Version: 1.0
X-Received: by 2002:a0c:fecc:: with SMTP id z12mr8771733qvs.189.1574352626495; 
	Thu, 21 Nov 2019 08:10:26 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000000dbb920597dd8951@google.com>
Date: Thu, 21 Nov 2019 16:10:26 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org
Subject: Canceled event with note: Yocto Project Weekly Triage Meeting @ Thu Nov 28, 2019 7:30am - 8:30am (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Thu, 21 Nov 2019 16:10:30 -0000
X-Groupsio-MsgNum: 47363
Content-Type: multipart/mixed; boundary="0000000000000dbb820597dd8950"

--0000000000000dbb820597dd8950
Content-Type: multipart/alternative; boundary="0000000000000dbb800597dd894e"

--0000000000000dbb800597dd894e
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

VGhpcyBldmVudCBoYXMgYmVlbiBjYW5jZWxlZCB3aXRoIHRoaXMgbm90ZToNCiJVUyBUaGFua3Nn
aXZpbmciDQoNClRpdGxlOiBZb2N0byBQcm9qZWN0IFdlZWtseSBUcmlhZ2UgTWVldGluZw0KWW9j
dG8gUHJvamVjdCBXZWVrbHkgVHJpYWdlIE1lZXRpbmcgRGV0YWlscw0KDQoNCldpa2k6IGh0dHBz
Oi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZQ0KDQoNCllvY3RvIElSQzog
aHR0cDovL3dlYmNoYXQuZnJlZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG8gLSBXaGVuIHlvdSBq
b2luICANCnN0YXRlIHlvdXIgbmFtZSBvbiB0aGUgYnJpZGdlIG9yIElSQy4NCg0KV2UgdXNlIGEg
Wm9vbSBCcmlkZ2UgYXQ6IGh0dHBzOi8vem9vbS51cy9qLzQ1NDM2NzYwMw0KV2hlbjogVGh1IE5v
diAyOCwgMjAxOSA3OjMwYW0g4oCTIDg6MzBhbSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxlcw0K
V2hlcmU6IFpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovNDU0MzY3NjAzDQpDYWxlbmRh
cjogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KV2hvOg0KICAgICAqIHRoZXlvY3RvcHJvamVjdEBn
bWFpbC5jb20gLSBvcmdhbml6ZXINCiAgICAgKiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQogICAg
ICogc2pvbGxleS55cC5wbUBnbWFpbC5jb20NCg0KDQpJbnZpdGF0aW9uIGZyb20gR29vZ2xlIENh
bGVuZGFyOiBodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyLw0KDQpZb3UgYXJlIHJlY2Vp
dmluZyB0aGlzIGNvdXJ0ZXN5IGVtYWlsIGF0IHRoZSBhY2NvdW50IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcgIA0KYmVjYXVzZSB5b3UgYXJlIGFuIGF0dGVuZGVlIG9mIHRoaXMgZXZlbnQuDQoNClRv
IHN0b3AgcmVjZWl2aW5nIGZ1dHVyZSB1cGRhdGVzIGZvciB0aGlzIGV2ZW50LCBkZWNsaW5lIHRo
aXMgZXZlbnQuICANCkFsdGVybmF0aXZlbHkgeW91IGNhbiBzaWduIHVwIGZvciBhIEdvb2dsZSBh
Y2NvdW50IGF0ICANCmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvIGFuZCBjb250cm9s
IHlvdXIgbm90aWZpY2F0aW9uIHNldHRpbmdzIGZvciAgDQp5b3VyIGVudGlyZSBjYWxlbmRhci4N
Cg0KRm9yd2FyZGluZyB0aGlzIGludml0YXRpb24gY291bGQgYWxsb3cgYW55IHJlY2lwaWVudCB0
byBzZW5kIGEgcmVzcG9uc2UgdG8gIA0KdGhlIG9yZ2FuaXplciBhbmQgYmUgYWRkZWQgdG8gdGhl
IGd1ZXN0IGxpc3QsIG9yIGludml0ZSBvdGhlcnMgcmVnYXJkbGVzcyAgDQpvZiB0aGVpciBvd24g
aW52aXRhdGlvbiBzdGF0dXMsIG9yIHRvIG1vZGlmeSB5b3VyIFJTVlAuIExlYXJuIG1vcmUgYXQg
IA0KaHR0cHM6Ly9zdXBwb3J0Lmdvb2dsZS5jb20vY2FsZW5kYXIvYW5zd2VyLzM3MTM1I2Zvcndh
cmRpbmcNCg==

--0000000000000dbb800597dd894e
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
"><strong>This event has been canceled with this note:</strong><br>"US Than=
ksgiving"</h4><div style=3D"padding:2px"><span itemprop=3D"publisher" items=
cope itemtype=3D"http://schema.org/Organization"><meta itemprop=3D"name" co=
ntent=3D"Google Calendar"/></span><meta itemprop=3D"eventId/googleCalendar"=
 content=3D"69b8n4lifp3et8i02e5gp0h9dk_20191128T153000Z"/><h3 style=3D"padd=
ing:0 0 6px 0;margin:0;font-family:Arial,Sans-serif;font-size:16px;font-wei=
ght:bold;color:#222"><span itemprop=3D"name">Yocto Project Weekly Triage Me=
eting</span></h3><table style=3D"display:inline-table" cellpadding=3D"0" ce=
llspacing=3D"0" border=3D"0" summary=3D"Event details"><tr><td style=3D"pad=
ding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;wh=
ite-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:nor=
mal">When</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,=
Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-ind=
ent:-1px"><time itemprop=3D"startDate" datetime=3D"20191128T153000Z"></time=
><time itemprop=3D"endDate" datetime=3D"20191128T163000Z"></time>Thu Nov 28=
, 2019 7:30am =E2=80=93 8:30am <span style=3D"color:#888">Pacific Time - Lo=
s Angeles</span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-=
family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:=
90px" valign=3D"top"><div><i style=3D"font-style:normal">Where</i></div></t=
d><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:1=
3px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><span itempr=
op=3D"location" itemscope itemtype=3D"http://schema.org/Place"><span itempr=
op=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.us/j/454367603=
</span><span dir=3D"ltr"> (<a href=3D"https://www.google.com/maps/search/Zo=
om+Meeting:+https:%2F%2Fzoom.us%2Fj%2F454367603?hl=3Den" style=3D"color:#20=
c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</span></s=
pan></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial=
,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=
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
mprop=3D"name" class=3D"notranslate">sjolley.yp.pm@gmail.com</span><meta it=
emprop=3D"email" content=3D"sjolley.yp.pm@gmail.com"/></span></div></div></=
div></td></tr></table></td></tr></table><div style=3D"padding-bottom:15px;f=
ont-family:Arial,Sans-serif;font-size:13px;color:#222;white-space:pre-wrap!=
important;white-space:-moz-pre-wrap!important;white-space:-pre-wrap!importa=
nt;white-space:-o-pre-wrap!important;white-space:pre;word-wrap:break-word">=
<span>Yocto Project Weekly Triage Meeting Details<p><br>Wiki: <a href=3D"ht=
tps://www.google.com/url?q=3Dhttps%3A%2F%2Fwiki.yoctoproject.org%2Fwiki%2FB=
ug_Triage&amp;sa=3DD&amp;ust=3D1574784626474000&amp;usg=3DAFQjCNGUOpUQbOfaZ=
iXhlSqP7DgaQHptGw" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Bug=
_Triage</a></p><p><br>Yocto IRC: <a href=3D"https://www.google.com/url?q=3D=
http%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;u=
st=3D1574784626475000&amp;usg=3DAFQjCNFHZiz_y_aisP8dudvWlQr0I_GcgQ" target=
=3D"_blank">http://webchat.freenode.net/?channels=3D#yocto</a> - When you j=
oin state your name on the bridge or IRC.</p><p>We use a Zoom Bridge at: <a=
 href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F4543676=
03&amp;sa=3DD&amp;ust=3D1574784626475000&amp;usg=3DAFQjCNGn9Nj9Xxx0E3kZ2xc3=
oC5A7XekVg" target=3D"_blank">https://zoom.us/j/454367603</a></p></span><me=
ta itemprop=3D"description" content=3D"Yocto Project Weekly Triage Meeting =
Details


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

--0000000000000dbb800597dd894e
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
DTSTART;TZID=America/Los_Angeles:20191128T073000
DTEND;TZID=America/Los_Angeles:20191128T083000
DTSTAMP:20191121T161026Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:69b8n4lifp3et8i02e5gp0h9dk_R20190124T153000@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;CN=yo
 cto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;CN=sj
 olley.yp.pm@gmail.com;X-NUM-GUESTS=0:mailto:sjolley.yp.pm@gmail.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;CN=theyoc
 toproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.com
RECURRENCE-ID;TZID=America/Los_Angeles:20191128T073000
CREATED:20180524T175433Z
DESCRIPTION:Yocto Project Weekly Triage Meeting Details\n\n\nWiki: https://
 wiki.yoctoproject.org/wiki/Bug_Triage\n\n\nYocto IRC: http://webchat.freeno
 de.net/?channels=#yocto - When you join state your name on the bridge or IR
 C.\n\nWe use a Zoom Bridge at: https://zoom.us/j/454367603
LAST-MODIFIED:20191121T161025Z
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

--0000000000000dbb800597dd894e--

--0000000000000dbb820597dd8950
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
RFRTVEFSVDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTExMjhUMDczMDAwDQpEVEVORDtU
WklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTExMjhUMDgzMDAwDQpEVFNUQU1QOjIwMTkxMTIx
VDE2MTAyNloNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0
aGV5b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NjliOG40bGlmcDNldDhpMDJlNWdwMGg5ZGtf
UjIwMTkwMTI0VDE1MzAwMEBnb29nbGUuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtS
T0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q049eW8NCiBjdG9AeW9j
dG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNU
QVQ9TkVFRFMtQUNUSU9OO0NOPXNqDQogb2xsZXkueXAucG1AZ21haWwuY29tO1gtTlVNLUdVRVNU
Uz0wOm1haWx0bzpzam9sbGV5LnlwLnBtQGdtYWlsLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElW
SURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9QUNDRVBURUQ7Q049dGhleW9jDQog
dG9wcm9qZWN0QGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86dGhleW9jdG9wcm9qZWN0
QGdtYWlsLmNvbQ0KUkVDVVJSRU5DRS1JRDtUWklEPUFtZXJpY2EvTG9zX0FuZ2VsZXM6MjAxOTEx
MjhUMDczMDAwDQpDUkVBVEVEOjIwMTgwNTI0VDE3NTQzM1oNCkRFU0NSSVBUSU9OOllvY3RvIFBy
b2plY3QgV2Vla2x5IFRyaWFnZSBNZWV0aW5nIERldGFpbHNcblxuXG5XaWtpOiBodHRwczovLw0K
IHdpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2VcblxuXG5Zb2N0byBJUkM6IGh0
dHA6Ly93ZWJjaGF0LmZyZWVubw0KIGRlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvIC0gV2hlbiB5b3Ug
am9pbiBzdGF0ZSB5b3VyIG5hbWUgb24gdGhlIGJyaWRnZSBvciBJUg0KIEMuXG5cbldlIHVzZSBh
IFpvb20gQnJpZGdlIGF0OiBodHRwczovL3pvb20udXMvai80NTQzNjc2MDMNCkxBU1QtTU9ESUZJ
RUQ6MjAxOTExMjFUMTYxMDI1Wg0KTE9DQVRJT046Wm9vbSBNZWV0aW5nOiBodHRwczovL3pvb20u
dXMvai80NTQzNjc2MDMNClNFUVVFTkNFOjENClNUQVRVUzpDQU5DRUxMRUQNClNVTU1BUlk6WW9j
dG8gUHJvamVjdCBXZWVrbHkgVHJpYWdlIE1lZXRpbmcNClRSQU5TUDpPUEFRVUUNCkJFR0lOOlZB
TEFSTQ0KQUNUSU9OOkRJU1BMQVkNCkRFU0NSSVBUSU9OOlRoaXMgaXMgYW4gZXZlbnQgcmVtaW5k
ZXINClRSSUdHRVI6LVAwRFQwSDE1TTBTDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpFTkQ6VkNB
TEVOREFSDQo=

--0000000000000dbb820597dd8950--
