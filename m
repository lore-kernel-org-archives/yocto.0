Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4AAE01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 15:44:46 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id s9so9074068iec.35
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 15:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HtwDpEJEhBcoS8N/b6+oxTzgryrDG2wilde+axG533Y=;
	b=nxh2Qhy4/Pbz3MfEwxVZp7z5PzYsQP/xXzWtog5QksHCKigYGS4gPYFjWt5U3rQcro
	lWPw2bQbks+2tkAE1QoVjbeShDaSUo5cBSmYGTcwuvZe9NhqQw5ZHvX5kVwAtY6Tpe/r
	U6Lxc2jqoL6CH4EbLxXMICIl/Nk1BJEDeGmDOTnCvyR5RhrAdn/RMsoxzJCTjJ4WGBnH
	IUQD6OYGvaqgH+DK1sZxfSkxa9nXqNP/ecI4rkr6R3TpKwVsuqyl4KabQyvtB84iZrSD
	eFBoIZN5Bu9CwFUcblUe95IlzQd6a/IrmUpyhBtSwyu/gTJvnjBXd3q22y0N1lPdmJQB
	QRwQ==
MIME-Version: 1.0
X-Received: by 10.50.134.130 with SMTP id pk2mr13716669igb.10.1378161885996;
	Mon, 02 Sep 2013 15:44:45 -0700 (PDT)
Received: by 10.50.77.163 with HTTP; Mon, 2 Sep 2013 15:44:45 -0700 (PDT)
In-Reply-To: <000601cea807$0893e270$19bba750$@annabooks.com>
References: <CAM1ZcoVgAgPYTrGzHVYcYt+qwhzqTHne9gjNhhWS75oD0HhFFg@mail.gmail.com>
	<000601cea807$0893e270$19bba750$@annabooks.com>
Date: Mon, 2 Sep 2013 23:44:45 +0100
Message-ID: <CAM1ZcoUuqJai9s3588RcG5+H-TAfWGo=Ua7zhzQQeEFLTt6FCg@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Sep 2013 22:44:48 -0000
Content-Type: multipart/alternative; boundary=047d7b2e3e06a8728304e56e5143

--047d7b2e3e06a8728304e56e5143
Content-Type: text/plain; charset=ISO-8859-1

Thanks Sean,

that's great help. Do you know where the installer script is located? I was
hoping to find it in the yocto project scripts folder but I haven't seen
any helpful script for partitioning the hard drive and installing the yocto
distro.

Regards,
Katu


2013/9/2 Sean Liming <sean.liming@annabooks.com>

> The BSP for  3rd Generation iCore is this one:
> https://www.yoctoproject.org/download/intel-3rd-generation-core-platforms-core-i3-i5-i7-ivy-bridge. of course, you will need the core Yocto Project release -
> https://www.yoctoproject.org/downloads ****
>
> ** **
>
> Yes, you can install the distro on the machine. There is an installer
> script that does the partitioning and formatting. ****
>
> ** **
>
> Regards,****
>
> ** **
>
> Sean Liming****
>
> Owner****
>
> [image: ablogo color - 500] <http://www.annabooks.com/>****
>
> Tel: 714-970-7523 / Cell: 858-774-3176****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Katu Txakur
> *Sent:* Monday, September 02, 2013 10:29 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz****
>
> ** **
>
> Hello,****
>
> ** **
>
> What is the best stable BSP for a Intel(R) Core(TM) i7-3612QM CPU @
> 2.10GHz?****
>
> I have a computer with 4 cpus and I would like to compile a Linux
> distro with the Yocto project.****
>
> I've read about booting with a live usb but, how can I install the distro
> in the machine? Can I automatize the hard drive partitions too?****
>
> ** **
>
> Thanks a lot****
>

--047d7b2e3e06a8728304e56e5143
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks Sean,<br><br></div>that&#39;s great =
help. Do you know where the installer script is located? I was hoping to fi=
nd it in the yocto project scripts folder but I haven&#39;t seen any helpfu=
l script for partitioning the hard drive and installing the yocto distro.<b=
r>
<br></div>Regards,<br></div>Katu<br></div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">2013/9/2 Sean Liming <span dir=3D"ltr">&lt;<a =
href=3D"mailto:sean.liming@annabooks.com" target=3D"_blank">sean.liming@ann=
abooks.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div link=3D"blue" vlink=3D"purple" lang=3D"=
EN-US"><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">The BSP for =
=A03<sup>rd</sup> Generation iCore is this one: <a href=3D"https://www.yoct=
oproject.org/download/intel-3rd-generation-core-platforms-core-i3-i5-i7-ivy=
-bridge" target=3D"_blank">https://www.yoctoproject.org/download/intel-3rd-=
generation-core-platforms-core-i3-i5-i7-ivy-bridge</a> . of course, you wil=
l need the core Yocto Project release - <a href=3D"https://www.yoctoproject=
.org/downloads" target=3D"_blank">https://www.yoctoproject.org/downloads</a=
> <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Yes, you can install t=
he distro on the machine. There is an installer script that does the partit=
ioning and formatting. <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Sean Liming<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Owner<u></u><u></u></span=
></p><p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" target=3D=
"_blank"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:blue;text-decoration:none"><img alt=3D"ablogo co=
lor - 500" border=3D"0" height=3D"34" width=3D"160"></span></a><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
;color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Tel: <a href=3D"tel:714-9=
70-7523" value=3D"+17149707523" target=3D"_blank">714-970-7523</a> / Cell: =
<a href=3D"tel:858-774-3176" value=3D"+18587743176" target=3D"_blank">858-7=
74-3176</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0=
in 4.0pt">
<div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt=
 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&qu=
ot;"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@y=
octoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] <b>O=
n Behalf Of </b>Katu Txakur<br>
<b>Sent:</b> Monday, September 02, 2013 10:29 AM<br><b>To:</b> <a href=3D"m=
ailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><=
br><b>Subject:</b> [yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz<u></u>=
<u></u></span></p>
</div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u></u>=A0<u></u>=
</p><div><p class=3D"MsoNormal">Hello,<u></u><u></u></p><div><p class=3D"Ms=
oNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal">What is the=
 best stable BSP for a=A0Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz?<u></u><=
u></u></p>
</div><div><p class=3D"MsoNormal">I have a computer with 4 cpus=A0and I wou=
ld like to compile a Linux distro=A0with the Yocto project.<u></u><u></u></=
p></div><div><p class=3D"MsoNormal">I&#39;ve read about booting with a live=
 usb but, how can I install the distro in the machine? Can I automatize the=
 hard drive partitions too?<u></u><u></u></p>
</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal">Thanks a lot<u></u><u></u></p></div></div></div></div></div>=
</div></div></blockquote></div><br></div>

--047d7b2e3e06a8728304e56e5143--
