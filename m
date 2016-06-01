Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 649BFE00F05; Wed,  1 Jun 2016 05:25:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D1F9E00EFC
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 05:25:10 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id q79so1764852qke.2
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 05:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=orb8kJkLccrvSRQJKlSwmsDJFVcdQ9LvU94KWdL+hoU=;
	b=sJVU0XQAsSU3+6/wFAZUzkwGCyDOucylKoxyEeAM+3JFC5aQ3l5efqgmFyRi9X8oax
	KE69K+uKoIMP4L7pqPVT7TqLTOtIgOKY3li/1DQLErGbS7+jrj8xLrZse5U+gzWdScYs
	JxPwPK4UsFy8a5+WDa+PprfJcw2b8Yqh4CIgtih+3YxUUSiAyAj7RXX4SvdRLZeYq2xH
	z6NTG+uch8KcXNyhyeMMiz+tWchYsu9Mf2Clr96HwTLjjhC4wGFmVLtP0W/D91uGSixv
	0Xrh1wVjIkwiGesztI0IQZ9OGgeeCoKBT+ZxFOUoUE+Odb9BBCGbEZfbDQcmfpxG3Rgj
	mlSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=orb8kJkLccrvSRQJKlSwmsDJFVcdQ9LvU94KWdL+hoU=;
	b=bAMJf074ACYWKi1njcVkOwqgulVhViP0NGOXCyjlvv03oSI6oI1G2dkZNAoIZZJX4f
	dYhCjE0ZgoaayInkBH/UHbOGFQQ1GFqUf9FNDcbjY3Ta1v37t+xIUVFtfcTPOySfMfcO
	KMTXIjJhC+xvI9C2XPr053CJzidbVPojdJwkl4I9eZ4hHiq/eHDkvrSpfz1ZVs59EY3W
	JuCPUuh7rAdpOajbLykLkvkjStAMLdEjsXsX5dtTN+rUMpzLdd+30n4zioYGkHsyG7GK
	txliSqUYpUfCZ8JGt4X32EJz3AyYF3Lnl4DYlaU4aqqoB9UgDcVCCMuiAWILh0KJHDT7
	/pAw==
X-Gm-Message-State: ALyK8tKb1sLdq/xeZxjPP/7R0CpEIp5dQLJGRbHtt2x7jo2KgTioRjOrn8Jc8Khadf1o/cYMCv5SIRui59BuQg==
MIME-Version: 1.0
X-Received: by 10.233.220.4 with SMTP id q4mr36325479qkf.145.1464783910044;
	Wed, 01 Jun 2016 05:25:10 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Wed, 1 Jun 2016 05:25:09 -0700 (PDT)
In-Reply-To: <16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
Date: Wed, 1 Jun 2016 15:25:09 +0300
Message-ID: <CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Diego <diego.ml@zoho.com>, yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Wed, 01 Jun 2016 12:25:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c0436b0a18eda05343694a4

--94eb2c0436b0a18eda05343694a4
Content-Type: text/plain; charset=UTF-8

Don't forget to add your fstab/inittab files into CONFFILES_${PN} cause if
the package that includes them will be changed and You'll update it via
package system, your POSTPROCESS hacks will be overwritten.

Anyway, its better to avoid POSTPROCESS if possible.
1) Create *.bbappend recipe base-files_%s.bbappend in your layer. It
appends to poky "base-files" recipe.
2) Create your own "python do_package_prepend" function where you should
make your recipe produce two different packages
3) Add them to DEPENDS in your image recipe

On Wed, Jun 1, 2016 at 2:57 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Diego,
>
> On Tue, 31 May 2016 18:05:19 Diego wrote:
> > I've asked this question on IRC, but haven't received complete enough
> > replies, so posting here.
> >
> > I have my own layer with my recipes and customizations. In my layer I
> have
> > two images, one which is the "regular OS" that runs the product
> > application, and one which is the "flash OS", a minimal ramdisk OS that
> > flashes the disks. I want the two images to have different fstab and
> > inittab files: what is the correct way to do that? I know how to handle
> > machine / arch specific differences, but I don't think there's a way to
> > "dress a package depending on the image it gets included in", right?
> >
> > Should I create my own IMAGE_FEATURE and hack my fstab and inittab when
> > rootfs is created, sort of how the "read-only-rootfs" feature was done?
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/core-image
> .
> > bbclass?h=fido#n77
>
> You can do that, yes. The only other possibility is outright replacing the
> package providing the file (since you are free to specify whatever packages
> you want in the image, though you may have to break up
> packagegroup-core-boot
> to do it). This only works of course if either there are no dependencies on
> the package or you can satisfy any dependencies that might exist. It could
> be
> that for your "flash OS" image there aren't any, but it depends what it
> has in
> it.
>
> It may be simpler just to hack it after the fact though. Note that you
> don't
> have to add an IMAGE_FEATURES item to do that - you could simply create a
> shell/python function and add a call to it in ROOTFS_POSTPROCESS_COMMAND.
> If
> the changes to the files are substantial you could even supply the
> alternative
> files in a separate package and then move them over the top of the original
> ones in the postprocessing function to save jumping through hoops adding
> files
> to the image recipe.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0436b0a18eda05343694a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Don&#39;t forget to add your fstab/inittab files into CONF=
FILES_${PN} cause if the package that includes them will be changed and You=
&#39;ll update it via package system, your POSTPROCESS hacks will be overwr=
itten.<br><br>Anyway, its better to avoid POSTPROCESS if possible. <br>1) C=
reate *.bbappend recipe base-files_%s.bbappend in your layer. It appends to=
 poky &quot;base-files&quot; recipe. <br>2) Create your own &quot;python do=
_package_prepend&quot; function where you should make your recipe produce t=
wo different packages<br>3) Add them to DEPENDS in your image recipe<br></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Jun 1,=
 2016 at 2:57 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:pau=
l.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Diego,<br>
<br>
On Tue, 31 May 2016 18:05:19 Diego wrote:<br>
&gt; I&#39;ve asked this question on IRC, but haven&#39;t received complete=
 enough<br>
&gt; replies, so posting here.<br>
&gt;<br>
&gt; I have my own layer with my recipes and customizations. In my layer I =
have<br>
&gt; two images, one which is the &quot;regular OS&quot; that runs the prod=
uct<br>
&gt; application, and one which is the &quot;flash OS&quot;, a minimal ramd=
isk OS that<br>
&gt; flashes the disks. I want the two images to have different fstab and<b=
r>
&gt; inittab files: what is the correct way to do that? I know how to handl=
e<br>
&gt; machine / arch specific differences, but I don&#39;t think there&#39;s=
 a way to<br>
&gt; &quot;dress a package depending on the image it gets included in&quot;=
, right?<br>
&gt;<br>
&gt; Should I create my own IMAGE_FEATURE and hack my fstab and inittab whe=
n<br>
&gt; rootfs is created, sort of how the &quot;read-only-rootfs&quot; featur=
e was done?<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/cl=
asses/core-image" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproj=
ect.org/cgit/cgit.cgi/poky/tree/meta/classes/core-image</a>.<br>
&gt; bbclass?h=3Dfido#n77<br>
<br>
You can do that, yes. The only other possibility is outright replacing the<=
br>
package providing the file (since you are free to specify whatever packages=
<br>
you want in the image, though you may have to break up packagegroup-core-bo=
ot<br>
to do it). This only works of course if either there are no dependencies on=
<br>
the package or you can satisfy any dependencies that might exist. It could =
be<br>
that for your &quot;flash OS&quot; image there aren&#39;t any, but it depen=
ds what it has in<br>
it.<br>
<br>
It may be simpler just to hack it after the fact though. Note that you don&=
#39;t<br>
have to add an IMAGE_FEATURES item to do that - you could simply create a<b=
r>
shell/python function and add a call to it in ROOTFS_POSTPROCESS_COMMAND. I=
f<br>
the changes to the files are substantial you could even supply the alternat=
ive<br>
files in a separate package and then move them over the top of the original=
<br>
ones in the postprocessing function to save jumping through hoops adding fi=
les<br>
to the image recipe.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--94eb2c0436b0a18eda05343694a4--
