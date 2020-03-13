Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2120.1584131045412725172
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 13:24:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20161025 header.b=D2uUD6xM;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14090E01841; Fri, 13 Mar 2020 13:24:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.74 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f74.google.com (mail-ua1-f74.google.com [209.85.222.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BF0E0183B
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 13:24:00 -0700 (PDT)
Received: by mail-ua1-f74.google.com with SMTP id f19so2088209uaa.1
        for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 13:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:reply-to:sender:message-id:date:subject:from:to;
        bh=BmgQfnmRWWOaZ+IsVpwP2XsLO39Xs9+sk2gdpPNqmKs=;
        b=D2uUD6xMhQa5WdEiqKOzCEmcfCFFrK3nW3lWXGveMunOeHNYfhJqHejeodSigSFL1v
         /tU22cmvjasEV6meZNCJ1qTyeslSoHCCcJ7fVQEBtKGoiIOcYoKDJDNUT/8+mJg+0Clc
         +1nXxt1EOwOBHjUwiHW8FTJ0vL5rgC7lZFvPY7Ig0ceoTNeN/7o1gYoq/fa7hr+BF9CU
         6MKNH1NUXDszLBDKTx0G5sMAd18c9aadnO0c+AJHZFKuGhBqrTWlDpNS0Qnv7otiBjTx
         7fCDACHGxGF1jx5PxfZibn8gqN/sCTbfecbnfrCy8MZDng+OcR/zYagsn/xii79WjQxU
         Xn5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:reply-to:sender:message-id:date:subject:from:to;
        bh=BmgQfnmRWWOaZ+IsVpwP2XsLO39Xs9+sk2gdpPNqmKs=;
        b=uInTamBRUUEjqhy4ubdMKPQQI/csOwIuS6g9kzG74huQ7w4HWckCqWgbs4acwhRXHO
         wcEx6J/2zSMZqzIQmzNjDxGRamrEVoxI6ZOdiKZ2Bn/4tWucZQ2DaWE6On1/6Zv9uzSK
         fksyTZ5P9DuHDZylNSEIET1Nym390kfY/4J5bBbdRwUC4nvYktsqIg4uPQnF/h3I61OH
         im72oOyChd/FwrQuZZYjwtBmvnFktSCbJRZKKawMear4xLNlCtmdzARvmm1caiZRS/nX
         Up3jprMpgBM9z9aiY1Tg77FovV9OClT1rGNPlxxhNXkkvUOryni0pssD5hPFfzx8kOiB
         Qejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:sender:message-id:date
         :subject:from:to;
        bh=BmgQfnmRWWOaZ+IsVpwP2XsLO39Xs9+sk2gdpPNqmKs=;
        b=AmGWeWgO5V4g52IChn5YcJfyGyeF6DD3OV0KMmUkhs3pPZjuS7hq1iSpwRS33GIVR/
         uLV1PrFjaR78/BiQhvoyiL9FYwFcEPw5Mt/J9YNEcp1YuclB1fvqAIguSCUG34rZ3Za0
         rMKuOUFRCSmPzLl+7diDRnRIrU8TCG3l0ExpnX6Om9l57ImH3MFqs5KAas7Tm0dIRumQ
         73HuoBk4v/hDcRdazaqC+NcjUWtQ5eIwW4b2NZS9YPrPHO8nA2ZMKtVS+bwBvM/VIFex
         6EgGmzRVOjPyJk2OoXa/zPk+6HPcuQhOiKuujdlbo/1c4/TJV9RBmsmvtfY3ONjRULvv
         nraw==
X-Gm-Message-State: ANhLgQ1PEdfIy3XKO79kywr1NDAtjR3Nms13vN7xx564HfJXq4RgXjba
	plFI91veYgzTc3//yjwhiDUawUQjStFQeycKTxHgv4M=
X-Google-Smtp-Source: ADFU+vvWkGxJ4pilJCWTpP+2jTIhF3MdOT5yd2LYGaFILrm/KDbJs49laot/saVWABz0zq1avlusOIM8Ge4In2UrqAxf
MIME-Version: 1.0
X-Received: by 2002:a67:f641:: with SMTP id u1mr10588197vso.86.1584131039795;
 Fri, 13 Mar 2020 13:23:59 -0700 (PDT)
Reply-To: Rudolf Streif <rudolf.streif@ibeeto.com>
Sender: Google Calendar <calendar-notification@google.com>
Message-ID: <000000000000e7b00c05a0c23fc5@google.com>
Date: Fri, 13 Mar 2020 20:23:59 +0000
Subject: Invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 9am on the third Tuesday (PDT) (yocto@yoctoproject.org)
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
To: yocto@yoctoproject.org, theyoctoproject@gmail.com, 
	Rudolf J Streif <rudolf.streif@gmail.com>, stephen.k.jolley@intel.com, 
	sjolley.yp.pm@gmail.com
X-Groupsio-MsgNum: 48760
Content-Type: multipart/mixed; boundary="000000000000e7afec05a0c23fc4"

--000000000000e7afec05a0c23fc4
Content-Type: multipart/alternative; boundary="000000000000e7afea05a0c23fc2"

--000000000000e7afea05a0c23fc2
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

Joining info: Join Hangouts Meet
https://meet.google.com/aos-pkma-ngz

Join by phone
+1 414-439-0065 (PIN: 843669626)

More phone numbers: https://tel.meet/aos-pkma-ngz?pin=3279187552951&hs=0

Calendar: yocto@yoctoproject.org
Who:
     * Rudolf Streif - organizer
     * theyoctoproject@gmail.com
     * Rudolf J Streif
     * stephen.k.jolley@intel.com
     * yocto@yoctoproject.org
     * sjolley.yp.pm@gmail.com

Event details:  
https://www.google.com/calendar/event?action=VIEW&eid=MWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=MjQjcnVkb2xmLnN0cmVpZkBpYmVldG8uY29tMWY5MWQyMmI5OGFkMGE2NTMxYjFiNDE5ZDg2MTM4ZjkwMThhZDU5YQ&ctz=America%2FLos_Angeles&hl=en&es=0

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

--000000000000e7afea05a0c23fc2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span itemscope itemtype=3D"http://schema.org/InformAction"><span style=3D"=
display:none" itemprop=3D"about" itemscope itemtype=3D"http://schema.org/Pe=
rson"><meta itemprop=3D"description" content=3D"Invitation from Rudolf Stre=
if"/></span><span itemprop=3D"object" itemscope itemtype=3D"http://schema.o=
rg/Event"><div style=3D""><table cellspacing=3D"0" cellpadding=3D"8" border=
=3D"0" summary=3D"" style=3D"width:100%;font-family:Arial,Sans-serif;border=
:1px Solid #ccc;border-width:1px 2px 2px 1px;background-color:#fff;"><tr><t=
d><meta itemprop=3D"eventStatus" content=3D"http://schema.org/EventSchedule=
d"/><h4 style=3D"padding:6px 0;margin:0 0 4px 0;font-family:Arial,Sans-seri=
f;font-size:13px;line-height:1.4;border:1px Solid #fff;background:#fff;colo=
r:#090;font-weight:normal"><strong>You have been invited to the following e=
vent.</strong></h4><div style=3D"padding:2px"><span itemprop=3D"publisher" =
itemscope itemtype=3D"http://schema.org/Organization"><meta itemprop=3D"nam=
e" content=3D"Google Calendar"/></span><meta itemprop=3D"eventId/googleCale=
ndar" content=3D"1ecajdkto3oaaghe0t5gvnsige"/><h3 style=3D"padding:0 0 6px =
0;margin:0;font-family:Arial,Sans-serif;font-size:16px;font-weight:bold;col=
or:#222"><span itemprop=3D"name">Yocto Project Technical Team Meeting</span=
></h3><table style=3D"display:inline-table" cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" summary=3D"Event details"><tr><td style=3D"padding:0 1e=
m 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space=
:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-style:normal">When=
</i></div></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-seri=
f;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"=
><time itemprop=3D"startDate" datetime=3D"20190416T150000Z"></time><time it=
emprop=3D"endDate" datetime=3D"20190416T160000Z"></time>Monthly from 8am to=
 9am on the third Tuesday <span style=3D"color:#888">Pacific Time - Los Ang=
eles</span></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-famil=
y:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90px"=
 valign=3D"top"><div><i style=3D"font-style:normal">Where</i></div></td><td=
 style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;c=
olor:#222" valign=3D"top"><div style=3D"text-indent:-1px"><span itemprop=3D=
"location" itemscope itemtype=3D"http://schema.org/Place"><span itemprop=3D=
"name" class=3D"notranslate">Zoom Meeting: https://zoom.us/j/990892712</spa=
n><span dir=3D"ltr"> (<a href=3D"https://www.google.com/maps/search/Zoom+Me=
eting:+https:%2F%2Fzoom.us%2Fj%2F990892712?hl=3Den" style=3D"color:#20c;whi=
te-space:nowrap" target=3D"_blank" itemprop=3D"map">map</a>)</span></span><=
/div></td></tr><tr><td style=3D"padding:0 1em 4px 0;font-family:Arial,Sans-=
serif;font-size:13px;color:#888;white-space:nowrap;width:90px" valign=3D"to=
p"><div><i style=3D"font-style:normal">Joining info</i></div></td><td style=
=3D"padding-bottom:4px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22" valign=3D"top"><div style=3D"text-indent:-1px">Join Hangouts Meet</div>=
</td></tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-seri=
f;font-size:13px;color:#888;white-space:nowrap;width:90px"></td><td style=
=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#=
222" valign=3D"top"><div style=3D"text-indent:-1px"><div style=3D"text-inde=
nt:-1px"><span itemprop=3D"potentialaction" itemscope itemtype=3D"http://sc=
hema.org/JoinAction"><span itemprop=3D"name" content=3D"meet.google.com/aos=
-pkma-ngz"><span itemprop=3D"target" itemscope itemtype=3D"http://schema.or=
g/EntryPoint"><span itemprop=3D"url" content=3D"https://meet.google.com/aos=
-pkma-ngz"><span itemprop=3D"httpMethod" content=3D"GET"><a href=3D"https:/=
/meet.google.com/aos-pkma-ngz" style=3D"color:#20c;white-space:nowrap" targ=
et=3D"_blank">meet.google.com/aos-pkma-ngz</a></span></span></span></span><=
/span> </div></div></td></tr><tr><td style=3D"padding:0 1em 10px 0;font-fam=
ily:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90p=
x"></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font-=
size:13px;color:#222" valign=3D"top"></td></tr><td style=3D"padding:0 1em 4=
px 0;font-family:Arial,Sans-serif;font-size:13px;color:#888;white-space:now=
rap;width:90px"></td><td style=3D"padding-bottom:4px;font-family:Arial,Sans=
-serif;font-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:=
-1px">Join by phone</div></td><tr><td style=3D"padding:0 1em 10px 0;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#888;white-space:nowrap;width:90=
px"></td><td style=3D"padding-bottom:10px;font-family:Arial,Sans-serif;font=
-size:13px;color:#222" valign=3D"top"><div style=3D"text-indent:-1px"><div =
style=3D"text-indent:-1px"><a href=3D"about:invalid#zSoyz" style=3D"color:#=
20c;white-space:nowrap" target=3D"_blank">+1 414-439-0065</a> <span style=
=3D"color:#888">(PIN: 843669626)</span></div></div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px"></td><td style=3D"padding-bottom:10px;f=
ont-family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"></td>=
</tr><tr><td style=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;fon=
t-size:13px;color:#888;white-space:nowrap;width:90px"></td><td style=3D"pad=
ding-bottom:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222" va=
lign=3D"top"><div style=3D"text-indent:-1px"><a href=3D"https://tel.meet/ao=
s-pkma-ngz?pin=3D3279187552951&amp;hs=3D0" style=3D"color:#20c;white-space:=
nowrap" target=3D"_blank">More phone numbers</a></div></td></tr><tr><td sty=
le=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;colo=
r:#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-=
style:normal">Calendar</i></div></td><td style=3D"padding-bottom:10px;font-=
family:Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><div styl=
e=3D"text-indent:-1px">yocto@yoctoproject.org</div></td></tr><tr><td style=
=3D"padding:0 1em 10px 0;font-family:Arial,Sans-serif;font-size:13px;color:=
#888;white-space:nowrap;width:90px" valign=3D"top"><div><i style=3D"font-st=
yle:normal">Who</i></div></td><td style=3D"padding-bottom:10px;font-family:=
Arial,Sans-serif;font-size:13px;color:#222" valign=3D"top"><table cellspaci=
ng=3D"0" cellpadding=3D"0"><tr><td style=3D"padding-right:10px;font-family:=
Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-i=
ndent:-1px"><span style=3D"font-family:Courier New,monospace">&#x2022;</spa=
n></div></td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;f=
ont-size:13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=
=3D"margin:0 0 0.3em 0"><span class=3D"notranslate">Rudolf Streif</span><sp=
an itemprop=3D"organizer" itemscope itemtype=3D"http://schema.org/Person"><=
meta itemprop=3D"name" content=3D"Rudolf Streif"/><meta itemprop=3D"email" =
content=3D"rudolf.streif@ibeeto.com"/></span><span style=3D"font-size:11px;=
color:#888"> - organizer</span></div></div></div></td></tr><tr><td style=3D=
"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#222;=
width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:Cour=
ier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:10p=
x;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"tex=
t-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"att=
endee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D"na=
me" class=3D"notranslate">theyoctoproject@gmail.com</span><meta itemprop=3D=
"email" content=3D"theyoctoproject@gmail.com"/></span></div></div></div></t=
d></tr><tr><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;fon=
t-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1px"><span st=
yle=3D"font-family:Courier New,monospace">&#x2022;</span></div></td><td sty=
le=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:=
#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0=
"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schema.org/Perso=
n"><span itemprop=3D"name" class=3D"notranslate">Rudolf J Streif</span><met=
a itemprop=3D"email" content=3D"rudolf.streif@gmail.com"/></span></div></di=
v></div></td></tr><tr><td style=3D"padding-right:10px;font-family:Arial,San=
s-serif;font-size:13px;color:#222;width:10px"><div style=3D"text-indent:-1p=
x"><span style=3D"font-family:Courier New,monospace">&#x2022;</span></div><=
/td><td style=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:=
13px;color:#222"><div style=3D"text-indent:-1px"><div><div style=3D"margin:=
0 0 0.3em 0"><span itemprop=3D"attendee" itemscope itemtype=3D"http://schem=
a.org/Person"><span itemprop=3D"name" class=3D"notranslate">stephen.k.jolle=
y@intel.com</span><meta itemprop=3D"email" content=3D"stephen.k.jolley@inte=
l.com"/></span></div></div></div></td></tr><tr><td style=3D"padding-right:1=
0px;font-family:Arial,Sans-serif;font-size:13px;color:#222;width:10px"><div=
 style=3D"text-indent:-1px"><span style=3D"font-family:Courier New,monospac=
e">&#x2022;</span></div></td><td style=3D"padding-right:10px;font-family:Ar=
ial,Sans-serif;font-size:13px;color:#222"><div style=3D"text-indent:-1px"><=
div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"attendee" itemscope=
 itemtype=3D"http://schema.org/Person"><span itemprop=3D"name" class=3D"not=
ranslate">yocto@yoctoproject.org</span><meta itemprop=3D"email" content=3D"=
yocto@yoctoproject.org"/></span></div></div></div></td></tr><tr><td style=
=3D"padding-right:10px;font-family:Arial,Sans-serif;font-size:13px;color:#2=
22;width:10px"><div style=3D"text-indent:-1px"><span style=3D"font-family:C=
ourier New,monospace">&#x2022;</span></div></td><td style=3D"padding-right:=
10px;font-family:Arial,Sans-serif;font-size:13px;color:#222"><div style=3D"=
text-indent:-1px"><div><div style=3D"margin:0 0 0.3em 0"><span itemprop=3D"=
attendee" itemscope itemtype=3D"http://schema.org/Person"><span itemprop=3D=
"name" class=3D"notranslate">sjolley.yp.pm@gmail.com</span><meta itemprop=
=3D"email" content=3D"sjolley.yp.pm@gmail.com"/></span></div></div></div></=
td></tr></table></td></tr></table><div style=3D"float:right;font-weight:bol=
d;font-size:13px"> <a href=3D"https://www.google.com/calendar/event?action=
=3DVIEW&amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZ=
WN0Lm9yZw&amp;tok=3DMjQjcnVkb2xmLnN0cmVpZkBpYmVldG8uY29tMWY5MWQyMmI5OGFkMGE=
2NTMxYjFiNDE5ZDg2MTM4ZjkwMThhZDU5YQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=
=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">=
more details &raquo;</a><br></div><div style=3D"padding-bottom:15px;font-fa=
mily:Arial,Sans-serif;font-size:13px;color:#222;white-space:pre-wrap!import=
ant;white-space:-moz-pre-wrap!important;white-space:-pre-wrap!important;whi=
te-space:-o-pre-wrap!important;white-space:pre;word-wrap:break-word"><span>=
We encourage people attending the meeting to logon and announce themselves =
on the Yocto Project IRC chancel during the meeting (optional):<br><br>Yoct=
o IRC: <a href=3D"https://www.google.com/url?q=3Dhttp%3A%2F%2Fwebchat.freen=
ode.net%2F%3Fchannels%3D%23yocto&amp;sa=3DD&amp;ust=3D1584563039767000&amp;=
usg=3DAFQjCNHnCjRu16S4ATSY87xbpkpORAfrzA" target=3D"_blank">http://webchat.=
freenode.net/?channels=3D#yocto</a><br><br>Wiki: <a href=3D"https://www.goo=
gle.com/url?q=3Dhttps%3A%2F%2Fwww.yoctoproject.org%2Fpublic-virtual-meeting=
s%2F&amp;sa=3DD&amp;ust=3D1584563039767000&amp;usg=3DAFQjCNFHvbdpy_O70df1mO=
J7eigxHaiqJg" target=3D"_blank">https://www.yoctoproject.org/public-virtual=
-meetings/</a><br><br>Bridge is with Zoom at: <a href=3D"https://www.google=
.com/url?q=3Dhttps%3A%2F%2Fzoom.us%2Fj%2F990892712&amp;sa=3DD&amp;ust=3D158=
4563039768000&amp;usg=3DAFQjCNFHMbo4f5heY0OnFnVSfuhf6irbgQ" target=3D"_blan=
k">https://zoom.us/j/990892712</a><br><br>Technical Meeting Minutes at: <a =
href=3D"https://drive.google.com/open?id=3D1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_=
TSAfw2tdU9pg" target=3D"_blank">https://drive.google.com/open?id=3D1Y5IIuE-=
z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg</a><br><br>YP 2.8 Planning Ideas at: <=
a href=3D"https://drive.google.com/open?id=3D1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6=
smpZO2HbaJGXbU" target=3D"_blank">https://drive.google.com/open?id=3D1CNEKA=
4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU</a></span><meta itemprop=3D"descript=
ion" content=3D"We encourage people attending the meeting to logon and anno=
unce themselves on the Yocto Project IRC chancel during the meeting (option=
al):Yocto IRC: http://webchat.freenode.net/?channels=3D#yoctoWiki: https://=
www.yoctoproject.org/public-virtual-meetings/Bridge is with Zoom at: https:=
//zoom.us/j/990892712Technical Meeting Minutes at: https://drive.google.com=
/open?id=3D1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pgYP 2.8 Planning Idea=
s at: https://drive.google.com/open?id=3D1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZ=
O2HbaJGXbU"/></div></div><p style=3D"color:#222;font-size:13px;margin:0"><s=
pan style=3D"color:#888">Going (yocto@yoctoproject.org)?&nbsp;&nbsp;&nbsp;<=
/span><wbr>All events in this series:&nbsp;&nbsp;&nbsp;<strong><span itempr=
op=3D"potentialaction" itemscope itemtype=3D"http://schema.org/RsvpAction">=
<meta itemprop=3D"attendance" content=3D"http://schema.org/RsvpAttendance/Y=
es"/><span itemprop=3D"handler" itemscope itemtype=3D"http://schema.org/Htt=
pActionHandler"><link itemprop=3D"method" href=3D"http://schema.org/HttpReq=
uestMethod/GET"/><a href=3D"https://www.google.com/calendar/event?action=3D=
RESPOND&amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZ=
WN0Lm9yZw&amp;rst=3D1&amp;tok=3DMjQjcnVkb2xmLnN0cmVpZkBpYmVldG8uY29tMWY5MWQ=
yMmI5OGFkMGE2NTMxYjFiNDE5ZDg2MTM4ZjkwMThhZDU5YQ&amp;ctz=3DAmerica%2FLos_Ang=
eles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itempr=
op=3D"url">Yes</a></span></span><span style=3D"margin:0 0.4em;font-weight:n=
ormal"> - </span><span itemprop=3D"potentialaction" itemscope itemtype=3D"h=
ttp://schema.org/RsvpAction"><meta itemprop=3D"attendance" content=3D"http:=
//schema.org/RsvpAttendance/Maybe"/><span itemprop=3D"handler" itemscope it=
emtype=3D"http://schema.org/HttpActionHandler"><link itemprop=3D"method" hr=
ef=3D"http://schema.org/HttpRequestMethod/GET"/><a href=3D"https://www.goog=
le.com/calendar/event?action=3DRESPOND&amp;eid=3DMWVjYWpka3RvM29hYWdoZTB0NW=
d2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;rst=3D3&amp;tok=3DMjQjcnVkb2xm=
LnN0cmVpZkBpYmVldG8uY29tMWY5MWQyMmI5OGFkMGE2NTMxYjFiNDE5ZDg2MTM4ZjkwMThhZDU=
5YQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:=
#20c;white-space:nowrap" itemprop=3D"url">Maybe</a></span></span><span styl=
e=3D"margin:0 0.4em;font-weight:normal"> - </span><span itemprop=3D"potenti=
alaction" itemscope itemtype=3D"http://schema.org/RsvpAction"><meta itempro=
p=3D"attendance" content=3D"http://schema.org/RsvpAttendance/No"/><span ite=
mprop=3D"handler" itemscope itemtype=3D"http://schema.org/HttpActionHandler=
"><link itemprop=3D"method" href=3D"http://schema.org/HttpRequestMethod/GET=
"/><a href=3D"https://www.google.com/calendar/event?action=3DRESPOND&amp;ei=
d=3DMWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;=
rst=3D2&amp;tok=3DMjQjcnVkb2xmLnN0cmVpZkBpYmVldG8uY29tMWY5MWQyMmI5OGFkMGE2N=
TMxYjFiNDE5ZDg2MTM4ZjkwMThhZDU5YQ&amp;ctz=3DAmerica%2FLos_Angeles&amp;hl=3D=
en&amp;es=3D0" style=3D"color:#20c;white-space:nowrap" itemprop=3D"url">No<=
/a></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;<wbr><a href=3D"https://w=
ww.google.com/calendar/event?action=3DVIEW&amp;eid=3DMWVjYWpka3RvM29hYWdoZT=
B0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&amp;tok=3DMjQjcnVkb2xmLnN0cmVp=
ZkBpYmVldG8uY29tMWY5MWQyMmI5OGFkMGE2NTMxYjFiNDE5ZDg2MTM4ZjkwMThhZDU5YQ&amp;=
ctz=3DAmerica%2FLos_Angeles&amp;hl=3Den&amp;es=3D0" style=3D"color:#20c;whi=
te-space:nowrap" itemprop=3D"url">more options &raquo;</a></p></td></tr><tr=
><td style=3D"background-color:#f6f6f6;color:#888;border-top:1px Solid #ccc=
;font-family:Arial,Sans-serif;font-size:11px"><p>Invitation from <a href=3D=
"https://www.google.com/calendar/" target=3D"_blank" style=3D"">Google Cale=
ndar</a></p><p>You are receiving this courtesy email at the account yocto@y=
octoproject.org because you are an attendee of this event.</p><p>To stop re=
ceiving future updates for this event, decline this event. Alternatively yo=
u can sign up for a Google account at https://www.google.com/calendar/ and =
control your notification settings for your entire calendar.</p><p>Forwardi=
ng this invitation could allow any recipient to send a response to the orga=
nizer and be added to the guest list, or invite others regardless of their =
own invitation status, or to modify your RSVP. <a href=3D"https://support.g=
oogle.com/calendar/answer/37135#forwarding">Learn More</a>.</p></td></tr></=
table></div></span></span>

--000000000000e7afea05a0c23fc2
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
EXDATE;TZID=America/Los_Angeles:20200121T080000
RRULE:FREQ=MONTHLY;BYDAY=3TU
DTSTAMP:20200313T202359Z
ORGANIZER;CN=Rudolf Streif:mailto:rudolf.streif@ibeeto.com
UID:1ecajdkto3oaaghe0t5gvnsige@google.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=theyoctoproject@gmail.com;X-NUM-GUESTS=0:mailto:theyoctoproject@gmail.c
 om
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED;RSVP=TRUE
 ;CN=Rudolf J Streif;X-NUM-GUESTS=0:mailto:rudolf.streif@gmail.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=stephen.k.jolley@intel.com;X-NUM-GUESTS=0:mailto:stephen.k.jolley@i
 ntel.com
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=yocto@yoctoproject.org;X-NUM-GUESTS=0:mailto:yocto@yoctoproject.org
ATTENDEE;CUTYPE=INDIVIDUAL;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=
 TRUE;CN=sjolley.yp.pm@gmail.com;X-NUM-GUESTS=0:mailto:sjolley.yp.pm@gmail.c
 om
X-MICROSOFT-CDO-OWNERAPPTID:525442554
CREATED:20200313T202358Z
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
 t edit this section of the description.\n\nThis event has a video call.\nJo
 in: https://meet.google.com/aos-pkma-ngz\n+1 414-439-0065 PIN: 843669626#\n
 View more phone numbers: https://tel.meet/aos-pkma-ngz?pin=3279187552951&hs
 =7\n\nView your event at https://www.google.com/calendar/event?action=VIEW&
 eid=MWVjYWpka3RvM29hYWdoZTB0NWd2bnNpZ2UgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw&tok=
 MjQjcnVkb2xmLnN0cmVpZkBpYmVldG8uY29tMWY5MWQyMmI5OGFkMGE2NTMxYjFiNDE5ZDg2MTM
 4ZjkwMThhZDU5YQ&ctz=America%2FLos_Angeles&hl=en&es=1.\n-::~:~::~:~:~:~:~:~:
 ~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-
LAST-MODIFIED:20200313T202358Z
LOCATION:Zoom Meeting: https://zoom.us/j/990892712
SEQUENCE:0
STATUS:CONFIRMED
SUMMARY:Yocto Project Technical Team Meeting
TRANSP:OPAQUE
X-MOZ-GENERATION:1
X-MOZ-RECEIVED-DTSTAMP:20190402T160350Z
X-MOZ-RECEIVED-SEQUENCE:0
END:VEVENT
END:VCALENDAR

--000000000000e7afea05a0c23fc2--

--000000000000e7afec05a0c23fc4
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
VFpJRD1BbWVyaWNhL0xvc19BbmdlbGVzOjIwMTkwNDE2VDA5MDAwMA0KRVhEQVRFO1RaSUQ9QW1l
cmljYS9Mb3NfQW5nZWxlczoyMDIwMDEyMVQwODAwMDANClJSVUxFOkZSRVE9TU9OVEhMWTtCWURB
WT0zVFUNCkRUU1RBTVA6MjAyMDAzMTNUMjAyMzU5Wg0KT1JHQU5JWkVSO0NOPVJ1ZG9sZiBTdHJl
aWY6bWFpbHRvOnJ1ZG9sZi5zdHJlaWZAaWJlZXRvLmNvbQ0KVUlEOjFlY2FqZGt0bzNvYWFnaGUw
dDVndm5zaWdlQGdvb2dsZS5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJVklEVUFMO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UO1BBUlRTVEFUPUFDQ0VQVEVEO1JTVlA9VFJVRQ0KIDtDTj10aGV5b2N0b3By
b2plY3RAZ21haWwuY29tO1gtTlVNLUdVRVNUUz0wOm1haWx0bzp0aGV5b2N0b3Byb2plY3RAZ21h
aWwuYw0KIG9tDQpBVFRFTkRFRTtDVVRZUEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1BQ0NFUFRFRDtSU1ZQPVRSVUUNCiA7Q049UnVkb2xmIEogU3RyZWlmO1gtTlVN
LUdVRVNUUz0wOm1haWx0bzpydWRvbGYuc3RyZWlmQGdtYWlsLmNvbQ0KQVRURU5ERUU7Q1VUWVBF
PUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JT
VlA9DQogVFJVRTtDTj1zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtYLU5VTS1HVUVTVFM9MDpt
YWlsdG86c3RlcGhlbi5rLmpvbGxleUBpDQogbnRlbC5jb20NCkFUVEVOREVFO0NVVFlQRT1JTkRJ
VklEVUFMO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPQ0K
IFRSVUU7Q049eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZztYLU5VTS1HVUVTVFM9MDptYWlsdG86eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZw0KQVRURU5ERUU7Q1VUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEt
UEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9DQogVFJVRTtDTj1zam9sbGV5
LnlwLnBtQGdtYWlsLmNvbTtYLU5VTS1HVUVTVFM9MDptYWlsdG86c2pvbGxleS55cC5wbUBnbWFp
bC5jDQogb20NClgtTUlDUk9TT0ZULUNETy1PV05FUkFQUFRJRDo1MjU0NDI1NTQNCkNSRUFURUQ6
MjAyMDAzMTNUMjAyMzU4Wg0KREVTQ1JJUFRJT046V2UgZW5jb3VyYWdlIHBlb3BsZSBhdHRlbmRp
bmcgdGhlIG1lZXRpbmcgdG8gbG9nb24gYW5kIGFubm91bmNlDQogIHRoZW1zZWx2ZXMgb24gdGhl
IFlvY3RvIFByb2plY3QgSVJDIGNoYW5jZWwgZHVyaW5nIHRoZSBtZWV0aW5nIChvcHRpb25hbCk6
DQogPGJyPjxicj5Zb2N0byBJUkM6IDxhIGhyZWY9Imh0dHA6Ly93ZWJjaGF0LmZyZWVub2RlLm5l
dC8/Y2hhbm5lbHM9I3lvY3RvIiB0DQogYXJnZXQ9Il9ibGFuayI+aHR0cDovL3dlYmNoYXQuZnJl
ZW5vZGUubmV0Lz9jaGFubmVscz0jeW9jdG88L2E+PGJyPjxicj5XaWtpDQogOiA8YSBocmVmPSJo
dHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL3B1YmxpYy12aXJ0dWFsLW1lZXRpbmdzLyI+aHR0
cHM6Ly93DQogd3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdmlydHVhbC1tZWV0aW5ncy88L2E+
PGJyPjxicj5CcmlkZ2UgaXMgd2l0aCBab29tDQogIGF0OiA8YSBocmVmPSJodHRwczovL3pvb20u
dXMvai85OTA4OTI3MTIiIHRhcmdldD0iX2JsYW5rIiBpZD0ib3czNDEiIF9faXNfDQogb3duZXI9
InRydWUiPmh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMjwvYT48YnI+PGJyPlRlY2huaWNhbCBN
ZWV0aW5nIE1pbnV0DQogZXMgYXQ6IGh0dHBzOi8vZHJpdmUuZ29vZ2xlLmNvbS9vcGVuP2lkPTFZ
NUlJdUUtejBZa2RsLUR3dXpVSmg1MmZsT1p1aE5fVFNBDQogZncydGRVOXBnPGJyPjxicj5ZUCAy
LjggUGxhbm5pbmcgSWRlYXMgYXQ6IGh0dHBzOi8vZHJpdmUuZ29vZ2xlLmNvbS9vcGVuP2lkDQog
PTFDTkVLQTRkMGVUNi1lMGhuUzJwd2k3eGRaNV90NnNtcFpPMkhiYUpHWGJVXG5cbi06On46fjo6
fjp+On46fjp+On46fjp+On46DQogfjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46
fjp+On46fjp+On46fjp+On46On46fjo6LVxuUGxlYXNlIGRvIG5vDQogdCBlZGl0IHRoaXMgc2Vj
dGlvbiBvZiB0aGUgZGVzY3JpcHRpb24uXG5cblRoaXMgZXZlbnQgaGFzIGEgdmlkZW8gY2FsbC5c
bkpvDQogaW46IGh0dHBzOi8vbWVldC5nb29nbGUuY29tL2Fvcy1wa21hLW5nelxuKzEgNDE0LTQz
OS0wMDY1IFBJTjogODQzNjY5NjI2I1xuDQogVmlldyBtb3JlIHBob25lIG51bWJlcnM6IGh0dHBz
Oi8vdGVsLm1lZXQvYW9zLXBrbWEtbmd6P3Bpbj0zMjc5MTg3NTUyOTUxJmhzDQogPTdcblxuVmll
dyB5b3VyIGV2ZW50IGF0IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0
aW9uPVZJRVcmDQogZWlkPU1XVmpZV3BrYTNSdk0yOWhZV2RvWlRCME5XZDJibk5wWjJVZ2VXOWpk
RzlBZVc5amRHOXdjbTlxWldOMExtOXladyZ0b2s9DQogTWpRamNuVmtiMnhtTG5OMGNtVnBaa0Jw
WW1WbGRHOHVZMjl0TVdZNU1XUXlNbUk1T0dGa01HRTJOVE14WWpGaU5ERTVaRGcyTVRNDQogNFpq
a3dNVGhoWkRVNVlRJmN0ej1BbWVyaWNhJTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MS5cbi06On46
fjo6fjp+On46fjp+On46DQogfjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+On46fjp+
On46fjp+On46fjp+On46fjp+On46On46fjo6LQ0KTEFTVC1NT0RJRklFRDoyMDIwMDMxM1QyMDIz
NThaDQpMT0NBVElPTjpab29tIE1lZXRpbmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMg0K
U0VRVUVOQ0U6MA0KU1RBVFVTOkNPTkZJUk1FRA0KU1VNTUFSWTpZb2N0byBQcm9qZWN0IFRlY2hu
aWNhbCBUZWFtIE1lZXRpbmcNClRSQU5TUDpPUEFRVUUNClgtTU9aLUdFTkVSQVRJT046MQ0KWC1N
T1otUkVDRUlWRUQtRFRTVEFNUDoyMDE5MDQwMlQxNjAzNTBaDQpYLU1PWi1SRUNFSVZFRC1TRVFV
RU5DRTowDQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFSDQo=

--000000000000e7afec05a0c23fc4--
