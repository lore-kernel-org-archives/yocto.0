Return-Path: <3djQHWw8JBdkOC9TJ7OJKMJE97OBH5DG.7JHTJ7OJTJ7OJKMJE97O.JMB@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C28AE006F1; Thu, 24 May 2018 14:54:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.202 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theyoctoproject[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80042E0044F
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:53:59 -0700 (PDT)
Received: by mail-yb0-f202.google.com with SMTP id i3-v6so1529549ybp.20
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=CjTX3ZqvLcwCs8TE2hGaXJYqfQruQyhapSl7MrjPInE=;
	b=PknFXisE5yCjKQlt15ajff87qp+jvU4qXD6HzE7xzeoLSLE3qdKmrFe16EPEU1uAO4
	cBzMnDAyCSuhaa7/3c8hpeQaHMDDO3f7Igfov+C3u7I+7z2O4A1l6LjKiVajdf81YAry
	9GIx9KEUBFy4/SeYXyQGXUfDcd14EIBZ6ggMwG7PyPjgEBvWLmmiUB8GI8hFCy/MrZr3
	B7iFbYU1NKc0xjVkES8VJM1fgl8UBqM9wkUEX09V8RTo/5fn67FG5kcQu3Nb4VfFzePn
	/3OIThUnPiY95rIZwd3Th7R3H8vLjk389HsEnywtg6frudSr8Xvt95lzNG7ZCOBSybF4
	bg7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=CjTX3ZqvLcwCs8TE2hGaXJYqfQruQyhapSl7MrjPInE=;
	b=hOFZ4+KqFssyln4apVbkJVYC5spWF87YHzKcPoIHu35/wB/gut1F0nyuaE+FAESjDP
	cYjsSNH7ltvWf5wLozIPCphlxCO/oSyGU5xvmTST/hBspHO7fC//Fr4ZzIX3yEGPffVK
	vxM1RuLf8EsuNcOkod1bektWCl9RiGyweBMH7bbJAurREds78izVoKjUkl3aWVBGQjPI
	L97moV+VEoNiNBHxksxIDESlr1rfhzTT5KiggtHVt+QClCOTQivt2R4O58shmDforOS6
	RmhdbmnVUty7gB/mkDYcsrhBxxwfsr6H9ye8gpDHNKPWJkAfnghqs6rdZou71PIgC08P
	AXow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=CjTX3ZqvLcwCs8TE2hGaXJYqfQruQyhapSl7MrjPInE=;
	b=H6INXy5xVZZQbPS63n1i9+dBgEYfN91ibYOL7zPh/uEKIjnKTCzuZpcaWdUTmRh8gO
	n5pQ4LtcMqav62y+wJB39P9iaERpwlbFuxx0b3mAAmzI0hZ1+m+WVAx6kFJ8iz9SqI8H
	Ehq8oWb716Upv9xAM2BdQOpeFETZjVLVMWlbjVGUs0F1EFHYrcByMRPUVw+4yJETQjMj
	B5n1/Y14INk4N9SV4yWrtU8cuvOWEN0H0LrTjXZl3jBYtQNe9L/i+fr+22lZfpnxtaH4
	AFfaYBF6OtTdiK9TVSXfxEgjet72dCi0bo7FDte6zDBfyuKRO3gjcKrhrgPWofQUXzx6
	H5Nw==
X-Gm-Message-State: ALKqPwewtviKmNubO9muhpCe86nvvWpNOGaeaBZReMxUGxYl/AFOTXpW
	8M5/ZJ3d6J/ElCdaLcWdFyTB9IWU2h+6Pv06vER0
X-Google-Smtp-Source: AB8JxZpeIHcb04QJrKZZbMZZoVEJDuXqr+IXXUdKpy/gMZoGLneIbTJhqAtAO4Y1dYASoyBQrzy+OVRDuNTryYIXrPcm
MIME-Version: 1.0
X-Received: by 2002:a81:9304:: with SMTP id k4-v6mr2616366ywg.83.1527198838385;
	Thu, 24 May 2018 14:53:58 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <000000000000437288056cfab061@google.com>
Date: Thu, 24 May 2018 21:53:58 +0000
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
X-List-Received-Date: Thu, 24 May 2018 21:54:01 -0000
X-Groupsio-MsgNum: 41237
Content-Type: multipart/mixed; boundary="000000000000437272056cfab060"

--000000000000437272056cfab060
Content-Type: multipart/alternative; boundary="00000000000043726b056cfab05e"

--00000000000043726b056cfab05e
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

This event has been changed.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=#yocto

Wiki: https://www.yoctoproject.org/monthly-technical-call/

Bridge is with Zoom at: https://zoom.us/j/990892712
When: Monthly from 8am to 8:30am on the first Tuesday Pacific Time (changed)
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

--00000000000043726b056cfab05e
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
570da8ggvcvs9u9c"/><div style=3D"float:right;font-weight:bold;font-size:13p=
x"> <a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp;eid=
=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;t=
ok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NG=
ZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D=
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
rop=3D"startDate" datetime=3D"20180605T150000Z"></time><time itemprop=3D"en=
dDate" datetime=3D"20180605T153000Z"></time>Monthly from 8am to 8:30am on t=
he first Tuesday <span style=3D"color:#888">Pacific Time</span></div></td><=
/tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font=
-size:13px;color:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i=
 style=3D"font-style:normal">Where</i></div></td><td style=3D"padding-botto=
m:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"to=
p"><div style=3D"text-indent:-1px"><span itemprop=3D"location" itemscope it=
emtype=3D"http://schema.org/Place"><span itemprop=3D"name" class=3D"notrans=
late">Zoom Meeting: https://zoom.us/j/990892712</span><span dir=3D"ltr"> (<=
a href=3D"https://maps.google.com/maps?q=3DZoom+Meeting:+https://zoom.us/j/=
990892712&amp;hl=3Den" style=3D"color:#20c;white-space:nowrap" target=3D"_b=
lank" itemprop=3D"map">map</a>)</span></span></div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">Calendar</i></div></td><td style=3D"padding-bottom:10px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div style=
=3D"text-indent:-1px">yocto@yoctoproject.org</div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">Who</i></div></td><td style=3D"padding-bottom:10px;font-family:=
Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><table cellspaci=
ng=3D"0" cellpadding=3D"0"><tr><td style=3D"padding-right:10px;font-family:=
Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-i=
ndent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</spa=
n></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;f=
ont-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=
=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"h=
ttp://schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">they=
octoproject@gmail.com</span><meta itemprop=3D"email" content=3D"theyoctopro=
ject@gmail.com"/></span><span itemprop=3D"organizer" itemscope itemtype=3D"=
http://schema.org/Person"><meta itemprop=3D"name" content=3D"theyoctoprojec=
t@gmail.com"/><meta itemprop=3D"email" content=3D"theyoctoproject@gmail.com=
"/></span><span style=3D"font-size:11px;color:#888"> - organizer</span></di=
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
=3D"notranslate">yocto@yoctoproject.org</span><meta itemprop=3D"email" cont=
ent=3D"yocto@yoctoproject.org"/></span></div></div></div></td></tr></table>=
</td></tr></table><div style=3D"padding-bottom:15px;font-family:Arial,Sans-=
serif;font-size:13px;color:#222;white-space:pre-wrap!important;white-space:=
-moz-pre-wrap!important;white-space:-pre-wrap!important;white-space:-o-pre-=
wrap!important;white-space:pre;word-wrap:break-word"><span>We encourage peo=
ple attending the meeting to logon and announce themselves on the Yocto Pro=
ject IRC chancel during the meeting (optional):<p>Yocto IRC: <a href=3D"htt=
ps://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels=
%3D%23yocto&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQjCNEh9OQrs1YBcw7IAy-tvGf0il=
zcGA" target=3D"_blank">http://webchat.freenode.net/?channels=3D#yocto</a><=
p>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yoctopr=
oject.org%2Fmonthly-technical-call%2F&amp;sa=3DD&amp;usd=3D2&amp;usg=3DAFQj=
CNGMy6HWSDQC3zS08bf7hZ0Lrg0XcA" target=3D"_blank">https://www.yoctoproject.=
org/monthly-technical-call/</a><p>Bridge is with Zoom at: <a href=3D"https:=
//www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&a=
mp;usd=3D2&amp;usg=3DAFQjCNHX_hluoIn561yqnT2i0scv-HJOEw" target=3D"_blank">=
https://zoom.us/j/990892712</a></p></p></p></span><meta itemprop=3D"descrip=
tion" content=3D"We encourage people attending the meeting to logon and ann=
ounce themselves on the Yocto Project IRC chancel during the meeting (optio=
nal):

Yocto IRC: http://webchat.freenode.net/?channels=3D#yocto

Wiki: https://www.yoctoproject.org/monthly-technical-call/

Bridge is with Zoom at: https://zoom.us/j/990892712"/></div></div><p style=
=3D"color:#222;font-size:13px;margin:0"><span style=3D"color:#888">Going?&n=
bsp;&nbsp;&nbsp;</span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<st=
rong><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://schema=
.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http://schema.org=
/RsvpAttendance/Yes"/><span itemprop=3D"handler" itemscope itemtype=3D"http=
://schema.org/HttpActionHandler"><link itemprop=3D"method" href=3D"http://s=
chema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calenda=
r/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9j=
dG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QG=
dtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=
=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-=
space:nowrap" itemprop=3D"url">Yes</a></span></span><span style=3D"margin:0=
 0.4em;font-weight:normal"> - </span><span itemprop=3D"potentialaction" ite=
mscope itemtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendan=
ce" content=3D"http://schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"h=
andler" itemscope itemtype=3D"http://schema.org/HttpActionHandler"><link it=
emprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=
=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb2=
4zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&am=
p;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA=
2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=
=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">Maybe</a></s=
pan></span><span style=3D"margin:0 0.4em;font-weight:normal"> - </span><spa=
n itemprop=3D"potentialaction" itemscope itemtype=3D"http://schema.org/Rsvp=
Action"><meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAtte=
ndance/No"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.=
org/HttpActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/=
HttpRequestMethod/GET"/><a href=3D"https://www.google.com/calendar/event?ac=
tion=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG=
9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNv=
bTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2=
FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap=
" itemprop=3D"url">No</a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wb=
r><a href=3D"https://www.google.com/calendar/event?action=3DVIEW&amp;eid=3D=
NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=
=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZk=
Yjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0"=
 style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">more options &raq=
uo;</a></p></td></tr><tr><td style=3D"background-color:#f6f6f6;color:#888;b=
order-top:1px Solid #ccc;font-family:Arial,Sans-serif;font-size:11px"><p>In=
vitation from <a href=3D"https://www.google.com/calendar/" target=3D"_blank=
" style=3D"">Google Calendar</a></p><p>You are receiving this courtesy emai=
l at the account yocto@yoctoproject.org because you are an attendee of this=
 event.</p><p>To stop receiving future updates for this event, decline this=
 event. Alternatively you can sign up for a Google account at https://www.g=
oogle.com/calendar/ and control your notification settings for your entire =
calendar.</p><p>Forwarding this invitation could allow any recipient to mod=
ify your RSVP response. <a href=3D"https://support.google.com/calendar/answ=
er/37135#forwarding">Learn More</a>.</p></td></tr></table></div></span></sp=
an>

--00000000000043726b056cfab05e
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
DTSTAMP:20180524T215358Z
ORGANIZER;CN=theyoctoproject@gmail.com:mailto:theyoctoproject@gmail.com
UID:62kon3jnin570da8ggvcvs9u9c@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@i
 ntel.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
CREATED:20180524T181406Z
DESCRIPTION:We encourage people attending the meeting to logon and announce
  themselves on the Yocto Project IRC chancel during the meeting (optional):
 \n\nYocto IRC: http://webchat.freenode.net/?channels=#yocto\n\nWiki: https:
 //www.yoctoproject.org/monthly-technical-call/\n\nBridge is with Zoom at: h
 ttps://zoom.us/j/990892712\n\n-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~
 :~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-\nPlease do not edit this section
  of the description.\n\nView your event at https://www.google.com/calendar/
 event?action=VIEW&eid=NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wc
 m9qZWN0Lm9yZw&tok=MjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0Z
 WI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&ctz=America%2FLos_Angeles&hl=en&es=0.\n-
 ::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:
 ~:~::~:~::-
LAST-MODIFIED:20180524T215358Z
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

--00000000000043726b056cfab05e--

--000000000000437272056cfab060
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
SExZO0JZREFZPTFUVQ0KRFRTVEFNUDoyMDE4MDUyNFQyMTUzNThaDQpPUkdBTklaRVI7Q049dGhl
eW9jdG9wcm9qZWN0QGdtYWlsLmNvbTptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0K
VUlEOjYya29uM2puaW41NzBkYThnZ3ZjdnM5dTljQGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQ
RT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JTVlA9
VFJVRQ0KIDtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp0aGV5b2N0b3Byb2plY3RAZ21haWwuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVB
TDtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD0NCiBUUlVF
O0NOPXN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzpzdGVw
aGVuLmsuam9sbGV5QGkNCiBudGVsLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj15
b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQpDUkVBVEVEOjIwMTgwNTI0VDE4MTQwNloNCkRFU0NSSVBUSU9OOldlIGVuY291
cmFnZSBwZW9wbGUgYXR0ZW5kaW5nIHRoZSBtZWV0aW5nIHRvIGxvZ29uIGFuZCBhbm5vdW5jZQ0K
ICB0aGVtc2VsdmVzIG9uIHRoZSBZb2N0byBQcm9qZWN0IElSQyBjaGFuY2VsIGR1cmluZyB0aGUg
bWVldGluZyAob3B0aW9uYWwpOg0KIFxuXG5Zb2N0byBJUkM6IGh0dHA6Ly93ZWJjaGF0LmZyZWVu
b2RlLm5ldC8/Y2hhbm5lbHM9I3lvY3RvXG5cbldpa2k6IGh0dHBzOg0KIC8vd3d3LnlvY3RvcHJv
amVjdC5vcmcvbW9udGhseS10ZWNobmljYWwtY2FsbC9cblxuQnJpZGdlIGlzIHdpdGggWm9vbSBh
dDogaA0KIHR0cHM6Ly96b29tLnVzL2ovOTkwODkyNzEyXG5cbi06On46fjo6fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fg0KIDp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46On46fjo6LVxuUGxlYXNlIGRvIG5vdCBlZGl0IHRoaXMgc2VjdGlvbg0KICBvZiB0aGUg
ZGVzY3JpcHRpb24uXG5cblZpZXcgeW91ciBldmVudCBhdCBodHRwczovL3d3dy5nb29nbGUuY29t
L2NhbGVuZGFyLw0KIGV2ZW50P2FjdGlvbj1WSUVXJmVpZD1OakpyYjI0emFtNXBialUzTUdSaE9H
ZG5kbU4yY3psMU9XTWdlVzlqZEc5QWVXOWpkRzl3Yw0KIG05cVpXTjBMbTl5WncmdG9rPU1qVWpk
R2hsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xzTG1OdmJUY3daVEV6WW1ObU9URTJNMlEwWg0KIFdJ
NFlXSTVPREEyTkdaa1lqZzNabVEzWVdaaFlUaGtaRFEmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxl
cyZobD1lbiZlcz0wLlxuLQ0KIDo6fjp+Ojp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+Og0KIH46fjo6fjp+OjotDQpMQVNU
LU1PRElGSUVEOjIwMTgwNTI0VDIxNTM1OFoNCkxPQ0FUSU9OOlpvb20gTWVldGluZzogaHR0cHM6
Ly96b29tLnVzL2ovOTkwODkyNzEyDQpTRVFVRU5DRToxDQpTVEFUVVM6Q09ORklSTUVEDQpTVU1N
QVJZOllvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZw0KVFJBTlNQOk9QQVFVRQ0K
QkVHSU46VkFMQVJNDQpBQ1RJT046RElTUExBWQ0KREVTQ1JJUFRJT046VGhpcyBpcyBhbiBldmVu
dCByZW1pbmRlcg0KVFJJR0dFUjotUDBEVDBIMTVNMFMNCkVORDpWQUxBUk0NCkVORDpWRVZFTlQN
CkVORDpWQ0FMRU5EQVINCg==

--000000000000437272056cfab060--
