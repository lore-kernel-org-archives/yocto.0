Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D52E00C28; Thu, 28 Jul 2016 02:18:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA61DE00A75
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 02:18:17 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id q83so94493564iod.1
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 02:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xRSp1hyTgQzmax3a2tPSf1IZ3xq0R1IerehVah8irsE=;
	b=1VNmWlBbXf1PG7jXGCbQ7SqL4EzTl/lfVew59VpKbs+vDQ5WtSqTdjGPhR5FkRgV+a
	72bZiEbycJEPw8/11PxmaagBmEen/0p+whvKhGj3TSYobVjkKCPtoaKap9W2kb4L6Fi/
	akaPruGa9o7yVpI1SdQDUW8Zav+qM51iGtfw0Nc1DfzjoTlUkBWQ0jXV2uEme8o3POO+
	WxQtuCcKnETJrHbMGRUvAAJn9V0PJEb0x98KFOhaRZu95x985mZceXPAnx8TOW4cmb8+
	Fe5CAbLEFtDsb53bHB9jELgxtW1NQ6uKPfjl2nLxSHX9Cbg/Py+2fx8ZSv4+eKf17BQ3
	zhPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xRSp1hyTgQzmax3a2tPSf1IZ3xq0R1IerehVah8irsE=;
	b=ftMmu+M1T0v7gzxFNn+X95qxYAuW0QeIx8aIAWHabBsZunBxVCDbS7Ni6/nTXbPI+f
	cUoethQbCy4jVL/5QlPJsBrNgfbqVzeYpoWzwnIqS81yZZmlviZ55EBLqjjd+uNtWvWo
	U8GvuAz+JEUCxfgUS1GoNAYVW201wlqyxP2q5BNQrXEdsfBuTGs9aJ63kf9QUiLQbDmo
	RrOCQAH3LAWWLBeFEZ8A6DJrEk0gJKBGq40bJmwKPamFK7d1x+gojJLOZV5FvgXBp11V
	REojEIFenc9eZlldDVNKnUK1BS5l0oRjl/7BBjIIG5TKDzMarcBXETb8vESQewtti6vF
	mrfQ==
X-Gm-Message-State: AEkoouuXyVG2nF7iyg6l43koV+euHarnxwg6OYwgDtyCYH7kKH1K+y1hcTzF3OmkpSfF1SN+rmZpfjEu0NsNyjue
X-Received: by 10.107.154.196 with SMTP id c187mr35572951ioe.99.1469697497190; 
	Thu, 28 Jul 2016 02:18:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Thu, 28 Jul 2016 02:17:57 -0700 (PDT)
In-Reply-To: <CAJ58UNno9BmFXRE82_8oZAVG=P+m9C4eD4M6x9J4ZBm7ZAG=Tw@mail.gmail.com>
References: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
	<CAJ58UNnqwa6VDch0BDihS7uYguTMTZmnwkgUabJG-i_ff--L5w@mail.gmail.com>
	<CAJ58UNno9BmFXRE82_8oZAVG=P+m9C4eD4M6x9J4ZBm7ZAG=Tw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jul 2016 10:17:57 +0100
Message-ID: <CAJTo0Lbu71UvxpfT+5i71nZ3unTVMX7BogP9xk3pgq2Qsbc4Ow@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compilation error while adding perf tool to the rootfs
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
X-List-Received-Date: Thu, 28 Jul 2016 09:18:22 -0000
Content-Type: multipart/alternative; boundary=001a1140e81e3f651e0538ae9d43

--001a1140e81e3f651e0538ae9d43
Content-Type: text/plain; charset=UTF-8

On 27 July 2016 at 22:53, Vijayakumar Badiger <vijayakumarmb@gmail.com>
wrote:

> We have a requirement here to set up the perf tool through our Yocto frame
> work.
> As Perf source comes with linux kernel under tools/perf ,so I added this
> perf tool to be installed
> as part of my rootfs image.
>
> But when I build the image I am getting error related to headerfile
> missing.
>
> *fatal error: asm/preempt.h: No such file or directory*
>

Perf builds for me fine using oe-core's perf recipe and meta-intel's
kernel, so are you using your own recipe for perf or the kernel?

Ross

--001a1140e81e3f651e0538ae9d43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 July 2016 at 22:53, Vijayakumar Badiger <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank">vijayakumarmb@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>We have a r=
equirement here to set up the perf tool through our Yocto frame work.</div>=
<div>As Perf source comes with linux kernel under tools/perf ,so I added th=
is perf tool to be installed</div><div>as part of my rootfs image.</div><di=
v><br></div><div>But when I build the image I am getting error related to h=
eaderfile missing.</div><span><div><b><br></b></div><div><b>fatal error: as=
m/preempt.h: No such file or directory</b></div></span></blockquote></div><=
br>Perf builds for me fine using oe-core&#39;s perf recipe and meta-intel&#=
39;s kernel, so are you using your own recipe for perf or the kernel?</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a1140e81e3f651e0538ae9d43--
