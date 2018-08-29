Return-Path: <gabriele@analyticsfire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC7E9E00546; Wed, 29 Aug 2018 06:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f170.google.com (mail-yb0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62373E00460
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:55:28 -0700 (PDT)
Received: by mail-yb0-f170.google.com with SMTP id z12-v6so2014918ybg.9
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=analyticsfire-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=OhgcLu8CgK/SzywYuMwnCVUuvBqW1j0hBJ+brjcLEHk=;
	b=SPAsb9N394vBw37qr9MXtnOP+eZ54+LzrZOTaLPPok7bBZ8Jc366+gH/fzE7Xftyzv
	Gi/SznwZ9/8O6uFBCQ3GH4khg+mEbek+6LTubU8B30ZHHGNqaNrB57hRpQpJO7ZdEYFl
	LlNy2RYq7l3swJWTHJ0hUGnHlAG6h7b/lobYBvDw05sQoYs62GQnPHzM5gznU1/XCg2Y
	sAFcZ+JQf/dxiQhQtkh+L5Tepl2o8CuUukwE49u+hhy9xSmgNtY3+JEx0hz+bAeycVNy
	rg+LKFGoh6OjDqJquuqfW2ihsZZ7gfNqb8ZwllfQxXJ6srUzFlgqdXUVvl7yq9gQCG6c
	uEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OhgcLu8CgK/SzywYuMwnCVUuvBqW1j0hBJ+brjcLEHk=;
	b=oD/qy9u/Qt41dZ5g981fe9mLUJlLgwfi0JYjIDuty7vm1/F36uQXPvEqbExwzZ5sU3
	OiGVPWOq5GAiozBt7c/fc4apOMWo7Up/UeO4py4zJz8YskfcclRmkJe9Q7L1wVb4fcCO
	cZ04QCiJToz6TGpG+KZ88rQ3Bah0O4yRQPVd3Ob+B0HQRBtfG5f5mUbIUXsj35IWu6PD
	wez/onUmbKJfwqe5ZrAujYAsSjJIuAr9TSD/jBqHz4q8UWXGk8iTmzvGJsOhEE2S7Mj5
	flQlbpvoJP4sF9anV3NY1J7lcXhBMSDH0EJLMp6MmDbmuxqfGrwj6cNOBZWVowK1bJeb
	QCMw==
X-Gm-Message-State: APzg51CC2mm7mODfxI9jnbxspgQ+D4uMsgZvKo/EwZ2qI0Ukys1rdgyw
	uPX/IW6pZn1f1fW18MDnGgBF79wT1X5hWy8atVnr0lQE7YM=
X-Google-Smtp-Source: ANB0Vdb5Y9Vci5FQvOxj3cSvYgG2PIEY95mzHZ2Cnh0NjKZMO9lAK+NNdPbXf94QrEizV0ANP658VfiCnuZD6HRb0zg=
X-Received: by 2002:a25:f451:: with SMTP id
	p17-v6mr3227675ybe.19.1535550927426; 
	Wed, 29 Aug 2018 06:55:27 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Favalessa <gabriele@analyticsfire.com>
Date: Wed, 29 Aug 2018 15:55:16 +0200
Message-ID: <CAMmNTemi9+UoZg0vWvvFZu-ggnYHkDy5VARfHhm6tHjAWr7BGQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Extended SDK installation fails during git fetch of kernel source hosted on private repo
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
X-List-Received-Date: Wed, 29 Aug 2018 13:55:30 -0000
Content-Type: multipart/alternative; boundary="000000000000906fd50574934fee"

--000000000000906fd50574934fee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to install on ubuntu 17.04 an Extensible SDK that I have built,
and it stops with an error:

-------------------------------------------------------
sdk@sdk:~$ ./
acme-linux-glibc-x86_64-acme-image-datalogger-cortexa7hf-neon-toolchain-ext=
-2.5.1.sh
-D
=E2=80=A6
+ sh -c . buildtools/environment-setup* >
/home/sdk/acme-linux_sdk/preparing_build_system.log && cd
/home/sdk/acme-linux_sdk/layers/poky && set /home/sdk/acme-linux_sdk && .
/home/sdk/acme-linux_sdk/layers/poky/oe-init-build-env
/home/sdk/acme-linux_sdk >>
/home/sdk/acme-linux_sdk/preparing_build_system.log && python
/home/sdk/acme-linux_sdk/ext-sdk-prepare.py
/home/sdk/acme-linux_sdk/preparing_build_system.log 'acme-image-datalogger
meta-extsdk-toolchain:do_populate_sysroot'
WARNING:
/home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
linux-imx_4.9.11.bb: Exception during build_dependencies for AUTOREV
WARNING:
/home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
linux-imx_4.9.11.bb: Error during finalise of
/home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
linux-imx_4.9.11.bb
ERROR: ExpansionError during parsing
/home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/
linux-imx_4.9.11.bb
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression
was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
GIT_SSL_CAINFO=3D"/home/sdk/acme-linux_sdk/buildtools/sysroots/x86_64-acmes=
dk-linux/etc/ssl/certs/ca-certificates.crt";
export
PATH=3D"/home/sdk/acme-linux_sdk/layers/poky/scripts:/home/sdk/acme-linux_s=
dk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-n=
ative/usr/bin/arm-acme-linux-gnueabi:/home/sdk/acme-linux_sdk/tmp/work/mybo=
ard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot/usr/bin/crossscri=
pts:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/=
4.9.11-r0/recipe-sysroot-native/usr/sbin:/home/sdk/acme-linux_sdk/tmp/work/=
myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/usr/bi=
n:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.=
9.11-r0/recipe-sysroot-native/sbin:/home/sdk/acme-linux_sdk/tmp/work/myboar=
d-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/bin:/home/sd=
k/acme-linux_sdk/layers/poky/bitbake/bin:/home/sdk/acme-linux_sdk/tmp/hostt=
ools";
export HOME=3D"/home/sdk"; git -c core.fsyncobjectfiles=3D0 ls-remote ssh:/=
/
git@github.com/Acme/linux-imx.git  failed with exit code 128, output:
Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.


ERROR: SDK preparation failed: error log written to
/home/sdk/acme-linux_sdk/preparing_build_system.log
-------------------------------------------------------

I tested the failing git command `git -c ls-remote ssh://
git@github.com/Acme/linux-imx.git` directly from the command line and it
succeeds without errors. I do have the ssh key in ssh-agent, so that's not
surprise.

It looks like during the SDK installation the ssh key is needed but for
some reason the ssh-agent is not reachable (maybe the SSH_* env variables
are not propagated by the script?)

Is it unavoidable for the SDK to fetch from git during the installation? If
it is unavoidable, how can I make the script fetch from a private github
repo, given that the ssh-agent seems to be ignored?

Just out of curiosity, I copy&pasted the failing command in the shell, and
this time it ran without errors (again confirming that the ssh key is
present.)

-------------------------------------------------------
sdk@sdk:~$ sh -c . buildtools/environment-setup* >
/home/sdk/acme-linux_sdk/preparing_build_system.log && cd /home/sdk/
acme-linux_sdk/layers/poky && set /home/sdk/acme-linux_sdk && .
/home/sdk/acme-linux_sdk/layers/poky/oe-init-build-env
/home/sdk/acme-linux_sdk >>
/home/sdk/acme-linux_sdk/preparing_build_system.log && python
/home/sdk/acme-linux_sdk/ext-
sdk-prepare.py /home/sdk/acme-linux_sdk/preparing_build_system.log
'acme-image-datalogger meta-extsdk-toolchain:do_popu
late_sysroot'
Loading cache: 100%
|##########################################################################=
#########|
Time: 0:00:00
Parsing recipes: 100%
|##########################################################################=
#######|
Time: 0:01:32
Initialising tasks: 100%
|##########################################################################=
####|
Time: 0:00:02
Checking sstate mirror object availability: 100%
|######################################################| Time: 0:00:00
Loading cache: 100%
|##########################################################################=
#########|
Time: 0:00:00
Parsing recipes: 100%
|##########################################################################=
#######|
Time: 0:00:07
Initialising tasks: 100%
|##########################################################################=
####|
Time: 0:00:00
-------------------------------------------------------

However the resulting SDK installation seems to be broken anyway (probably
there are other steps after the one I re-run manually that where not
executed because the toplevel script stopped with an error):

-------------------------------------------------------
sdk@sdk:~/acme-linux_sdk$ source
environment-setup-cortexa7hf-neon-acme-linux-gnueabi
SDK environment now set up; additionally you may now run devtool to perform
development tasks.
Run devtool --help for further details.
ERROR: this SDK was not fully installed and needs reinstalling
-------------------------------------------------------

Thanks

Gabriele

--000000000000906fd50574934fee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I&#39;m trying to install on ubuntu 17.04 an Extensible SDK that =
I have built, and it stops with an error:</div><div><br></div><div>--------=
-----------------------------------------------</div><div>sdk@sdk:~$ ./<a h=
ref=3D"http://acme-linux-glibc-x86_64-acme-image-datalogger-cortexa7hf-neon=
-toolchain-ext-2.5.1.sh">acme-linux-glibc-x86_64-acme-image-datalogger-cort=
exa7hf-neon-toolchain-ext-2.5.1.sh</a> -D</div><div>=E2=80=A6</div><div>+ s=
h -c . buildtools/environment-setup* &gt; /home/sdk/acme-linux_sdk/preparin=
g_build_system.log &amp;&amp; cd /home/sdk/acme-linux_sdk/layers/poky &amp;=
&amp; set /home/sdk/acme-linux_sdk &amp;&amp; . /home/sdk/acme-linux_sdk/la=
yers/poky/oe-init-build-env /home/sdk/acme-linux_sdk &gt;&gt; /home/sdk/acm=
e-linux_sdk/preparing_build_system.log &amp;&amp; python /home/sdk/acme-lin=
ux_sdk/ext-sdk-prepare.py /home/sdk/acme-linux_sdk/preparing_build_system.l=
og &#39;acme-image-datalogger meta-extsdk-toolchain:do_populate_sysroot&#39=
;</div><div>WARNING: /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/reci=
pes-kernel/linux/<a href=3D"http://linux-imx_4.9.11.bb">linux-imx_4.9.11.bb=
</a>: Exception during build_dependencies for AUTOREV</div><div>WARNING: /h=
ome/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/linux/<a hre=
f=3D"http://linux-imx_4.9.11.bb">linux-imx_4.9.11.bb</a>: Error during fina=
lise of /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kernel/li=
nux/<a href=3D"http://linux-imx_4.9.11.bb">linux-imx_4.9.11.bb</a></div><di=
v>ERROR: ExpansionError during parsing /home/sdk/acme-linux_sdk/layers/poky=
/meta-myboard/recipes-kernel/linux/<a href=3D"http://linux-imx_4.9.11.bb">l=
inux-imx_4.9.11.bb</a></div><div>Traceback (most recent call last):</div><d=
iv>bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressi=
on was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fe=
tcher failure: Fetch command export PSEUDO_DISABLED=3D1; export GIT_SSL_CAI=
NFO=3D&quot;/home/sdk/acme-linux_sdk/buildtools/sysroots/x86_64-acmesdk-lin=
ux/etc/ssl/certs/ca-certificates.crt&quot;; export PATH=3D&quot;/home/sdk/a=
cme-linux_sdk/layers/poky/scripts:/home/sdk/acme-linux_sdk/tmp/work/myboard=
-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/usr/bin/arm-a=
cme-linux-gnueabi:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnue=
abi/linux-imx/4.9.11-r0/recipe-sysroot/usr/bin/crossscripts:/home/sdk/acme-=
linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sy=
sroot-native/usr/sbin:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-=
gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/usr/bin:/home/sdk/acme-li=
nux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysr=
oot-native/sbin:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueab=
i/linux-imx/4.9.11-r0/recipe-sysroot-native/bin:/home/sdk/acme-linux_sdk/la=
yers/poky/bitbake/bin:/home/sdk/acme-linux_sdk/tmp/hosttools&quot;; export =
HOME=3D&quot;/home/sdk&quot;; git -c core.fsyncobjectfiles=3D0 ls-remote ss=
h://<a href=3D"http://git@github.com/Acme/linux-imx.git">git@github.com/Acm=
e/linux-imx.git</a>=C2=A0 failed with exit code 128, output:</div><div>Perm=
ission denied (publickey).</div><div>fatal: Could not read from remote repo=
sitory.</div><div><br></div><div>Please make sure you have the correct acce=
ss rights</div><div>and the repository exists.</div><div><br></div><div><br=
></div><div>ERROR: SDK preparation failed: error log written to /home/sdk/a=
cme-linux_sdk/preparing_build_system.log</div><div><div>-------------------=
------------------------------------</div><br class=3D"gmail-Apple-intercha=
nge-newline"></div><div>I tested the failing git command `git -c ls-remote =
ssh://<a href=3D"http://git@github.com/Acme/linux-imx.git`">git@github.com/=
Acme/linux-imx.git`</a> directly from the command line and it succeeds with=
out errors. I do have the ssh key in ssh-agent, so that&#39;s not surprise.=
<br></div><div><br></div><div>It looks like during the SDK installation the=
 ssh key is needed but for some reason the ssh-agent is not reachable (mayb=
e the SSH_* env variables are not propagated by the script?)</div><div><br>=
</div><div>Is it unavoidable for the SDK to fetch from git during the insta=
llation? If it is unavoidable, how can I make the script fetch from a priva=
te github repo, given that the ssh-agent seems to be ignored?</div><div><br=
></div><div>Just out of curiosity, I copy&amp;pasted the failing command in=
 the shell, and this time it ran without errors (again confirming that the =
ssh key is present.)</div><div><br></div><div>-----------------------------=
--------------------------</div><div>sdk@sdk:~$ sh -c . buildtools/environm=
ent-setup* &gt; /home/sdk/acme-linux_sdk/preparing_build_system.log &amp;&a=
mp; cd /home/sdk/</div><div>acme-linux_sdk/layers/poky &amp;&amp; set /home=
/sdk/acme-linux_sdk &amp;&amp; . /home/sdk/acme-linux_sdk/layers/poky/oe-in=
it-build-env</div><div>/home/sdk/acme-linux_sdk &gt;&gt; /home/sdk/acme-lin=
ux_sdk/preparing_build_system.log &amp;&amp; python /home/sdk/acme-linux_sd=
k/ext-</div><div>sdk-prepare.py /home/sdk/acme-linux_sdk/preparing_build_sy=
stem.log &#39;acme-image-datalogger meta-extsdk-toolchain:do_popu</div><div=
>late_sysroot&#39;</div><div>Loading cache: 100% |#########################=
##########################################################| Time: 0:00:00</=
div><div>Parsing recipes: 100% |###########################################=
######################################| Time: 0:01:32</div><div>Initialisin=
g tasks: 100% |############################################################=
##################| Time: 0:00:02</div><div>Checking sstate mirror object a=
vailability: 100% |######################################################| =
Time: 0:00:00</div><div>Loading cache: 100% |##############################=
#####################################################| Time: 0:00:00</div><=
div>Parsing recipes: 100% |################################################=
#################################| Time: 0:00:07</div><div>Initialising tas=
ks: 100% |#################################################################=
#############| Time: 0:00:00</div><div><div>-------------------------------=
------------------------</div><br class=3D"gmail-Apple-interchange-newline"=
></div><div>However the resulting SDK installation seems to be broken anywa=
y (probably there are other steps after the one I re-run manually that wher=
e not executed because the toplevel script stopped with an error):</div><di=
v><br></div><div>-------------------------------------------------------</d=
iv><div>sdk@sdk:~/acme-linux_sdk$ source environment-setup-cortexa7hf-neon-=
acme-linux-gnueabi</div><div>SDK environment now set up; additionally you m=
ay now run devtool to perform development tasks.</div><div>Run devtool --he=
lp for further details.</div><div>ERROR: this SDK was not fully installed a=
nd needs reinstalling</div><div><div>--------------------------------------=
-----------------</div><br class=3D"gmail-Apple-interchange-newline"></div>=
<div>Thanks</div><div><br></div><div>Gabriele</div></div></div></div>

--000000000000906fd50574934fee--
