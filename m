Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 392CFE009E3
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:40:17 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id ik5so3860468vcb.9
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ripfvHP/K7rKCzlr7kBSGJUkxoUrbkGslmZCC8T5hlA=;
	b=SklqxeOOqj97lMbTM0AN9yjejibNdB88GIq1sirIpWYZDvf6j1l/k8OZVG4BwcIU/1
	RFayykrTo2SJElbGhwIZihjVnPd4ci5WZJpfw/f9TYtx94YxRAfNAp5iL0rlnoMIFIpq
	4K0d7aKdsctL8rNE8JWgNhLhZkbtf5M1zoq5CeQAK0MlZpKhPUKGyyBTFmCQ/g6bwbNn
	N1u1PQfyh54ynHvI2B7RP64gf8SpwhngsOvin/zlfwd3IVMedXZR7abackSGH05PS04Y
	MXHjdSnT0a+r03F6ippm22XSir7RtzNuO/SCpaKVtTB30V46FDF+1hToy7+38fciCfs6
	JH4A==
MIME-Version: 1.0
X-Received: by 10.58.168.142 with SMTP id zw14mr3331162veb.33.1393864816795;
	Mon, 03 Mar 2014 08:40:16 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 08:40:16 -0800 (PST)
In-Reply-To: <2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<53149766.2050608@dynamicdevices.co.uk>
	<2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 3 Mar 2014 09:40:16 -0700
Message-ID: <CAA7h+Eob=M1uvSVHM+vr6s-rNKHuHpRdMG06pttGs19Ak9Oe9g@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:40:18 -0000
Content-Type: multipart/alternative; boundary=047d7b6da0284525ce04f3b67132

--047d7b6da0284525ce04f3b67132
Content-Type: text/plain; charset=ISO-8859-1

Here is the ouput:

SRC_URI="
ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gzfile://re.patch"


On Mon, Mar 3, 2014 at 9:27 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Monday 03 March 2014 14:53:26 Alex J Lennon wrote:
> > On 03/03/2014 14:36, Rick Bianchi wrote:
> > > Does anyone know how I can get around this error? There is no such
> > > package on sourceforge "Fetcher failure for URL:
> > > 'http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'.
> > > Unable to fetch URL from any source."
> >
> > Rick, as Paul mentioned there seems to be something really strange going
> on.
> >
> > If you look in the docbook-utils-native recipe (which is at r3 for me in
> > master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14
> >
> > That recipe doesn't use the openjade tarball although it has a
> > dependency on openjade-native
> >
> > If you look at the openjade-native recipe it is at version 1.3.2
> >
> > So, you'd expect docbook-utils-native to be pulling down a 0.6.14
> > docbook tarball, or if you were building openjade-native you'd expect
> > the openjade 1.3.2 tarball to be pulled down (I believe)
> >
> > So it looks as though somehow there's some kind of corruption that is
> > mixing up openjade with the 0.6.14 of docbook for some reason.
> >
> > i.e. I don't believe you're going to find a tarball of an
> > openjade-0.6.14 release.
>
> This is my assessment of what's happening also. I can't understand how this
> could ever happen, but it looks like SRC_URI is being mixed up between the
> two
> recipes, and this is on the dylan (old stable) branch as well.
>
> > It might be better to try checkout out your layers again and doing a
> > rebuild from scratch ?
>
> Before doing this, Rick could you run the following and post the output:
>
> bitbake -e docbook-utils-native | grep ^SRC_URI=
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b6da0284525ce04f3b67132
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here is the ouput:<br></div><div><br></div><div>SRC_U=
RI=3D&quot;<a href=3D"ftp://sources.redhat.com/pub/docbook-tools/new-trials=
/SOURCES/docbook-utils-0.6.14.tar.gz">ftp://sources.redhat.com/pub/docbook-=
tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz</a>      file://re.pat=
ch&quot;<br>
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Mon, Mar 3, 2014 at 9:27 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Monday 03 March 2014 14:5=
3:26 Alex J Lennon wrote:<br>
&gt; On 03/03/2014 14:36, Rick Bianchi wrote:<br>
&gt; &gt; Does anyone know how I can get around this error? There is no suc=
h<br>
&gt; &gt; package on sourceforge &quot;Fetcher failure for URL:<br>
&gt; &gt; &#39;<a href=3D"http://downloads.sourceforge.net/openjade/openjad=
e-0.6.14.tar.gz" target=3D"_blank">http://downloads.sourceforge.net/openjad=
e/openjade-0.6.14.tar.gz</a>&#39;.<br>
&gt; &gt; Unable to fetch URL from any source.&quot;<br>
&gt;<br>
&gt; Rick, as Paul mentioned there seems to be something really strange goi=
ng on.<br>
&gt;<br>
&gt; If you look in the docbook-utils-native recipe (which is at r3 for me =
in<br>
&gt; master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14<br>
&gt;<br>
&gt; That recipe doesn&#39;t use the openjade tarball although it has a<br>
&gt; dependency on openjade-native<br>
&gt;<br>
&gt; If you look at the openjade-native recipe it is at version 1.3.2<br>
&gt;<br>
&gt; So, you&#39;d expect docbook-utils-native to be pulling down a 0.6.14<=
br>
&gt; docbook tarball, or if you were building openjade-native you&#39;d exp=
ect<br>
&gt; the openjade 1.3.2 tarball to be pulled down (I believe)<br>
&gt;<br>
&gt; So it looks as though somehow there&#39;s some kind of corruption that=
 is<br>
&gt; mixing up openjade with the 0.6.14 of docbook for some reason.<br>
&gt;<br>
&gt; i.e. I don&#39;t believe you&#39;re going to find a tarball of an<br>
&gt; openjade-0.6.14 release.<br>
<br>
</div>This is my assessment of what&#39;s happening also. I can&#39;t under=
stand how this<br>
could ever happen, but it looks like SRC_URI is being mixed up between the =
two<br>
recipes, and this is on the dylan (old stable) branch as well.<br>
<div class=3D""><br>
&gt; It might be better to try checkout out your layers again and doing a<b=
r>
&gt; rebuild from scratch ?<br>
<br>
</div>Before doing this, Rick could you run the following and post the outp=
ut:<br>
<br>
bitbake -e docbook-utils-native | grep ^SRC_URI=3D<br>
<br>
Thanks,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7b6da0284525ce04f3b67132--
