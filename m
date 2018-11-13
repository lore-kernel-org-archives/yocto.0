Return-Path: <theyoctoproject@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C91AE00950; Tue, 13 Nov 2018 07:58:35 -0800 (PST)
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
	*      [209.85.161.73 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f73.google.com (mail-yw1-f73.google.com
	[209.85.161.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4944FE008E3
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 07:58:33 -0800 (PST)
Received: by mail-yw1-f73.google.com with SMTP id j69-v6so10535765ywb.19
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 07:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=xV/7qPTg5JZD7Kcp9o+LVLmCQXU3upozCLLAyqJ/+vQ=;
	b=pLnd5rsrhkhYgC7gKYo+nqU9urYTSztmDJ6gVmKxkuPC9WPcZKp/zmjMFb4vxZZKFa
	Df5kKM18yl+ivtrtTHozOAgv3TGRhIrvHfEhiJhw9EvdNe7aOFlYRlQumb8zDbJUDbA7
	lg3pX4V+51+NWlwRAJc5oof54176TMzu5pVvvZrrq8k5giT64Rq3cpxvXhfOFPLNcuxb
	3oqtzwY0BHQtZ5BSvk4aA6FTfnPQ7PQZkOILJ4zgvAyYaR68VL7KLnIQDqM/rPljc48s
	naLrVwPPKXb8GPu/dXKpnSuqdyHwYekJqqU9DaeElKHJRZZKzkVh5j2Qm3cMKxbeYngi
	ryuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:message-id:date:subject:from:to;
	bh=xV/7qPTg5JZD7Kcp9o+LVLmCQXU3upozCLLAyqJ/+vQ=;
	b=kytou1zkHLe2kByifgF7SqnPNP63B29iFasD58A0R9YlOH2N/LMIMoP2R9dJuBDHxy
	M6eA7e0NjUGQmrvabYaME6M9j3hfTQOpNT9ldDOfxewnTn7J8mFmj+7s1joRmuE7jRgF
	AyoV6R8x39m2LkobGPbHlooKGvDLfShZzegh4CusXcbFSoIr+wK2MgUyGUAN8GRfUZ5y
	fswDOF8BA+iDzSCdq+ZfnLJiplX47jUK2vPeVihlTq5oeeZDsqnqdJAtXfOVHMjRKHsu
	l4ouNp3VOg4DJvReCn4srbKS1ghweoSFaVy3AJFHD1HuznhUhgunozhPvriOUavPQhD8
	MiEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:message-id:date
	:subject:from:to;
	bh=xV/7qPTg5JZD7Kcp9o+LVLmCQXU3upozCLLAyqJ/+vQ=;
	b=LCKD6D4dyQgbi7hjLGEa5GgakVn3LLwMa4Cyu1HT03HKlpgn3y4/ViIw5yxgXQvqQF
	+tzRuQxffyvMz6kte3aHl8JGe/v19/C4dzPqYf5ARy/G2v9ssRG4MStfHw1v+VIIX7Ws
	P6YmG8f5q2hWVxUTh5iJLd57mfMFKlj+WnyVMH12WbdR7BwNHQ1KpFJPYtBd5UgXrSNH
	aRhAd0rSyEzZcXKC4U/dDVh90gP4giOK/TNYV0ODZu94gsu+KsUcSB+c5nmXlIHyCF/r
	lacMsD6PYzHetd9Sc6vRweAfKIJdkE4+dy/ZvO8Y/qDYLmEj7Rktlki686EHYZitqc30
	DfYw==
X-Gm-Message-State: AGRZ1gJu+tTnr+pOVGFGLTGVzJLjnyz2xZSIBVQ+6dSFxAM4vgX5x/uE
	1SZefAMT5EpDag56ejCiUKhwP+mHGVCSxLA4uDFG
X-Google-Smtp-Source: AJdET5eywpQFlAIMcva0LOoHuvTgye0qIeLPLJbZiHDnFEu9bFZYE9gmTCMrB9cND53c0U4ZjpAIVPdkCDeNvt2m0JX/
MIME-Version: 1.0
X-Received: by 2002:a25:d64c:: with SMTP id
	n73-v6mr2648114ybg.75.1542124712692; 
	Tue, 13 Nov 2018 07:58:32 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Message-ID: <000000000000b31139057a8de3ac@google.com>
Date: Tue, 13 Nov 2018 15:58:32 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 9am on the fourth Tuesday (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 13 Nov 2018 15:58:35 -0000
X-Groupsio-MsgNum: 43207
Content-Type: multipart/mixed; boundary="000000000000b31116057a8de3ab"

--000000000000b31116057a8de3ab
Content-Type: multipart/alternative; boundary="000000000000b31112057a8de3a9"

--000000000000b31112057a8de3a9
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

You have been invited to the following event.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712
When: Monthly from 8am to 9am on the fourth Tuesday Pacific Time - Los  
Angeles
Where: Zoom Meeting: https://zoom.us/j/990892712
Calendar: yocto@yoctoproject.org
Who:
     * theyoctoproject@gmail.com - organizer
     * stephen.k.jolley@intel.com
     * yocto@yoctoproject.org

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=MXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&ctz=America%2FLos_Angeles&hl=en&es=0

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

--000000000000b31112057a8de3a9
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
ar" content=3D"1ssihorlhf1ptl6nddo58hf7q6"/><div style=3D"float:right;font-=
weight:bold;font-size:13px"> <a href=3D"https://www.google.com/calendar/eve=
nt?action=3DVIEW&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9j=
dG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNz=
A0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angel=
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
ime=3D"20181127T160000Z"></time><time itemprop=3D"endDate" datetime=3D"2018=
1127T170000Z"></time>Monthly from 8am to 9am on the fourth Tuesday <span st=
yle=3D"color:#888">Pacific Time - Los Angeles</span></div></td></tr><tr><td=
 style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;=
color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"f=
ont-style:normal">Where</i></div></td><td style=3D"padding-bottom:10px;font=
-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div sty=
le=3D"text-indent:-1px"><span itemprop=3D"location" itemscope itemtype=3D"h=
ttp://schema.org/Place"><span itemprop=3D"name" class=3D"notranslate">Zoom =
Meeting: https://zoom.us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"h=
ttps://maps.google.com/maps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&a=
mp;hl=3Den" style=3D"color:#20c;white-space:nowrap" target=3D"_blank" itemp=
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
n"><span itemprop=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com=
</span><meta itemprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></s=
pan></div></div></div></td></tr><tr><td style=3D"padding-right:10px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"t=
ext-indent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;=
</span></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-se=
rif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div st=
yle=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=
=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate"=
>yocto@yoctoproject.org</span><meta itemprop=3D"email" content=3D"yocto@yoc=
toproject.org"/></span></div></div></div></td></tr></table></td></tr></tabl=
e><div style=3D"padding-bottom:15px;font-family:Arial,Sans-serif;font-size:=
13px;color:#222;white-space:pre-wrap!important;white-space:-moz-pre-wrap!im=
portant;white-space:-pre-wrap!important;white-space:-o-pre-wrap!important;w=
hite-space:pre;word-wrap:break-word"><span>We encourage people attending th=
e meeting to logon and announce themselves on the Yocto Project IRC chancel=
 during the meeting (optional):<br><br>Yocto IRC: <a href=3D"https://www.go=
ogle.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto=
&amp;sa=3DD&amp;ust=3D1542556712679000&amp;usg=3DAFQjCNEHcphTMokv0ElasxBNXE=
QWJ3A1UQ" target=3D"_blank">http://webchat.freenode.net/?channels=3D#yocto<=
/a><br><br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fww=
w.yoctoproject.org%2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D154255=
6712679000&amp;usg=3DAFQjCNHlZYzHXjXIVymzDYwDN3fWZU6skQ" target=3D"_blank">=
https://www.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is =
with Zoom at: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.=
us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D1542556712679000&amp;usg=3DAFQjCNHn=
bKSUcXl0E4ZCfDl3h-jxXM1-Jg" target=3D"_blank">https://zoom.us/j/990892712</=
a></span><meta itemprop=3D"description" content=3D"We encourage people atte=
nding the meeting to logon and announce themselves on the Yocto Project IRC=
 chancel during the meeting (optional):Yocto IRC: http://webchat.freenode.n=
et/?channels=3D#yoctoWiki: https://www.yoctoproject.org/public-virtual-meet=
ings/Bridge is with Zoom at: https://zoom.us/j/990892712"/></div></div><p s=
tyle=3D"color:#222;font-size:13px;margin:0"><span style=3D"color:#888">Goin=
g (yocto@yoctoproject.org)?&nbsp;&nbsp;&nbsp;</span><wbr>All events in this=
 series:&nbsp;&nbsp;&nbsp;<strong><span itemprop=3D"potentialaction" itemsc=
ope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance"=
 content=3D"http://schema.org/RsvpAttendance/Yes"/><span itemprop=3D"handle=
r" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link itempro=
p=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"h=
ttps://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DMXNzaWhvcmx=
oZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=
=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4=
ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0"=
 style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">Yes</a></span></s=
pan><span style=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemp=
rop=3D"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"=
><meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/=
Maybe"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/=
HttpActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/Http=
RequestMethod/GET"/><a href=3D"https://www.google.com/calendar/event?action=
=3DRESPOND&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm=
9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgx=
NWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos=
_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" it=
emprop=3D"url">Maybe</a></span></span><span style=3D"margin:0 0.4em;font-we=
ight:normal"> - </span><span itemprop=3D"potentialaction" itemscope itemtyp=
e=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D=
"http://schema.org/RsvpAttendance/No"/><span itemprop=3D"handler" itemscope=
 itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method"=
 href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.g=
oogle.com/calendar/event?action=3DRESPOND&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmR=
kbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdGhle=
W9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1=
MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"co=
lor:#20c;white-space:nowrap" itemprop=3D"url">No</a></span></span></strong>=
&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www.google.com/calendar/eve=
nt?action=3DVIEW&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9j=
dG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNz=
A0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angel=
es&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=
=3D"url">more options &raquo;</a></p></td></tr><tr><td style=3D"background-=
color:#f6f6f6;color:#888;border-top:1px Solid #ccc;font-family:Arial,Sans-s=
erif;font-size:11px"><p>Invitation from <a href=3D"https://www.google.com/c=
alendar/" target=3D"_blank" style=3D"">Google Calendar</a></p><p>You are re=
ceiving this courtesy email at the account yocto@yoctoproject.org because y=
ou are an attendee of this event.</p><p>To stop receiving future updates fo=
r this event, decline this event. Alternatively you can sign up for a Googl=
e account at https://www.google.com/calendar/ and control your notification=
 settings for your entire calendar.</p><p>Forwarding this invitation could =
allow any recipient to modify your RSVP response. <a href=3D"https://suppor=
t.google.com/calendar/answer/37135#forwarding">Learn More</a>.</p></td></tr=
></table></div></span></span>

--000000000000b31112057a8de3a9
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
DTSTART;TZID=America/Los_Angeles:20181127T080000
DTEND;TZID=America/Los_Angeles:20181127T090000
RRULE:FREQ=MONTHLY;BYDAY=4TU
DTSTAMP:20181113T155832Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:1ssihorlhf1ptl6nddo58hf7q6@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@i
 ntel.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20181113T155832Z
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
 View your event at https://www.google.com/calendar/event?action=VIEW&eid=MX
 NzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdG
 hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0M
 WE1MWZlN2Q&ctz=America%2FLos_Angeles&hl=en&es=1.\n-::~:~::~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20181113T155832Z
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

--000000000000b31112057a8de3a9--

--000000000000b31116057a8de3ab
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgxMTI3VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgxMTI3VDA5MDAwMA0KUlJVTEU6RlJFUT1NT05U
SExZO0JZREFZPTRUVQ0KRFRTVEFNUDoyMDE4MTExM1QxNTU4MzJaDQpPUkdBTklaRVI7Q049dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0K
VUlEOjFzc2lob3JsaGYxcHRsNm5kZG81OGhmN3E2QGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JTVlA9
VFJVRQ0KIDtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVB
TDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD0NCiBUUlVF
O0NOPXN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzpzdGVw
aGVuLmsuam9sbGV5QGkNCiBudGVsLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj15
b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQpDUkVBVEVEOjIwMTgxMTEzVDE1NTgzMloNCkRFU0NSSVBUSU9OOldlIGVuY291
cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIGFuZCBhbm5vdW5jZQ0K
ICB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFuY2VsIGR1cmluZyB0aGUg
bWVldGluZyAob3B0aW9uYWwpOg0KIDxicj48YnI+WW9jdG8gSVJDOiA8YSBocmVmPSJodHRwczov
L3d3dy5nb29nbGUuY29tL3VybD9xPWh0dHAlM0ElMkYlMkZ3ZWJjaA0KIGF0LmZyZWVub2RlLm5l
dCUyRiUzRmNoYW5uZWxzJTNEJTIzeW9jdG8mYW1wXDtzYT1EJmFtcFw7dXNkPTImYW1wXDt1c2c9
QUZRag0KIENORXZPSFZJa3hLSXJmWFdmVXhDY1ZTNV84a2g1dyIgdGFyZ2V0PSJfYmxhbmsiPmh0
dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldA0KIC8/Y2hhbm5lbHM9I3lvY3RvPC9hPjxicj48YnI+
V2lraTogPGEgaHJlZj0iaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdQ0KIGJsaWMtdmly
dHVhbC1tZWV0aW5ncy8iPmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHVibGljLXZpcnR1
YWwtbWVldGluZw0KIHMvPC9hPjxicj48YnI+QnJpZGdlIGlzIHdpdGggWm9vbSBhdDogPGEgaHJl
Zj0iaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS91cmw/cQ0KID1odHRwcyUzQSUyRiUyRnpvb20udXMl
MkZqJTJGOTkwODkyNzEyJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7dXNnPUFGUWpDTg0KIEcy
RjVzVXBtLVMtUmhrcU5oWFZCZDNtMV8zTEEiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL3pvb20u
dXMvai85OTA4OTI3MTI8Lw0KIGE+XG5cbi06On46fjo6fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46On46fjo6
LVxuUGxlYXNlIGRvIG5vdCBlZGl0IHRoaXMgc2VjdGlvbiBvZiB0aGUgZGVzY3JpcHRpb24uXG5c
bg0KIFZpZXcgeW91ciBldmVudCBhdCBodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyL2V2
ZW50P2FjdGlvbj1WSUVXJmVpZD1NWA0KIE56YVdodmNteG9aakZ3ZEd3MmJtUmtielU0YUdZM2NU
WWdlVzlqZEc5QWVXOWpkRzl3Y205cVpXTjBMbTl5WncmdG9rPU1qVWpkRw0KIGhsZVc5amRHOXdj
bTlxWldOMFFHZHRZV2xzTG1OdmJUZ3hOV1ZpTnpBME5XRTRZMk01WVRJd1lqSTJabUpoWmpnNFpt
RXdOekEwTQ0KIFdFMU1XWmxOMlEmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0x
LlxuLTo6fjp+Ojp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjo6fjp+OjotDQpMQVNULU1PRElGSUVEOjIwMTgx
MTEzVDE1NTgzMloNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkw
ODkyNzEyDQpTRVFVRU5DRTowDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1NQVJZOllvY3RvIFByb2pl
Y3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0KQkVHSU46VkFMQVJNDQpB
Q1RJT046RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVudCByZW1pbmRlcg0KVFJJ
R0dFUjotUDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQNCkVORDpWQ0FMRU5EQVIN
Cg==

--000000000000b31116057a8de3ab--
