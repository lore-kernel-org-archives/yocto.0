Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B60D9E01454
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 03:42:40 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so10560036yhf.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 03:42:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=QnIQflbHtAD4FqoDIEfV9Q5yXYyUZrpEXua3/PTthZc=;
	b=L33oy4DWCAQJ26S1yIrMaDG3N2WklE5frDXMY7mF1cDeOdEyjez+cjQUP3hKP091t4
	vIE+9Zc/1qTL5R3UPkxL9r2LTSGxWCNcFfyiJrE0EAvIJ397VYyJL6KaYgcFkfT/m0/5
	pj6WR+1QxjFA5Yc70KUP+CDxaHf2Ol1X1z9t5oRUXWJ8qtyrMpPQl7FITeywqHOJO12i
	EDSdnEZBA3yGX20JcOtPug1clQTsCfeFMDPP7gkPB/YEJL2iVCFXEu90ySs7DPzx1AJj
	mIHwlA8FkCaco/9pDGCDWyewPoM8nMng4iovfWuAwbv4mYBoJ1ZHyTyb2iDd2LFUbuZM
	Q3Ag==
Received: by 10.50.40.193 with SMTP id z1mr8113800igk.0.1341830559930; Mon, 09
	Jul 2012 03:42:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.98.162 with HTTP; Mon, 9 Jul 2012 03:42:19 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
References: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 9 Jul 2012 13:42:19 +0300
Message-ID: <CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQn5u6hcFRfnEY2XYOkpNmWBtu8JXyIE0VRbKE5eSaebf02uc2Z3l8/x56t8RN+8Wk+hOAJS
Cc: yocto@yoctoproject.org
Subject: Re: menuconfig vs. config fragments?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jul 2012 10:42:41 -0000
Content-Type: multipart/alternative; boundary=14dae9340c41df991404c46345de

--14dae9340c41df991404c46345de
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy <jfabernathy@gmail.com>wrote:

> my goal of this test was to see if I could use the n450 BSP as a starting
> point for a BSP to support my Acer Aspire One n450 based netbook.  The
> core-image-sato will boot from USB key on the netbook if I use the ZIP
> drive format for the USB key, but the current n450 BSP doesn't include the
> drivers for the networking hardware in the netbook.
>
> I found by testing, using the menuconfig option documented in the
> Developer Manual Appendix B example, that I needed to add 2 parameters to
> the .config:
>
> CONFIG_ATH9K_PCI
> CONFIG_ATL1C
>
> To make this change easier to manage and more permanent, I thought about
> creating a config fragment.  I put the config parameters in a file,
> myconfig, in the linux-yocto directory at the same level as the
> linux-yocto_3.2.bbappend file, where I added:
>
> SRC_URI += "file//myconfig"
>
>
Try to use myconfig.cfg.

@g

--14dae9340c41df991404c46345de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy =
<span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_b=
lank">jfabernathy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">

my goal of this test was to see if I could use the n450 BSP as a starting p=
oint for a BSP to support my Acer Aspire One n450 based netbook. =A0The cor=
e-image-sato will boot from USB key on the netbook if I use the ZIP drive f=
ormat for the USB key, but the current n450 BSP doesn&#39;t include the dri=
vers for the networking hardware in the netbook.<br>


<br>
I found by testing, using the menuconfig option documented in the Developer=
 Manual Appendix B example, that I needed to add 2 parameters to the .confi=
g:<br>
<br>
CONFIG_ATH9K_PCI<br>
CONFIG_ATL1C<br>
<br>
To make this change easier to manage and more permanent, I thought about cr=
eating a config fragment. =A0I put the config parameters in a file, myconfi=
g, in the linux-yocto directory at the same level as the linux-yocto_3.2.bb=
append file, where I added:<br>


<br>
SRC_URI +=3D &quot;file//myconfig&quot;<br>
<br></blockquote><div><br></div><div>Try to use myconfig.cfg.</div><div><br=
></div><div>@g</div></div>

--14dae9340c41df991404c46345de--
