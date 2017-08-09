Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A0A9E00B49; Wed,  9 Aug 2017 01:32:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0163DE0090A
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 01:32:19 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id m34so8833308iti.1
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 01:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dZYyfEX7mPQA1uqJcW6P79VvNu326Vh5OnW/m66lGcE=;
	b=Plm5emNf+XFI7L0vkkALazP7ZaBEVvJOUggTK8oZ0vearMW8ZbTmrj6CNkZ7ETuUsl
	R+RwSuVx9s+AMfC97UfuF9piTny9RHXDv3Jfie5IR2Sn6/ZKV60oUYH0zhXYtrWnmvTK
	7s4E5Kgmr2b0aM7Te1pJJ3zPv4vTB3b6i9DTkN69WQFjtksOpnbQVmerxCIR0zfoS8iM
	sv+kbsC8V/FIqYXlz90H23Opbj/kfJO8Vu8jLxgw1J3t2QJVtRWasd4woeoOoovcGQaX
	EFGlzvVtnnO43XyJQcGY29AwpwkonlA4/2Kagaoo0rOSpg5DusUuHqYgByV9mdbuLUoB
	2xdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dZYyfEX7mPQA1uqJcW6P79VvNu326Vh5OnW/m66lGcE=;
	b=mwNbIKZZjFkYD+55wWtJOZF6Rpfa1JMm8ry0T5v9M2Bp2KlPs8fN+LGvt7YtyLHM+9
	yf0YO7GbHliN28jv/7a5yWe29wDYQo2FX+CtVMCJqmiZt/H5HbzR0EHbkkhrUQh3k8Mc
	wA7pHvLUb9LPQHDOBNoeMG7U7Wv/lIRkGV1LZw123Lr8fuqA/W+slA1Njk5VdA2vDdAt
	qQ8QtrbLD2wSL1xdNEVjuPMoz4mx4WWlsnqDAKTv5jcajX84JhmqvuBM15qH/Xp9Xh1K
	/AbM8+30Qm2ws5cfCmPMZfkWTXuZH8M+i9IEXQfmdMSWdEv08AQEp7P18tebeoOAg5GL
	5Ayw==
X-Gm-Message-State: AIVw113YSX+uLIXGLXmF5lCTMYS5fF53YUpMmIGSPXnwRkS+xjrGgLTa
	cGDH7Y74Mz8rxcuOt/4LjfhUC0fzvZW4
X-Received: by 10.36.44.77 with SMTP id i74mr5803798iti.42.1502267539146; Wed,
	09 Aug 2017 01:32:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Wed, 9 Aug 2017 01:31:58 -0700 (PDT)
In-Reply-To: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Aug 2017 09:31:58 +0100
Message-ID: <CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
To: Riko <antonius.riko@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: bitbake error ?
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
X-List-Received-Date: Wed, 09 Aug 2017 08:32:20 -0000
Content-Type: multipart/alternative; boundary="001a113f66c0075f5b05564deb90"

--001a113f66c0075f5b05564deb90
Content-Type: text/plain; charset="UTF-8"

For some reason, bitbake can't do "wget https://www.example.com/".   Try
running that command outside of bitbake and seeing if it returns any errors.

Ross

On 9 August 2017 at 09:29, Riko <antonius.riko@gmail.com> wrote:

> Dear Yocto Member,
>
>
> I have downloaded fresh install of yocto but got error, here's the trace :
>
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b pyro git://
> git.yoctoproject.org/poky.git
> Cloning into 'poky'...
> remote: Counting objects: 373183, done.
> remote: Compressing objects: 100% (89366/89366), done.
> remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
> Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done.
> Resolving deltas: 100% (277418/277418), done.
> Checking connectivity... done.
>
>
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source
> oe-init-build-env
> You had no conf/local.conf file. This configuration file has therefore been
> created for you with some default values. You may wish to edit it to, for
> example, select a different MACHINE (target hardware). See conf/local.conf
> for more information as common configuration options are commented.
>
> You had no conf/bblayers.conf file. This configuration file has therefore
> been
> created for you with some default values. To add additional metadata layers
> into your configuration please add entries to conf/bblayers.conf.
>
> The Yocto Project has extensive documentation about OE including a
> reference
> manual which can be found at:
>     http://yoctoproject.org/documentation
>
> For more information about OpenEmbedded see their website:
>     http://www.openembedded.org/
>
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchain
>     meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu
> qemux86'
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ bitbake
> core-image-minimal
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Fetcher failure for URL: 'https://www.example.com/'. URL
> https://www.example.com/ doesn't work.
>     Please ensure your host's network is configured correctly,
>     or set BB_NO_NETWORK = "1" to disable network access if
>     all required sources are on local disk.
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Any suggestions ?
>
> I'm using ubuntu 16.04,
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f66c0075f5b05564deb90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For some reason, bitbake can&#39;t do &quot;wget <a href=
=3D"https://www.example.com/">https://www.example.com/</a>&quot;. =C2=A0 Tr=
y running that command outside of bitbake and seeing if it returns any erro=
rs.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On 9 August 2017 at 09:29, Riko <span dir=3D"ltr">&lt=
;<a href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">antonius.riko=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear Yoc=
to Member,<br>
<br>
<br>
I have downloaded fresh install of yocto but got error, here&#39;s the trac=
e :<br>
<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~$ git clone -b pyro git:/=
/<a href=3D"http://git.yoctoproject.org/poky.git" rel=3D"noreferrer" target=
=3D"_blank">git.yoctoproject.org/pok<wbr>y.git</a><br>
Cloning into &#39;poky&#39;...<br>
remote: Counting objects: 373183, done.<br>
remote: Compressing objects: 100% (89366/89366), done.<br>
remote: Total 373183 (delta 277418), reused 373031 (delta 277266)<br>
Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done.<br>
Resolving deltas: 100% (277418/277418), done.<br>
Checking connectivity... done.<br>
<br>
<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky$ source oe-init-bui=
ld-env<br>
You had no conf/local.conf file. This configuration file has therefore been=
<br>
created for you with some default values. You may wish to edit it to, for<b=
r>
example, select a different MACHINE (target hardware). See conf/local.conf<=
br>
for more information as common configuration options are commented.<br>
<br>
You had no conf/bblayers.conf file. This configuration file has therefore b=
een<br>
created for you with some default values. To add additional metadata layers=
<br>
into your configuration please add entries to conf/bblayers.conf.<br>
<br>
The Yocto Project has extensive documentation about OE including a referenc=
e<br>
manual which can be found at:<br>
=C2=A0 =C2=A0 <a href=3D"http://yoctoproject.org/documentation" rel=3D"nore=
ferrer" target=3D"_blank">http://yoctoproject.org/docume<wbr>ntation</a><br=
>
<br>
For more information about OpenEmbedded see their website:<br>
=C2=A0 =C2=A0 <a href=3D"http://www.openembedded.org/" rel=3D"noreferrer" t=
arget=3D"_blank">http://www.openembedded.org/</a><br>
<br>
<br>
### Shell environment set up for builds. ###<br>
<br>
You can now run &#39;bitbake &lt;target&gt;&#39;<br>
<br>
Common targets are:<br>
=C2=A0 =C2=A0 core-image-minimal<br>
=C2=A0 =C2=A0 core-image-sato<br>
=C2=A0 =C2=A0 meta-toolchain<br>
=C2=A0 =C2=A0 meta-ide-support<br>
<br>
You can also run generated qemu images with a command like &#39;runqemu qem=
ux86&#39;<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$ bitbake core=
-image-minimal<br>
ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a potential misco=
nfiguration.<br>
=C2=A0 =C2=A0 Either fix the cause of this error or at your own risk disabl=
e the checker (see sanity.conf).<br>
=C2=A0 =C2=A0 Following is the list of potential problems / advisories:<br>
<br>
=C2=A0 =C2=A0 Fetcher failure for URL: &#39;<a href=3D"https://www.example.=
com/" rel=3D"noreferrer" target=3D"_blank">https://www.example.com/</a>&#39=
;. URL <a href=3D"https://www.example.com/" rel=3D"noreferrer" target=3D"_b=
lank">https://www.example.com/</a> doesn&#39;t work.<br>
=C2=A0 =C2=A0 Please ensure your host&#39;s network is configured correctly=
,<br>
=C2=A0 =C2=A0 or set BB_NO_NETWORK =3D &quot;1&quot; to disable network acc=
ess if<br>
=C2=A0 =C2=A0 all required sources are on local disk.<br>
<br>
<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
<br>
Any suggestions ?<br>
<br>
I&#39;m using ubuntu 16.04,<br>
<br>
Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a113f66c0075f5b05564deb90--
