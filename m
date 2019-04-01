Return-Path: <torres.soldado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ABE2E00D32; Mon,  1 Apr 2019 00:48:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (torres.soldado[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58642E00D20
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 00:48:57 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id f18so7155157lja.10
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 00:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qR/IlCu9VVvwd8/xGeMPzJFT5TyxiTragN6s+R+9aYE=;
	b=j+zqshqob4TsTiRarFxqfP67rkIxk6H5TrtlfMidlTwiC5yfWGUOpP510IOlHzALWm
	Rgbq+6vBjNJcQzno6Tg9sDoDKBwCbc/UvvlrtftpWi33DxolLwAbKDa58F2wu6twZ3dK
	EsBYRX3Ecrl3NsMxf7XJFZSUDlCtpV7OOVqlLNhVF930aRMmbjPxHboY+lep0gamelXp
	gQqpW27JZhtfxF0rq8zrkPjzkF6SstEv8JlOkA2VhCD2rjWW4l0tx+3A0EST8todJ6TW
	cnZD30C316ws4WMrKUVdoVFzZY4lPLIc6JWH72EmUMvY3xrM7waw96+hUbKEy0uJpOng
	LJOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qR/IlCu9VVvwd8/xGeMPzJFT5TyxiTragN6s+R+9aYE=;
	b=OLNVzH6PJakBP7B4DRfa7A1rjIoKfCpgWVrlUJYwXxjFANQq0vdf1oXrDsbWFd0x20
	l5K+F08NkACVkvr2MqAH8OPECnz/4noriBxycSte8LaNnK3P/81Hj+/z/NSICB81dTmC
	zTPhdhdJrk0x2BF8SzVB/UO+OBCAX+NcjXJaykEMKdXlUXTrrXZKFLkfLwBCXNmNBtxW
	pYoK+gjclYjdM4rAiX/GNcC3DoXrb/Sp1XbtjbXWmutUTq5KRbGWHqcrBwVvayDL9P7f
	RR8qJqJT4mtXO4sb5HcTQyXvnbSKbNiNqzp6v/nj3aKEilDq51SPRJ/J3lZIJcO0SFAz
	U3/w==
X-Gm-Message-State: APjAAAXPG0le6+XyM19BxaR7blJBi6wq23vAvcVkamvtlLaFhBGeVLmu
	ibqz5H3q7M+a/cRcNZknDKTATml2zZy1AR8x6SY=
X-Google-Smtp-Source: APXvYqzjZq0V3a/C9ZXK8dQ2kL3yKs12iEf9GytzUhnneS/A5WWRcQjSUrxqK5Ecoxt1RCO3S26cwwAx8gfZTvVNl6M=
X-Received: by 2002:a2e:8905:: with SMTP id d5mr18043599lji.59.1554104936391; 
	Mon, 01 Apr 2019 00:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAFuHCCBnm9uGqeiyFrpzuGtahYQUUK=ap1gp3NOuy_eA1TooCA@mail.gmail.com>
	<CACKFPN02mVEou-e9A5SQs+WiQB-_Xm1yGkhrbnHiOACZjzUHjg@mail.gmail.com>
In-Reply-To: <CACKFPN02mVEou-e9A5SQs+WiQB-_Xm1yGkhrbnHiOACZjzUHjg@mail.gmail.com>
From: Sergio Torres Soldado <torres.soldado@gmail.com>
Date: Mon, 1 Apr 2019 07:48:45 +0000
Message-ID: <CAFuHCCANbbWqhEcXmv7Z921wZ+_8BEkChv+d07dQinHhwy9gvg@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
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
X-List-Received-Date: Mon, 01 Apr 2019 07:48:58 -0000
Content-Type: multipart/alternative; boundary="000000000000ad688a058573407b"

--000000000000ad688a058573407b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dimitris,

 That is very versatile thanks. It is a way of solving the issue.

 Just as a side note this is what I did so far trying to separate the
changes to the machine:

 added the following to a layer I created:
.
|-- conf
|   `-- machine
|       `-- raspberrypi3-custom.conf

Initially raspberrypi3-custom.conf was just a copy of raspberrpi3.conf in
meta-raspberry but I get the following excerpt of an error:
"""
ERROR: linux-raspberrypi-1_4.14.98+gitAUTOINC+5d63a4595d-r0
do_kernel_metadata: Could not locate BSP definition for
raspberrypi3-custom/standard and no defconfig was provided
"""

To remedy this I added the following line to raspberrypi3-custom.conf:
"""
KBUILD_DEFCONFIG_raspberrypi3-custom ?=3D "bcm2709_defconfig
"""

But then I get the error:
"""
ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: QA Issue:
bcm2835-bootfiles: LIC_FILES_CHKSUM points to an invalid file:
/opt/yocto/workspace/build/tmp/work/raspberrypi3_custom-poky-linux-gnueabi/=
bcm2835-bootfiles/20190212-r3/firmware-83977fe3b6ef54c1d29c83b0a778d330f523=
441f/boot/LICENCE.broadcom
[license-checksum]
ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: Fatal QA errors
found, failing task.
ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: Function failed:
populate_lic_qa_checksum
ERROR: Logfile of failure stored in:
/opt/yocto/workspace/build/tmp/work/raspberrypi3_custom-poky-linux-gnueabi/=
bcm2835-bootfiles/20190212-r3/temp/log.do_populate_lic.30228
"""

I ended up editing raspberrypi3.conf directly basically branching
meta-raspberrypi.


On Mon, 1 Apr 2019 at 08:27, Dimitris Tassopoulos <dimtass@gmail.com> wrote=
:

> Hi Serj,
>
> I'm using the -r / -R options in bitbake in order to customize the image
> via global
> variables and be able to build different configurations for the same
> machine and
> distro. You you use the same option to create e.g. different versions.
> Have a look
> in the documentation
>
>
> https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-ma=
nual.html
>
> search for these lines:
> -r PREFILE, --read=3DPREFILE
> -R POSTFILE, --postread=3DPOSTFILE
>
> What those do is that you can add an extra configuration file wich either
> prepends
> or appends the local.conf file. I'm using it both ways, but for your case
> I think you
> need to add your default versions with ?=3D in the local.conf and then
> override them
> with an external conf file and use --read option.
>
> So, let's say that you have the minimal-image then you can have a number =
or
> versioned configuration files (e.g. version-1.0.conf, version-1.2.conf,
> e.t.c.) then
> you setup your environment as usual using your environment setup scripts =
or
> just calling oe-init-build-env for your machine and then you'll be able t=
o
> build
> different versions like this:
>
> bitbake -R version-1.0.conf minimal-image
>
>
> You can also build a single recipe using the version file
>
> bitbake -R version-1.2.conf virtual/kernel
>
>
> Then, if you like, you can create a wrapper script that actually
> simplifies the call
> and just pass the version. For example, you can create an executable bash
> script
> and these
>
> #!/bin/bash
>> CONF_VERSION=3D"1.0"
>> while getopts v:h" OPTION
>> do
>>     case $OPTION in
>>     v) CONF_VERSION=3D${OPTARG} ;;
>>     h) echo "Print some help" ;;
>>     *) echo "Print some help" ;;
>> esac
>> done
>> bitbake --postread=3D${CONF_VERSION} ${1}
>
>
> And then call the script using -v to pass the version. Of course, that
> assumes
> that all version files are in the same folder with the local.conf. I
> usually make
> such scripts but they are doing much more stuff, for example use variable=
s
> from the extra conf file to run other tasks.
>
> Hope that helps.
>
> Cheers,
> Dimitris
>
> Sergio Torres Soldado <torres.soldado@gmail.com> schrieb am Sa., 30. M=C3=
=A4rz
> 2019, 18:34:
>
>> Hi,
>>
>>  What is the best alternative to setting variables in local.conf? The
>> specific use-case is customising a meta-raspberrypi build, which has a
>> bunch of variables that are picked up by the MACHINE code to influence
>> build configurations. I want to version these customisations hence remov=
ing
>> them from local.conf.
>>
>>  I have tried adding a machine definition in a separate layer that
>> includes the same files as those from the machines in meta-raspberry pi =
but
>> there is logic that depends on the machine name and building an image fa=
ils.
>>
>> Many thanks,
>> Serj.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000ad688a058573407b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dimitris,<div><br></div><div>=C2=A0That is very versati=
le thanks. It is a way of solving the issue.</div><div><br></div><div>=C2=
=A0Just as a side note this is what I did so far trying to separate the cha=
nges to the machine:<br></div><div><br></div><div><div>=C2=A0added the foll=
owing to a layer I created:</div><div><span style=3D"font-family:monospace"=
><span style=3D"color:rgb(0,0,0)">.=C2=A0</span><br>|-- conf=C2=A0<br>| =C2=
=A0=C2=A0`-- machine=C2=A0<br>| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0`-- ras=
pberrypi3-custom.conf=C2=A0<br><br></span></div><div>Initially=C2=A0<span s=
tyle=3D"font-family:monospace">raspberrypi3-custom.conf</span><span style=
=3D"font-family:monospace">=C2=A0was just a copy of raspberrpi3.conf in met=
a-raspberry but I get the following excerpt of an error:</span></div><div><=
font face=3D"monospace">&quot;&quot;&quot;</font></div><div><div><font face=
=3D"monospace">ERROR: linux-raspberrypi-1_4.14.98+gitAUTOINC+5d63a4595d-r0 =
do_kernel_metadata: Could not locate BSP definition for raspberrypi3-custom=
/standard and no defconfig was provided</font></div></div><div>&quot;&quot;=
&quot;</div><div><br></div><div>To remedy this I added the following line t=
o raspberrypi3-custom.conf:</div><div>&quot;&quot;&quot;</div><div>KBUILD_D=
EFCONFIG_raspberrypi3-custom ?=3D &quot;bcm2709_defconfig<br></div><div>&qu=
ot;&quot;&quot;</div><div><br></div><div>But then I get the error:</div><di=
v>&quot;&quot;&quot;</div><div><div>ERROR: bcm2835-bootfiles-20190212-r3 do=
_populate_lic: QA Issue: bcm2835-bootfiles: LIC_FILES_CHKSUM points to an i=
nvalid file: /opt/yocto/workspace/build/tmp/work/raspberrypi3_custom-poky-l=
inux-gnueabi/bcm2835-bootfiles/20190212-r3/firmware-83977fe3b6ef54c1d29c83b=
0a778d330f523441f/boot/LICENCE.broadcom [license-checksum]</div><div>ERROR:=
 bcm2835-bootfiles-20190212-r3 do_populate_lic: Fatal QA errors found, fail=
ing task.</div><div>ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: F=
unction failed: populate_lic_qa_checksum</div><div>ERROR: Logfile of failur=
e stored in: /opt/yocto/workspace/build/tmp/work/raspberrypi3_custom-poky-l=
inux-gnueabi/bcm2835-bootfiles/20190212-r3/temp/log.do_populate_lic.30228</=
div></div><div>&quot;&quot;&quot;</div><div><br></div>I ended up editing ra=
spberrypi3.conf directly basically branching meta-raspberrypi.</div><div><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, 1 Apr 2019 at 08:27, Dimitris Tassopoulos &lt;<a href=3D"ma=
ilto:dimtass@gmail.com">dimtass@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"auto">Hi Serj,<div dir=3D"auto"><br></div><div>I&#39;m using the -r / =
-R options in bitbake in order to customize the image via global</div><div>=
variables and be able to build different configurations for the same machin=
e and</div><div>distro. You you use the same option to create e.g. differen=
t versions. Have a look</div><div>in the documentation</div><div><br></div>=
<div><a href=3D"https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/b=
itbake-user-manual.html" target=3D"_blank">https://www.yoctoproject.org/doc=
s/1.6/bitbake-user-manual/bitbake-user-manual.html</a><br></div><div><br></=
div><div>search for these lines:</div><div><div>-r PREFILE, --read=3DPREFIL=
E</div><div>-R POSTFILE, --postread=3DPOSTFILE</div></div><div><br></div><d=
iv>What those do is that you can add an extra configuration file wich eithe=
r prepends</div><div>or appends the local.conf file. I&#39;m using it both =
ways, but for your case I think you</div><div>need to add your default vers=
ions with ?=3D in the local.conf and then override them</div><div>with an e=
xternal conf file and use --read option.</div><div><br></div><div>So, let&#=
39;s say that you have the minimal-image then you can have a number or</div=
><div>versioned configuration files (e.g. version-1.0.conf, version-1.2.con=
f, e.t.c.) then</div><div>you setup your environment as usual using your en=
vironment setup scripts or</div><div>just calling oe-init-build-env for you=
r machine and then you&#39;ll be able to build</div><div>different versions=
 like this:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">bitbake -R version-1.0.conf minimal-image</blockquote><div><br></div=
><div>You can also build a single recipe using the version file</div><div><=
br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">bitbake -R version-1.2=
.conf virtual/kernel</blockquote></div><div><br></div><div>Then, if you lik=
e, you can create a wrapper script that actually simplifies the call</div><=
div>and just pass the version. For example, you can create an executable ba=
sh script</div><div>and these</div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">#!/bin/bash<br>CONF_VERSION=3D&quot;1.0&quot;<br>w=
hile getopts v:h&quot; OPTION<br>do<br>=C2=A0 =C2=A0 case $OPTION in<br>=C2=
=A0 =C2=A0 v) CONF_VERSION=3D${OPTARG} ;;<br>=C2=A0 =C2=A0 h) echo &quot;Pr=
int some help&quot; ;;<br>=C2=A0 =C2=A0 *) echo &quot;Print some help&quot;=
 ;;<br>esac<br>done<br>bitbake --<span style=3D"color:rgb(51,51,51)">postre=
ad</span>=3D${CONF_VERSION} ${1}</blockquote><div><br></div><div>And then c=
all the script using -v to pass the version. Of course, that assumes</div><=
div>that all version files are in the same folder with the local.conf. I us=
ually make</div><div>such scripts but they are doing much more stuff, for e=
xample use variables</div><div>from the extra conf file to run other tasks.=
</div><div><br></div><div>Hope that helps.</div><div><br></div><div>Cheers,=
</div><div>Dimitris</div></div></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Sergio Torres Soldado &lt;<a href=3D"m=
ailto:torres.soldado@gmail.com" target=3D"_blank">torres.soldado@gmail.com<=
/a>&gt; schrieb am Sa., 30. M=C3=A4rz 2019, 18:34:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>=
=C2=A0What is the best alternative to setting variables in local.conf? The =
specific use-case is customising a meta-raspberrypi build, which has a bunc=
h of variables that are picked up by the MACHINE code to influence build co=
nfigurations. I want to version these customisations hence removing them fr=
om local.conf.=C2=A0</div><div><br></div><div>=C2=A0I have tried adding a m=
achine definition in a separate layer that includes the same files as those=
 from the machines in meta-raspberry pi but there is logic that depends on =
the machine name and building an image fails.</div><div><br></div><div>Many=
 thanks,</div><div>Serj.</div></div>--=C2=A0<br>___________________________=
____________________<br>yocto mailing list<br><a href=3D"mailto:yocto@yocto=
project.org" rel=3D"noreferrer" target=3D"_blank">yocto@yoctoproject.org</a=
><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a></blockquote></div></div></div></div></div>
</blockquote></div>

--000000000000ad688a058573407b--
