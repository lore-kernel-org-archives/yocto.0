Return-Path: <adim@jfrog.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 462FFE00D35; Tue, 25 Jun 2019 00:20:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC1CE00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 00:20:06 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id x17so16524435wrl.9
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 00:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jfrog.com; s=jfrogcom;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BcoN+xyg7HHjyZDLiL/HL2VPazWa+sVPZHtosGggLuk=;
	b=RTkEKG8sMbT6OIsA5n0L5juIIOzjH6HE4XZC0SsTOmL/7CHmETpUiQPGERKnnfLgll
	eFkLbM7Og14MJT/tiKQaipuMVMeSSDLBFExTfKMxzFOKI9DCYyVq+6UM8pBUKZ0kL3XE
	8k9mJLo5RAaOSNTZACtP0jwfesMvMbUToCJD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BcoN+xyg7HHjyZDLiL/HL2VPazWa+sVPZHtosGggLuk=;
	b=WJIaEPPJqyMZFwAa3NLz48pdOsCaESmnnQ1NTR3Y0EXM4XJgQvJenUJOcouqA3yaPh
	q388553Uf3saa7iZJb6nYh0BD9pasZyXGukgfzzI86Ma0xuU7r8WQNH+SbNEiHaESm+o
	2AS4OxUo+1HXJJMWweJFkhldNjh85ayt4WFhMDdZysZ6iYO1Pb/84r6a7SpPdFEehzGd
	yhoyO/WHbT05ynEHy8gm2seP3kAZGPuWfoGbszNFNUfOvWbUtJZbnII6vIZhulyJCGoq
	jiDHS8BENR8C39C6kNM9dpWb7/f3M+u6ZQfYnMgvy615b7712dKswnSTNemuAqQfc8O9
	Duuw==
X-Gm-Message-State: APjAAAXMin6WB7xyLVEYEwQytj9io1vEwLrMnk/CQp9UMNYMukZI5gv2
	HxqI0iMzUEIlfmpqKeU/kH0MNyOeYik+N5+mwFdhyWm8hx4zmupB93BfNPm27idxIRDS61MrLui
	/UhjlAwgeXzcYYVTCxh3A5YPUlA==
X-Google-Smtp-Source: APXvYqzkCVzKI8pK5tulC8MPfyKfH98rlmLGFnGWl0/C+tERwGruvtpwX9PC9c4py4uWTqRyaEH1HpaIqp5CnXQVsX0=
X-Received: by 2002:adf:e301:: with SMTP id b1mr24727777wrj.304.1561447205509; 
	Tue, 25 Jun 2019 00:20:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAM483UybQzjLoxaa6M25stxwf7xWXa-xW9Q6WxHz=PjwimaT3A@mail.gmail.com>
	<c77b5c42da8261128f45af9a8461ce9f09eb2921.camel@redrectangle.org>
In-Reply-To: <c77b5c42da8261128f45af9a8461ce9f09eb2921.camel@redrectangle.org>
From: Adi Malca <adim@jfrog.com>
Date: Tue, 25 Jun 2019 10:19:54 +0300
Message-ID: <CAM483UypTWk6J2A-=jO8g95-cM=fvD8_pnFKHU-PV=5s3t37Hg@mail.gmail.com>
To: Robert Joslyn <robert.joslyn@redrectangle.org>
Cc: yocto@yoctoproject.org
Subject: Re: OPKG Spec
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
X-List-Received-Date: Tue, 25 Jun 2019 07:20:07 -0000
Content-Type: multipart/alternative; boundary="000000000000054722058c20c253"

--000000000000054722058c20c253
Content-Type: text/plain; charset="UTF-8"

Thank you Robert, the last 2 links to the code were very helpful.

On Tue, Jun 25, 2019 at 8:28 AM Robert Joslyn <
robert.joslyn@redrectangle.org> wrote:

> On Sun, 2019-06-23 at 16:15 +0300, Adi Malca wrote:
> > Hello,
> >
> > I'm looking for the current official OPKG spec with spelling and case
> > sensitive.
> > For example:
> > Package:
> > Version:
> > Description:
> > Section:
> > Priority:
> > Maintainer:
> > License:
> > Architecture:
> > OE:
> > Homepage:
> > Depends:
> > Source:
> > Filename:
> > SHA1:
> > SHA256:
> >
> > Best Regards,
> > Adi
>
> I'm not sure if there is an official spec somewhere, but the structure
> of the packages and server index files can be seen in the code. The
> main opkg utility is here:
> http://git.yoctoproject.org/cgit/cgit.cgi/opkg/
>
> The helper scripts are also useful:
> http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/
>
> You can see the structure of the metadata you mention, including
> spelling, capitalization, etc, here:
> http://git.yoctoproject.org/cgit/cgit.cgi/opkg/tree/libopkg/pkg.c#n552
>
> You can also see it here (perhaps more concisely):
> http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/opkg.py#n491
>
> The Packages and Packages.gz index files use these variables. For
> example, this is what shows up in the index for busybox on one of my
> builds:
>
> Package: busybox
> Version: 1.30.1-r0
> Depends: libc6 (>= 2.29), update-alternatives-opkg
> Recommends: busybox-udhcpc
> Section: base
> Architecture: armv7vet2hf-neon
> Maintainer: Poky <poky@yoctoproject.org>
> MD5Sum: c0b45a09adec305b49153133a3392917
> Size: 315406
> Filename: busybox_1.30.1-r0_armv7vet2hf-neon.ipk
> Source: busybox_1.30.1.bb
> Description: Tiny versions of many common UNIX utilities in a single
> small executable
> OE: busybox
> HomePage: http://www.busybox.net
> License: GPLv2 & bzip2
> Priority: optional
>
> Packages can also use SHA256 rather than MD5.
>
> Package: busybox
> Version: 1.30.1-r0
> Depends: libc6 (>= 2.29), update-alternatives-opkg
> Recommends: busybox-udhcpc
> Section: base
> Architecture: armv7vet2hf-neon
> Maintainer: Poky <poky@yoctoproject.org>
> SHA256sum:
> 3ca8d2dd79759fa34bf04a0ee97fef5e354d97da76b03672544f3c4eeef76ac9
> Size: 315406
> Filename: busybox_1.30.1-r0_armv7vet2hf-neon.ipk
> Source: busybox_1.30.1.bb
> Description: Tiny versions of many common UNIX utilities in a single
> small executable
> OE: busybox
> HomePage: http://www.busybox.net
> License: GPLv2 & bzip2
> Priority: optional
>
> I'm not sure if anyone has any package feeds built by Yocto publicly
> available, but OpenWRT uses opkg as well, with public feeds available.
> For example:
>
> https://downloads.openwrt.org/releases/18.06.2/packages/aarch64_cortex-a53/base/
>
>
> Robert
>
>

-- 
 <https://support.jfrog.com/>

--000000000000054722058c20c253
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Robert, the last 2 links to the code were very h=
elpful.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Jun 25, 2019 at 8:28 AM Robert Joslyn &lt;<a href=3D"mailto:=
robert.joslyn@redrectangle.org">robert.joslyn@redrectangle.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sun, 2019-=
06-23 at 16:15 +0300, Adi Malca wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m looking for the current official OPKG spec with spelling and c=
ase<br>
&gt; sensitive.<br>
&gt; For example:<br>
&gt; Package: <br>
&gt; Version: <br>
&gt; Description: <br>
&gt; Section: <br>
&gt; Priority: <br>
&gt; Maintainer: <br>
&gt; License: <br>
&gt; Architecture: <br>
&gt; OE: <br>
&gt; Homepage:<br>
&gt; Depends: <br>
&gt; Source: <br>
&gt; Filename: <br>
&gt; SHA1:<br>
&gt; SHA256:<br>
&gt; <br>
&gt; Best Regards,<br>
&gt; Adi<br>
<br>
I&#39;m not sure if there is an official spec somewhere, but the structure<=
br>
of the packages and server index files can be seen in the code. The<br>
main opkg utility is here: <br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/opkg/" rel=3D"noreferr=
er" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/opkg/</a><b=
r>
<br>
The helper scripts are also useful: <br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/" rel=3D"no=
referrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/opkg-=
utils/</a><br>
<br>
You can see the structure of the metadata you mention, including<br>
spelling, capitalization, etc, here:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/opkg/tree/libopkg/pkg.=
c#n552" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cg=
it/cgit.cgi/opkg/tree/libopkg/pkg.c#n552</a><br>
<br>
You can also see it here (perhaps more concisely):<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/opkg.p=
y#n491" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cg=
it/cgit.cgi/opkg-utils/tree/opkg.py#n491</a><br>
<br>
The Packages and Packages.gz index files use these variables. For<br>
example, this is what shows up in the index for busybox on one of my<br>
builds:<br>
<br>
Package: busybox<br>
Version: 1.30.1-r0<br>
Depends: libc6 (&gt;=3D 2.29), update-alternatives-opkg<br>
Recommends: busybox-udhcpc<br>
Section: base<br>
Architecture: armv7vet2hf-neon<br>
Maintainer: Poky &lt;<a href=3D"mailto:poky@yoctoproject.org" target=3D"_bl=
ank">poky@yoctoproject.org</a>&gt;<br>
MD5Sum: c0b45a09adec305b49153133a3392917<br>
Size: 315406<br>
Filename: busybox_1.30.1-r0_armv7vet2hf-neon.ipk<br>
Source: <a href=3D"http://busybox_1.30.1.bb" rel=3D"noreferrer" target=3D"_=
blank">busybox_1.30.1.bb</a><br>
Description: Tiny versions of many common UNIX utilities in a single<br>
small executable<br>
OE: busybox<br>
HomePage: <a href=3D"http://www.busybox.net" rel=3D"noreferrer" target=3D"_=
blank">http://www.busybox.net</a><br>
License: GPLv2 &amp; bzip2<br>
Priority: optional<br>
<br>
Packages can also use SHA256 rather than MD5.<br>
<br>
Package: busybox<br>
Version: 1.30.1-r0<br>
Depends: libc6 (&gt;=3D 2.29), update-alternatives-opkg<br>
Recommends: busybox-udhcpc<br>
Section: base<br>
Architecture: armv7vet2hf-neon<br>
Maintainer: Poky &lt;<a href=3D"mailto:poky@yoctoproject.org" target=3D"_bl=
ank">poky@yoctoproject.org</a>&gt;<br>
SHA256sum:<br>
3ca8d2dd79759fa34bf04a0ee97fef5e354d97da76b03672544f3c4eeef76ac9<br>
Size: 315406<br>
Filename: busybox_1.30.1-r0_armv7vet2hf-neon.ipk<br>
Source: <a href=3D"http://busybox_1.30.1.bb" rel=3D"noreferrer" target=3D"_=
blank">busybox_1.30.1.bb</a><br>
Description: Tiny versions of many common UNIX utilities in a single<br>
small executable<br>
OE: busybox<br>
HomePage: <a href=3D"http://www.busybox.net" rel=3D"noreferrer" target=3D"_=
blank">http://www.busybox.net</a><br>
License: GPLv2 &amp; bzip2<br>
Priority: optional<br>
<br>
I&#39;m not sure if anyone has any package feeds built by Yocto publicly<br=
>
available, but OpenWRT uses opkg as well, with public feeds available.<br>
For example:<br>
<a href=3D"https://downloads.openwrt.org/releases/18.06.2/packages/aarch64_=
cortex-a53/base/" rel=3D"noreferrer" target=3D"_blank">https://downloads.op=
enwrt.org/releases/18.06.2/packages/aarch64_cortex-a53/base/</a><br>
<br>
<br>
Robert<br>
<br>
</blockquote></div>

<br>
<a href=3D"https://support.jfrog.com/" target=3D"_blank"><img src=3D"https:=
//leap.jfrog.com/rs/256-FNZ-187/images/supportportal-ticket.png"></a>

--000000000000054722058c20c253--
