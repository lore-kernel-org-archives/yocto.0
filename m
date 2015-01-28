Return-Path: <xxultz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70153E0089B; Wed, 28 Jan 2015 02:12:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xxultz[at]gmail.com)
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
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D58CE00815
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 02:12:31 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id b13so15764333qcw.9
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 02:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+qqoZ1b/o6eGIUqMmqZsASnk46/Ho3qF8OWHmmrzCyE=;
	b=S5z64HrBT3P8afaQFLmeEYMY2sS9dcCQx5xvvs3gp4n9CQdGoH11XYAJUBf4gIzHjq
	mh1DtMokCbHCmUaypElAw/PCjv0Oiy//mpQtvDda8ZEKtTTobFpkattoKPFW/FXdoY1T
	l7H/GOzgtR+Ft2xrBzPm4aefhEVpw2ReEjGy0mgp2JGMRBxCzs/Fy+oJqUIfJNhNTvSf
	uReaGWoyhlqvkK+xLbHLg5YE/tO6RiAlhEv2TzuR/nK/D2Z5o0+MTOyzepm5Dor7WhuB
	CgT/tpbxF2STqOK4M1hWNUkMWeCsLpfTY9LG0jwayNZPdnnLAFjYDH27ENeLXUZYtv2a
	TaSQ==
MIME-Version: 1.0
X-Received: by 10.140.29.100 with SMTP id a91mr10777662qga.69.1422439950200;
	Wed, 28 Jan 2015 02:12:30 -0800 (PST)
Received: by 10.140.39.202 with HTTP; Wed, 28 Jan 2015 02:12:30 -0800 (PST)
In-Reply-To: <20150128081610.GB1471@pek-khao-d1.corp.ad.wrs.com>
References: <CAMkbQegMCbT_PsfgtkL9AT3vBH=c0iXgNAkfBnUvZPUjjdn4fQ@mail.gmail.com>
	<20150123020046.GB5908@pek-khao-d1.corp.ad.wrs.com>
	<CAMkbQehGh6s0bKNvejKMCdKSOi=HmtCBc--9=_Dz8JG_=w+Ohg@mail.gmail.com>
	<20150128081610.GB1471@pek-khao-d1.corp.ad.wrs.com>
Date: Wed, 28 Jan 2015 08:12:30 -0200
Message-ID: <CAMkbQeguT9Z7YAyeukqTs_dwuARUBmne77gVhZcYi8yUjbmCSQ@mail.gmail.com>
From: Christian Schultz <xxultz@gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
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
X-List-Received-Date: Wed, 28 Jan 2015 10:12:39 -0000
Content-Type: multipart/alternative; boundary=001a113b42ecf236d8050db39b00

--001a113b42ecf236d8050db39b00
Content-Type: text/plain; charset=UTF-8

Thank you very much, Kevin, I'll try it as soon as possible!

On Wed, Jan 28, 2015 at 6:16 AM, Kevin Hao <kexin.hao@windriver.com> wrote:

> On Mon, Jan 26, 2015 at 10:53:33AM -0200, Christian Schultz wrote:
> > I looked at the doc, and it gives the instructions to write the image to
> othe
> > SD Card and run from the card. I didn't find yet instructions about how
> to
> > write the images to the MMC.
>
> The same commands for writing MMC. You just need to change the mmc block
> device
> to mmcblk1 when you run these commands on target.
>
> >For example, I made an image with Yocto, and from
> > the system, I should create the partitions (for boot and rootfs), format
> them,
> > and copy the contents, but my image lacks the mkfs.vfat and mkfs.ext3,
> so I
> > didn't figure how to setup the MMC memory to receive the files.
>
> Add the following to your local.conf:
>         IMAGE_INSTALL_append = " dosfstools e2fsprogs-mke2fs"
>
> Thanks,
> Kevin
>

--001a113b42ecf236d8050db39b00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much, Kevin, I&#39;ll try it as soon as pos=
sible!</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On We=
d, Jan 28, 2015 at 6:16 AM, Kevin Hao <span dir=3D"ltr">&lt;<a href=3D"mail=
to:kexin.hao@windriver.com" target=3D"_blank">kexin.hao@windriver.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Mon,=
 Jan 26, 2015 at 10:53:33AM -0200, Christian Schultz wrote:<br>
&gt; I looked at the doc, and it gives the instructions to write the image =
to othe<br>
&gt; SD Card and run from the card. I didn&#39;t find yet instructions abou=
t how to<br>
&gt; write the images to the MMC.<br>
<br>
</span>The same commands for writing MMC. You just need to change the mmc b=
lock device<br>
to mmcblk1 when you run these commands on target.<br>
<span class=3D""><br>
&gt;For example, I made an image with Yocto, and from<br>
&gt; the system, I should create the partitions (for boot and rootfs), form=
at them,<br>
&gt; and copy the contents, but my image lacks the mkfs.vfat and mkfs.ext3,=
 so I<br>
&gt; didn&#39;t figure how to setup the MMC memory to receive the files.<br=
>
<br>
</span>Add the following to your local.conf:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 IMAGE_INSTALL_append =3D &quot; dosfstools e2fs=
progs-mke2fs&quot;<br>
<br>
Thanks,<br>
Kevin<br>
</blockquote></div><br></div>

--001a113b42ecf236d8050db39b00--
