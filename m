Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D6FFE006EF; Mon,  8 Dec 2014 07:53:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (grsandeep85[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 059B7E00344
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 07:53:04 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id e131so3531263oig.10
	for <yocto@yoctoproject.org>; Mon, 08 Dec 2014 07:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=x97Le+mvbVaNf22pRHJbfwhl4yJ384YsEa2WL4ooAgk=;
	b=Ql9ODrS/wBo0Ffb69PfSIj1EtUnev+2YqfcIsNa+6HfoRm2n/7EFXhnfjjXg6Z9AlH
	VZs/Uv5Wgp+qrh2cNSz1P6D9D50bh8FMCcJfJ6eZgVMmzleiQO9cQiFd5uHx7BxLYtZW
	iHXnOfGNXE2Vytj8HG17CY9n6rc/ICZ2BsuaVMD9SmFiCpbrYOr4RggMeXcQcBpjAcW2
	yfY++cn6RYpszTgciq1s+YW4vepjXQzbtpaBxnKaqr2iJ4MEeSV4irc/+LtSa/xZP2A8
	d/9nNC4LjxsKnmyngw9Jebjs6i9Rw4T6RK0TklYY6jt+k9AU3VScFPiZGvdAAoX2+NiH
	b2zg==
MIME-Version: 1.0
X-Received: by 10.182.199.106 with SMTP id jj10mr19863672obc.27.1418053983830; 
	Mon, 08 Dec 2014 07:53:03 -0800 (PST)
Received: by 10.76.22.12 with HTTP; Mon, 8 Dec 2014 07:53:03 -0800 (PST)
In-Reply-To: <E5FF0F26CCED3843A9B0899B389686BA41C983@POCITMSEXMB05.LntUniverse.com>
References: <E5FF0F26CCED3843A9B0899B389686BA41C983@POCITMSEXMB05.LntUniverse.com>
Date: Mon, 8 Dec 2014 08:53:03 -0700
Message-ID: <CAKP9-Sjk1bOYyrQJOUWFOAHXTarKwUbRn2-AmaHL9giXE2fs8A@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Shalini K P <Shalini.KP@lnttechservices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: regarding yocto installation
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
X-List-Received-Date: Mon, 08 Dec 2014 15:53:10 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ca2afa89f10509b66b75

--e89a8ff1ca2afa89f10509b66b75
Content-Type: text/plain; charset=ISO-8859-1

Hi Shalini,

            Your repo url in not a valid one (
https://dl-ssl.google.com/dl/googlesource/git-repo/repo) Please follow this
link https://github.com/Freescale/fsl-community-bsp-platform



On Mon, Dec 8, 2014 at 1:57 AM, Shalini K P <Shalini.KP@lnttechservices.com>
wrote:

>
>
> Hi,
>
>
>
>    M trying to install yocto on host Ubuntu 12.04. I m following these
> steps.
>
> mkdir ~/bin
>
> $ curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo >
> ~/bin/repo
>
> $ chmod a+x ~/bin/repo
>
> $ PATH=${PATH}:~/bin
>
> * Download the BSP metadata (recipes + configuration files + classes)
>
> $ mkdir fsl-community-bsp
>
> $ cd fsl-community-bsp
>
> fsl-community-bsp $ repo init \
>
> -u https://github.com/Freescale/fsl-community-bsp-platform \
>
> -b dylan
>
> fsl-community-bsp $ repo sync
>
> *Fetching project meta-fsl-arm-extra*
>
> *Fetching project poky*
>
> *Fetching project meta-fsl-arm*
>
> *Fetching project meta-openembedded*
>
> *Fetching projects:  16% (1/6)  Fetching project fsl-community-bsp-base*
>
>
>
> After this it does not proceed further. Can anyone please help me how to
> proceed further.
>
>
>
>
>
> Regards
>
> Shalini
>
> *L&T Technology Services Ltd*
>
> www.LntTechservices.com <http://www.lnttechservices.com/>
>
> This Email may contain confidential or privileged information for the
> intended recipient (s). If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Thanks & Regards,*
*Sandeep G R*

--e89a8ff1ca2afa89f10509b66b75
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)">Hi Shalini,</div><div class=
=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif;c=
olor:rgb(7,55,99)"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:&#39;trebuchet ms&#39;,sans-serif;color:rgb(7,55,99)">&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; Your repo url in not a valid one (<a href=3D"https=
://dl-ssl.google.com/dl/googlesource/git-repo/repo" target=3D"_blank" style=
=3D"font-size:13px;font-family:CMTT10">https://dl-ssl.google.com/dl/googles=
ource/git-repo/repo</a>) Please follow this link <a href=3D"https://github.=
com/Freescale/fsl-community-bsp-platform">https://github.com/Freescale/fsl-=
community-bsp-platform</a></div><div class=3D"gmail_default" style=3D"font-=
family:&#39;trebuchet ms&#39;,sans-serif;color:rgb(7,55,99)"><br></div><div=
 class=3D"gmail_default" style><font color=3D"#073763" face=3D"trebuchet ms=
, sans-serif"><br></font></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Mon, Dec 8, 2014 at 1:57 AM, Shalini K P <span dir=
=3D"ltr">&lt;<a href=3D"mailto:Shalini.KP@lnttechservices.com" target=3D"_b=
lank">Shalini.KP@lnttechservices.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">





<div lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; M trying to install yocto on host Ubunt=
u 12.04. I m following these steps.<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:#007121">mkdir
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">~/bi=
n<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$ curl <a href=3D"https://dl-ssl.=
google.com/dl/googlesource/git-repo/repo" target=3D"_blank">https://dl-ssl.=
google.com/dl/googlesource/git-repo/repo</a>
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">&g=
t; </span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">~=
/bin/repo<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">ch=
mod </span>
<span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">a+x ~/bin/r=
epo<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">PA=
TH=3D$</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#0071=
21">{</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#00712=
1">PATH</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#007=
121">}</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:black=
">:~/bin<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMSY10;color:black">&bull;
</span><span style=3D"font-size:10.0pt;font-family:CMR10;color:black">Downl=
oad the BSP metadata (recipes + configuration files + classes)<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">mk=
dir </span>
<span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">fsl-communi=
ty-bsp<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">cd=
 </span>
<span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">fsl-communi=
ty-bsp<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">fsl-community-bsp $ repo init
</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#007121">\<=
u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">-u <a href=3D"https://github.com/=
Freescale/fsl-community-bsp-platform" target=3D"_blank">https://github.com/=
Freescale/fsl-community-bsp-platform</a>
</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#007121">\<=
u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">-b dylan<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:CMTT10;c=
olor:black">fsl-community-bsp $ repo
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">sy=
nc<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b>Fetching project meta-fsl-arm-extra<u></u><u></u>=
</b></p>
<p class=3D"MsoNormal"><b>Fetching project poky<u></u><u></u></b></p>
<p class=3D"MsoNormal"><b>Fetching project meta-fsl-arm<u></u><u></u></b></=
p>
<p class=3D"MsoNormal"><b>Fetching project meta-openembedded<u></u><u></u><=
/b></p>
<p class=3D"MsoNormal"><b>Fetching projects:&nbsp; 16% (1/6)&nbsp; Fetching=
 project fsl-community-bsp-base<u></u><u></u></b></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">After this it does not proceed further. Can anyone p=
lease help me how to proceed further.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
<p class=3D"MsoNormal">Shalini<u></u><u></u></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"trebuchet ms, sans-se=
rif" color=3D"#073763"><b>Thanks &amp; Regards,</b></font><div><font face=
=3D"trebuchet ms, sans-serif" color=3D"#073763"><b>Sandeep G R</b></font><b=
r><br></div></div></div>
</div>

--e89a8ff1ca2afa89f10509b66b75--
