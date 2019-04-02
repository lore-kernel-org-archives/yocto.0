Return-Path: <theyoctoproject@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93FD8E00A54; Tue,  2 Apr 2019 09:03:53 -0700 (PDT)
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
	*      [209.85.160.202 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
	[209.85.160.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3EF6E00754
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 09:03:50 -0700 (PDT)
Received: by mail-qt1-f202.google.com with SMTP id z24so2146459qto.7
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 09:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=FoaursNfDwPx7S0oJhzxYRHrJt5ldZG/ol1OI0Bnwp4=;
	b=OKOovL1JPLuhYKvQzibXOkrBm3djzS4+3djo22LscrKC1AtdhEG0AEWGVcx6f30CFl
	ey2Kem8p8+5mJJlOESh9dOW4sXHFX3D0Y3lnF6UpPbB+Yi8hDAIbA7hE7yV4qUsWCZm7
	ydPsdSAfbPKrihAkBTUu/YzmK4HP13gEwzyTvVSshP3Jx9mr3K0yQ2J9Bcbc+lNtPcbk
	b/TjyHOphQ7AgalIMlGpKUyUtXpf02AkK6EkvrUF2k3uuopnOwLNS+N1ljDEGu2B1SOt
	gXw4hnlEdOoMIzMlrIcYoW4Jbsbf44SboCpv7Dd9QLFevVvjmhb0wj4VP+1Hun1pJoZ9
	mo3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=FoaursNfDwPx7S0oJhzxYRHrJt5ldZG/ol1OI0Bnwp4=;
	b=lMQJ9IQT/lM9EMnojJJ5V0mOtSfgVgv9srrkUhR1sJIQgFi09F8NhkhP7LTuYL6HbC
	kODo+vWSITjC8s4DVWpe9J3n5of81zEOyjc8IW3OCn/6ZhjAPEbdxRsF8MeSOrbGHOQs
	/VLWdiX7UcFnwY0wJ0FMhLlaqjfh+B4S933vc6ddF7oUvn/jhdpJjl63Pq5Zg8KP/yh5
	398tHkQGv0ujSHA66nS6692cpocP8aKv7Hw00yhMJb7Gx/QuBfpGnswiDJCV4KNIp10d
	UUQJYx29CSJwKRvS1qO9/rss2ee2acm+/eZ56GCO58lrQM6SySk08Cvsl4tlfw1xJZBZ
	F8iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:message-id:date
	:subject:from:to;
	bh=FoaursNfDwPx7S0oJhzxYRHrJt5ldZG/ol1OI0Bnwp4=;
	b=XwwvJ38qzK/XXhXqa03WAyhAeOroaf+VOA7DaYqoh4fVHc9mLZ9sgvUUK3nNCNJ96Z
	FLoWy7s71xoscDnCcCI7VHOQxr1NPxW9kn4AlBrzjO+MVBFdxhwAYWsPDShSaZXSR7ZR
	KREyMG7Lm6d9+xP5AX05g6yRELSWuGtXQ/VWvAZBb5O+nzI4IuRsCkM+IHGlpLRd/VsM
	pDTZMR2Gz06smDAPMrvnU+yCXw3VVnaPxLUHB2xsjjdKZLBvpvmnZMgkbsTl9KJU5Pe5
	o8RMco0LtgP+0mu1RyTPn/DoLKqi6woLz4SU3XiIuA7o2Ir3Wf943XvAqPzbjE5PGT0C
	uFMw==
X-Gm-Message-State: APjAAAXNZJVZ4lPLR82loNRqJ9GNZUkgzp3unhRDiJUAXF0zEMmH/Ckt
	4d5LmOv8zkRm+0f2E5kUaJ0raVCA2t0ovog5vW8m
X-Google-Smtp-Source: APXvYqxN+mOnZi53G3ktYEjctbF1BU/77LJi8b0HhVgPqQQXciSstHmZsLs2PvEab7wRZkKYpottJSdKFADh/YrZEsr9
MIME-Version: 1.0
X-Received: by 2002:a0c:94ca:: with SMTP id k10mr7570040qvk.24.1554221030515; 
	Tue, 02 Apr 2019 09:03:50 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Message-ID: <0000000000006d2cc405858e48c5@google.com>
Date: Tue, 02 Apr 2019 16:03:50 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com, 
	sjolley.yp.pm@gmail.com
Subject: Invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 9am on the third Tuesday (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 02 Apr 2019 16:03:53 -0000
X-Groupsio-MsgNum: 44599
Content-Type: multipart/mixed; boundary="0000000000006d2c9e05858e48c4"

--0000000000006d2c9e05858e48c4
Content-Type: multipart/alternative; boundary="0000000000006d2c9b05858e48c2"

--0000000000006d2c9b05858e48c2
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

You have been invited to the following event.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712Technical Meeting Minutes at:  
https://drive.google.com/open?id=1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pgYP  
2.8 Planning Ideas at:  
https://drive.google.com/open?id=1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU
When: Monthly from 8am to 9am on the third Tuesday Pacific Time - Los  
Angeles
Where: Zoom Meeting: https://zoom.us/j/990892712
Calendar: yocto@yoctoproject.org
Who:
     * theyoctoproject@gmail.com - organizer
     * stephen.k.jolley@intel.com
     * yocto@yoctoproject.org
     * sjolley.yp.pm@gmail.com

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=MWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWI1ZDA3MTc2NTYxMTI4MjFlZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&ctz=America%2FLos_Angeles&hl=en&es=0

Invitation from Google Calendar: https://www.google.com/calendar/

You are receiving this courtesy email at the account yocto@yoctoproject.org  
because you are an attendee of this event.

To stop receiving future updates for this event, decline this event.  
Alternatively you can sign up for a Google account at  
https://www.google.com/calendar/ and control your notification settings for  
your entire calendar.

Forwarding this invitation could allow any recipient to modify your RSVP  
response. Learn more at  
https://support.google.com/calendar/answer/37135#forwarding

--0000000000006d2c9b05858e48c2
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
ar" content=3D"1ecajdkto3oaaghe0t5gvnsige"/><div style=3D"float:right;font-=
weight:bold;font-size:13px"> <a href=3D"https://www.google.com/calendar/eve=
nt?action=3DVIEW&amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9j=
dG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWI1ZDA3MT=
c2NTYxMTI4MjFlZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&amp;ctz=3DAmerica%2FLos_Angel=
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
ime=3D"20190416T150000Z"></time><time itemprop=3D"endDate" datetime=3D"2019=
0416T160000Z"></time>Monthly from 8am to 9am on the third Tuesday <span sty=
le=3D"color:#888">Pacific Time - Los Angeles</span></div></td></tr><tr><td =
style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;c=
olor:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"fo=
nt-style:normal">Where</i></div></td><td style=3D"padding-bottom:10px;font-=
family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div styl=
e=3D"text-indent:-1px"><span itemprop=3D"location" itemscope itemtype=3D"ht=
tp://schema.org/Place"><span itemprop=3D"name" class=3D"notranslate">Zoom M=
eeting: https://zoom.us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"ht=
tps://maps.google.com/maps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&am=
p;hl=3Den" style=3D"color:#20c;white-space:nowrap" target=3D"_blank" itempr=
op=3D"map">map</a>)</span></span></div></td></tr><tr><td style=3D"padding:0=
 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-sp=
ace:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">C=
alendar</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-inden=
t:-1px">yocto@yoctoproject.org</div></td></tr><tr><td style=3D"padding:0 1e=
m 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space=
:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Who<=
/i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif=
;font-size:13px;color:#222" valign=3D"top"><table cellspacing=3D"0" cellpad=
ding=3D"0"><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif=
;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><spa=
n style=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td=
 style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;co=
lor:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3=
em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/P=
erson"><span itemprop=3D"name" class=3D"notranslate">theyoctoproject@gmail.=
com</span><meta itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/><=
/span><span itemprop=3D"organizer" itemscope itemtype=3D"http://schema.org/=
Person"><meta itemprop=3D"name" content=3D"theyoctoproject@gmail.com"/><met=
a itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span st=
yle=3D"font-size:11px;color:#888"> - organizer</span></div></div></div></td=
></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font=
-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span sty=
le=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td styl=
e=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"=
><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person=
"><span itemprop=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com<=
/span><meta itemprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></sp=
an></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-fam=
ily:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"te=
xt-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;<=
/span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-ser=
if;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div sty=
le=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D=
"http://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">yo=
cto@yoctoproject.org</span><meta itemprop=3D"email" content=3D"yocto@yoctop=
roject.org"/></span></div></div></div></td></tr><tr><td style=3D"padding-ri=
ght:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"=
><div style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,mon=
ospace">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-fami=
ly:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1=
px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" item=
scope itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=
=3D"notranslate">sjolley.yp.pm@gmail.com</span><meta itemprop=3D"email" con=
tent=3D"sjolley.yp.pm@gmail.com"/></span></div></div></div></td></tr></tabl=
e></td></tr></table><div style=3D"padding-bottom:15px;font-family:Arial,San=
s-serif;font-size:13px;color:#222;white-space:pre-wrap!important;white-spac=
e:-moz-pre-wrap!important;white-space:-pre-wrap!important;white-space:-o-pr=
e-wrap!important;white-space:pre;word-wrap:break-word"><span>We encourage p=
eople attending the meeting to logon and announce themselves on the Yocto P=
roject IRC chancel during the meeting (optional):<br><br>Yocto IRC: <a href=
=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3Fc=
hannels%3D%23yocto&amp;sa=3DD&amp;ust=3D1554653030496000&amp;usg=3DAFQjCNGd=
UnOZxN3X96JgKBUiDP_dDH334g" target=3D"_blank">http://webchat.freenode.net/?=
channels=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.google.com/url?q=
=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-meetings%2F&amp;sa=
=3DD&amp;ust=3D1554653030496000&amp;usg=3DAFQjCNHuYvdXIxo_z286yU-zzTCwsulK7=
A" target=3D"_blank">https://www.yoctoproject.org/public-virtual-meetings/<=
/a><br><br>Bridge is with Zoom at: <a href=3D"https://www.google.com/url?q=
=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D1554653030496=
000&amp;usg=3DAFQjCNFBfVFV8E8cUTFb8HoSGaQha6nM3A" target=3D"_blank">https:/=
/zoom.us/j/990892712</a><br><br>Technical Meeting Minutes at: <a href=3D"ht=
tps://drive.google.com/open?id=3D1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9=
pg" target=3D"_blank">https://drive.google.com/open?id=3D1Y5IIuE-z0Ykdl-Dwu=
zUJh52flOZuhN_TSAfw2tdU9pg</a><br><br>YP 2.8 Planning Ideas at: <a href=3D"=
https://drive.google.com/open?id=3D1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJ=
GXbU" target=3D"_blank">https://drive.google.com/open?id=3D1CNEKA4d0eT6-e0h=
nS2pwi7xdZ5_t6smpZO2HbaJGXbU</a></span><meta itemprop=3D"description" conte=
nt=3D"We encourage people attending the meeting to logon and announce thems=
elves on the Yocto Project IRC chancel during the meeting (optional):Yocto =
IRC: http://webchat.freenode.net/?channels=3D#yoctoWiki: https://www.yoctop=
roject.org/public-virtual-meetings/Bridge is with Zoom at: https://zoom.us/=
j/990892712Technical Meeting Minutes at: https://drive.google.com/open?id=
=3D1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pgYP 2.8 Planning Ideas at: ht=
tps://drive.google.com/open?id=3D1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGX=
bU"/></div></div><p style=3D"color:#222;font-size:13px;margin:0"><span styl=
e=3D"color:#888">Going (yocto@yoctoproject.org)?&nbsp;&nbsp;&nbsp;</span><w=
br>All events in this series:&nbsp;&nbsp;&nbsp;<strong><span itemprop=3D"po=
tentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta it=
emprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Yes"/><sp=
an itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionH=
andler"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMeth=
od/GET"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&=
amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZ=
w&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWI1ZDA3MTc2NTY=
xMTI4MjFlZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&amp;ctz=3DAmerica%2FLos_Angeles&am=
p;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"u=
rl">Yes</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal">=
 - </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://s=
chema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schem=
a.org/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemscope itemtype=
=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"=
http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com=
/calendar/event?action=3DRESPOND&amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0NWd2bnNp=
Z2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm=
9qZWN0QGdtYWlsLmNvbWI1ZDA3MTc2NTYxMTI4MjFlZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&a=
mp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;=
white-space:nowrap" itemprop=3D"url">Maybe</a></span></span><span style=3D"=
margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"potentialact=
ion" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"=
attendance" content=3D"http://schema.org/RsvpAttendance/No"/><span itemprop=
=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><li=
nk itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a=
 href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DM=
WVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=
=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbWI1ZDA3MTc2NTYxMTI4MjFl=
ZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den=
&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">No</a=
></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www=
.google.com/calendar/event?action=3DVIEW&amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0=
NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZW=
N0QGdtYWlsLmNvbWI1ZDA3MTc2NTYxMTI4MjFlZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&amp;c=
tz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;whit=
e-space:nowrap" itemprop=3D"url">more options &raquo;</a></p></td></tr><tr>=
<td style=3D"background-color:#f6f6f6;color:#888;border-top:1px Solid #ccc;=
font-family:Arial,Sans-serif;font-size:11px"><p>Invitation from <a href=3D"=
https://www.google.com/calendar/" target=3D"_blank" style=3D"">Google Calen=
dar</a></p><p>You are receiving this courtesy email at the account yocto@yo=
ctoproject.org because you are an attendee of this event.</p><p>To stop rec=
eiving future updates for this event, decline this event. Alternatively you=
 can sign up for a Google account at https://www.google.com/calendar/ and c=
ontrol your notification settings for your entire calendar.</p><p>Forwardin=
g this invitation could allow any recipient to modify your RSVP response. <=
a href=3D"https://support.google.com/calendar/answer/37135#forwarding">Lear=
n More</a>.</p></td></tr></table></div></span></span>

--0000000000006d2c9b05858e48c2
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
DTSTART;TZID=America/Los_Angeles:20190416T080000
DTEND;TZID=America/Los_Angeles:20190416T090000
RRULE:FREQ=MONTHLY;BYDAY=3TU
DTSTAMP:20190402T160350Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:1ecajdkto3oaaghe0t5gvnsige@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@i
 ntel.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=sjolley.yp.pm@gmail.com;X-NUM-GUESTS=0:mailto:sjolley.yp.pm@gmail.c
 om
CREATED:20190402T160348Z
DESCRIPTION:We encourage people attending the meeting to logon and announce
  themselves on the Yocto Project IRC chancel during the meeting (optional):
 <br><br>Yocto IRC: <a href="http://webchat.freenode.net/?channels=#yocto" t
 arget="_blank">http://webchat.freenode.net/?channels=#yocto</a><br><br>Wiki
 : <a href="https://www.yoctoproject.org/public-virtual-meetings/">https://w
 ww.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is with Zoom
  at: <a href="https://zoom.us/j/990892712" target="_blank" id="ow341" __is_
 owner="true">https://zoom.us/j/990892712</a><br><br>Technical Meeting Minut
 es at: https://drive.google.com/open?id=1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSA
 fw2tdU9pg<br><br>YP 2.8 Planning Ideas at: https://drive.google.com/open?id
 =1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU\n\n-::~:~::~:~:~:~:~:~:~:~:~:
 ~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-\nPlease do no
 t edit this section of the description.\n\nView your event at https://www.g
 oogle.com/calendar/event?action=VIEW&eid=MWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2
 UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbW
 I1ZDA3MTc2NTYxMTI4MjFlZGJiOWNlMzkyYjRiNDI2ZjRkMjAwMjU&ctz=America%2FLos_Ang
 eles&hl=en&es=1.\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20190402T160348Z
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

--0000000000006d2c9b05858e48c2--

--0000000000006d2c9e05858e48c4
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwNDE2VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwNDE2VDA5MDAwMA0KUlJVTEU6RlJFUT1NT05U
SExZO0JZREFZPTNUVQ0KRFRTVEFNUDoyMDE5MDQwMlQxNjAzNTBaDQpPUkdBTklaRVI7Q049dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0K
VUlEOjFlY2FqZGt0bzNvYWFnaGUwdDVndm5zaWdlQGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JTVlA9
VFJVRQ0KIDtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVB
TDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD0NCiBUUlVF
O0NOPXN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzpzdGVw
aGVuLmsuam9sbGV5QGkNCiBudGVsLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj15
b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD0NCiBUUlVFO0NOPXNqb2xsZXkueXAucG1AZ21h
aWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzpzam9sbGV5LnlwLnBtQGdtYWlsLmMNCiBvbQ0K
Q1JFQVRFRDoyMDE5MDQwMlQxNjAzNDhaDQpERVNDUklQVElPTjpXZSBlbmNvdXJhZ2UgcGVvcGxl
IGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UNCiAgdGhlbXNlbHZl
cyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcgKG9w
dGlvbmFsKToNCiA8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0cDovL3dlYmNoYXQuZnJl
ZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG8iIHQNCiBhcmdldD0iX2JsYW5rIj5odHRwOi8vd2Vi
Y2hhdC5mcmVlbm9kZS5uZXQvP2NoYW5uZWxzPSN5b2N0bzwvYT48YnI+PGJyPldpa2kNCiA6IDxh
IGhyZWY9Imh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHVibGljLXZpcnR1YWwtbWVldGlu
Z3MvIj5odHRwczovL3cNCiB3dy55b2N0b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0dWFsLW1lZXRp
bmdzLzwvYT48YnI+PGJyPkJyaWRnZSBpcyB3aXRoIFpvb20NCiAgYXQ6IDxhIGhyZWY9Imh0dHBz
Oi8vem9vbS51cy9qLzk5MDg5MjcxMiIgdGFyZ2V0PSJfYmxhbmsiIGlkPSJvdzM0MSIgX19pc18N
CiBvd25lcj0idHJ1ZSI+aHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyPC9hPjxicj48YnI+VGVj
aG5pY2FsIE1lZXRpbmcgTWludXQNCiBlcyBhdDogaHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29w
ZW4/aWQ9MVk1SUl1RS16MFlrZGwtRHd1elVKaDUyZmxPWnVoTl9UU0ENCiBmdzJ0ZFU5cGc8YnI+
PGJyPllQIDIuOCBQbGFubmluZyBJZGVhcyBhdDogaHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29w
ZW4/aWQNCiA9MUNORUtBNGQwZVQ2LWUwaG5TMnB3aTd4ZFo1X3Q2c21wWk8ySGJhSkdYYlVcblxu
LTo6fjp+Ojp+On46fjp+On46fjp+On46fjoNCiB+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjo6fjp+OjotXG5QbGVhc2UgZG8gbm8NCiB0IGVkaXQg
dGhpcyBzZWN0aW9uIG9mIHRoZSBkZXNjcmlwdGlvbi5cblxuVmlldyB5b3VyIGV2ZW50IGF0IGh0
dHBzOi8vd3d3LmcNCiBvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9uPVZJRVcmZWlkPU1X
VmpZV3BrYTNSdk0yOWhZV2RvWlRCME5XZDJibk5wWjINCiBVZ2VXOWpkRzlBZVc5amRHOXdjbTlx
WldOMExtOXladyZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkdFlXbHNMbU52YlcNCiBJ
MVpEQTNNVGMyTlRZeE1USTRNakZsWkdKaU9XTmxNemt5WWpSaU5ESTJaalJrTWpBd01qVSZjdHo9
QW1lcmljYSUyRkxvc19BbmcNCiBlbGVzJmhsPWVuJmVzPTEuXG4tOjp+On46On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+On46fjp+
On46fjp+Ojp+On46Oi0NCkxBU1QtTU9ESUZJRUQ6MjAxOTA0MDJUMTYwMzQ4Wg0KTE9DQVRJT046
Wm9vbSBNZWV0aW5nOiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINClNFUVVFTkNFOjANClNU
QVRVUzpDT05GSVJNRUQNClNVTU1BUlk6WW9jdG8gUHJvamVjdCBUZWNobmljYWwgVGVhbSBNZWV0
aW5nDQpUUkFOU1A6T1BBUVVFDQpCRUdJTjpWQUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQ
VElPTjpUaGlzIGlzIGFuIGV2ZW50IHJlbWluZGVyDQpUUklHR0VSOi1QMERUMEgxNU0wUw0KRU5E
OlZBTEFSTQ0KRU5EOlZFVkVOVA0KRU5EOlZDQUxFTkRBUg0K

--0000000000006d2c9e05858e48c4--
