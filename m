Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE5BEE01458
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 03:57:05 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id m8so189965vcd.23
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 03:57:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=uY2bWoGd95JUl8cLNBlIskYH2absK98G+DBU/7ybyPE=;
	b=OwadF0j5BqsXXO5eB0M7LNvIy+Q84BA4bWa5PO/unsxEikZ1xx7RMJqCeFMD8XY7qp
	NOLEixMCiu353cvybEisd8Z8/Nvdjjg/r4es3sitBglOQlk/wxuIwtod0OlLCaS7xEX4
	ViGAPzajUec3kIg8P4JB/bdjImrMtOClTM0+UXJlkC6ZEmuDrP+OwammniVpwr2fq0OE
	XvOLm8SVa4eKME2DzL+OBAaWHsyj7v/y0XmDbP9DSe1LdCl+ATf9fyiOJXA8IDqu4nws
	pMCj0kIpMWH+WXWV9VGmFGtxucwC45VGjtGMAjizKjqM8D6sZMnf/mNSNN3icMDn3t6e
	UGDg==
X-Received: by 10.52.91.142 with SMTP id ce14mr4880543vdb.84.1359115024921;
	Fri, 25 Jan 2013 03:57:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.153.163 with HTTP; Fri, 25 Jan 2013 03:56:44 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <510253C7.4030807@communistcode.co.uk>
References: <CAK18fxHAWADFz53eLP8JsURSgxNM0G+fbG3MiM6z4KmDbo3p6Q@mail.gmail.com>
	<510253C7.4030807@communistcode.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 25 Jan 2013 13:56:44 +0200
Message-ID: <CAK18fxGfsB8zOJAhexvbFjgmnO29NO0UEtf_rfaWJrZZ1tnxyg@mail.gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
X-Gm-Message-State: ALoCoQm4igNNpUXxnmfvRGcwoB78WSaOKfs4Cbia4Cc9VVPkR+ZUi+Bqd1PSgbu2yB+3sadiKh3E
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi has a new home - yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Jan 2013 11:57:06 -0000
Content-Type: multipart/alternative; boundary=20cf307f37e644f34704d41ba03c

--20cf307f37e644f34704d41ba03c
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 25, 2013 at 11:43 AM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> On 24/01/13 19:45, Andrei Gherzan wrote:
>
>> Hello raspberrypi owners,
>>
>> I am happy to announce that yoctoproject hosts now the meta-raspberrypi
>> BSP layer.
>> The web interface is now up and running: http://git.yoctoproject.org/**
>> cgit/cgit.cgi/meta-**raspberrypi/<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/>and we will use the yocto mailing list for meta-raspberrypi specific
>> discussions. Please don't forget to add "[meta-raspberrypi]" in subject.
>>
>> For more information check the included README in the layer.
>>
>> In the end i want to thank the group who added value to this layer:
>>
>> Aurelian Zanoschi
>> David-John Willis
>> Gary Thomas
>> Jack Mitchell
>> Julian Scheel
>> Koen Kooi
>> Paul Eggleton
>> Sander van Grieken
>> Tomas Frydrych
>> Tyler Hall
>>
>> Special thanks to David-John Willis. He's actually the owner. :)
>>
>> Keep up the good work guys!
>>
>> --
>> *Andrei Gherzan*
>>
>> m: +40.744.478.414 |  f: +40.31.816.28.12
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
> Will the github layer be kept in sync or should we update our git origins?
>
>
Would be easier for maintainers to use a single repo source. But if people
really want to use github, I will try to keep that repo in sync too.
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307f37e644f34704d41ba03c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jan 25, 2013 at 11:43 AM, Jack Mitchell <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk" target=3D"_blank">ml=
@communistcode.co.uk</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 2=
4/01/13 19:45, Andrei Gherzan wrote:<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">
Hello raspberrypi owners,<br>
<br>
I am happy to announce that yoctoproject hosts now the meta-raspberrypi BSP=
 layer.<br>
The web interface is now up and running: <a href=3D"http://git.yoctoproject=
.org/cgit/cgit.cgi/meta-raspberrypi/" target=3D"_blank">http://git.yoctopro=
ject.org/<u></u>cgit/cgit.cgi/meta-<u></u>raspberrypi/</a> and we will use =
the yocto mailing list for meta-raspberrypi specific discussions. Please do=
n&#39;t forget to add &quot;[meta-raspberrypi]&quot; in subject.<br>


<br>
For more information check the included README in the layer.<br>
<br>
In the end i want to thank the group who added value to this layer:<br>
<br>
Aurelian Zanoschi<br>
David-John Willis<br>
Gary Thomas<br>
Jack Mitchell<br>
Julian Scheel<br>
Koen Kooi<br>
Paul Eggleton<br>
Sander van Grieken<br>
Tomas Frydrych<br>
Tyler Hall<br>
<br>
Special thanks to David-John Willis. He&#39;s actually the owner. :)<br>
<br>
Keep up the good work guys!<br>
<br>
-- <br></div></div>
*Andrei Gherzan*<div class=3D"im"><br>
m: <a href=3D"tel:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blan=
k">+40.744.478.414</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"=
+40318162812" target=3D"_blank">+40.31.816.28.12</a><br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></blockquote>
<br>
Will the github layer be kept in sync or should we update our git origins?<=
span class=3D"HOEnZb"><font color=3D"#888888"><br><br></font></span></block=
quote><div><br></div><div style>Would=A0be easier for maintainers to use a =
single repo source. But if people really want to use github, I will try to =
keep that repo in sync too.</div>

</div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div s=
tyle=3D"text-align:center"><div align=3D"left" style=3D"font-family:&#39;Ti=
mes New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,51,51);font-f=
amily:Arial;font-size:small;text-align:center">Andrei Gherzan</b><font face=
=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--20cf307f37e644f34704d41ba03c--
