Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8312AE006C2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 12:46:18 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b13so590325wgh.18
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 12:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TM3POFLObf6Tcm42plO29Xh6amQiM/U3okab73XQZ1Q=;
	b=tzTpkeRiTxC6C/P7e2CKL++ex+psizvr9bKcz/Egf8Eir+GYqSb2FPPLoDG5BNEFHW
	iEoBm/V1e19eWJRTumW+mEzd06doalPxNL8mRjOdy29XmE2CBHZ4t8FK/xWGDICMI1jc
	AgInsrhWbzbNxepmRuxcrCSBK92cQw4NYhmBFugGS82q1JgNgs9sAmd0emebZP4fdXtF
	PlTx+tUkKLZ4TsvtI3/kPPTLlLXZLLi332wgBALskRbx6mMMDJkxQM/Jj9d89cRfRSR7
	wf2p7dTOWryzoQgbEIvzvHkyLfsjWbdNsTjPxh1fWVd2vWW0JudarCCdM08MayTqUgvP
	cX1Q==
X-Received: by 10.180.160.206 with SMTP id xm14mr3042849wib.50.1370375177477; 
	Tue, 04 Jun 2013 12:46:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.35 with HTTP; Tue, 4 Jun 2013 12:45:57 -0700 (PDT)
In-Reply-To: <4896833.vPV5cWFueY@helios>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<62291455.6hREtkkLEB@helios>
	<CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
	<4896833.vPV5cWFueY@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 4 Jun 2013 21:45:57 +0200
Message-ID: <CAAGt+t0JjS9XwkZe2v3h9yztWD_V08ZXw=6jRtzuKGQcia6gxA@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Jun 2013 19:46:18 -0000
Content-Type: multipart/alternative; boundary=047d7b6225b0a9a30d04de59551b

--047d7b6225b0a9a30d04de59551b
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I followed all the instructions and i started my build again. Build
successfully started and struck with Hello md5sum error.

ERROR: Fetcher failure for URL: '
ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for
/home/siguser/yocto2013-05-21/build/downloads/hello-2.7.tar.gz, please add
at least one to the recipe:
SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
SRC_URI[sha256sum] =
"fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"


I downloaded hello-2.7 from ftp://ftp.gnu.org/gnu/hello/ unzipped and ran
md5sum against COPYING file. Each file has different md5sum, which md5sum
should I include in my hello.bb file?

*My hello.bb file*:

DESCRIPTION = "GNU Helloworld application"
SECTION = "examples"
LICENSE = "GPLv3+"
LIC_FILES_CHKSUM = "file://COPYING;md5=fc01b05c7f943d3c42124942a2a9bb3a"
PR = "r0"
SRC_URI = "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"
inherit autotools gettext

Thank You,




On Tue, Jun 4, 2013 at 3:57 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Tuesday 04 June 2013 15:42:06 Zafrullah Syed wrote:
> > On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com
> > wrote:
> > > Yes, conf/bblayers.conf is supposed to be in the build directory; and
> > > whichever build directory you are actually using. The build directory
> can
> > > be anywhere, but you shouldn't really have two build directories unless
> > > you know what you are doing - did you perhaps run oe-init-build-env
> with
> > > no arguments in two different places? I suspect this is what has
> happened.
> >
> > I think yes. I usually give just *source oe-init-build-env *command, this
> > is how i used earlier and failed. May be that is the reason it has
> created
> > another build directory in /poky.
> > What should be the command before building? i guess this(
> > TEMPLATECONF=meta-gumstix-extras/conf
> > source ./poky/oe-init-build-env ). so, every time i just need to give
> > TEMPLATECONF  command before building?
>
> You need to run oe-init-build-env at the start of every session yes, but
> you
> shouldn't need to specify TEMPLATECONF except when you first create the
> build
> directory. The important thing is you need to be in the same directory when
> you run oe-init-build-env *or* specify the path to the build directory as a
> parameter.
>
> > Lastly, my meta-bebot directory should be as following ?
> >
> > /poky
> >   --meta-bebot
> >       --conf
> >          --layer.conf
> >   --recipes-bebot
> >     --hello
> >       --hello.bb
>
> If you have recipes-bebot under meta-bebot, yes.
>
> > and meta-bebot path should be set in bblayers.conf file?
>
> Yes.
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

--047d7b6225b0a9a30d04de59551b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I followed all the instructions and=
 i started my build again. Build successfully started and struck with Hello=
 md5sum error.<br></div><div><br></div><div><div>ERROR: Fetcher failure for=
 URL: &#39;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz">ftp://f=
tp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>&#39;. No checksum specified for /=
home/siguser/yocto2013-05-21/build/downloads/hello-2.7.tar.gz, please add a=
t least one to the recipe:</div>

<div>SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;</div>=
<div>SRC_URI[sha256sum] =3D &quot;fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c49=
85ccb445ef490f768b927c0&quot;</div></div><div><br></div><div><br></div><div=
 style>

I downloaded hello-2.7 from=A0<a href=3D"ftp://ftp.gnu.org/gnu/hello/">ftp:=
//ftp.gnu.org/gnu/hello/</a>=A0unzipped and ran md5sum against COPYING file=
. Each file has different md5sum, which md5sum should I include in my <a hr=
ef=3D"http://hello.bb">hello.bb</a> file?</div>

<div style><br></div><div style><u>My <a href=3D"http://hello.bb">hello.bb<=
/a> file</u>:</div><div style><br></div><div style><div>DESCRIPTION =3D &qu=
ot;GNU Helloworld application&quot;=A0</div><div>SECTION =3D &quot;examples=
&quot;=A0</div>

<div>LICENSE =3D &quot;GPLv3+&quot;=A0</div><div>LIC_FILES_CHKSUM =3D &quot=
;file://COPYING;md5=3Dfc01b05c7f943d3c42124942a2a9bb3a&quot;=A0</div><div>P=
R =3D &quot;r0&quot;=A0</div><div>SRC_URI =3D &quot;<a href=3D"ftp://ftp.gn=
u.org/gnu/hello/hello-2.7.tar.gz">ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar=
.gz</a>&quot;=A0</div>

<div>inherit autotools gettext=A0</div><div><br></div><div style>Thank You,=
</div></div><div style><br></div><div style><br></div></div><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 4, 2013 at 3:57 =
PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@lin=
ux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 04 June 2013 15=
:42:06 Zafrullah Syed wrote:<br>
&gt; On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton &lt;<a href=3D"mailto:pa=
ul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a><br>
&gt; wrote:<br>
</div><div class=3D"im">&gt; &gt; Yes, conf/bblayers.conf is supposed to be=
 in the build directory; and<br>
&gt; &gt; whichever build directory you are actually using. The build direc=
tory can<br>
&gt; &gt; be anywhere, but you shouldn&#39;t really have two build director=
ies unless<br>
&gt; &gt; you know what you are doing - did you perhaps run oe-init-build-e=
nv with<br>
&gt; &gt; no arguments in two different places? I suspect this is what has =
happened.<br>
&gt;<br>
</div>&gt; I think yes. I usually give just *source oe-init-build-env *comm=
and, this<br>
<div class=3D"im">&gt; is how i used earlier and failed. May be that is the=
 reason it has created<br>
&gt; another build directory in /poky.<br>
&gt; What should be the command before building? i guess this(<br>
&gt; TEMPLATECONF=3Dmeta-gumstix-extras/conf<br>
&gt; source ./poky/oe-init-build-env ). so, every time i just need to give<=
br>
&gt; TEMPLATECONF =A0command before building?<br>
<br>
</div>You need to run oe-init-build-env at the start of every session yes, =
but you<br>
shouldn&#39;t need to specify TEMPLATECONF except when you first create the=
 build<br>
directory. The important thing is you need to be in the same directory when=
<br>
you run oe-init-build-env *or* specify the path to the build directory as a=
<br>
parameter.<br>
<div class=3D"im"><br>
&gt; Lastly, my meta-bebot directory should be as following ?<br>
&gt;<br>
&gt; /poky<br>
&gt; =A0 --meta-bebot<br>
&gt; =A0 =A0 =A0 --conf<br>
&gt; =A0 =A0 =A0 =A0 =A0--layer.conf<br>
&gt; =A0 --recipes-bebot<br>
&gt; =A0 =A0 --hello<br>
&gt; =A0 =A0 =A0 --<a href=3D"http://hello.bb" target=3D"_blank">hello.bb</=
a><br>
<br>
</div>If you have recipes-bebot under meta-bebot, yes.<br>
<div class=3D"im"><br>
&gt; and meta-bebot path should be set in bblayers.conf file?<br>
<br>
</div>Yes.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><fon=
t color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-collap=
se:collapse"><br>

</span></font></div>
</div>

--047d7b6225b0a9a30d04de59551b--
