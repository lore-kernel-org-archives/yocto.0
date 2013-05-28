Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60EADE01423
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 06:45:31 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id t60so4292120wes.25
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 06:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=zBh+VSVMcatoRUe9OXB31lLtzjbOyVHxH/HHFV9T15E=;
	b=o/E0sp+o8CmFHzwRULPvizdOswkD4zyL4h1Jw2KlFZvBuGmD+I2IQm8fX4Q4YGjhPq
	tiRU1zRqwLelluwnDBZV04TY53IkZwzqOKkLGljGTZEKidIJcyEwXtOYexxVtuXU+w6D
	XXIE1AUhTx650vJe4kDu/hkZIxcxpea9DVOBUv5ipniVL3/HMlBk5O0VLIjMT4lvKi7W
	aZX00/ZKWyO3Nquputt54oI/dlMaffVwYj3pXT1HDOVckXrsXqeWyi6UVFkNoCFddUJY
	rcbxu4S0Tlt/u7IxrMGU1v4oWDni8YeY1KndxhnhWbk38TvdgnT35T98JPnx02hMtOIP
	+Dmw==
X-Received: by 10.180.182.229 with SMTP id eh5mr12173055wic.6.1369748730411;
	Tue, 28 May 2013 06:45:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.135.79 with HTTP; Tue, 28 May 2013 06:45:10 -0700 (PDT)
In-Reply-To: <CA+AhUGy_+4H9K_eWDdPdziYb90EtSsC40voGc=JsVMBknpJYcw@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<1430863.Eq8UUOJMnE@helios>
	<CAAGt+t3VG6hNg1eN8J9Js=sR14nzQg-EsTUzh_7Y2H1nNnzcvQ@mail.gmail.com>
	<CA+AhUGy_+4H9K_eWDdPdziYb90EtSsC40voGc=JsVMBknpJYcw@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 28 May 2013 15:45:10 +0200
Message-ID: <CAAGt+t1eJo8yRC7ZKLFOz1c8zLAJZv7Uc_2d6SxkXq-ij+Pe=A@mail.gmail.com>
To: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 28 May 2013 13:45:31 -0000
Content-Type: multipart/alternative; boundary=089e0163491e8202c704ddc77aed

--089e0163491e8202c704ddc77aed
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,

Error corrected. Thank You.

Do we need to add IMAGE_INSTALL +=3D " hello " and EXTRA_IMAGE_FEATURES +=
=3D "
hello " to yocto/build/conf/local.conf or yocto/poky/build/conf/local.conf
 before running build?




On Tue, May 28, 2013 at 2:36 PM, Erik Bot=F6 <erik.boto@pelagicore.com> wro=
te:

> On Tue, May 28, 2013 at 2:32 PM, Zafrullah Syed
> <zafrullahmehdi@gmail.com> wrote:
> > Hi Paul,
> >
> > It's the same error:
> >
> > ERROR: ExpansionError during parsing
> > /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/
> hello.bb:
> > Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} whi=
ch
> > triggered exception NoMethodError: Could not find a fetcher which
> supports
> > the URL: '{ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz'
> > ERROR: Command execution failed: Exited with 1
> >
>
> Looks like you still have {} in your SRC_URI, use:
>
> SRC_URI =3D "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"
>
> Cheers,
> Erik
>
> > I found something similar at the end of this:
> >
> > https://lists.yoctoproject.org/pipermail/yocto/2012-January/006660.html
> >
> > Any hints?
> >
> > Thank You,
> >
> >
> > On Tue, May 28, 2013 at 2:14 PM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> >>
> >> On Tuesday 28 May 2013 13:46:26 Zafrullah Syed wrote:
> >> > I am trying to add Hello world recipe, everything was going good but
> >> > after
> >> > giving bitbake <target> command it breaks with the following error:
> >> >
> >> > siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake
> >> > gumstix-console-image
> >> > *
> >> >
> >> > ERROR: ExpansionError during parsing
> >> >
> >> > /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/
> hello.bb:
> >> > Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)}
> >> > which
> >> > triggered exception NoMethodError: Could not find a fetcher which
> >> > supports
> >> > the URL: '${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
> >> > ERROR: Command execution failed: Exited with 1
> >> >
> >> >
> >> > *My hello.bb file is*:
> >> >
> >> > DESCRIPTION =3D "GNU Helloworld application"
> >> > SECTION =3D "examples"
> >> > LICENSE =3D "GPLv3+"
> >> > LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504"
> >> > PR =3D "r0"
> >> > SRC_URI =3D "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"
> >>
> >> That should be:
> >>
> >> SRC_URI =3D "ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz"
> >>
> >> Cheers,
> >> Paul
> >>
> >> --
> >>
> >> Paul Eggleton
> >> Intel Open Source Technology Centre
> >
> >
> >
> >
> > --
> > Regards,
> > Zafrullah Syed
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



--=20
Regards,
Zafrullah Syed

--089e0163491e8202c704ddc77aed
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>Error corrected. Thank You.</di=
v><div><br></div><div>Do we need to add IMAGE_INSTALL +=3D &quot; hello &qu=
ot; and=A0EXTRA_IMAGE_FEATURES +=3D &quot; hello &quot; to yocto/build/conf=
/local.conf or yocto/poky/build/conf/local.conf =A0before running build?</d=
iv>

<div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote">On Tue, May 28, 2013 at 2:36 PM, Erik Bot=F6 <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:erik.boto@pelagicore.com" target=3D"_blank=
">erik.boto@pelagicore.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, May 28, 2013 at 2:=
32 PM, Zafrullah Syed<br>
&lt;<a href=3D"mailto:zafrullahmehdi@gmail.com">zafrullahmehdi@gmail.com</a=
>&gt; wrote:<br>
&gt; Hi Paul,<br>
&gt;<br>
&gt; It&#39;s the same error:<br>
&gt;<br>
&gt; ERROR: ExpansionError during parsing<br>
&gt; /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/<a h=
ref=3D"http://hello.bb" target=3D"_blank">hello.bb</a>:<br>
&gt; Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} wh=
ich<br>
&gt; triggered exception NoMethodError: Could not find a fetcher which supp=
orts<br>
&gt; the URL: &#39;{<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.g=
z" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz</a>&#39;=
<br>
&gt; ERROR: Command execution failed: Exited with 1<br>
&gt;<br>
<br>
</div>Looks like you still have {} in your SRC_URI, use:<br>
<br>
SRC_URI =3D &quot;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz" =
target=3D"_blank">ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>&quot;<br=
>
<br>
Cheers,<br>
Erik<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; I found something similar at the end of this:<br>
&gt;<br>
&gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2012-January=
/006660.html" target=3D"_blank">https://lists.yoctoproject.org/pipermail/yo=
cto/2012-January/006660.html</a><br>
&gt;<br>
&gt; Any hints?<br>
&gt;<br>
&gt; Thank You,<br>
&gt;<br>
&gt;<br>
&gt; On Tue, May 28, 2013 at 2:14 PM, Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tuesday 28 May 2013 13:46:26 Zafrullah Syed wrote:<br>
&gt;&gt; &gt; I am trying to add Hello world recipe, everything was going g=
ood but<br>
&gt;&gt; &gt; after<br>
&gt;&gt; &gt; giving bitbake &lt;target&gt; command it breaks with the foll=
owing error:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake<br>
&gt;&gt; &gt; gumstix-console-image<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ERROR: ExpansionError during parsing<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/h=
ello/<a href=3D"http://hello.bb" target=3D"_blank">hello.bb</a>:<br>
&gt;&gt; &gt; Failure expanding expression ${@bb.fetch.get_checksum_file_li=
st(d)}<br>
&gt;&gt; &gt; which<br>
&gt;&gt; &gt; triggered exception NoMethodError: Could not find a fetcher w=
hich<br>
&gt;&gt; &gt; supports<br>
&gt;&gt; &gt; the URL: &#39;${<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello=
-${2.7}.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}=
.tar.gz</a>&#39;<br>
&gt;&gt; &gt; ERROR: Command execution failed: Exited with 1<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; *My <a href=3D"http://hello.bb" target=3D"_blank">hello.bb</a=
> file is*:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; DESCRIPTION =3D &quot;GNU Helloworld application&quot;<br>
&gt;&gt; &gt; SECTION =3D &quot;examples&quot;<br>
&gt;&gt; &gt; LICENSE =3D &quot;GPLv3+&quot;<br>
&gt;&gt; &gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb6734=
63ab874e80d47fae504&quot;<br>
&gt;&gt; &gt; PR =3D &quot;r0&quot;<br>
&gt;&gt; &gt; SRC_URI =3D &quot;${<a href=3D"ftp://ftp.gnu.org/gnu}/hello/h=
ello-${2.7}.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${=
2.7}.tar.gz</a>&quot;<br>
&gt;&gt;<br>
&gt;&gt; That should be:<br>
&gt;&gt;<br>
&gt;&gt; SRC_URI =3D &quot;<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello-2.=
7.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz</=
a>&quot;<br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Paul<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt;<br>
&gt;&gt; Paul Eggleton<br>
&gt;&gt; Intel Open Source Technology Centre<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Regards,<br>
&gt; Zafrullah Syed<br>
&gt;<br>
&gt;<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt; __________________=
_____________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><fon=
t color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-collap=
se:collapse"><br>

</span></font></div>
</div>

--089e0163491e8202c704ddc77aed--
