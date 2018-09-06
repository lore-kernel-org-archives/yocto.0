Return-Path: <gabriele@analyticsfire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC7BAE00AB3; Thu,  6 Sep 2018 03:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.219.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60BF0E00A9A
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 03:17:44 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id y20-v6so3881991ybi.13
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 03:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=analyticsfire-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=OlhEL2/jk1DLtTDbz9MFLSdTSAYEkhzw8ZLJA3SnnbU=;
	b=y+EhdpD6OATpSPmGTIflmqUH0AwMl/4Jv2rqXDEaqjwGmYUCzmdapaRwzhsaKdQ4Xy
	D/o/iV0yiRA+bHEtZ0sW/5nhjxUMvWHCuhnIjOzaFta+sjxGMgnEGAxe5PyqrbQT2O6A
	yJ0VkRatcAuw9uOqyCuqSkUkvVNzW6QAP94YuyM+LXmgNJPwfm8tAP+ds8WOcrHq6zk4
	bgINmj/QEDFjJp9rJEwogaaTANeCIhkofgP6OJT1LqUt1BrSkGtFZsBkY8pTBXbrBx5T
	sM9HV0nzhlEJyOfEj8FTBP5do2nj1KZHdsW13fGX8N6ayCCf74h01iusQLmhyKBEgE5H
	/5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=OlhEL2/jk1DLtTDbz9MFLSdTSAYEkhzw8ZLJA3SnnbU=;
	b=DhjMns8Or7dcsQWSkFJ0V2ZbpAtnwyoCbn96LJGqGcK1b16oF5Jckk3Vs9whtKx3gz
	ZJoelPyC9zmAiP912KmCWXwHiQWPPqS7xx3f8xAEUp4V99IWQhcf3S5PeyzP6L3nCDK5
	Yrl/YcIpCKRdXlPvL6NY597afXosR0GA0i/gYhASPphw0JADlOivtacFie55VuWwet1S
	+q5pMjoajgEgzGNpwS1uJUAjH853rD3LpW0svjVSx09QMyWhBNsth5mNpiXXfzwrwaOF
	h0/wITvLm83K717oG9J1cGZgY05jKWxU+8dppOApJBrVlRTiplgjMJiZ1hvuaf9Sd01a
	/teg==
X-Gm-Message-State: APzg51ByPtIMRC/2eoCTgApUxTLljYraE63+Z8hzuLT8NDCY1+S6aEcA
	EDwiGl84cpXGUiA5uo7KzZLou9ZkSrNIqtxBCUXMvsMp
X-Google-Smtp-Source: ANB0VdYNw/yC7qYa9qzoX+cMpojh056P5WdiTr1MJ2YkLfIT0R5/gpSr07H98/dpLGjb1NkhxZwHqNGzi0PQ7PXTK+U=
X-Received: by 2002:a25:5444:: with SMTP id
	i65-v6mr900286ybb.207.1536229063455; 
	Thu, 06 Sep 2018 03:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAMmNTemi9+UoZg0vWvvFZu-ggnYHkDy5VARfHhm6tHjAWr7BGQ@mail.gmail.com>
In-Reply-To: <CAMmNTemi9+UoZg0vWvvFZu-ggnYHkDy5VARfHhm6tHjAWr7BGQ@mail.gmail.com>
From: Gabriele Favalessa <gabriele@analyticsfire.com>
Date: Thu, 6 Sep 2018 12:17:32 +0200
Message-ID: <CAMmNTem63EK=Jab7ZYSug5VG+stsFN4-457UTde9PPFoRFNOuw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Extended SDK installation fails during git fetch of kernel source hosted on private repo
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
X-List-Received-Date: Thu, 06 Sep 2018 10:17:45 -0000
Content-Type: multipart/alternative; boundary="0000000000009f0a380575313307"

--0000000000009f0a380575313307
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

An update (and a workaround.)

What's happening is that during the execution of the install script for the
extended SDK, the env of the original shell is ignored. If your SDK refers
to private git repos (on github for example) and you normally authenticate
to github using ssh and ssh-agent, the SSH_AUTH_SOCK env variables needed
won't be set by the time git is invoked. The workaround is configuring the
authentication to github in .ssh/config and avoid the ssh-agent. (Yes, I
checked and SSH_AUTH_SOCK is exported by the shell :)

But the underlying problem is that env of the shell is ignored during
install, so potentially other useful variables could be ignored. Is that
intentional? Is there a way to prevent it?

Gabriele

On Wed, Aug 29, 2018 at 3:55 PM Gabriele Favalessa <
gabriele@analyticsfire.com> wrote:

> Hi,
>
> I'm trying to install on ubuntu 17.04 an Extensible SDK that I have built=
,
> and it stops with an error:
>
> -------------------------------------------------------
> sdk@sdk:~$ ./
> acme-linux-glibc-x86_64-acme-image-datalogger-cortexa7hf-neon-toolchain-e=
xt-2.5.1.sh
> -D
> =E2=80=A6
> + sh -c . buildtools/environment-setup* >
> /home/sdk/acme-linux_sdk/preparing_build_system.log && cd
> /home/sdk/acme-linux_sdk/layers/poky && set /home/sdk/acme-linux_sdk && .
> /home/sdk/acme-linux_sdk/layers/poky/oe-init-build-env
> /home/sdk/acme-linux_sdk >>
> /home/sdk/acme-linux_sdk/preparing_build_system.log && python
> /home/sdk/acme-linux_sdk/ext-sdk-prepare.py
> /home/sdk/acme-linux_sdk/preparing_build_system.log 'acme-image-datalogge=
r
> meta-extsdk-toolchain:do_populate_sysroot'
> WARNING:
> /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
> linux-imx_4.9.11.bb: Exception during build_dependencies for AUTOREV
> WARNING:
> /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
> linux-imx_4.9.11.bb: Error during finalise of
> /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
> linux-imx_4.9.11.bb
> ERROR: ExpansionError during parsing
> /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
> linux-imx_4.9.11.bb
> Traceback (most recent call last):
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n
> was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> GIT_SSL_CAINFO=3D"/home/sdk/acme-linux_sdk/buildtools/sysroots/x86_64-acm=
esdk-linux/etc/ssl/certs/ca-certificates.crt";
> export
> PATH=3D"/home/sdk/acme-linux_sdk/layers/poky/scripts:/home/sdk/acme-linux=
_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot=
-native/usr/bin/arm-acme-linux-gnueabi:/home/sdk/acme-linux_sdk/tmp/work/my=
board-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot/usr/bin/crosssc=
ripts:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-im=
x/4.9.11-r0/recipe-sysroot-native/usr/sbin:/home/sdk/acme-linux_sdk/tmp/wor=
k/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/usr/=
bin:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/=
4.9.11-r0/recipe-sysroot-native/sbin:/home/sdk/acme-linux_sdk/tmp/work/mybo=
ard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/bin:/home/=
sdk/acme-linux_sdk/layers/poky/bitbake/bin:/home/sdk/acme-linux_sdk/tmp/hos=
ttools";
> export HOME=3D"/home/sdk"; git -c core.fsyncobjectfiles=3D0 ls-remote ssh=
://
> git@github.com/Acme/linux-imx.git  failed with exit code 128, output:
> Permission denied (publickey).
> fatal: Could not read from remote repository.
>
> Please make sure you have the correct access rights
> and the repository exists.
>
>
> ERROR: SDK preparation failed: error log written to
> /home/sdk/acme-linux_sdk/preparing_build_system.log
> -------------------------------------------------------
>
> I tested the failing git command `git -c ls-remote ssh://
> git@github.com/Acme/linux-imx.git`
> <http://git@github.com/Acme/linux-imx.git> directly from the command line
> and it succeeds without errors. I do have the ssh key in ssh-agent, so
> that's not surprise.
>
> It looks like during the SDK installation the ssh key is needed but for
> some reason the ssh-agent is not reachable (maybe the SSH_* env variables
> are not propagated by the script?)
>
> Is it unavoidable for the SDK to fetch from git during the installation?
> If it is unavoidable, how can I make the script fetch from a private gith=
ub
> repo, given that the ssh-agent seems to be ignored?
>
> Just out of curiosity, I copy&pasted the failing command in the shell, an=
d
> this time it ran without errors (again confirming that the ssh key is
> present.)
>
> -------------------------------------------------------
> sdk@sdk:~$ sh -c . buildtools/environment-setup* >
> /home/sdk/acme-linux_sdk/preparing_build_system.log && cd /home/sdk/
> acme-linux_sdk/layers/poky && set /home/sdk/acme-linux_sdk && .
> /home/sdk/acme-linux_sdk/layers/poky/oe-init-build-env
> /home/sdk/acme-linux_sdk >>
> /home/sdk/acme-linux_sdk/preparing_build_system.log && python
> /home/sdk/acme-linux_sdk/ext-
> sdk-prepare.py /home/sdk/acme-linux_sdk/preparing_build_system.log
> 'acme-image-datalogger meta-extsdk-toolchain:do_popu
> late_sysroot'
> Loading cache: 100%
> |########################################################################=
###########|
> Time: 0:00:00
> Parsing recipes: 100%
> |########################################################################=
#########|
> Time: 0:01:32
> Initialising tasks: 100%
> |########################################################################=
######|
> Time: 0:00:02
> Checking sstate mirror object availability: 100%
> |######################################################| Time: 0:00:00
> Loading cache: 100%
> |########################################################################=
###########|
> Time: 0:00:00
> Parsing recipes: 100%
> |########################################################################=
#########|
> Time: 0:00:07
> Initialising tasks: 100%
> |########################################################################=
######|
> Time: 0:00:00
> -------------------------------------------------------
>
> However the resulting SDK installation seems to be broken anyway (probabl=
y
> there are other steps after the one I re-run manually that where not
> executed because the toplevel script stopped with an error):
>
> -------------------------------------------------------
> sdk@sdk:~/acme-linux_sdk$ source
> environment-setup-cortexa7hf-neon-acme-linux-gnueabi
> SDK environment now set up; additionally you may now run devtool to
> perform development tasks.
> Run devtool --help for further details.
> ERROR: this SDK was not fully installed and needs reinstalling
> -------------------------------------------------------
>
> Thanks
>
> Gabriele
>

--0000000000009f0a380575313307
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">An update (and a workaround.)<div><br></div><div>What&#39;=
s happening is that during the execution of the install script for the exte=
nded SDK, the env of the original shell is ignored. If your SDK refers to p=
rivate git repos (on github for example) and you normally authenticate to g=
ithub using ssh and ssh-agent, the SSH_AUTH_SOCK env variables needed won&#=
39;t be set by the time git is invoked. The workaround is configuring the a=
uthentication to github in .ssh/config and avoid the ssh-agent. (Yes, I che=
cked and SSH_AUTH_SOCK is exported by the shell :)</div><div><br></div><div=
>But the underlying problem is that env of the shell is ignored during inst=
all, so potentially other useful variables could be ignored. Is that intent=
ional? Is there a way to prevent it?</div><div><br></div><div>Gabriele</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Aug 29, 2018=
 at 3:55 PM Gabriele Favalessa &lt;<a href=3D"mailto:gabriele@analyticsfire=
.com">gabriele@analyticsfire.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</=
div><div><br></div><div>I&#39;m trying to install on ubuntu 17.04 an Extens=
ible SDK that I have built, and it stops with an error:</div><div><br></div=
><div>-------------------------------------------------------</div><div>sdk=
@sdk:~$ ./<a href=3D"http://acme-linux-glibc-x86_64-acme-image-datalogger-c=
ortexa7hf-neon-toolchain-ext-2.5.1.sh" target=3D"_blank">acme-linux-glibc-x=
86_64-acme-image-datalogger-cortexa7hf-neon-toolchain-ext-2.5.1.sh</a> -D</=
div><div>=E2=80=A6</div><div>+ sh -c . buildtools/environment-setup* &gt; /=
home/sdk/acme-linux_sdk/preparing_build_system.log &amp;&amp; cd /home/sdk/=
acme-linux_sdk/layers/poky &amp;&amp; set /home/sdk/acme-linux_sdk &amp;&am=
p; . /home/sdk/acme-linux_sdk/layers/poky/oe-init-build-env /home/sdk/acme-=
linux_sdk &gt;&gt; /home/sdk/acme-linux_sdk/preparing_build_system.log &amp=
;&amp; python /home/sdk/acme-linux_sdk/ext-sdk-prepare.py /home/sdk/acme-li=
nux_sdk/preparing_build_system.log &#39;acme-image-datalogger meta-extsdk-t=
oolchain:do_populate_sysroot&#39;</div><div>WARNING: /home/sdk/acme-linux_s=
dk/layers/poky/meta-myboard/recipes-kernel/linux/<a href=3D"http://linux-im=
x_4.9.11.bb" target=3D"_blank">linux-imx_4.9.11.bb</a>: Exception during bu=
ild_dependencies for AUTOREV</div><div>WARNING: /home/sdk/acme-linux_sdk/la=
yers/poky/meta-myboard/recipes-kernel/linux/<a href=3D"http://linux-imx_4.9=
.11.bb" target=3D"_blank">linux-imx_4.9.11.bb</a>: Error during finalise of=
 /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/<a =
href=3D"http://linux-imx_4.9.11.bb" target=3D"_blank">linux-imx_4.9.11.bb</=
a></div><div>ERROR: ExpansionError during parsing /home/sdk/acme-linux_sdk/=
layers/poky/meta-myboard/recipes-kernel/linux/<a href=3D"http://linux-imx_4=
.9.11.bb" target=3D"_blank">linux-imx_4.9.11.bb</a></div><div>Traceback (mo=
st recent call last):</div><div>bb.data_smart.ExpansionError: Failure expan=
ding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which trigg=
ered exception FetchError: Fetcher failure: Fetch command export PSEUDO_DIS=
ABLED=3D1; export GIT_SSL_CAINFO=3D&quot;/home/sdk/acme-linux_sdk/buildtool=
s/sysroots/x86_64-acmesdk-linux/etc/ssl/certs/ca-certificates.crt&quot;; ex=
port PATH=3D&quot;/home/sdk/acme-linux_sdk/layers/poky/scripts:/home/sdk/ac=
me-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe=
-sysroot-native/usr/bin/arm-acme-linux-gnueabi:/home/sdk/acme-linux_sdk/tmp=
/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot/usr/bin=
/crossscripts:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/=
linux-imx/4.9.11-r0/recipe-sysroot-native/usr/sbin:/home/sdk/acme-linux_sdk=
/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-nat=
ive/usr/bin:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/li=
nux-imx/4.9.11-r0/recipe-sysroot-native/sbin:/home/sdk/acme-linux_sdk/tmp/w=
ork/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/bi=
n:/home/sdk/acme-linux_sdk/layers/poky/bitbake/bin:/home/sdk/acme-linux_sdk=
/tmp/hosttools&quot;; export HOME=3D&quot;/home/sdk&quot;; git -c core.fsyn=
cobjectfiles=3D0 ls-remote ssh://<a href=3D"http://git@github.com/Acme/linu=
x-imx.git" target=3D"_blank">git@github.com/Acme/linux-imx.git</a>=C2=A0 fa=
iled with exit code 128, output:</div><div>Permission denied (publickey).</=
div><div>fatal: Could not read from remote repository.</div><div><br></div>=
<div>Please make sure you have the correct access rights</div><div>and the =
repository exists.</div><div><br></div><div><br></div><div>ERROR: SDK prepa=
ration failed: error log written to /home/sdk/acme-linux_sdk/preparing_buil=
d_system.log</div><div><div>-----------------------------------------------=
--------</div><br class=3D"m_-8187448288103737113gmail-Apple-interchange-ne=
wline"></div><div>I tested the failing git command `git -c ls-remote ssh://=
<a href=3D"http://git@github.com/Acme/linux-imx.git" target=3D"_blank">git@=
github.com/Acme/linux-imx.git`</a> directly from the command line and it su=
cceeds without errors. I do have the ssh key in ssh-agent, so that&#39;s no=
t surprise.<br></div><div><br></div><div>It looks like during the SDK insta=
llation the ssh key is needed but for some reason the ssh-agent is not reac=
hable (maybe the SSH_* env variables are not propagated by the script?)</di=
v><div><br></div><div>Is it unavoidable for the SDK to fetch from git durin=
g the installation? If it is unavoidable, how can I make the script fetch f=
rom a private github repo, given that the ssh-agent seems to be ignored?</d=
iv><div><br></div><div>Just out of curiosity, I copy&amp;pasted the failing=
 command in the shell, and this time it ran without errors (again confirmin=
g that the ssh key is present.)</div><div><br></div><div>------------------=
-------------------------------------</div><div>sdk@sdk:~$ sh -c . buildtoo=
ls/environment-setup* &gt; /home/sdk/acme-linux_sdk/preparing_build_system.=
log &amp;&amp; cd /home/sdk/</div><div>acme-linux_sdk/layers/poky &amp;&amp=
; set /home/sdk/acme-linux_sdk &amp;&amp; . /home/sdk/acme-linux_sdk/layers=
/poky/oe-init-build-env</div><div>/home/sdk/acme-linux_sdk &gt;&gt; /home/s=
dk/acme-linux_sdk/preparing_build_system.log &amp;&amp; python /home/sdk/ac=
me-linux_sdk/ext-</div><div>sdk-prepare.py /home/sdk/acme-linux_sdk/prepari=
ng_build_system.log &#39;acme-image-datalogger meta-extsdk-toolchain:do_pop=
u</div><div>late_sysroot&#39;</div><div>Loading cache: 100% |##############=
#####################################################################| Time=
: 0:00:00</div><div>Parsing recipes: 100% |################################=
#################################################| Time: 0:01:32</div><div>=
Initialising tasks: 100% |#################################################=
#############################| Time: 0:00:02</div><div>Checking sstate mirr=
or object availability: 100% |#############################################=
#########| Time: 0:00:00</div><div>Loading cache: 100% |###################=
################################################################| Time: 0:0=
0:00</div><div>Parsing recipes: 100% |#####################################=
############################################| Time: 0:00:07</div><div>Initi=
alising tasks: 100% |######################################################=
########################| Time: 0:00:00</div><div><div>--------------------=
-----------------------------------</div><br class=3D"m_-818744828810373711=
3gmail-Apple-interchange-newline"></div><div>However the resulting SDK inst=
allation seems to be broken anyway (probably there are other steps after th=
e one I re-run manually that where not executed because the toplevel script=
 stopped with an error):</div><div><br></div><div>-------------------------=
------------------------------</div><div>sdk@sdk:~/acme-linux_sdk$ source e=
nvironment-setup-cortexa7hf-neon-acme-linux-gnueabi</div><div>SDK environme=
nt now set up; additionally you may now run devtool to perform development =
tasks.</div><div>Run devtool --help for further details.</div><div>ERROR: t=
his SDK was not fully installed and needs reinstalling</div><div><div>-----=
--------------------------------------------------</div><br class=3D"m_-818=
7448288103737113gmail-Apple-interchange-newline"></div><div>Thanks</div><di=
v><br></div><div>Gabriele</div></div></div></div>
</blockquote></div>

--0000000000009f0a380575313307--
