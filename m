Return-Path: <3E38FXA8JBQ47vsC2q72352xsq7u0owz.q20C2q72C2q72352xsq7.25u@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB174E00C92; Mon,  3 Dec 2018 11:08:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
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
Received: from mail-yw1-f73.google.com (mail-yw1-f73.google.com
	[209.85.161.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8135E00C91
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2018 11:08:03 -0800 (PST)
Received: by mail-yw1-f73.google.com with SMTP id j81so9921681ywj.15
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2018 11:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=SWCsX+FOmV56d8n4ggWhNHKyCmlx6ob3omuPLNqECbg=;
	b=eByhI3pt0LuBr6I4dj7xS/aQ+A7D0gqxZTXaA0gNCBPumNYxAyM/ciESezJ7ZD32ZN
	XV3S6YLpFLXKrmSk9cmcruY7OJHKoGv1s0SF+YDRmyniR0jNh5Nz6PV/pBAvrlhVcc/s
	9PYMktxOtiMivkGjvIDf5j8ZssPuxRpm/85GK5rgP5wnMy7DV7cwUnH3VVnG2U5Ncdkv
	3sE58bSZ7xrACOUN7x/eUynITRihDVyF7IMoEHJOXn3PCM/QRLaEjHKQCqFEP30FmfOJ
	YBAk/IlUSrEAjTMz4nsBgzod2Urkm0jCmoOg3neboAJq6wtSSXmhNawFJjFeAbfEthvs
	e4hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=SWCsX+FOmV56d8n4ggWhNHKyCmlx6ob3omuPLNqECbg=;
	b=YE/+8xV0q6ce80c7Kqy2h17fhxCEC5C0FCfeivmj+bfu3mPfX/BrMPEi8tq/BHyV/C
	ydFSUcAiXPGE/U1wOtVN6ofy1u3EpoAYqk0ykEuPz8FFPttw2SkUGZ/r/tvrakpCr+HC
	enctzWXr0SqC76uL1ChxkvlIDE1GqlJsXXTIFYVqIABYS167AvY7UUcfquUxkB9mMSdn
	tEXKB0v6d2P9acGzAV6QkvgrYlGoMMh5eIKXHxeBlM3n8/m6qs9kXHZLbL5so6zBvZev
	PyPkLP0PnMCQLrGrG91GxOmHXXf4wXBuKT9fEBltJfwh+PhtS5yWQLlIBHDWHAJzVtsz
	aotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=SWCsX+FOmV56d8n4ggWhNHKyCmlx6ob3omuPLNqECbg=;
	b=o3PCMlJXXw1YlDAsx/XMnlRX4lX5ESGQsQzTp962HkRHGK52g7H80o7YKNbu+d+CYd
	l+XWVT61pZgd7ez4/grcqiwVvlCovNjM2fS8YXCZvDXu6l/cdVyYhiclu+RXcy65mSx2
	mb88JcdngzlYSMloBDJ8kg3nJKeEca0tsFZxEpKMB54SROxqea7dAeJZrouAyA+uFihV
	pwNCIrPExNHYj6mJRdLtIYe0J8KgIBCUwkt+E2jf0vC0V2Ck8lIjx4nBErJNaLwijZu1
	iLc77VwvmkMVAhCn0dGKqE0Y9KqEc8qH6T/H8P5luBHGFu8ySnw90t/CEDkpoYXyfCWO
	vAiQ==
X-Gm-Message-State: AA+aEWbvaedVoPTVA8k4ukANHBJ15bioJTfLO2XYfrFVfzPPbuEmQmz1
	9Or+5GLzPV5AkhyP6qi990IaboVkfxWJZjrhomrI
X-Google-Smtp-Source: AFSGD/U+n1Eq838Xiz8rEPLAA9V1utzsovWocwkrOE3m8JwFtmrSj59wRSAV6He+IoM0xWpU5Urw6aWfLAtrWcXujKsO
MIME-Version: 1.0
X-Received: by 2002:a0d:d8c4:: with SMTP id a187mr10096128ywe.19.1543864083298;
	Mon, 03 Dec 2018 11:08:03 -0800 (PST)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000004440c4057c22deda@google.com>
Date: Mon, 03 Dec 2018 19:08:03 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 9am on the fourth Tuesday from Tue Nov 27 to Mon Dec 24 (PST) (yocto@yoctoproject.org)
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
X-List-Received-Date: Mon, 03 Dec 2018 19:08:17 -0000
X-Groupsio-MsgNum: 43419
Content-Type: multipart/mixed; boundary="0000000000004440a3057c22ded9"

--0000000000004440a3057c22ded9
Content-Type: multipart/alternative; boundary="00000000000044409f057c22ded7"

--00000000000044409f057c22ded7
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

This event has been changed.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712
When: Monthly from 8am to 9am on the fourth Tuesday from Tue Nov 27 to Mon  
Dec 24 Pacific Time - Los Angeles (changed)
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

--00000000000044409f057c22ded7
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
ar"/></span><meta itemprop=3D"eventId/googleCalendar" content=3D"1ssihorlhf=
1ptl6nddo58hf7q6"/><div style=3D"float:right;font-weight:bold;font-size:13p=
x"> <a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp;eid=
=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;t=
ok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZj=
g4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D=
0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more details &r=
aquo;</a><br></div><h3 style=3D"padding:0 0 6px 0;margin:0;font-family:Aria=
l,Sans-serif;font-size:16px;font-weight:bold;color:#222"><span itemprop=3D"=
name">Yocto Project Technical Team Meeting</span></h3><table cellpadding=3D=
"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">When</i></div></td><td style=3D"padding-bottom:10px;font-family=
:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"t=
ext-indent:-1px"><strong style=3D"color:#080">Changed: </strong><time itemp=
rop=3D"startDate" datetime=3D"20181127T160000Z"></time><time itemprop=3D"en=
dDate" datetime=3D"20181127T170000Z"></time>Monthly from 8am to 9am on the =
fourth Tuesday from Tue Nov 27 to Mon Dec 24 <span style=3D"color:#888">Pac=
ific Time - Los Angeles</span></div></td></tr><tr><td style=3D"padding:0 1e=
m 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space=
:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Wher=
e</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-ser=
if;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px=
"><span itemprop=3D"location" itemscope itemtype=3D"http://schema.org/Place=
"><span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https://zoom.=
us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://maps.google.com=
/maps?q=3DZoom+Meeting:+https://zoom.us/j/990892712&amp;hl=3Den" style=3D"c=
olor:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</=
span></span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-fami=
ly:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px=
" valign=3D"top"><div><i style=3D"font-style:normal">Calendar</i></div></td=
><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13=
px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">yocto@yoctopr=
oject.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:=
Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px" v=
align=3D"top"><div><i style=3D"font-style:normal">Who</i></div></td><td sty=
le=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0"><tr><td st=
yle=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color=
:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-famil=
y:Courier New,monospace">&#x2022;</span></div></td><td style=3D"padding-rig=
ht:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=
=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=
=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><span itempro=
p=3D"name" class=3D"notranslate">theyoctoproject@gmail.com</span><meta item=
prop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span itemprop=
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
3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D=
1544296083280000&amp;usg=3DAFQjCNEs7FIvomFsp0LdESoOVGBI2_TROg" target=3D"_b=
lank">http://webchat.freenode.net/?channels=3D#yocto</a><br><br>Wiki: <a hr=
ef=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fp=
ublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D1544296083280000&amp;usg=3DA=
FQjCNHv_IaBjEhv0kQfa79-tJDqNezY7A" target=3D"_blank">https://www.yoctoproje=
ct.org/public-virtual-meetings/</a><br><br>Bridge is with Zoom at: <a href=
=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&am=
p;sa=3DD&amp;ust=3D1544296083280000&amp;usg=3DAFQjCNEkOaedw3E5pbN1Rm7vWqg5H=
jKcDA" target=3D"_blank">https://zoom.us/j/990892712</a></span><meta itempr=
op=3D"description" content=3D"We encourage people attending the meeting to =
logon and announce themselves on the Yocto Project IRC chancel during the m=
eeting (optional):Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto=
Wiki: https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Z=
oom at: https://zoom.us/j/990892712"/></div></div><p style=3D"color:#222;fo=
nt-size:13px;margin:0"><span style=3D"color:#888">Going (yocto@yoctoproject=
.org)?&nbsp;&nbsp;&nbsp;</span><wbr>All events in this series:&nbsp;&nbsp;&=
nbsp;<strong><span itemprop=3D"potentialaction" itemscope itemtype=3D"http:=
//schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://sc=
hema.org/RsvpAttendance/Yes"/><span itemprop=3D"handler" itemscope itemtype=
=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"=
http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com=
/calendar/event?action=3DRESPOND&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3=
cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm=
9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&a=
mp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;=
white-space:nowrap" itemprop=3D"url">Yes</a></span></span><span style=3D"ma=
rgin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"potentialactio=
n" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"at=
tendance" content=3D"http://schema.org/RsvpAttendance/Maybe"/><span itempro=
p=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><l=
ink itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><=
a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3D=
MXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=
=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIw=
YjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den=
&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">Maybe=
</a></span></span><span style=3D"margin:0 0.4em;font-weight:normal"> - </sp=
an><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schema.o=
rg/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.org/R=
svpAttendance/No"/><span itemprop=3D"handler" itemscope itemtype=3D"http://=
schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http://sche=
ma.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calendar/e=
vent?action=3DRESPOND&amp;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9=
AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtY=
WlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2ZmJhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAm=
erica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space=
:nowrap" itemprop=3D"url">No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&n=
bsp;<wbr><a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp=
;eid=3DMXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTYgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&a=
mp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTgxNWViNzA0NWE4Y2M5YTIwYjI2Zm=
JhZjg4ZmEwNzA0MWE1MWZlN2Q&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;e=
s=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more option=
s &raquo;</a></p></td></tr><tr><td style=3D"background-color:#f6f6f6;color:=
#888;border-top:1px Solid #ccc;font-family:Arial,Sans-serif;font-size:11px"=
><p>Invitation from <a href=3D"https://www.google.com/calendar/" target=3D"=
_blank" style=3D"">Google Calendar</a></p><p>You are receiving this courtes=
y email at the account yocto@yoctoproject.org because you are an attendee o=
f this event.</p><p>To stop receiving future updates for this event, declin=
e this event. Alternatively you can sign up for a Google account at https:/=
/www.google.com/calendar/ and control your notification settings for your e=
ntire calendar.</p><p>Forwarding this invitation could allow any recipient =
to modify your RSVP response. <a href=3D"https://support.google.com/calenda=
r/answer/37135#forwarding">Learn More</a>.</p></td></tr></table></div></spa=
n></span>

--00000000000044409f057c22ded7
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
RRULE:FREQ=MONTHLY;UNTIL=20181225T075959Z;BYDAY=4TU
DTSTAMP:20181203T190803Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:1ssihorlhf1ptl6nddo58hf7q6@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@intel
 .com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
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
 WE1MWZlN2Q&ctz=America%2FLos_Angeles&hl=en&es=0.\n-::~:~::~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20181203T190803Z
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

--00000000000044409f057c22ded7--

--0000000000004440a3057c22ded9
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
SExZO1VOVElMPTIwMTgxMjI1VDA3NTk1OVo7QllEQVk9NFRVDQpEVFNUQU1QOjIwMTgxMjAzVDE5
MDgwM1oNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0aGV5
b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6MXNzaWhvcmxoZjFwdGw2bmRkbzU4aGY3cTZAZ29v
Z2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9QUNDRVBURUQ7UlNWUD1UUlVFDQogO0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5j
b207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jDQogb20NCkFU
VEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFD
Q0VQVEVEO1JTVlA9VFJVRQ0KIDtDTj1zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtYLU5VTS1H
VUVTVFM9MDptYWlsdG86c3RlcGhlbi5rLmpvbGxleUBpbnRlbA0KIC5jb20NCkFUVEVOREVFO0NV
VFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JT
VlA9VFJVRQ0KIDtDTj15b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpDUkVBVEVEOjIwMTgxMTEzVDE1NTgzMloNCkRFU0NS
SVBUSU9OOldlIGVuY291cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29u
IGFuZCBhbm5vdW5jZQ0KICB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFu
Y2VsIGR1cmluZyB0aGUgbWVldGluZyAob3B0aW9uYWwpOg0KIDxicj48YnI+WW9jdG8gSVJDOiA8
YSBocmVmPSJodHRwczovL3d3dy5nb29nbGUuY29tL3VybD9xPWh0dHAlM0ElMkYlMkZ3ZWJjaA0K
IGF0LmZyZWVub2RlLm5ldCUyRiUzRmNoYW5uZWxzJTNEJTIzeW9jdG8mYW1wXDtzYT1EJmFtcFw7
dXNkPTImYW1wXDt1c2c9QUZRag0KIENORXZPSFZJa3hLSXJmWFdmVXhDY1ZTNV84a2g1dyIgdGFy
Z2V0PSJfYmxhbmsiPmh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5ldA0KIC8/Y2hhbm5lbHM9I3lv
Y3RvPC9hPjxicj48YnI+V2lraTogPGEgaHJlZj0iaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9y
Zy9wdQ0KIGJsaWMtdmlydHVhbC1tZWV0aW5ncy8iPmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5v
cmcvcHVibGljLXZpcnR1YWwtbWVldGluZw0KIHMvPC9hPjxicj48YnI+QnJpZGdlIGlzIHdpdGgg
Wm9vbSBhdDogPGEgaHJlZj0iaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS91cmw/cQ0KID1odHRwcyUz
QSUyRiUyRnpvb20udXMlMkZqJTJGOTkwODkyNzEyJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7
dXNnPUFGUWpDTg0KIEcyRjVzVXBtLVMtUmhrcU5oWFZCZDNtMV8zTEEiIHRhcmdldD0iX2JsYW5r
Ij5odHRwczovL3pvb20udXMvai85OTA4OTI3MTI8Lw0KIGE+XG5cbi06On46fjo6fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fg0KIDp+
On46fjp+On46On46fjo6LVxuUGxlYXNlIGRvIG5vdCBlZGl0IHRoaXMgc2VjdGlvbiBvZiB0aGUg
ZGVzY3JpcHRpb24uXG5cbg0KIFZpZXcgeW91ciBldmVudCBhdCBodHRwczovL3d3dy5nb29nbGUu
Y29tL2NhbGVuZGFyL2V2ZW50P2FjdGlvbj1WSUVXJmVpZD1NWA0KIE56YVdodmNteG9aakZ3ZEd3
MmJtUmtielU0YUdZM2NUWWdlVzlqZEc5QWVXOWpkRzl3Y205cVpXTjBMbTl5WncmdG9rPU1qVWpk
Rw0KIGhsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1OdmJUZ3hOV1ZpTnpBME5XRTRZMk01WVRJ
d1lqSTJabUpoWmpnNFptRXdOekEwTQ0KIFdFMU1XWmxOMlEmY3R6PUFtZXJpY2ElMkZMb3NfQW5n
ZWxlcyZobD1lbiZlcz0wLlxuLTo6fjp+Ojp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjo6fjp+OjotDQpMQVNU
LU1PRElGSUVEOjIwMTgxMjAzVDE5MDgwM1oNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6
Ly96b29tLnVzL2ovOTkwODkyNzEyDQpTRVFVRU5DRTowDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1N
QVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0K
QkVHSU46VkFMQVJNDQpBQ1RJT046RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVu
dCByZW1pbmRlcg0KVFJJR0dFUjotUDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQN
CkVORDpWQ0FMRU5EQVINCg==

--0000000000004440a3057c22ded9--
