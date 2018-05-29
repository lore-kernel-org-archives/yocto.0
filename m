Return-Path: <3yZQNWw8JBQg1pm6wk1wxzwrmk1ouiqt.kwu6wk1w6wk1wxzwrmk1.wzo@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7092AE00BAF; Tue, 29 May 2018 10:58:35 -0700 (PDT)
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
	*      [209.85.213.202 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f202.google.com (mail-yb0-f202.google.com
	[209.85.213.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1098E00A26
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 10:58:33 -0700 (PDT)
Received: by mail-yb0-f202.google.com with SMTP id i132-v6so121070ybg.0
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 10:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=gaBI5gtqJpzs90wH2M004xBrjVqWVlDyA8xvOpGLFB4=;
	b=pPUns2VCUugc6o715859WoR8Oh+3Gm++tvDukUXQcl0hQxQcJPmedTPlVSfc0/k+9T
	2H6x7iYTTo/zvtjlMxvayJgLI0htxPOkiNRT6Nl7NZRRAzkMCsqSz2r/xMfKapWzJ1Sg
	ISaL/p41H5MR7vSRzA91SAFpZEN6kWn2xkx002vy8/1+ksgQmN5sPrz+fNXDk7/PE/nC
	8XpS4yyM4OarofHcgBRAV9ZHjInmyA/JWvpKXG/rkZsj1xJymkjhHXTqVHiVj0PavQGB
	SOqM4S0R6jRXI2vgoBc83Lm/HpLhpf2LgVK/Uu6nR48zsiGp2nb8v/bSHs/NQ4P3yUro
	9LKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=gaBI5gtqJpzs90wH2M004xBrjVqWVlDyA8xvOpGLFB4=;
	b=IW059Le7uLU+Fh/LsmbZ80UreFgD5lOOYGA4LTgivwEKVd+7wVuXykwUIscTaAo4rI
	Vx3Jaa47G3HCjW0r7PLPkRHl/UjV2W26OArx0u+E1tcCgt5kTcopVo6iePFpZmWLtCd5
	LPFryEnhW1eQ8Z2HcFBUZJ0trEQo5C3qFNvYvZRZWJfMsRnkO4xkJeqZcCMtUdUpDz2Y
	/XxenXr1YqHAdeMXcBsTHXOkTas+5g5nP2iPdYAkD94E2679f7SGKGqbIEnBqAXiTpDp
	3hRycrnlhszh+3c2gwGeInF4Lrt1MFKIdAXJShU2n9enVPPfmrQZg/glDaqAISXAVbyM
	w3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=gaBI5gtqJpzs90wH2M004xBrjVqWVlDyA8xvOpGLFB4=;
	b=O3DjpsNHeOFzNH5Zc4zK28pqAho/dvcUnGuZicL7xZQUUNY0gwb741Mtm7n7+PCLa+
	DF6LmwKot09cxuFBW8jezdzO2Gwa8KhMTp+dvGcxO8QZwlFTMjr8ogMW4o3sqLcT9pPq
	V9PBWvq7Hs2cPnCG+g/6IMhfTTFgz8MP5n1gIPwkLDt/bPR8MOL9xqNgghFWkk5uCW4/
	N8lGv7NnuYvB/QQWodHhphbcKloMFKjLxAXuFY0AqrwOlek4F9tZip5X2VDYG392bIJB
	3tRTpD11pcoy0ToNMXZzJS5QQ/6Mx/7591NDdmznrhA3Bt74fAt3QLVPzuScbdQ6F7sm
	m3Bg==
X-Gm-Message-State: ALKqPwfXM68UGBlxCgiJ4UL6IvPRAoSRVIPvokPM2VG/QRibd69soibJ
	qObPPUzxtjqSLK3352UsxXalU+JgzXD6ycTzMNAS
X-Google-Smtp-Source: AB8JxZqDlOcB4BV9BhDiKyjstEH0mdxmAZcMvXdFyeqcgtT76P00Un3LD5oIHVEjw0kDKq8u782DrMYMzHeYaV99Zjhg
MIME-Version: 1.0
X-Received: by 2002:a81:a241:: with SMTP id
	z62-v6mr4885604ywg.175.1527616713002; 
	Tue, 29 May 2018 10:58:33 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000881831056d5bfbf0@google.com>
Date: Tue, 29 May 2018 17:58:33 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday (PDT) (yocto@yoctoproject.org)
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
X-List-Received-Date: Tue, 29 May 2018 17:58:35 -0000
X-Groupsio-MsgNum: 41269
Content-Type: multipart/mixed; boundary="0000000000008817f9056d5bfbef"

--0000000000008817f9056d5bfbef
Content-Type: multipart/alternative; boundary="0000000000008817f6056d5bfbed"

--0000000000008817f6056d5bfbed
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

This event has been changed.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712 (changed)
When: Monthly from 8am to 8:30am on the first Tuesday Pacific Time
Where: Zoom Meeting: https://zoom.us/j/990892712
Calendar: yocto@yoctoproject.org
Who:
     * theyoctoproject@gmail.com - organizer
     * stephen.k.jolley@intel.com
     * yocto@yoctoproject.org

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&ctz=America%2FLos_Angeles&hl=en&es=0

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

--0000000000008817f6056d5bfbed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span style=3D"=
display:none" itemprop=3D"about" itemscope itemtype=3D"http://schema.org/Th=
ing/Paragraph"><meta itemprop=3D"description" content=3D"Description update=
d"/></span><span itemprop=3D"object" itemscope itemtype=3D"http://schema.or=
g/Event"><div style=3D""><table cellspacing=3D"0" cellpadding=3D"8" border=
=3D"0" summary=3D"" style=3D"width:100%;font-family:Arial,Sans-serif;border=
:1px Solid #ccc;border-width:1px 2px 2px 1px;background-color:#fff;"><tr><t=
d><meta itemprop=3D"eventStatus" content=3D"http://schema.org/EventReschedu=
led"/><h4 style=3D"padding:6px 0;margin:0 0 4px 0;font-family:Arial,Sans-se=
rif;font-size:13px;line-height:1.4;border:1px Solid #fff;background:#fff;co=
lor:#090;font-weight:normal"><strong>This event has been changed.</strong><=
/h4><div style=3D"padding:2px"><span itemprop=3D"publisher" itemscope itemt=
ype=3D"http://schema.org/Organization"><meta itemprop=3D"name" content=3D"G=
oogle Calendar"/></span><meta itemprop=3D"eventId/googleCalendar" content=
=3D"62kon3jnin570da8ggvcvs9u9c"/><div style=3D"float:right;font-weight:bold=
;font-size:13px"> <a href=3D"https://www.google.com/calendar/event?action=
=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZ=
WN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q=
0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
more details &raquo;</a><br></div><h3 style=3D"padding:0 0 6px 0;margin:0;f=
ont-family:Arial,Sans-serif;font-size:16px;font-weight:bold;color:#222"><sp=
an itemprop=3D"name">Yocto Project Technical Team Meeting</span></h3><table=
 cellpadding=3D"0" cellspacing=3D"0" border=3D"0" summary=3D"Event details"=
><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-si=
ze:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i st=
yle=3D"font-style:normal">When</i></div></td><td style=3D"padding-bottom:10=
px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><=
div style=3D"text-indent:-1px"><time itemprop=3D"startDate" datetime=3D"201=
80605T150000Z"></time><time itemprop=3D"endDate" datetime=3D"20180605T15300=
0Z"></time>Monthly from 8am to 8:30am on the first Tuesday <span style=3D"c=
olor:#888">Pacific Time</span></div></td></tr><tr><td style=3D"padding:0 1e=
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
ap:break-word"><strong style=3D"color:#080">Changed: </strong><span>We enco=
urage people attending the meeting to logon and announce themselves on the =
Yocto Project IRC chancel during the meeting (optional):<br><br>Yocto IRC: =
<a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net=
%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNEh9OQrs1YB=
cw7IAy-tvGf0ilzcGA" target=3D"_blank">http://webchat.freenode.net/?channels=
=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%=
3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;us=
d=3D2&amp;usg=3DAFQjCNGuv3-PMohkZImjCRVm8IQS5yY2iw" target=3D"_blank">https=
://www.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is with =
Zoom at: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2F=
j%2F990892712&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNHX_hluoIn561yqnT2i0scv=
-HJOEw" target=3D"_blank">https://zoom.us/j/990892712</a></span><meta itemp=
rop=3D"description" content=3D"We encourage people attending the meeting to=
 logon and announce themselves on the Yocto Project IRC chancel during the =
meeting (optional):Yocto IRC: http://webchat.freenode.net/?channels=3D#yoct=
oWiki: https://www.yoctoproject.org/public-virtual-meetings/Bridge is with =
Zoom at: https://zoom.us/j/990892712"/></div></div><p style=3D"color:#222;f=
ont-size:13px;margin:0"><span style=3D"color:#888">Going?&nbsp;&nbsp;&nbsp;=
</span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<strong><span itemp=
rop=3D"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"=
><meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/=
Yes"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/Ht=
tpActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/HttpRe=
questMethod/GET"/><a href=3D"https://www.google.com/calendar/event?action=
=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm=
9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcw=
ZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos=
_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" it=
emprop=3D"url">Yes</a></span></span><span style=3D"margin:0 0.4em;font-weig=
ht:normal"> - </span><span itemprop=3D"potentialaction" itemscope itemtype=
=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"=
http://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemsco=
pe itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"metho=
d" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www=
.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhO=
GdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGh=
leW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YW=
ZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"=
color:#20c;white-space:nowrap" itemprop=3D"url">Maybe</a></span></span><spa=
n style=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"p=
otentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta i=
temprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/No"/><sp=
an itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionH=
andler"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMeth=
od/GET"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&=
amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZ=
w&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE=
2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&am=
p;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"u=
rl">No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"ht=
tps://www.google.com/calendar/event?action=3DVIEW&amp;eid=3DNjJrb24zam5pbjU=
3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jd=
G9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThk=
ZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:=
#20c;white-space:nowrap" itemprop=3D"url">more options &raquo;</a></p></td>=
</tr><tr><td style=3D"background-color:#f6f6f6;color:#888;border-top:1px So=
lid #ccc;font-family:Arial,Sans-serif;font-size:11px"><p>Invitation from <a=
 href=3D"https://www.google.com/calendar/" target=3D"_blank" style=3D"">Goo=
gle Calendar</a></p><p>You are receiving this courtesy email at the account=
 yocto@yoctoproject.org because you are an attendee of this event.</p><p>To=
 stop receiving future updates for this event, decline this event. Alternat=
ively you can sign up for a Google account at https://www.google.com/calend=
ar/ and control your notification settings for your entire calendar.</p><p>=
Forwarding this invitation could allow any recipient to modify your RSVP re=
sponse. <a href=3D"https://support.google.com/calendar/answer/37135#forward=
ing">Learn More</a>.</p></td></tr></table></div></span></span>

--0000000000008817f6056d5bfbed
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
DTSTART;TZID=America/Los_Angeles:20180605T080000
DTEND;TZID=America/Los_Angeles:20180605T083000
RRULE:FREQ=MONTHLY;BYDAY=1TU
DTSTAMP:20180529T175832Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:62kon3jnin570da8ggvcvs9u9c@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@intel
 .com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
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
 Jrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjUjdG
 hleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3Y
 WZhYThkZDQ&ctz=America%2FLos_Angeles&hl=en&es=0.\n-::~:~::~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20180529T175832Z
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

--0000000000008817f6056d5bfbed--

--0000000000008817f9056d5bfbef
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
CkRUU1RBUlQ7VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgwNjA1VDA4MDAwMA0KRFRFTkQ7
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTgwNjA1VDA4MzAwMA0KUlJVTEU6RlJFUT1NT05U
SExZO0JZREFZPTFUVQ0KRFRTVEFNUDoyMDE4MDUyOVQxNzU4MzJaDQpPUkdBTklaRVI7Q049dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0K
VUlEOjYya29uM2puaW41NzBkYThnZ3ZjdnM5dTljQGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JTVlA9
VFJVRQ0KIDtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVB
TDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049
c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnN0ZXBoZW4u
ay5qb2xsZXlAaW50ZWwNCiAuY29tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJF
US1QQVJUSUNJUEFOVDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049eW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KQ1JFQVRFRDoyMDE4MDUyNFQxODE0MDZaDQpERVNDUklQVElPTjpXZSBlbmNvdXJhZ2UgcGVv
cGxlIGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UNCiAgdGhlbXNl
bHZlcyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcg
KG9wdGlvbmFsKToNCiA8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0cHM6Ly93d3cuZ29v
Z2xlLmNvbS91cmw/cT1odHRwJTNBJTJGJTJGd2ViY2gNCiBhdC5mcmVlbm9kZS5uZXQlMkYlM0Zj
aGFubmVscyUzRCUyM3lvY3RvJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7dXNnPUFGUWoNCiBD
TkV2T0hWSWt4S0lyZlhXZlV4Q2NWUzVfOGtoNXciIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vd2Vi
Y2hhdC5mcmVlbm9kZS5uZXQNCiAvP2NoYW5uZWxzPSN5b2N0bzwvYT48YnI+PGJyPldpa2k6IDxh
IGhyZWY9Imh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHUNCiBibGljLXZpcnR1YWwtbWVl
dGluZ3MvIj5odHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0dWFsLW1lZXRp
bmcNCiBzLzwvYT48YnI+PGJyPkJyaWRnZSBpcyB3aXRoIFpvb20gYXQ6IDxhIGhyZWY9Imh0dHBz
Oi8vd3d3Lmdvb2dsZS5jb20vdXJsP3ENCiA9aHR0cHMlM0ElMkYlMkZ6b29tLnVzJTJGaiUyRjk5
MDg5MjcxMiZhbXBcO3NhPUQmYW1wXDt1c2Q9MiZhbXBcO3VzZz1BRlFqQ04NCiBHMkY1c1VwbS1T
LVJoa3FOaFhWQmQzbTFfM0xBIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly96b29tLnVzL2ovOTkw
ODkyNzEyPC8NCiBhPlxuXG4tOjp+On46On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+Ojp+On46Oi1cblBsZWFz
ZSBkbyBub3QgZWRpdCB0aGlzIHNlY3Rpb24gb2YgdGhlIGRlc2NyaXB0aW9uLlxuXG4NCiBWaWV3
IHlvdXIgZXZlbnQgYXQgaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci9ldmVudD9hY3Rp
b249VklFVyZlaWQ9TmoNCiBKcmIyNHphbTVwYmpVM01HUmhPR2RuZG1OMmN6bDFPV01nZVc5amRH
OUFlVzlqZEc5d2NtOXFaV04wTG05eVp3JnRvaz1NalVqZEcNCiBobGVXOWpkRzl3Y205cVpXTjBR
R2R0WVdsc0xtTnZiVGN3WlRFelltTm1PVEUyTTJRMFpXSTRZV0k1T0RBMk5HWmtZamczWm1RM1kN
CiBXWmhZVGhrWkRRJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MC5cbi06On46
fjo6fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46On46fjo6LQ0KTEFTVC1NT0RJRklFRDoyMDE4MDUyOVQxNzU4
MzJaDQpMT0NBVElPTjpab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMg0K
U0VRVUVOQ0U6MQ0KU1RBVFVTOkNPTkZJUk1FRA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2hu
aWNhbCBUZWFtIE1lZXRpbmcNClRSQU5TUDpPUEFRVUUNCkJFR0lOOlZBTEFSTQ0KQUNUSU9OOkRJ
U1BMQVkNCkRFU0NSSVBUSU9OOlRoaXMgaXMgYW4gZXZlbnQgcmVtaW5kZXINClRSSUdHRVI6LVAw
RFQwSDE1TTBTDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--0000000000008817f9056d5bfbef--
