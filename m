Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F76CE00978; Fri, 24 Jul 2015 08:44:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48C6FE00942
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 08:44:17 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so39136507igb.0
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 08:44:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=SncOTqb0Sd1whSf1JuZSa/hyz+O7T8F+XsudhPJL5rI=;
	b=EYlKI7lcMNiPGquGOQfpcxUdAlDcgfFeC4SnzDHR0zQyzL2wlbEtEPOzQO9P6xLYPb
	RouGiw526txZgp5r8g1FlrFl4JMXssoHdY3TUAvawrh2k5YNJDZieeILbHweswyUzp4k
	mK3fe4kjpegsjb1OoP2CecK5rbUDhRfUNCScudjg3MbEbfG60n2XOJD0SC7JCTyydssk
	KOTmnYozNz3NAzD/Vh99DSluU5lWBVnaxEf/POdwGv+E00Ztq/thB0kNicADedz88g8U
	65/xvzLA8U3mD1fr8o0YvEZ0FoIGql7GquyDgbeqWeRoHTq40K/5nW0dTWG40y8j0Y5R
	TF8g==
X-Gm-Message-State: ALoCoQlmZ1/lTGNE3l3fn6S9FHQb7goRard42nJ7TsM66rc1TE4cGQ7DjrrOXvmguvrkDpDp3WzX
MIME-Version: 1.0
X-Received: by 10.107.10.17 with SMTP id u17mr23763031ioi.16.1437752656689;
	Fri, 24 Jul 2015 08:44:16 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Fri, 24 Jul 2015 08:44:16 -0700 (PDT)
In-Reply-To: <BN3PR03MB13673D0DF024D2CFE790CA84E4810@BN3PR03MB1367.namprd03.prod.outlook.com>
References: <CAF5S8SM5YF+w-UiJwteD4+PFz3NyEekqFZeqoqKZ=O9Y9D3jgw@mail.gmail.com>
	<BN3PR03MB13675DD275030BA32B9E2DBFE4810@BN3PR03MB1367.namprd03.prod.outlook.com>
	<BN3PR03MB13673D0DF024D2CFE790CA84E4810@BN3PR03MB1367.namprd03.prod.outlook.com>
Date: Fri, 24 Jul 2015 21:14:16 +0530
X-Google-Sender-Auth: GmQp9x8lv97_7aF4w_R7jh-cPo8
Message-ID: <CAF5S8SPVEHugy86tkJ+4fVQ=+0c_vtz7c2CZFuWs9x5ty1MEqA@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Luo Zhenhua <zhenhua.luo@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QorIQ-SDK-V1.8 fsl-toolchain generation misses libuuid
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
X-List-Received-Date: Fri, 24 Jul 2015 15:44:21 -0000
Content-Type: multipart/alternative; boundary=001a113ee77e60992c051ba0e028

--001a113ee77e60992c051ba0e028
Content-Type: text/plain; charset=UTF-8

Thanks for the quick response .
That worked for me .

Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Fri, Jul 24, 2015 at 2:47 PM, Luo Zhenhua <zhenhua.luo@freescale.com>
wrote:

>  One correction.
>
>
>
> Do the following change for meta-fsl-networking/images/fsl-toolchain.bb
>
>
>
> diff --git a/images/fsl-toolchain.bb b/images/fsl-toolchain.bb
>
> index 88625c0..82c2614 100644
>
> --- a/images/fsl-toolchain.bb
>
> +++ b/images/fsl-toolchain.bb
>
> @@ -11,6 +11,7 @@ TOOLCHAIN_TARGET_TASK += " \
>
>      libgomp-staticdev \
>
>      libstdc++-staticdev \
>
>      ${TCLIBC}-staticdev \
>
> +    util-linux-dev \
>
> "
>
>
>
>
>
> Best Regards,
>
>
>
> Zhenhua
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Luo Zhenhua
> *Sent:* Friday, July 24, 2015 4:26 PM
> *To:* Sarayu Krishna Sivanandam; yocto@yoctoproject.org
> *Subject:* Re: [yocto] QorIQ-SDK-V1.8 fsl-toolchain generation misses
> libuuid
>
>
>
> Hi Sarayu K S,
>
>
>
> The fsl-toolchian includes the very basic packages of cross-compile
> support by default, to add the more headers and libraries, you can edit
> meta-fsl-networking/images/fsl-toolchain.bb to add corresponding packages
> and rebuild fsl-toolchain.
>
>
>
> For the specific case, you can do the following change and rebuild
> fsl-toolchain.
>
> diff --git a/images/fsl-toolchain.bb b/images/fsl-toolchain.bb
>
> index 88625c0..0756bd0 100644
>
> --- a/images/fsl-toolchain.bb
>
> +++ b/images/fsl-toolchain.bb
>
> @@ -11,6 +11,7 @@ TOOLCHAIN_TARGET_TASK += " \
>
>      libgomp-staticdev \
>
>      libstdc++-staticdev \
>
>      ${TCLIBC}-staticdev \
>
> +    nativesdk-util-linux-dev \
>
> "
>
>
>
>
>
> Best Regards,
>
>
>
> Zhenhua
>
>
>
> *From:* yocto-bounces@yoctoproject.org [
> mailto:yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>] *On
> Behalf Of *Sarayu Krishna Sivanandam
> *Sent:* Friday, July 24, 2015 3:21 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] QorIQ-SDK-V1.8 fsl-toolchain generation misses libuuid
>
>
>
> Hi all ,
>
>
>
> I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM
> board . I followed the instructions in
> http://www.freescale.com/infocenter/topic/QORIQSDK/6735542.html and was
> able to successfully generate the toolchain and install the same.
>
>
>
> I was also able to cross compile my hello world program and run the same
> on my board . But when i wanted to test my other programs , i figured that
> they were using the libuuid which was not present in the toolchain since it
> was throwing errors for the uuid.h reference in my code.
>
>
>
> I verified that the SDK had the util-linux recipe in the recipies-core
> folder and also this was in the BBLAYER path as well. I saw that the
> packages were also defined right and this recipe was being parsed also when
> i tried to build it .
>
>
>
> I used bitbake to run the util-linux_2.24.1.bb file separately and saw
> that it was able to generate the libuuid but for some reason it is not
> being built as part of the toolchain .
>
>
>
> Can you please let me know what changes are required to include it along
> with the toolchain build .
>
>
>
> Thanks and Regards,
>
> Sarayu K S
>
> Tech Lead
>
> Zaikenn Technologies
>

--001a113ee77e60992c051ba0e028
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Thanks for the quick response .=C2=A0</div><div class=3D"=
gmail_default" style=3D"font-family:comic sans ms,sans-serif">That worked f=
or me .</div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=
=3D"comic sans ms, sans-serif">Thanks and Regards,</font><div><font face=3D=
"comic sans ms, sans-serif">Sarayu K S=C2=A0</font></div><div><font face=3D=
"comic sans ms, sans-serif">Tech Lead=C2=A0</font></div><div><font face=3D"=
comic sans ms, sans-serif">Zaikenn Technologies</font></div></div></div></d=
iv></div></div>
<br><div class=3D"gmail_quote">On Fri, Jul 24, 2015 at 2:47 PM, Luo Zhenhua=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:zhenhua.luo@freescale.com" target=
=3D"_blank">zhenhua.luo@freescale.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">One correction.<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Do the following change for meta-fsl-=
networking/images/<a href=3D"http://fsl-toolchain.bb" target=3D"_blank">fsl=
-toolchain.bb</a><u></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">diff --git a/images/<a href=3D"http:/=
/fsl-toolchain.bb" target=3D"_blank">fsl-toolchain.bb</a> b/images/<a href=
=3D"http://fsl-toolchain.bb" target=3D"_blank">fsl-toolchain.bb</a><u></u><=
u></u></span></p>
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#1f497d">index 88625c0..82c2614 100644<=
u></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">--- a/images/<a href=3D"http://fsl-to=
olchain.bb" target=3D"_blank">fsl-toolchain.bb</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">+++ b/images/<a href=3D"http://fsl-to=
olchain.bb" target=3D"_blank">fsl-toolchain.bb</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">@@ -11,6 +11,7 @@ TOOLCHAIN_TARGET_TA=
SK +=3D &quot; \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0 libgomp-stat=
icdev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0 libstdc++-st=
aticdev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0 ${TCLIBC}-st=
aticdev \<u></u><u></u></span></p>
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#1f497d">+=C2=A0=C2=A0=C2=A0 util-linux=
-dev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Best Regards,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Zhenhua<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> <a href=3D"mailto:yocto-bounce=
s@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [m=
ailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Luo Zhenhua<br>
<b>Sent:</b> Friday, July 24, 2015 4:26 PM<br>
<b>To:</b> Sarayu Krishna Sivanandam; <a href=3D"mailto:yocto@yoctoproject.=
org" target=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] QorIQ-SDK-V1.8 fsl-toolchain generation misses =
libuuid<u></u><u></u></span></p>
</div>
</div><span class=3D"">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hi Sarayu K S,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">The fsl-toolchian includes the very b=
asic packages of cross-compile support by default, to add the more headers =
and libraries, you can edit meta-fsl-networking/images/<a href=3D"http://fs=
l-toolchain.bb" target=3D"_blank">fsl-toolchain.bb</a>
 to add corresponding packages and rebuild fsl-toolchain. <u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">For the specific case, you can do the=
 following change and rebuild fsl-toolchain.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">diff --git a/images/<a href=3D"http:/=
/fsl-toolchain.bb" target=3D"_blank">fsl-toolchain.bb</a> b/images/<a href=
=3D"http://fsl-toolchain.bb" target=3D"_blank">fsl-toolchain.bb</a><u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">index 88625c0..0756bd0 100644<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">--- a/images/<a href=3D"http://fsl-to=
olchain.bb" target=3D"_blank">fsl-toolchain.bb</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">+++ b/images/<a href=3D"http://fsl-to=
olchain.bb" target=3D"_blank">fsl-toolchain.bb</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">@@ -11,6 +11,7 @@ TOOLCHAIN_TARGET_TA=
SK +=3D &quot; \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0 libgomp-stat=
icdev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0 libstdc++-st=
aticdev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0 ${TCLIBC}-st=
aticdev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">+=C2=A0=C2=A0=C2=A0 nativesdk-util-li=
nux-dev \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Best Regards,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Zhenhua<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
</span><div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0=
in 0in 4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif">
</span><a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
>yocto-bounces@yoctoproject.org</span></a><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> [</span><a href=3D"mailto:yocto=
-bounces@yoctoproject.org" target=3D"_blank"><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,sans-serif">mailto:yocto-bounces@yoctopro=
ject.org</span></a><span style=3D"font-size:11.0pt;font-family:&quot;Calibr=
i&quot;,sans-serif">]
<b>On Behalf Of </b>Sarayu Krishna Sivanandam<span class=3D""><br>
<b>Sent:</b> Friday, July 24, 2015 3:21 PM<br>
<b>To:</b> </span></span><a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif">yocto@yoctoproject.org</span></a><span class=3D""><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><br>
<b>Subject:</b> [yocto] QorIQ-SDK-V1.8 fsl-toolchain generation misses libu=
uid<u></u><u></u></span></span></p>
</div>
</div><span class=3D"">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Hi all ,=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">I am using the=C2=A0QorIQ-SDK-V1.8 SDK for the toolchain generation for m=
y ARM board . I followed the instructions in =C2=A0</span><a href=3D"http:/=
/www.freescale.com/infocenter/topic/QORIQSDK/6735542.html" target=3D"_blank=
"><span style=3D"font-family:&quot;Comic Sans MS&quot;">http://www.freescal=
e.com/infocenter/topic/QORIQSDK/6735542.html</span></a><span style=3D"font-=
family:&quot;Comic Sans MS&quot;">
 and was able to successfully generate the toolchain and install the same.=
=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">I was also able to cross compile my hello world program and run the same =
on my board . But when i wanted to test my other programs , i figured that =
they were using the libuuid which was not present
 in the toolchain since it was throwing errors for the uuid.h reference in =
my code.=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">I verified that the SDK had the util-linux recipe in the recipies-core fo=
lder and also this was in the BBLAYER path as well. I saw that the packages=
 were also defined right and this recipe was being
 parsed also when i tried to build it .=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">I used bitbake to run the
</span><a href=3D"http://util-linux_2.24.1.bb" target=3D"_blank"><span styl=
e=3D"font-family:&quot;Comic Sans MS&quot;">util-linux_2.24.1.bb</span></a>=
<span style=3D"font-family:&quot;Comic Sans MS&quot;"> file separately and =
saw that it was able to generate the libuuid but for some reason it is not =
being
 built as part of the toolchain .=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Can you please let me know what changes are required to include it along =
with the toolchain build .<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Thanks and Regards,</span><u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Sarayu K S=C2=A0</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Tech Lead=C2=A0</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Zaikenn Technologies</span><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</span></div>
</div>
</div>
</div>

</blockquote></div><br></div>

--001a113ee77e60992c051ba0e028--
