Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D987E0090A; Thu, 29 Mar 2018 04:06:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (prakashpks15[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A77E0084A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 04:06:07 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id 19-v6so7422094itw.3
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 04:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fok+NdTYiAx5igYojhGRdFupyZXHeGM8v8Q6jJrlctY=;
	b=XqqVuFsSpvgLO4GaKZUVmNEmqhB2BmJX4fXhrClaDtCRw+h4FHvpQJfm4BwdWJ7i7V
	pGF2qktrx6T3Jz/IbeRKqImu2Fyk2HLybEalOtqB9dd8pcWTv8kd3k8cpkrtMbJq2Y1V
	y0ktWMGizMhNuJwEMeUQH0hPKrmHHIGggvRPCF8tNehSFQMSjyu8C/HXWNoH8K2y1vP+
	6gOs1xzQ2PN5q5l4PQEZ+txGgo+aZoAPiVn16ECvbOf8f3fy4krPp9m4jQrostHQHAn1
	AI5jWunN0cM2aymt6XL7cOUtVVFoZoAC65+jT5eCQr4HJ12nlEfDeM47IN73V9ZuALoy
	9yJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fok+NdTYiAx5igYojhGRdFupyZXHeGM8v8Q6jJrlctY=;
	b=SECqgqkSdwis15QDDT79HSzVWJeVHtsFixl/ndtzAOpWZ+aefTWxjMz/D/rqBIj+aB
	3UM4gDJIy+uOjH++AvhzZ7NxUeqNF26wEL4o0Aq96MWhgbmvWAuthKiDcEShYySZTeVo
	DHQEErZ458gM6h7hGPBADvJEPjfG04NYP4yulFv6JfjYaR9lAreHPc+w4y3okEdA50+H
	mJcxkDy4vNxTa/oChV4V+lRVkt4NGbkQCLVvT05l1RC//3u5Qevqching4miWZMFf+XE
	zDp/weFL5cF0bQ1AQkCv1vlFxM+Y7nXCUB6VN/EVe5djCcXkRfSW51ffHQUB6ImtbFMv
	I4RQ==
X-Gm-Message-State: AElRT7HxCILSw3AnZxnNMA4Ejq8h0s8uG9wuehEULYOof4hS/3EmckID
	8+dHhgbZusVJGLSeiyNPnv39TE2or1KJ6hCBnh8=
X-Google-Smtp-Source: AIpwx4/aEGc5JJUfPWSgRxOL6cViOsUsxnSIsml83f/BRc4zIY5ftxNWvEq5SMv1gwQc0qpftBmxSZyxBigf58awWno=
X-Received: by 2002:a24:80cb:: with SMTP id
	g194-v6mr7171358itd.67.1522321566875; 
	Thu, 29 Mar 2018 04:06:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.106.23 with HTTP; Thu, 29 Mar 2018 04:06:06 -0700 (PDT)
In-Reply-To: <VI1P192MB0143BCCF8641BF532DD174A88DA20@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<8e8cf5f3-e5a7-2a2d-dbd3-3ffd261f8682@gmail.com>
	<AM5P192MB0132927EBF4A922322C970F28DA20@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
	<70e7d121-a3ca-22f0-700b-5a558540baae@gmail.com>
	<CAET8a4GZXv7eGFgeintPpyxiM6b+hkT2oCw_w9CsUrRbSNhvHw@mail.gmail.com>
	<VI1P192MB0143BCCF8641BF532DD174A88DA20@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Thu, 29 Mar 2018 16:36:06 +0530
Message-ID: <CAET8a4Ehyeup1jPzrtqR-vmXims88Bk3xfvcOQZCF5dXB7UL-g@mail.gmail.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Thu, 29 Mar 2018 11:06:09 -0000
Content-Type: multipart/alternative; boundary="0000000000003a517305688b1c35"

--0000000000003a517305688b1c35
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

just create patch and run bitbake -c patch recipename, then check defconfig
file in your build folder, if your patch worked properly then the changes
will be available in your defconfig file.


Thanks!
Prakash

On Thu, Mar 29, 2018 at 4:12 PM, Vincent Daanen <
vincent.daanen@orthotaxy.com> wrote:

> Hi,
>
>
>
> What=E2=80=99s the difference between fragment and patch ?
>
> I can easily make a patch but how do I make sure the patch will be applie=
d
> to the .config file ?
>
>
>
> Thanks for your help
>
>
>
> Vincent
>
>
>
> *De :* Prakash Ks <prakashpks15@gmail.com>
> *Envoy=C3=A9 :* jeudi 29 mars 2018 11:46
> *=C3=80 :* Khem Raj <raj.khem@gmail.com>
> *Cc :* Vincent Daanen <vincent.daanen@orthotaxy.com>;
> yocto@yoctoproject.org
> *Objet :* Re: [yocto] defconfig file (or fragment files) not used
>
>
>
> Hi Vincent,
>
> Its better to create patch and apply from platform specific kernel recipe=
s.
>
> if you need more info let me know.
>
> Thanks!
>
> Prakash
>
>
>
> On Thu, Mar 29, 2018 at 1:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 3/28/18 11:00 PM, Vincent Daanen wrote:
>
> On 3/28/18 9:27 AM, Vincent Daanen wrote:
>
> Hi,
>
> I want to add CAN driver support to the kernel. Here is the procedure
> I
> followed:
>
>   1. Generate a .config file
>   2. Copy it to meta-myWork/recipes-kernel/linux/files/defconfig
>   3. Update it: set at the end the config to enable CAN as follows
>
> # CAN Bus
>
> CONFIG_NET=3Dy
>
> CONFIG_CAN=3Dy
>
> CONFIG_CAN_RAW=3Dy
>
> CONFIG_CAN_BCM=3Dy
>
> CONFIG_CAN_GW=3Dy
>
> #
>
> # CAN Device Drivers
>
> #
>
> CONFIG_CAN_VCAN=3Dy
>
> # CONFIG_CAN_SLCAN is not set
>
> CONFIG_CAN_DEV=3Dy
>
> # CONFIG_CAN_CALC_BITTIMING is not set
>
> # CONFIG_CAN_LEDS is not set
>
> # CONFIG_CAN_SJA1000 is not set
>
>   4. Update the linux-yocto_%.bbappend file as follows
>
> SUMMARY =3D "Recipe to configure kernel as required"
>
> LICENSE =3D "CLOSED"
>
> inherit kernel-yocto
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> SRC_URI +=3D file://defconfig
>
>   5. Request rebuilt:
>
> bitbake linux-yocto-rt -c cleansstate
>
> bitbake -k linux-yocto-rt
>
> Once the image started (with qemu), I check if the CAN is enabled
> (using zcat /proc/config.gz | grep CAN) and I always get =E2=80=9CCAN not=
 set=E2=80=9D
>
> I also tried using fragment and I got the same result =E2=98=B9
>
> According the user manual, it seems to me I=E2=80=99m doing the right thi=
nk!
>
> Does someone know why my defconfig file is not taken into account ?
>
>
> If you are using linux-yocto for your kernel provider then I wouldr
> recommend that you look into developer manual.
>
> you should look into using config fragments to modify the needed
> options e.g. see
> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#cha
> nging-the-configuration
>
>
>
> I don't understand what you mean. That's what I'm doing. I followed the
> procedure described in the link you provide... Can u explain ?
>
>
> Create a file for config fragment say can.cfg and put all options you wan=
t
> to change in that file and then add that to SRC_URI
> you dont need to create full defconfig.
>
>
>
> Thanks
>
> Vincent
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
>
> Thanks and Regards,
>
> Prakash K S
>
> +91 9620140303
>



--=20
Thanks and Regards,
Prakash K S
+91 9620140303

--0000000000003a517305688b1c35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>just create patch and run bitbake -c patch recip=
ename, then check defconfig file in your build folder, if your patch worked=
 properly then the changes will be available in your defconfig file.<br><br=
><br></div>Thanks!<br></div>Prakash<br></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Thu, Mar 29, 2018 at 4:12 PM, Vincent Daanen=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:vincent.daanen@orthotaxy.com" targ=
et=3D"_blank">vincent.daanen@orthotaxy.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-GB">
<div class=3D"m_6021587783956004427WordSection1">
<p class=3D"MsoNormal"><span>Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>What=E2=80=99s the difference between fragment=
 and patch ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>I can easily make a patch but how do I make su=
re the patch will be applied to the .config file ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Thanks for your help<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Vincent<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"FR">De=C2=A0:</span></b><span lang=
=3D"FR"> Prakash Ks &lt;<a href=3D"mailto:prakashpks15@gmail.com" target=3D=
"_blank">prakashpks15@gmail.com</a>&gt;
<br>
<b>Envoy=C3=A9=C2=A0:</b> jeudi 29 mars 2018 11:46<br>
<b>=C3=80=C2=A0:</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" tar=
get=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
<b>Cc=C2=A0:</b> Vincent Daanen &lt;<a href=3D"mailto:vincent.daanen@orthot=
axy.com" target=3D"_blank">vincent.daanen@orthotaxy.com</a>&gt;<wbr>; <a hr=
ef=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.o=
rg</a><br>
<b>Objet=C2=A0:</b> Re: [yocto] defconfig file (or fragment files) not used=
<u></u><u></u></span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi Vincent, <br>
<br>
Its better to create patch and apply from platform specific kernel recipes.=
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">if you need more info=
 let me know.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Thanks!<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Prakash<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Thu, Mar 29, 2018 at 1:55 PM, Khem Raj &lt;<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><br>
<br>
On 3/28/18 11:00 PM, Vincent Daanen wrote:<u></u><u></u></p>
</div>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">On 3/28/18 9:27 AM, Vincent Daanen wrote:<u></u><u><=
/u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<br>
<br>
I want to add CAN driver support to the kernel. Here is the procedure<br>
I<br>
followed:<br>
<br>
=C2=A0 1. Generate a .config file<br>
=C2=A0 2. Copy it to meta-myWork/recipes-kernel/<wbr>linux/files/defconfig<=
br>
=C2=A0 3. Update it: set at the end the config to enable CAN as follows<br>
<br>
# CAN Bus<br>
<br>
CONFIG_NET=3Dy<br>
<br>
CONFIG_CAN=3Dy<br>
<br>
CONFIG_CAN_RAW=3Dy<br>
<br>
CONFIG_CAN_BCM=3Dy<br>
<br>
CONFIG_CAN_GW=3Dy<br>
<br>
#<br>
<br>
# CAN Device Drivers<br>
<br>
#<br>
<br>
CONFIG_CAN_VCAN=3Dy<br>
<br>
# CONFIG_CAN_SLCAN is not set<br>
<br>
CONFIG_CAN_DEV=3Dy<br>
<br>
# CONFIG_CAN_CALC_BITTIMING is not set<br>
<br>
# CONFIG_CAN_LEDS is not set<br>
<br>
# CONFIG_CAN_SJA1000 is not set<br>
<br>
=C2=A0 4. Update the linux-yocto_%.bbappend file as follows<br>
<br>
SUMMARY =3D &quot;Recipe to configure kernel as required&quot;<br>
<br>
LICENSE =3D &quot;CLOSED&quot;<br>
<br>
inherit kernel-yocto<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
<br>
SRC_URI +=3D <a>file://defconfig</a><br>
<br>
=C2=A0 5. Request rebuilt:<br>
<br>
bitbake linux-yocto-rt -c cleansstate<br>
<br>
bitbake -k linux-yocto-rt<br>
<br>
Once the image started (with qemu), I check if the CAN is enabled<br>
(using zcat /proc/config.gz | grep CAN) and I always get =E2=80=9CCAN not s=
et=E2=80=9D<br>
<br>
I also tried using fragment and I got the same result <span style=3D"font-f=
amily:&quot;Segoe UI Emoji&quot;,sans-serif">
=E2=98=B9</span><br>
<br>
According the user manual, it seems to me I=E2=80=99m doing the right think=
!<br>
<br>
Does someone know why my defconfig file is not taken into account ?<u></u><=
u></u></p>
</blockquote>
<p class=3D"MsoNormal"><br>
If you are using linux-yocto for your kernel provider then I wouldr recomme=
nd that you look into developer manual.<br>
<br>
you should look into using config fragments to modify the needed<br>
options e.g. see<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.h=
tml#cha" target=3D"_blank">https://www.yoctoproject.org/<wbr>docs/latest/ke=
rnel-dev/kernel-<wbr>dev.html#cha</a><br>
nging-the-configuration<u></u><u></u></p>
</blockquote>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I don&#39;t understan=
d what you mean. That&#39;s what I&#39;m doing. I followed the procedure de=
scribed in the link you provide... Can u explain ?<u></u><u></u></p>
</blockquote>
<p class=3D"MsoNormal"><br>
Create a file for config fragment say can.cfg and put all options you want =
to change in that file and then add that to SRC_URI<br>
you dont need to create full defconfig.<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=C2=A0<u></u><=
/p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Thanks<br>
<br>
Vincent<u></u><u></u></p>
</blockquote>
<p class=3D"MsoNormal">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><u></u><u></u></p>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<br>
-- <u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Thanks and Regards,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Prakash K S<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">+91 9620140303<u></u><u></u></p>
</div>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature">Thanks and Regards,<div>Prakash =
K S</div><div>+91 9620140303</div></div>
</div>

--0000000000003a517305688b1c35--
