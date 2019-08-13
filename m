Return-Path: <3TR9TXQ8JBcg7vsC2q72352xsq7u0owz.q20C2q72C2q72352xsq7.25u@calendar-server.bounces.google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD071E00C81; Tue, 13 Aug 2019 13:36:31 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.74 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f74.google.com (mail-yw1-f74.google.com
	[209.85.161.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 057FFE00C78
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
Received: by mail-yw1-f74.google.com with SMTP id n139so80512602ywd.22
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=YwksZ78ffwYHta+l9sSXVB5E8edrarq9MQfERlKKqQY=;
	b=rDp/AGp/6AZAGGwwZsPWlS1owvJLVO2ggyVtzpa/yWQycjwkZxbkBF8po+UnqTzWTN
	Sbo7MaFmo8wQY1bpjqPSdXag4EzxNEbibyBTdXRtR3PXSi/qLgwO9R70EQ2wrDtMQrD0
	trytpTWT7/1kBICX08qXQQYoVoOmiy2Si3mq//xReaNhNDc3WDLLBKHxHqiqTDCWxym4
	0TnfFpoPLMGwKmL4AposPe248/gAbuEtWWpJFaNprVW4YxNouscg9+H+2nI7A9yixUI9
	qIF7ptDxCxlCFilYJ3FMIaKAl6sWAQSyFuP06gvV3kBqTkeKqtA3ozpiF82DBDjXX+JS
	8cuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:sender:auto-submitted:message-id:date:subject
	:from:to; bh=YwksZ78ffwYHta+l9sSXVB5E8edrarq9MQfERlKKqQY=;
	b=CdyjWP9Cne8wy75mtRmDugcvmypsxhlvPlrydEadriLlmX+mnIYAwnstZGXNEcHmod
	DBSE/bZs4DPlrKEIazYebw+4s/5yT5VoHzZiGDL7wF/uPSq+vAE/ZUkbvmrTRqbuJPcM
	Un3ILUiwXBnszX79BUSauXb4fbOEdJSrSKgE58JxA64lwG3NSlDPRG/Z3j+f92reTgLN
	gh+MOL1h9CldcanCbqgqt2kxgKS/HSfv9nOfu0nyGp7JVdrrbb67byzXMfhtDe2iCzB3
	A5+Fbya/ShOAZolm4pUJTSQKtUQ2yMLpTm2PW6KsZIWSUjampLpVdICHMVFiXisXd9B/
	bncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:sender:auto-submitted
	:message-id:date:subject:from:to;
	bh=YwksZ78ffwYHta+l9sSXVB5E8edrarq9MQfERlKKqQY=;
	b=NfeNJKQqfUSaQ0Otc+sBSyFGT6cMPgs1G4dnCxH0AP176L8yJmG1c3wrlaITjq7Ucg
	RsWkpjsrOld3wXkr4BN/FaKZY9T2Zn2C6xm9+p5a7NjOBKLhWAPE+Ubs4t9zTnXxK0WE
	8w9o9H6sssSjquie5S9QtuzeHsPHjgJcz/2JWOrEtLOmpbB8t0+L+wvZZBYy0w3iE60g
	J+mwSME5dVUBC+cM6wkn1apTsL5qbDtF10OMPbfCdx9q9ZDqb6yO+Q8H6IGCFkD3gTak
	9r7aFAcsL4U5cg/5VBkhYDvZfX5/9e5II0rXNJxwntdmwUZMc9qoaPXIIDPlGmVCBDWe
	xujw==
X-Gm-Message-State: APjAAAV2FtskzmpEeQX0hZJJSRTwZsLR6eOur0Jwq63roR3AkeYgdYc9
	b4JuuQ/if4GUcTTOnph/vTKtZvh6nB1I/Z9sjCxO
X-Google-Smtp-Source: APXvYqyq2pqHldK4+5NrAI0+/mDws8aBqYgdhpLmWuYa9oyOiG95ycAwi9GNnV0/UrAVPOihLut0BHLaCZkk8UELIdDS
MIME-Version: 1.0
X-Received: by 2002:a81:9917:: with SMTP id q23mr7010393ywg.312.1565728589230; 
	Tue, 13 Aug 2019 13:36:29 -0700 (PDT)
Sender: Google Calendar <calendar-notification@google.com>
Auto-Submitted: auto-generated
Message-ID: <0000000000006036e505900598d1@google.com>
Date: Tue, 13 Aug 2019 20:36:29 +0000
From: theyoctoproject@gmail.com
To: yocto@yoctoproject.org, stephen.k.jolley@intel.com
Subject: Updated invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday from Tue Jun 5, 2018 to Mon Aug 5 (PDT) (yocto@yoctoproject.org)
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
X-Groupsio-MsgNum: 46279
Content-Type: multipart/mixed; boundary="0000000000006036cb05900598d0"

--0000000000006036cb05900598d0
Content-Type: multipart/alternative; boundary="0000000000006036c805900598ce"

--0000000000006036c805900598ce
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

This event has been changed.

Title: Yocto Project Technical Team Meeting
We encourage people attending the meeting to logon and announce themselves  
on the Yocto Project IRC chancel during the meeting (optional):Yocto IRC:  
http://webchat.freenode.net/?channels=#yoctoWiki:  
https://www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom  
at: https://zoom.us/j/990892712
When: Monthly from 8am to 8:30am on the first Tuesday from Tue Jun 5, 2018  
to Mon Aug 5 Pacific Time - Los Angeles (changed)
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

Forwarding this invitation could allow any recipient to send a response to  
the organizer and be added to the guest list, or invite others regardless  
of their own invitation status, or to modify your RSVP. Learn more at  
https://support.google.com/calendar/answer/37135#forwarding

--0000000000006036c805900598ce
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
he first Tuesday from Tue Jun 5, 2018 to Mon Aug 5 <span style=3D"color:#88=
8">Pacific Time - Los Angeles</span></div></td></tr><tr><td style=3D"paddin=
g:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white=
-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal=
">Where</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sa=
ns-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-inden=
t:-1px"><span itemprop=3D"location" itemscope itemtype=3D"http://schema.org=
/Place"><span itemprop=3D"name" class=3D"notranslate">Zoom Meeting: https:/=
/zoom.us/j/990892712</span><span dir=3D"ltr"> (<a href=3D"https://www.googl=
e.com/maps/search/Zoom+Meeting:+https:%2F%2Fzoom.us%2Fj%2F990892712?hl=3Den=
" style=3D"color:#20c;white-space:nowrap" target=3D"_blank" itemprop=3D"map=
">map</a>)</span></span></div></td></tr><tr><td style=3D"padding:0 1em 10px=
 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowra=
p;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">Calendar</=
i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;=
font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px">y=
octo@yoctoproject.org</div></td></tr><tr><td style=3D"padding:0 1em 10px 0;=
font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;w=
idth:90px" valign=3D"top"><div><i style=3D"font-style:normal">Who</i></div>=
</td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-siz=
e:13px;color:#222" valign=3D"top"><table cellspacing=3D"0" cellpadding=3D"0=
"><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-siz=
e:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=
=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0">=
<span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"=
><span itemprop=3D"name" class=3D"notranslate">theyoctoproject@gmail.com</s=
pan><meta itemprop=3D"email" content=3D"theyoctoproject@gmail.com"/></span>=
<span itemprop=3D"organizer" itemscope itemtype=3D"http://schema.org/Person=
"><meta itemprop=3D"name" content=3D"theyoctoproject@gmail.com"/><meta item=
prop=3D"email" content=3D"theyoctoproject@gmail.com"/></span><span style=3D=
"font-size:11px;color:#888"> - organizer</span></div></div></div></td></tr>=
<tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:=
13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span style=3D"=
font-family:Courier New,monospace">&#x2022;</span></div></td><td style=3D"p=
adding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><=
div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span=
 itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Person"><spa=
n itemprop=3D"name" class=3D"notranslate">stephen.k.jolley@intel.com</span>=
<meta itemprop=3D"email" content=3D"stephen.k.jolley@intel.com"/></span></d=
iv></div></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-ind=
ent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</span>=
</div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;fon=
t-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"=
margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http:=
//schema.org/Person"><span itemprop=3D"name" class=3D"notranslate">yocto@yo=
ctoproject.org</span><meta itemprop=3D"email" content=3D"yocto@yoctoproject=
.org"/></span></div></div></div></td></tr></table></td></tr></table><div st=
yle=3D"padding-bottom:15px;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#222;white-space:pre-wrap!important;white-space:-moz-pre-wrap!important;w=
hite-space:-pre-wrap!important;white-space:-o-pre-wrap!important;white-spac=
e:pre;word-wrap:break-word"><span>We encourage people attending the meeting=
 to logon and announce themselves on the Yocto Project IRC chancel during t=
he meeting (optional):<br><br>Yocto IRC: <a href=3D"https://www.google.com/=
url?q=3Dhttp%3A%2F%2Fwebchat.freenode.net%2F%3Fchannels%3D%23yocto&amp;sa=
=3DD&amp;ust=3D1566160589206000&amp;usg=3DAFQjCNGeTTPbEmL0EtX1OCcqo3Y_9zhny=
w" target=3D"_blank">http://webchat.freenode.net/?channels=3D#yocto</a><br>=
<br>Wiki: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fwww.yocto=
project.org%2Fpublic-virtual-meetings%2F&amp;sa=3DD&amp;ust=3D1566160589207=
000&amp;usg=3DAFQjCNHCU01exsKK0QFbavj0BnS5yDonkg" target=3D"_blank">https:/=
/www.yoctoproject.org/public-virtual-meetings/</a><br><br>Bridge is with Zo=
om at: <a href=3D"https://www.google.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%=
2F990892712&amp;sa=3DD&amp;ust=3D1566160589207000&amp;usg=3DAFQjCNHh9ALVGCA=
7ck53B9jzrxR1mQhNOg" target=3D"_blank">https://zoom.us/j/990892712</a></spa=
n><meta itemprop=3D"description" content=3D"We encourage people attending t=
he meeting to logon and announce themselves on the Yocto Project IRC chance=
l during the meeting (optional):Yocto IRC: http://webchat.freenode.net/?cha=
nnels=3D#yoctoWiki: https://www.yoctoproject.org/public-virtual-meetings/Br=
idge is with Zoom at: https://zoom.us/j/990892712"/></div></div><p style=3D=
"color:#222;font-size:13px;margin:0"><span style=3D"color:#888">Going (yoct=
o@yoctoproject.org)?&nbsp;&nbsp;&nbsp;</span><wbr>All events in this series=
:&nbsp;&nbsp;&nbsp;<strong><span itemprop=3D"potentialaction" itemscope ite=
mtype=3D"http://schema.org/RsvpAction"><meta itemprop=3D"attendance" conten=
t=3D"http://schema.org/RsvpAttendance/Yes"/><span itemprop=3D"handler" item=
scope itemtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"me=
thod" href=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://=
www.google.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MG=
RhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjUj=
dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ=
3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=
=3D"color:#20c;white-space:nowrap" itemprop=3D"url">Yes</a></span></span><s=
pan style=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D=
"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta=
 itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Maybe"=
/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpAc=
tionHandler"><link itemprop=3D"method" href=3D"http://schema.org/HttpReques=
tMethod/GET"/><a href=3D"https://www.google.com/calendar/event?action=3DRES=
POND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0=
Lm9yZw&amp;rst=3D3&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYm=
NmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angel=
es&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=
=3D"url">Maybe</a></span></span><span style=3D"margin:0 0.4em;font-weight:n=
ormal"> - </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"h=
ttp://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http:=
//schema.org/RsvpAttendance/No"/><span itemprop=3D"handler" itemscope itemt=
ype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" href=
=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.google=
.com/calendar/event?action=3DRESPOND&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2=
czl1OWMgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D2&amp;tok=3DMjUjdGhleW9jdG=
9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZ=
DQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#=
20c;white-space:nowrap" itemprop=3D"url">No</a></span></span></strong>&nbsp=
;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://www.google.com/calendar/event?ac=
tion=3DVIEW&amp;eid=3DNjJrb24zam5pbjU3MGRhOGdndmN2czl1OWMgeW9jdG9AeW9jdG9wc=
m9qZWN0Lm9yZw&amp;tok=3DMjUjdGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbTcwZTEzYmNmOTE=
2M2Q0ZWI4YWI5ODA2NGZkYjg3ZmQ3YWZhYThkZDQ&amp;ctz=3DAmerica%2FLos_Angeles&am=
p;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"u=
rl">more options &raquo;</a></p></td></tr><tr><td style=3D"background-color=
:#f6f6f6;color:#888;border-top:1px Solid #ccc;font-family:Arial,Sans-serif;=
font-size:11px"><p>Invitation from <a href=3D"https://www.google.com/calend=
ar/" target=3D"_blank" style=3D"">Google Calendar</a></p><p>You are receivi=
ng this courtesy email at the account yocto@yoctoproject.org because you ar=
e an attendee of this event.</p><p>To stop receiving future updates for thi=
s event, decline this event. Alternatively you can sign up for a Google acc=
ount at https://www.google.com/calendar/ and control your notification sett=
ings for your entire calendar.</p><p>Forwarding this invitation could allow=
 any recipient to send a response to the organizer and be added to the gues=
t list, or invite others regardless of their own invitation status, or to m=
odify your RSVP. <a href=3D"https://support.google.com/calendar/answer/3713=
5#forwarding">Learn More</a>.</p></td></tr></table></div></span></span>

--0000000000006036c805900598ce
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
RRULE:FREQ=MONTHLY;UNTIL=20190205T075959Z;BYDAY=1TU
DTSTAMP:20190813T203629Z
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
X-MICROSOFT-CDO-OWNERAPPTID:-636228788
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
LAST-MODIFIED:20190813T203624Z
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

--0000000000006036c805900598ce--

--0000000000006036cb05900598d0
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
SExZO1VOVElMPTIwMTkwMjA1VDA3NTk1OVo7QllEQVk9MVRVDQpEVFNUQU1QOjIwMTkwODEzVDIw
MzYyOVoNCk9SR0FOSVpFUjtDTj10aGV5b2N0b3Byb2plY3RAZ21haWwuY29tOm1haWx0bzp0aGV5
b2N0b3Byb2plY3RAZ21haWwuY29tDQpVSUQ6NjJrb24zam5pbjU3MGRhOGdndmN2czl1OWNAZ29v
Z2xlLmNvbQ0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7
UEFSVFNUQVQ9QUNDRVBURUQ7UlNWUD1UUlVFDQogO0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5j
b207WC1OVU0tR1VFU1RTPTA6bWFpbHRvOnRoZXlvY3RvcHJvamVjdEBnbWFpbC5jDQogb20NCkFU
VEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFD
Q0VQVEVEO1JTVlA9VFJVRQ0KIDtDTj1zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtYLU5VTS1H
VUVTVFM9MDptYWlsdG86c3RlcGhlbi5rLmpvbGxleUBpbnRlbA0KIC5jb20NCkFUVEVOREVFO0NV
VFlQRT1JTkRJVklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JT
VlA9VFJVRQ0KIDtDTj15b2N0b0B5b2N0b3Byb2plY3Qub3JnO1gtTlVNLUdVRVNUUz0wOm1haWx0
bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpYLU1JQ1JPU09GVC1DRE8tT1dORVJBUFBUSUQ6LTYz
NjIyODc4OA0KQ1JFQVRFRDoyMDE4MDUyNFQxODE0MDZaDQpERVNDUklQVElPTjpXZSBlbmNvdXJh
Z2UgcGVvcGxlIGF0dGVuZGluZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UNCiAg
dGhlbXNlbHZlcyBvbiB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2hhbmNlbCBkdXJpbmcgdGhlIG1l
ZXRpbmcgKG9wdGlvbmFsKToNCiA8YnI+PGJyPllvY3RvIElSQzogPGEgaHJlZj0iaHR0cHM6Ly93
d3cuZ29vZ2xlLmNvbS91cmw/cT1odHRwJTNBJTJGJTJGd2ViY2gNCiBhdC5mcmVlbm9kZS5uZXQl
MkYlM0ZjaGFubmVscyUzRCUyM3lvY3RvJmFtcFw7c2E9RCZhbXBcO3VzZD0yJmFtcFw7dXNnPUFG
UWoNCiBDTkV2T0hWSWt4S0lyZlhXZlV4Q2NWUzVfOGtoNXciIHRhcmdldD0iX2JsYW5rIj5odHRw
Oi8vd2ViY2hhdC5mcmVlbm9kZS5uZXQNCiAvP2NoYW5uZWxzPSN5b2N0bzwvYT48YnI+PGJyPldp
a2k6IDxhIGhyZWY9Imh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvcHUNCiBibGljLXZpcnR1
YWwtbWVldGluZ3MvIj5odHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0dWFs
LW1lZXRpbmcNCiBzLzwvYT48YnI+PGJyPkJyaWRnZSBpcyB3aXRoIFpvb20gYXQ6IDxhIGhyZWY9
Imh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vdXJsP3ENCiA9aHR0cHMlM0ElMkYlMkZ6b29tLnVzJTJG
aiUyRjk5MDg5MjcxMiZhbXBcO3NhPUQmYW1wXDt1c2Q9MiZhbXBcO3VzZz1BRlFqQ04NCiBHMkY1
c1VwbS1TLVJoa3FOaFhWQmQzbTFfM0xBIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly96b29tLnVz
L2ovOTkwODkyNzEyPC8NCiBhPlxuXG4tOjp+On46On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+Ojp+On46Oi1c
blBsZWFzZSBkbyBub3QgZWRpdCB0aGlzIHNlY3Rpb24gb2YgdGhlIGRlc2NyaXB0aW9uLlxuXG4N
CiBWaWV3IHlvdXIgZXZlbnQgYXQgaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jYWxlbmRhci9ldmVu
dD9hY3Rpb249VklFVyZlaWQ9TmoNCiBKcmIyNHphbTVwYmpVM01HUmhPR2RuZG1OMmN6bDFPV01n
ZVc5amRHOUFlVzlqZEc5d2NtOXFaV04wTG05eVp3JnRvaz1NalVqZEcNCiBobGVXOWpkRzl3Y205
cVpXTjBRR2R0WVdsc0xtTnZiVGN3WlRFelltTm1PVEUyTTJRMFpXSTRZV0k1T0RBMk5HWmtZamcz
Wm1RM1kNCiBXWmhZVGhrWkRRJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MC5c
bi06On46fjo6fjp+On46fjp+On46fjp+On4NCiA6fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46fjp+On46On46fjo6LQ0KTEFTVC1NT0RJRklFRDoyMDE5MDgx
M1QyMDM2MjRaDQpMT0NBVElPTjpab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5
MjcxMg0KU0VRVUVOQ0U6MQ0KU1RBVFVTOkNPTkZJUk1FRA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0
IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcNClRSQU5TUDpPUEFRVUUNCkJFR0lOOlZBTEFSTQ0KQUNU
SU9OOkRJU1BMQVkNCkRFU0NSSVBUSU9OOlRoaXMgaXMgYW4gZXZlbnQgcmVtaW5kZXINClRSSUdH
RVI6LVAwRFQwSDE1TTBTDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--0000000000006036cb05900598d0--
