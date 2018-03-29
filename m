Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEC15E00944; Thu, 29 Mar 2018 02:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 582A3E008A2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 02:45:48 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id e98-v6so7165258itd.4
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 02:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nJOahwN5nqQWyXEbs8u4OFwemVkahpKZ5VIpjQEMWJY=;
	b=HDKTdl2gbRfGa7RqjQcM5Hhwk4vT4aFNJKpC8yLTdERvGM+q1jsxCgxXqV+x0CUzs9
	yYoFbMYndoVeyl0hhQbIjFt9jEHU38bKiTijbaqPWPI4hgat9RWOMiRq2CQwPZAj8C2A
	hCEyH1OrZeXVwC1Ef1I1RDyolQ0mTwQANZ1RZTXjWF7e6H7NyH/d6qIQav2J0v35kfyL
	Jr4BXPsbbhgIGUQ62y40DmaLiORxnbiM5BVnV6MyVFkirfS+CD7fAS4i+PucAAZC64yZ
	DEzvcEmZwMrLZmK5nwPSOg+yFN92dlzx93RbUEw+2DdzQTGjZMeF9aWQBrwb3Va+UABz
	84pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nJOahwN5nqQWyXEbs8u4OFwemVkahpKZ5VIpjQEMWJY=;
	b=PDHT05w6ikC/pujeFhs6FooHJ2SNH5FvKSvuEZBZu28fXuTb6lowdgCKWlI2sACeXL
	mhaDPuDx5z34d5cmpRIq1UHxma193x9lupiyFeBsVF4cenlyyw8pZccUikPq5sY7R4MO
	u6Xnjaa3E3iss/pyV64ywBbrgJpDu5gUfe66McxOWMCpRb2TPGqqDne63b9mLYrcTzUr
	SvRSiR9K9Vq0Z+uD6yhnqj77I+G1fylJ6PPIml3zSHmoU+cisBXSxnjzpFBnoHkgz0NU
	q56AGIZn6k+ZRXcORGWzz/97KAYjSjRii3i/B8/ztnnuBquSlilbBEu0Yf4Sbyrvw0Nd
	dS4g==
X-Gm-Message-State: AElRT7G3yWuaRM3ZpU++I7Qsk8hXUe4eH2bnMVVeFglnLieukGhRLzPw
	MwrkvSCmoy/fpYeb+qc6AS3oZ7VA1mIiSuslNCU=
X-Google-Smtp-Source: AIpwx4+tPuJ77jB3xslAC3ZwdbQlsG4NAeou0CMVLg0/dtV8PiVvsHPKE/32cXP3BHAy8LJ7di6Ixpmyo+xfrgNwXzI=
X-Received: by 2002:a24:80cb:: with SMTP id
	g194-v6mr6933785itd.67.1522316748361; 
	Thu, 29 Mar 2018 02:45:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.106.23 with HTTP; Thu, 29 Mar 2018 02:45:47 -0700 (PDT)
In-Reply-To: <70e7d121-a3ca-22f0-700b-5a558540baae@gmail.com>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<8e8cf5f3-e5a7-2a2d-dbd3-3ffd261f8682@gmail.com>
	<AM5P192MB0132927EBF4A922322C970F28DA20@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
	<70e7d121-a3ca-22f0-700b-5a558540baae@gmail.com>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Thu, 29 Mar 2018 15:15:47 +0530
Message-ID: <CAET8a4GZXv7eGFgeintPpyxiM6b+hkT2oCw_w9CsUrRbSNhvHw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Thu, 29 Mar 2018 09:45:51 -0000
Content-Type: multipart/alternative; boundary="00000000000005952a056889fd37"

--00000000000005952a056889fd37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vincent,

Its better to create patch and apply from platform specific kernel recipes.

if you need more info let me know.

Thanks!
Prakash

On Thu, Mar 29, 2018 at 1:55 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 3/28/18 11:00 PM, Vincent Daanen wrote:
>
>> On 3/28/18 9:27 AM, Vincent Daanen wrote:
>>>
>>>> Hi,
>>>>
>>>> I want to add CAN driver support to the kernel. Here is the procedure
>>>> I
>>>> followed:
>>>>
>>>>   1. Generate a .config file
>>>>   2. Copy it to meta-myWork/recipes-kernel/linux/files/defconfig
>>>>   3. Update it: set at the end the config to enable CAN as follows
>>>>
>>>> # CAN Bus
>>>>
>>>> CONFIG_NET=3Dy
>>>>
>>>> CONFIG_CAN=3Dy
>>>>
>>>> CONFIG_CAN_RAW=3Dy
>>>>
>>>> CONFIG_CAN_BCM=3Dy
>>>>
>>>> CONFIG_CAN_GW=3Dy
>>>>
>>>> #
>>>>
>>>> # CAN Device Drivers
>>>>
>>>> #
>>>>
>>>> CONFIG_CAN_VCAN=3Dy
>>>>
>>>> # CONFIG_CAN_SLCAN is not set
>>>>
>>>> CONFIG_CAN_DEV=3Dy
>>>>
>>>> # CONFIG_CAN_CALC_BITTIMING is not set
>>>>
>>>> # CONFIG_CAN_LEDS is not set
>>>>
>>>> # CONFIG_CAN_SJA1000 is not set
>>>>
>>>>   4. Update the linux-yocto_%.bbappend file as follows
>>>>
>>>> SUMMARY =3D "Recipe to configure kernel as required"
>>>>
>>>> LICENSE =3D "CLOSED"
>>>>
>>>> inherit kernel-yocto
>>>>
>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>>>
>>>> SRC_URI +=3D file://defconfig
>>>>
>>>>   5. Request rebuilt:
>>>>
>>>> bitbake linux-yocto-rt -c cleansstate
>>>>
>>>> bitbake -k linux-yocto-rt
>>>>
>>>> Once the image started (with qemu), I check if the CAN is enabled
>>>> (using zcat /proc/config.gz | grep CAN) and I always get =E2=80=9CCAN =
not set=E2=80=9D
>>>>
>>>> I also tried using fragment and I got the same result =E2=98=B9
>>>>
>>>> According the user manual, it seems to me I=E2=80=99m doing the right =
think!
>>>>
>>>> Does someone know why my defconfig file is not taken into account ?
>>>>
>>>>
>>> If you are using linux-yocto for your kernel provider then I wouldr
>>> recommend that you look into developer manual.
>>>
>>> you should look into using config fragments to modify the needed
>>> options e.g. see
>>> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#cha
>>> nging-the-configuration
>>>
>>
>> I don't understand what you mean. That's what I'm doing. I followed the
>> procedure described in the link you provide... Can u explain ?
>>
>>
> Create a file for config fragment say can.cfg and put all options you wan=
t
> to change in that file and then add that to SRC_URI
> you dont need to create full defconfig.
>
>
> Thanks
>>
>> Vincent
>>
>> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Thanks and Regards,
Prakash K S
+91 9620140303

--00000000000005952a056889fd37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Vincent, <br><br>Its better to create patch a=
nd apply from platform specific kernel recipes.<br><br></div><div>if you ne=
ed more info let me know.<br><br></div>Thanks!<br></div>Prakash</div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Mar 29, 2018 at=
 1:55 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.c=
om" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 3/28/18 11:00 PM, Vincent Daanen wrote:<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
On 3/28/18 9:27 AM, Vincent Daanen wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I want to add CAN driver support to the kernel. Here is the procedure<br>
I<br>
followed:<br>
<br>
=C2=A0 1. Generate a .config file<br>
=C2=A0 2. Copy it to meta-myWork/recipes-kernel/lin<wbr>ux/files/defconfig<=
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
SRC_URI +=3D file://defconfig<br>
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
I also tried using fragment and I got the same result =E2=98=B9<br>
<br>
According the user manual, it seems to me I=E2=80=99m doing the right think=
!<br>
<br>
Does someone know why my defconfig file is not taken into account ?<br>
<br>
</blockquote>
<br>
If you are using linux-yocto for your kernel provider then I wouldr recomme=
nd that you look into developer manual.<br>
<br>
you should look into using config fragments to modify the needed<br>
options e.g. see<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.h=
tml#cha" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/=
d<wbr>ocs/latest/kernel-dev/kernel-d<wbr>ev.html#cha</a><br>
nging-the-configuration<br>
</blockquote>
<br></div></div>
I don&#39;t understand what you mean. That&#39;s what I&#39;m doing. I foll=
owed the procedure described in the link you provide... Can u explain ?<br>
<br>
</blockquote>
<br>
Create a file for config fragment say can.cfg and put all options you want =
to change in that file and then add that to SRC_URI<br>
you dont need to create full defconfig.<div class=3D"HOEnZb"><div class=3D"=
h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks<br>
<br>
Vincent<br>
<br>
</blockquote>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">Thanks and Regards,=
<div>Prakash K S</div><div>+91 9620140303</div></div>
</div>

--00000000000005952a056889fd37--
