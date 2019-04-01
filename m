Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F04C3E00D20; Mon,  1 Apr 2019 00:27:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E48E00C46
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 00:27:21 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id j132so6436281oib.2
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 00:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0lLmg+UfSVh2nrHqnir4wyX92JywEwcnMMRwOEowmLc=;
	b=EIBzTOjjci+gst8kTR+EWL/PMPSJWaNIbCvkCMoH+rQA67AT1GVpJ3k8JYxC5zmXSJ
	ALLrbvtw20GfGogf3OErVxb1YiZTy9uRDxHDTYIRBdPiodNq8LtIx+Gflyn1zevPeoRB
	qoSwCdi3XTyhE0GAQl6hOG18vsNbvfkyAIkcQqXslLWLiP97dj9dYwQ6o1+SMx0MaLWP
	RAV0n2zwJKQ1Zp5OVBF2JxG+06g4+qAr0pGVuH5ZPlovDhPyums6nt3kZYzplure7Xw8
	kKJ8fuji2la+l+e3AcMY9jq54Tazpg/XNp7OdnLzJdGj/yqPqOxpvirK/FH1EBQ2yMy+
	qpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0lLmg+UfSVh2nrHqnir4wyX92JywEwcnMMRwOEowmLc=;
	b=bt+Rbv2Vg7srzHttLi2hEOgx5DrHTO7BpGVQV4vXYas1BQExw/D4LaAcaJFcSmGMaB
	l/2uH1X7Zo9tI7rPN6ZGdgICWAzAVMF5N8odbqc6UTEGrYK8CfVzqFFVR9dPkWGjDpc2
	54Vbd24r3OYQs1XHuNpchbfeZZgwuDbvH06jy8xLzNIgdy9CHoNwCpkSYmQvKDIgRw8I
	i/Kkr2HFFrBrrS8HAe89o4OvgotG7mC6XcTTmfXgtc2sKk5CYplxQIC3y92mOQZYJPN8
	hhXhVfbm7AdDfEtlC708pO95SUsx4D22uVMlvxS7OEulK1o6TVgavYop/iGwOJrMa2Ov
	Je8g==
X-Gm-Message-State: APjAAAUZmSSIUHyupkD+GlKKt4E5zm2ql+T/axRUKJNMTmwOAyuH6WBq
	W/fC1woan55uxIuFTxrPVxalGzitclFQ7U/oCII=
X-Google-Smtp-Source: APXvYqy9OH5rdU/f18+B2Gj7SJwpoTPaWgLVqagdzsA4OHi6E2C1hpEKnhCJ0Elh6yHlQQe6ZWcCv3V6ySIHfUqY06E=
X-Received: by 2002:aca:43c4:: with SMTP id q187mr12188716oia.45.1554103640687;
	Mon, 01 Apr 2019 00:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAFuHCCBnm9uGqeiyFrpzuGtahYQUUK=ap1gp3NOuy_eA1TooCA@mail.gmail.com>
In-Reply-To: <CAFuHCCBnm9uGqeiyFrpzuGtahYQUUK=ap1gp3NOuy_eA1TooCA@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 1 Apr 2019 09:27:09 +0200
Message-ID: <CACKFPN02mVEou-e9A5SQs+WiQB-_Xm1yGkhrbnHiOACZjzUHjg@mail.gmail.com>
To: Sergio Torres Soldado <torres.soldado@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: customising a bsp
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
X-List-Received-Date: Mon, 01 Apr 2019 07:27:23 -0000
Content-Type: multipart/alternative; boundary="000000000000728a46058572f32b"

--000000000000728a46058572f32b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Serj,

I'm using the -r / -R options in bitbake in order to customize the image
via global
variables and be able to build different configurations for the same
machine and
distro. You you use the same option to create e.g. different versions. Have
a look
in the documentation

https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manu=
al.html

search for these lines:
-r PREFILE, --read=3DPREFILE
-R POSTFILE, --postread=3DPOSTFILE

What those do is that you can add an extra configuration file wich either
prepends
or appends the local.conf file. I'm using it both ways, but for your case I
think you
need to add your default versions with ?=3D in the local.conf and then
override them
with an external conf file and use --read option.

So, let's say that you have the minimal-image then you can have a number or
versioned configuration files (e.g. version-1.0.conf, version-1.2.conf,
e.t.c.) then
you setup your environment as usual using your environment setup scripts or
just calling oe-init-build-env for your machine and then you'll be able to
build
different versions like this:

bitbake -R version-1.0.conf minimal-image


You can also build a single recipe using the version file

bitbake -R version-1.2.conf virtual/kernel


Then, if you like, you can create a wrapper script that actually simplifies
the call
and just pass the version. For example, you can create an executable bash
script
and these

#!/bin/bash
> CONF_VERSION=3D"1.0"
> while getopts v:h" OPTION
> do
>     case $OPTION in
>     v) CONF_VERSION=3D${OPTARG} ;;
>     h) echo "Print some help" ;;
>     *) echo "Print some help" ;;
> esac
> done
> bitbake --postread=3D${CONF_VERSION} ${1}


And then call the script using -v to pass the version. Of course, that
assumes
that all version files are in the same folder with the local.conf. I
usually make
such scripts but they are doing much more stuff, for example use variables
from the extra conf file to run other tasks.

Hope that helps.

Cheers,
Dimitris

Sergio Torres Soldado <torres.soldado@gmail.com> schrieb am Sa., 30. M=C3=
=A4rz
2019, 18:34:

> Hi,
>
>  What is the best alternative to setting variables in local.conf? The
> specific use-case is customising a meta-raspberrypi build, which has a
> bunch of variables that are picked up by the MACHINE code to influence
> build configurations. I want to version these customisations hence removi=
ng
> them from local.conf.
>
>  I have tried adding a machine definition in a separate layer that
> includes the same files as those from the machines in meta-raspberry pi b=
ut
> there is logic that depends on the machine name and building an image fai=
ls.
>
> Many thanks,
> Serj.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--000000000000728a46058572f32b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"auto">Hi Serj,<div dir=3D"auto"><br>=
</div><div>I&#39;m using the -r / -R options in bitbake in order to customi=
ze the image via global</div><div>variables and be able to build different =
configurations for the same machine and</div><div>distro. You you use the s=
ame option to create e.g. different versions. Have a look</div><div>in the =
documentation</div><div><br></div><div><a href=3D"https://www.yoctoproject.=
org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html">https://www.yoct=
oproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html</a><br><=
/div><div><br></div><div>search for these lines:</div><div><div>-r PREFILE,=
 --read=3DPREFILE</div><div>-R POSTFILE, --postread=3DPOSTFILE</div></div><=
div><br></div><div>What those do is that you can add an extra configuration=
 file wich either prepends</div><div>or appends the local.conf file. I&#39;=
m using it both ways, but for your case I think you</div><div>need to add y=
our default versions with ?=3D in the local.conf and then override them</di=
v><div>with an external conf file and use --read option.</div><div><br></di=
v><div>So, let&#39;s say that you have the minimal-image then you can have =
a number or</div><div>versioned configuration files (e.g. version-1.0.conf,=
 version-1.2.conf, e.t.c.) then</div><div>you setup your environment as usu=
al using your environment setup scripts or</div><div>just calling oe-init-b=
uild-env for your machine and then you&#39;ll be able to build</div><div>di=
fferent versions like this:</div><div><br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">bitbake -R version-1.0.conf minimal-image</blockquot=
e><div><br></div><div>You can also build a single recipe using the version =
file</div><div><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">bitbak=
e -R version-1.2.conf virtual/kernel</blockquote></div><div><br></div><div>=
Then, if you like, you can create a wrapper script that actually simplifies=
 the call</div><div>and just pass the version. For example, you can create =
an executable bash script</div><div>and these</div><div><br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">#!/bin/bash<br>CONF_VERSION=3D&quo=
t;1.0&quot;<br>while getopts v:h&quot; OPTION<br>do<br>=C2=A0 =C2=A0 case $=
OPTION in<br>=C2=A0 =C2=A0 v) CONF_VERSION=3D${OPTARG} ;;<br>=C2=A0 =C2=A0 =
h) echo &quot;Print some help&quot; ;;<br>=C2=A0 =C2=A0 *) echo &quot;Print=
 some help&quot; ;;<br>esac<br>done<br>bitbake --<span style=3D"color:rgb(5=
1,51,51)">postread</span>=3D${CONF_VERSION} ${1}</blockquote><div><br></div=
><div>And then call the script using -v to pass the version. Of course, tha=
t assumes</div><div>that all version files are in the same folder with the =
local.conf. I usually make</div><div>such scripts but they are doing much m=
ore stuff, for example use variables</div><div>from the extra conf file to =
run other tasks.</div><div><br></div><div>Hope that helps.</div><div><br></=
div><div>Cheers,</div><div>Dimitris</div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Sergio Torres Soldad=
o &lt;<a href=3D"mailto:torres.soldado@gmail.com" target=3D"_blank">torres.=
soldado@gmail.com</a>&gt; schrieb am Sa., 30. M=C3=A4rz 2019, 18:34:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<d=
iv><br></div><div>=C2=A0What is the best alternative to setting variables i=
n local.conf? The specific use-case is customising a meta-raspberrypi build=
, which has a bunch of variables that are picked up by the MACHINE code to =
influence build configurations. I want to version these customisations henc=
e removing them from local.conf.=C2=A0</div><div><br></div><div>=C2=A0I hav=
e tried adding a machine definition in a separate layer that includes the s=
ame files as those from the machines in meta-raspberry pi but there is logi=
c that depends on the machine name and building an image fails.</div><div><=
br></div><div>Many thanks,</div><div>Serj.</div></div>--=C2=A0<br>_________=
______________________________________<br>yocto mailing list<br><a href=3D"=
mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">yocto@y=
octoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a></blockquote></div></div></div></div></div>

--000000000000728a46058572f32b--
