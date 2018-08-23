Return-Path: <wuampabaluba@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F188E00460; Thu, 23 Aug 2018 06:41:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wuampabaluba[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A7AE003C1
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 06:41:53 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id k12-v6so9300580oiw.8
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 06:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OEm/eagNcy+W6GiIjDVErltzlXlkjVmw1CRmNF3DrMY=;
	b=upqJm0+xTRMhZ9q1xVNNfDqKRLh2QlHrwH6BlpO3TcCmZ2Sg44dQ5AMFboy2gAJC7N
	BirYox5+OlfhmxW8NQ22/vFTmeI2BsdsjagpIGzjuPCzfATSVkpdoj/8RVxdeK7kOTIi
	HR98QDjH3RqE5ut3qHvmTGBePfPoRRaC8hasntyhoUis4c0l2BUCwyQd9/w8cZmvPBP7
	648RtGDuEKfxKgzVy4W5mjUOwsIEvgs7BP75xbjQPCim8N8wqtnPjFjDJbLAqq8aUGeL
	TsiMk9bx2My3A8MYPoCI5dlvW209W01d1OthqxWzXwnFAJYFk6kkvz9o6nzmUDo45PQh
	plsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OEm/eagNcy+W6GiIjDVErltzlXlkjVmw1CRmNF3DrMY=;
	b=SjVGZSpvugV5QhYNXpoFby7R8ikLPtgv4YIRt4eLUBqeTAEC0wtAo4tju1St+iwTJZ
	abbBVZ3PxU6X0xahYoOnLln8DnTcIB0dDBpDaEGSK45OooBlCXuJzCjD8MStf98b16J1
	CN2AtFC8A6UY7wtwosi/O9SP78KiEIV+x4aATh67kIN4iGcFYRUUvBL80bTzIYt9XX1k
	qhSMxrF/qhSOxBcqEO9usDkYEMa/PQX5eHCNiDM8SNOq7Ao1E1ZkRA3rRKoeIAzXgquW
	ktBnfU0826cmrF+8hlqBIRe5BUekLg+hdemtsn16vCOpPHu8YU1CagaGjjXjXvy/KB7Z
	rUFg==
X-Gm-Message-State: APzg51CP8ZpasKF6vjhPnC/FWovAsvl7cRtLP6hoOGY6cphwmE90DtCr
	TvKxcDbjBVYfCXL66ohF+Up/tao2ZJG8GNR30vPpmaId
X-Google-Smtp-Source: ANB0Vdax4kjs7mzSd2m7kbdGt8I5AHZlqR0w18yUNhctGibYWXmcmtieRQ7Arpy3IgPpa+L4P8fRXB2dxnAb2+/e+4E=
X-Received: by 2002:aca:e0c2:: with SMTP id
	x185-v6mr9001715oig.220.1535031712787; 
	Thu, 23 Aug 2018 06:41:52 -0700 (PDT)
MIME-Version: 1.0
From: Albert-Miquel <wuampabaluba@gmail.com>
Date: Thu, 23 Aug 2018 15:42:37 +0200
Message-ID: <CAC6N2P9EsYUDO=Zr=CVLpDnHFKnG0L0q0HBRGzNC=wbz7kO1aw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 23 Aug 2018 07:31:12 -0700
Subject: Generation of an image of an edited Ubuntu rootfs
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
X-List-Received-Date: Thu, 23 Aug 2018 13:41:54 -0000
Content-Type: multipart/alternative; boundary="000000000000f5b8c105741a6b5f"

--000000000000f5b8c105741a6b5f
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm mainly a VHDL developer, although in our last project I've started
working with an embedded Linux installed in a ZYNQ from Xilinx that
combines logic with several processors.

Due to my lack of knowledge, I started using the rootfs of an embedded
ubuntu to develop the software (as described here
<https://medium.com/developments-and-implementations-on-zynq-7000-ap/install-ubuntu-16-04-lts-on-zynq-zc702-using-petalinux-2016-4-e1da902eaff7>),
since it was easier for me to install the necessary packages, while the
BOOT and other files were created with Petalinux (I did not know about
Yocto at the beginning). To sum up, the ZYNQ is running Ubuntu on one of
the processors (while the baremetal code that controls the firmware is run
on the other one). Everything is currently (and temporarily) running from
the SD card, so that the SD has two partitions, one called BOOT (containing
the files BOOT.BIN, image.ub and system.dtb), and another one with the
rootfs tree. I have been working with this scheme for a while, installing
several packages and developing some applications. Thus, rootfs has far
evolved from the initial one.

My intention now is to set SWUpdate
<https://sbabic.github.io/swupdate/swupdate.html> to remotely update all
the software everytime a new version is released, so that I should generate
an image of each of the two partitions. The problem is that I do not know
which should be the right steps to generate these images. As I understood,
Yocto can provide a clean rootfs, but I've not been able to find the way to
integrate your own rootfs. Considering the situation described here, is
there any tutorial/web/anything that could be used as a guide (for dummies)
to suitable generate the images using Yocto? Any help will be greatly
welcome.

Thank you very much in advance,

Albert

--000000000000f5b8c105741a6b5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font=
-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inher=
it;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helveti=
ca,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;cle=
ar:both;color:rgb(36,39,41)">Hello all,</p><p style=3D"margin:0px 0px 1em;p=
adding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-stretch:inherit;line-height:inherit;font-family:Arial,&quot;He=
lvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align:basel=
ine;box-sizing:inherit;clear:both;color:rgb(36,39,41)">I&#39;m mainly a VHD=
L developer, although in our last project I&#39;ve started working with an =
embedded Linux installed in a ZYNQ from Xilinx=C2=A0that combines logic wit=
h several processors.</p><p style=3D"margin:0px 0px 1em;padding:0px;border:=
0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stret=
ch:inherit;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;=
,Helvetica,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inh=
erit;clear:both;color:rgb(36,39,41)">Due to my lack of knowledge, I started=
 using the=C2=A0rootfs=C2=A0of an embedded ubuntu to develop the software (=
as described <a href=3D"https://medium.com/developments-and-implementations=
-on-zynq-7000-ap/install-ubuntu-16-04-lts-on-zynq-zc702-using-petalinux-201=
6-4-e1da902eaff7">here</a>), since it was easier for me to install the nece=
ssary packages, while the BOOT and other files were created with Petalinux =
(I did not know about Yocto at the beginning). To sum up, the ZYNQ is runni=
ng Ubuntu on one of the processors (while the=C2=A0baremetal code that cont=
rols the firmware is run on the other one). Everything is currently (and te=
mporarily) running from the SD card, so that the SD has two partitions, one=
 called BOOT (containing the files BOOT.BIN, image.ub and system.dtb), and =
another one with the rootfs=C2=A0tree. I have been working with this scheme=
 for a while, installing several packages and developing some applications.=
 Thus, rootfs=C2=A0has far evolved from the initial one.</p><p style=3D"mar=
gin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:inherit;font-va=
riant-east-asian:inherit;font-stretch:inherit;line-height:inherit;font-fami=
ly:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;ver=
tical-align:baseline;box-sizing:inherit;clear:both;color:rgb(36,39,41)">My =
intention now is to set=C2=A0<a href=3D"https://sbabic.github.io/swupdate/s=
wupdate.html" rel=3D"nofollow noreferrer" style=3D"margin:0px;padding:0px;b=
order:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-=
stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:base=
line;box-sizing:inherit;color:rgb(0,89,153)">SWUpdate</a>=C2=A0to remotely =
update all the software everytime a new version is released, so that I shou=
ld generate an image of each of the two partitions. The problem is that I d=
o not know which=C2=A0should be the right steps to generate these images. A=
s I understood, Yocto can provide a clean rootfs, but I&#39;ve not been abl=
e to find the way to integrate your own rootfs. Considering the situation d=
escribed here, is there any tutorial/web/anything that could be used as a g=
uide (for dummies) to suitable generate the images using Yocto? Any help wi=
ll be greatly welcome.</p><p style=3D"margin:0px 0px 1em;padding:0px;border=
:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stre=
tch:inherit;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot=
;,Helvetica,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:in=
herit;clear:both;color:rgb(36,39,41)">Thank you very much in advance,</p><p=
 style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:in=
herit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inhe=
rit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-=
size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(3=
6,39,41)">Albert</p></div>

--000000000000f5b8c105741a6b5f--
