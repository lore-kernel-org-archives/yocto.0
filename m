Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 090E0E00B36; Wed, 10 Feb 2016 18:03:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F5C4E00ADD
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 18:03:04 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id c200so54031976wme.0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 18:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lzf+paXIZ6qiOTxztsy0ZTk03b8yYduMNcUag/lZI4k=;
	b=VYUAf+/yhmBcMJl5VgchmWYhCvmEoGd4E+Wkx6IwBLquV0wuep2xN17Tp9jO83ZLrz
	EW2ufWxogZrCgMQPbWiiRJXw3RUUfb7nKKDbfbesw12k1lviShyYMNbfZyTYSYTSg5x8
	L07715meqakn30Sv34Czk8gre6XmgKzZnWeQat54dvu03yiSwCw2pBtCBlUl+3jNHuWG
	BfRYLX5Is6JsPolRbZ7S0g0SYWJX7xWu0CzJy53hSCITRzxAQs2Ua4MH1Rf8Tzy0jMdJ
	cMYxue6SA/HV9b5AacbDSmE2xsbf6dOUzRQd0ukFWVJHNPyOiOZf+o7wCprfgwPHTVeJ
	X3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=lzf+paXIZ6qiOTxztsy0ZTk03b8yYduMNcUag/lZI4k=;
	b=aRiSGo9BwgdRTpXTV0I+IoORvGvSfws2q6t0SN+cnf8ktSLYmDkHU9Vr7yYPdzE9dy
	2ZaivMb3a7HxhHPatmYPK5G4/YyKR+VefIUqAe9mUA2Jy8PicvX3SCP5NAW+oZFUQwel
	DbZ/UKxMB30SvVgFp/1DV6i14NQas/PswWUk3Akw1AUeYwaF3+Gb6StrsfiR+avzOksW
	HH3IaMCaS0W16UllGLGhC4q4KFQoUBs7t2aI4t54otSSU9qzMqPs4noiytdP6rSiuRuW
	gfxplWlq2CojaTJp8iL17nGByiiU62YPPA0Vd4h2/dtfrYMtd6RA8akPVbDRtRv49ENP
	7Nug==
X-Gm-Message-State: AG10YORHrIg7/OYnFXr9P3bZ1Hy5WuWieuw9nZBB9+zGOT7EnGuwyIJoFzapWf1HP1GpS5v5pN5cU+4OpTQUSQ==
MIME-Version: 1.0
X-Received: by 10.28.144.196 with SMTP id s187mr15016214wmd.9.1455156183571;
	Wed, 10 Feb 2016 18:03:03 -0800 (PST)
Received: by 10.27.53.129 with HTTP; Wed, 10 Feb 2016 18:03:03 -0800 (PST)
Received: by 10.27.53.129 with HTTP; Wed, 10 Feb 2016 18:03:03 -0800 (PST)
In-Reply-To: <56BB7201.4080904@mentor.com>
References: <56BB7201.4080904@mentor.com>
Date: Wed, 10 Feb 2016 21:03:03 -0500
Message-ID: <CANge7vX2N-mZXJsmJHTNfx7eRFohNgAanc7k=m37vF8eOaMyCw@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
To: "Usman, Fahad" <Fahad_Usman@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: wic: Setting partition id value?
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
X-List-Received-Date: Thu, 11 Feb 2016 02:03:07 -0000
Content-Type: multipart/alternative; boundary=001a114737886a24df052b74f3a4

--001a114737886a24df052b74f3a4
Content-Type: text/plain; charset=UTF-8

On Feb 10, 2016 12:24 PM, "Usman, Fahad" <Fahad_Usman@mentor.com> wrote:
>
> Hi,
> Is there a way to create a partition with an arbitrary partition id,
using wic tool. We want to create a disk image using wic for Altera Cyclone
V. It require the partition id to be set to a particular hex value for the
partition it reads the boot loader binary from. The partition id does get
set automatically to the correct value depending on the value of fstype
(eg. 0x83 for ext3 or 0x0c for fat32), but I couldn't find a way to set it
to an arbitrary value.
>

I ran into this problem as well, but with parted. My hack was to use dd to
write the correct type ID into the image's MBR after I finished creating
the partitions on the image file.

--001a114737886a24df052b74f3a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Feb 10, 2016 12:24 PM, &quot;Usman, Fahad&quot; &lt;<a href=3D"mailto:Fa=
had_Usman@mentor.com">Fahad_Usman@mentor.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; Is there a way to create a partition with an arbitrary partition id, u=
sing wic tool. We want to create a disk image using wic for Altera Cyclone =
V. It require the partition id to be set to a particular hex value for the =
partition it reads the boot loader binary from. The partition id does get s=
et automatically to the correct value depending on the value of fstype (eg.=
 0x83 for ext3 or 0x0c for fat32), but I couldn&#39;t find a way to set it =
to an arbitrary value.<br>
&gt;</p>
<p dir=3D"ltr">I ran into this problem as well, but with parted. My hack wa=
s to use dd to write the correct type ID into the image&#39;s MBR after I f=
inished creating the partitions on the image file.<br>
</p>

--001a114737886a24df052b74f3a4--
