Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A698E014FA
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:32:39 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id z11so5173332wgg.31
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=b9fjq8GWEbjG+uMELlLbDZVDzq41MyUAgwJF+xZnieU=;
	b=S3ywOEhb9Uqf60UUXAwGfSS03RtkCdCj6EukYcEGkqX81KivNYncQ8x3vbLuuxYHkR
	zGCSuHkHK0uDMEjIypmE+hc0pwtxdGavw6whENZq6HV3QRhlIocy8XB9MRZFFTa3LsEq
	6BoeCzeGsoQd2uX+HauP1XkGXw82KtH5qy5ETeU7KwxrMKLhyZ54p787uzkYTTVGrysy
	MAuicQl4MjY5R2hLzz5ivv50spWJcNqW/0MEDim67k+Q4NpbPX8C6CSTLOFDos6q+EUl
	N97jBSHsQVZ+2jTQi3twqHPmX1keWfTEc8FtsOQ43V+sqZqXTus01KoSCFUcBjFvUc13
	dmXw==
X-Received: by 10.180.14.199 with SMTP id r7mr11834370wic.6.1369744359077;
	Tue, 28 May 2013 05:32:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.135.79 with HTTP; Tue, 28 May 2013 05:32:19 -0700 (PDT)
In-Reply-To: <1430863.Eq8UUOJMnE@helios>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<1430863.Eq8UUOJMnE@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 28 May 2013 14:32:19 +0200
Message-ID: <CAAGt+t3VG6hNg1eN8J9Js=sR14nzQg-EsTUzh_7Y2H1nNnzcvQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 12:32:40 -0000
Content-Type: multipart/alternative; boundary=f46d04138e5ff4be7f04ddc67533

--f46d04138e5ff4be7f04ddc67533
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

It's the same error:

ERROR: ExpansionError during parsing
/home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
triggered exception NoMethodError: Could not find a fetcher which supports
the URL: '{ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz'
ERROR: Command execution failed: Exited with 1

I found something similar at the end of this:

https://lists.yoctoproject.org/pipermail/yocto/2012-January/006660.html

Any hints?

Thank You,


On Tue, May 28, 2013 at 2:14 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 28 May 2013 13:46:26 Zafrullah Syed wrote:
> > I am trying to add Hello world recipe, everything was going good but
> after
> > giving bitbake <target> command it breaks with the following error:
> >
> > siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake
> gumstix-console-image
> > *
> >
> > ERROR: ExpansionError during parsing
> > /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/
> hello.bb:
> > Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
> > triggered exception NoMethodError: Could not find a fetcher which
> supports
> > the URL: '${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
> > ERROR: Command execution failed: Exited with 1
> >
> >
> > *My hello.bb file is*:
> >
> > DESCRIPTION = "GNU Helloworld application"
> > SECTION = "examples"
> > LICENSE = "GPLv3+"
> > LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> > PR = "r0"
> > SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"
>
> That should be:
>
> SRC_URI = "ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz"
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Regards,
Zafrullah Syed

--f46d04138e5ff4be7f04ddc67533
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div style>It&#39;s the same error:=
</div><div style><br></div><div style><div>ERROR: ExpansionError during par=
sing /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/<a h=
ref=3D"http://hello.bb">hello.bb</a>: Failure expanding expression ${@bb.fe=
tch.get_checksum_file_list(d)} which triggered exception NoMethodError: Cou=
ld not find a fetcher which supports the URL: &#39;{<a href=3D"ftp://ftp.gn=
u.org/gnu}/hello/hello-2.7.tar.gz">ftp://ftp.gnu.org/gnu}/hello/hello-2.7.t=
ar.gz</a>&#39;</div>

<div>ERROR: Command execution failed: Exited with 1</div><div><br></div><di=
v style>I found something similar at the end of this:</div><div style><br><=
/div><div style><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2=
012-January/006660.html">https://lists.yoctoproject.org/pipermail/yocto/201=
2-January/006660.html</a><br>

</div><div><br></div><div style>Any hints?</div><div style><br></div><div s=
tyle>Thank You,</div></div></div><div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote">On Tue, May 28, 2013 at 2:14 PM, Paul Eggleton <span di=
r=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_b=
lank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 28 May 2013 13:=
46:26 Zafrullah Syed wrote:<br>
&gt; I am trying to add Hello world recipe, everything was going good but a=
fter<br>
&gt; giving bitbake &lt;target&gt; command it breaks with the following err=
or:<br>
&gt;<br>
</div>&gt; siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake gumstix-c=
onsole-image<br>
<div class=3D"im">&gt; *<br>
&gt;<br>
&gt; ERROR: ExpansionError during parsing<br>
&gt; /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/<a h=
ref=3D"http://hello.bb" target=3D"_blank">hello.bb</a>:<br>
&gt; Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} wh=
ich<br>
&gt; triggered exception NoMethodError: Could not find a fetcher which supp=
orts<br>
&gt; the URL: &#39;${<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.t=
ar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz</=
a>&#39;<br>
&gt; ERROR: Command execution failed: Exited with 1<br>
&gt;<br>
&gt;<br>
</div>&gt; *My <a href=3D"http://hello.bb" target=3D"_blank">hello.bb</a> f=
ile is*:<br>
<div class=3D"im">&gt;<br>
&gt; DESCRIPTION =3D &quot;GNU Helloworld application&quot;<br>
&gt; SECTION =3D &quot;examples&quot;<br>
&gt; LICENSE =3D &quot;GPLv3+&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e8=
0d47fae504&quot;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; SRC_URI =3D &quot;${<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello-${2.=
7}.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.=
gz</a>&quot;<br>
<br>
</div>That should be:<br>
<br>
SRC_URI =3D &quot;<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz"=
 target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz</a>&quot;<=
br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><span style=3D"font-family:arial,sans-serif;font-size:13px;border-collaps=
e:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><f=
ont color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-coll=
apse:collapse"><br>

</span></font></div>
</div>

--f46d04138e5ff4be7f04ddc67533--
