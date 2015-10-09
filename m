Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62658E00E5D; Fri,  9 Oct 2015 03:38:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF9A5E00804
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 03:38:56 -0700 (PDT)
Received: by qgez77 with SMTP id z77so65073997qge.1
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 03:38:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wUN0JEJx2pxO8hzTUtEKzsjtKuHD/AJUIlXcIBWE+hI=;
	b=G8hg8Dc65aHKvlowMLnIHqp0h72ScEhUFFn0dLAJFP0mSQhK9W+77TKFUbYZpJVEYa
	6jAnhOTIdl55gx9ApccFNt2peXvzsnlCiV5oS4v/HyPQ/I8CHSKkR+UIW5VUHj/7Z3ZH
	j440MbLuRS4mfIf3BFMi1DLtbQwGlKGBrP/42IVWX7CN4lpNbSAcVsiqnvLYsAA5hsmt
	gKAUvSCho/vqygNaMQgqW0FvxvKT8uK2wr8xGBffloZ97FoU1Q2+hLNhZDLYFeFt6FvN
	gfo23dvV5gjacOl+eVonWz5tRfkCcK+louGRwbyKk66LzA+utYfiFi1tvvIHkyo+S3am
	sk1A==
X-Gm-Message-State: ALoCoQn1Ya+/wT6Vf+6B6IDaPOSdG8dkEfZnY6VTKWc4rvaEGN3SMi50SXTOLrPFyJLsngdwycUL
X-Received: by 10.140.20.20 with SMTP id 20mr14059263qgi.87.1444387135849;
	Fri, 09 Oct 2015 03:38:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Fri, 9 Oct 2015 03:38:36 -0700 (PDT)
In-Reply-To: <CALLyC8Qu-X9LrhXqdUcLiAdT6DmROO_4DVp5ius0e+TcdV1bVw@mail.gmail.com>
References: <CALLyC8Sk+k9jJCRByejYnO1WfmOx9849XuRqB3bxG538Gs1pyQ@mail.gmail.com>
	<7c6d997df3e4c21753d1bb54c9bd42fe@technux.se>
	<CALLyC8Qu-X9LrhXqdUcLiAdT6DmROO_4DVp5ius0e+TcdV1bVw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Oct 2015 11:38:36 +0100
Message-ID: <CAJTo0LZ++taoRcBzGt=ooGSFPRDdF4XvGrpfd0ALHthhAwpW9w@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Can any one please tell the what is the exact difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Fri, 09 Oct 2015 10:38:57 -0000
Content-Type: multipart/alternative; boundary=001a11c13cbc26b8cc0521a99638

--001a11c13cbc26b8cc0521a99638
Content-Type: text/plain; charset=UTF-8

On 9 October 2015 at 10:16, Vivek Per <pervivek@gmail.com> wrote:

>  I have one more doubt when RDEPENDS variable depends is packages . Do you
> know why RDEPENDS variable in (rootfs-image.bb recipe) which inherit
> core-image. why RDEPENDS cant able to install packages in final roofs image
> apart from IMAGE_INSTALL .
>

Because an image isn't a package.  RDEPENDS works on packages.  To specify
what goes into an image, use IMAGE_INSTALL and related variables.

Ross

--001a11c13cbc26b8cc0521a99638
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 October 2015 at 10:16, Vivek Per <span dir=3D"ltr">&lt;<a href=3D"mail=
to:pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0I have one more doubt w=
hen RDEPENDS variable depends is packages . Do you know why RDEPENDS variab=
le in (<a href=3D"http://rootfs-image.bb" target=3D"_blank">rootfs-image.bb=
</a> recipe) which inherit core-image. why RDEPENDS cant able to install pa=
ckages in final roofs image apart from IMAGE_INSTALL .</div><div></div></bl=
ockquote></div><br>Because an image isn&#39;t a package.=C2=A0 RDEPENDS wor=
ks on packages.=C2=A0 To specify what goes into an image, use IMAGE_INSTALL=
 and related variables.</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></div>

--001a11c13cbc26b8cc0521a99638--
