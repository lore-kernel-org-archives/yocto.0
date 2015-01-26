Return-Path: <xxultz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A4EBE0076F; Mon, 26 Jan 2015 04:53:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MALFORMED_FREEMAIL, 
	MISSING_HEADERS,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xxultz[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
	* 2.8 MALFORMED_FREEMAIL Bad headers on message from free email service
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79AC6E003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 04:53:34 -0800 (PST)
Received: by mail-qa0-f42.google.com with SMTP id dc16so6491171qab.1
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 04:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=e3EB9ZWzbJ2NjPG4nI+s76VdekCs0IQjPEWjvjiU2i8=;
	b=WQHuIAmOuK1l7hCUxEp+H+RsQmTy5RC6db631UpSUJwzO8CRTxnhv9i7y31Ela1TYB
	05CmIUXOdBjcuPsWGn4XAfRRNoe36onqxggsgAMl8K3UaKIpsp4b+vNusK5iRbz5y1T1
	4a/amA9icGSEDMmYj1sbwhQgQZtdqY0MrIuJyjwoE4YYycRiq2Ib2nVkwGGFOMl1LOzh
	sS2QrIhKY2/kgnAOI/See+b3Xibs5r02uhNzkWeLxZUMZdDwkBedpdIXNSpRTpgxznpI
	H10XofwIXGtmMm56YP9LL4IEQO/BVtPGF2VfRz/taB1ULVqi92jCHt6jsErxbl63qGmq
	ZEeA==
MIME-Version: 1.0
X-Received: by 10.140.102.72 with SMTP id v66mr39784424qge.31.1422276813964;
	Mon, 26 Jan 2015 04:53:33 -0800 (PST)
Received: by 10.140.39.202 with HTTP; Mon, 26 Jan 2015 04:53:33 -0800 (PST)
In-Reply-To: <20150123020046.GB5908@pek-khao-d1.corp.ad.wrs.com>
References: <CAMkbQegMCbT_PsfgtkL9AT3vBH=c0iXgNAkfBnUvZPUjjdn4fQ@mail.gmail.com>
	<20150123020046.GB5908@pek-khao-d1.corp.ad.wrs.com>
Date: Mon, 26 Jan 2015 10:53:33 -0200
Message-ID: <CAMkbQehGh6s0bKNvejKMCdKSOi=HmtCBc--9=_Dz8JG_=w+Ohg@mail.gmail.com>
From: Christian Schultz <xxultz@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Installing a Yocto image on BeagleBone Black MMC
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
X-List-Received-Date: Mon, 26 Jan 2015 12:53:46 -0000
Content-Type: multipart/alternative; boundary=001a11c16d6244ccda050d8da0f2

--001a11c16d6244ccda050d8da0f2
Content-Type: text/plain; charset=UTF-8

I looked at the doc, and it gives the instructions to write the image to
othe SD Card and run from the card. I didn't find yet instructions about
how to write the images to the MMC. For example, I made an image with
Yocto, and from the system, I should create the partitions (for boot and
rootfs), format them, and copy the contents, but my image lacks the
mkfs.vfat and mkfs.ext3, so I didn't figure how to setup the MMC memory to
receive the files.

Can somebody please help me with those steps?

Best regards
Christian

On Fri, Jan 23, 2015 at 12:00 AM, Kevin Hao <kexin.hao@windriver.com> wrote:

> On Thu, Jan 22, 2015 at 09:41:51AM -0200, Christian Schultz wrote:
> > Hello
> >
> > I'm new to Yocto, I baked a core-image-minimal and booted it via SD Card
> on my
> > BeagleBone Black. I erased the contents on the MMC in order to boot from
> SD
> > Card.
> > I'm searching for instructions on how do I install or flash the MMC with
> the
> > Yocto image I created, in order to boot the image without the SD Card,
> but I
> > can't find how to do it, anyone knows where I can find such instructions?
>
> Have you looked at the README.hardware in yocto? There are steps about how
> to
> flash the SD card in a host environment. You can copy the built images to
> the
> SD card and then use the same steps to flash the eMMC on the target. Please
> remember to change the block device to mmcblk1 when you are executing these
> commands on target.
>
> Thanks,
> Kevin
>

--001a11c16d6244ccda050d8da0f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I looked at the doc, and it gives the instructions to writ=
e the image to othe SD Card and run from the card. I didn&#39;t find yet in=
structions about how to write the images to the MMC. For example, I made an=
 image with Yocto, and from the system, I should create the partitions (for=
 boot and rootfs), format them, and copy the contents, but my image lacks t=
he mkfs.vfat and mkfs.ext3, so I didn&#39;t figure how to setup the MMC mem=
ory to receive the files.=C2=A0<div><br></div><div>Can somebody please help=
 me with those steps?</div><div><br></div><div>Best regards</div><div>Chris=
tian</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Fri, Jan 23, 2015 at 12:00 AM, Kevin Hao <span dir=3D"ltr">&lt;<a href=3D=
"mailto:kexin.hao@windriver.com" target=3D"_blank">kexin.hao@windriver.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZ=
b"><div class=3D"h5">On Thu, Jan 22, 2015 at 09:41:51AM -0200, Christian Sc=
hultz wrote:<br>
&gt; Hello<br>
&gt;<br>
&gt; I&#39;m new to Yocto, I baked a core-image-minimal and booted it via S=
D Card on my<br>
&gt; BeagleBone Black. I erased the contents on the MMC in order to boot fr=
om SD<br>
&gt; Card.<br>
&gt; I&#39;m searching for instructions on how do I install or flash the MM=
C with the<br>
&gt; Yocto image I created, in order to boot the image without the SD Card,=
 but I<br>
&gt; can&#39;t find how to do it, anyone knows where I can find such instru=
ctions?<br>
<br>
</div></div>Have you looked at the README.hardware in yocto? There are step=
s about how to<br>
flash the SD card in a host environment. You can copy the built images to t=
he<br>
SD card and then use the same steps to flash the eMMC on the target. Please=
<br>
remember to change the block device to mmcblk1 when you are executing these=
<br>
commands on target.<br>
<br>
Thanks,<br>
Kevin<br>
</blockquote></div><br></div>

--001a11c16d6244ccda050d8da0f2--
