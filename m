Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B79DE00C46; Wed,  6 Feb 2019 23:37:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBB9E00C43
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 23:37:01 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id a2so379247edi.0
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2019 23:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NygP9qYNNy+k3Se6MrTpLRGG+79zX83G8YU9w+xGO4Y=;
	b=dLD6w+Is2NDxUPZBWBJkDy65yuPewv0rD5ROK/R+AjCUCzchuNWIJvm2ofgtuESCV8
	PfBRwZLjvhaC2QQWr1s3suEXvkYqjictp2oNzvZZqftdrR+pbmr9OQ55wS0vgWCMQFRs
	PhN91bRUdNUyGFQUK7iVJVNaIzIBlesxwS4Hv9l7C1fIlm7pLZ/olnTsylY4m8hGLtc+
	clF2TFJCa7m6R8o0QWepQqGIwgGgyo0xNHcPM5zidCbkiPLqyXfVjxecVke+Q/QF33Gt
	u5EL9/W7ROOVVBR2U2L2PSMmIlVng7aI6Jttn3qVU85UOuWeGD2jMheocdwise6FuLyq
	7Ezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NygP9qYNNy+k3Se6MrTpLRGG+79zX83G8YU9w+xGO4Y=;
	b=RT4TqIWsmMZuw5auZ1ly95bjkYVc5L+z4vas81inD9LQTIunc7WQeGNLTwgoAhnibp
	XDX2UfkQtayfpTvBcMssoGFEoafLjtkaFIU7Wm2kKI+FwhrFgs/eCMMoMsCXMF/T+CTr
	t1coJdHTvNUsJFHJylmcRI3wqEYgcixDMXMuKnuYwj6k0y9RFrPmWOqRgYD/xT9cbKEm
	Qj8Z+PzRxGPPDQfGw1CwFPCaqBcQ1lxRwdOw6EJqgVyr0RwDZU2O7SvIrIP1qvmVkic7
	6+ryACBac6UjlRXI/SydnC+eyvi0tP0g90Mfe16jH3IO/R/tYxYIA48URMB0/O9vt420
	l+0g==
X-Gm-Message-State: AHQUAuabCadiNYetxEQWf/ntUHBfI3nzqh6bj+RxT6N8LFRhelInmV5w
	ZmBJcQJb8A/kByXWMRrjc2nzvNQmIXQdGd2iFbFIJqx4
X-Google-Smtp-Source: AHgI3Ibds58o7RunCaPf1NBXbd7dlW7kEXYxmMoJ0nk4WzLVBmfiqCgmR+1PmbseVwho5TYM1DgWq/eoO5jv8y6elhU=
X-Received: by 2002:a17:906:8596:: with SMTP id
	v22mr10579968ejx.41.1549525020821; 
	Wed, 06 Feb 2019 23:37:00 -0800 (PST)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Thu, 7 Feb 2019 08:36:49 +0100
Message-ID: <CAKpuFdet7xgEYA4GZi-F7UQ7HfMXjyKFdibGK2ggd-FdGmi-5g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_populate_lic fail from scratch build but succed after clean
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
X-List-Received-Date: Thu, 07 Feb 2019 07:37:03 -0000
Content-Type: multipart/alternative; boundary="0000000000006fcecf058148e808"

--0000000000006fcecf058148e808
Content-Type: text/plain; charset="UTF-8"

Hi

I have an recipe based on serialport npm package created with devtool.

I added some custom licenses in my layer with LICENSE_PATH:

# Additional license directories.
LICENSE_PATH += "${LAYERDIR}/files/common-licenses"

After this I get some inconsistent build result (or i dont understand ).

Te steps I make is the following, build from scratch then bitbake fails,
clean recipe and build recipe and it succed:

1. bitbake myLayer ->

WARNING: serialport-6.2.2-r0 do_populate_lic: Could not copy license file
/home/jonas/yocto/build/tmp/work/cortexa9hf-neon-goerlix-linux-gnueabi/serialport/6.2.2-r0/npmpkg/node_modules/prompt-list/node_modules/prompt-radio/node_modules/prompt-checkbox/node_modules/prompt-base/node_modules/readline-ui/node_modules/debug/LICENSE
to
/home/jonas/yocto/build/tmp/work/cortexa9hf-neon-goerlix-linux-gnueabi/serialport/6.2.2-r0/license-destdir/serialport/LICENSE.3:
[Errno 2] No such file or directory:
'/home/jonas/yocto/build/tmp/work/cortexa9hf-neon-goerlix-linux-gnueabi/serialport/6.2.2-r0/npmpkg/node_modules/prompt-list/node_modules/prompt-radio/node_modules/prompt-checkbox/node_modules/prompt-base/node_modules/readline-ui/node_modules/debug/LICENSE'
.
//
.
ERROR: serialport-6.2.2-r0 do_populate_lic: QA Issue: serialport:
LIC_FILES_CHKSUM points to an invalid file:
/home/jonas/yocto/build/tmp/work/cortexa9hf-neon-goerlix-linux-gnueabi/serialport/6.2.2-r0/npmpkg/node_modules/prompt-list/node_modules/prompt-radio/node_modules/prompt-checkbox/node_modules/prompt-base/node_modules/readline-ui/node_modules/debug/LICENSE
[license-checksum]
.
//
.
ERROR: serialport-6.2.2-r0 do_populate_lic: Fatal QA errors found, failing
task.
ERROR: serialport-6.2.2-r0 do_populate_lic: Function failed:
populate_lic_qa_checksum

2. bitbake serialport -c clean
3. bitbake serialport -> success

In my view it feels like different tasks is executed in different order,
like the npm recipe is missing some dependency but before I adden
LICENSE_PATH to the layer config I had no problem..
______________________________________________________________________________________________
Build Configuration:
BB_VERSION           = "1.40.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"

TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU           = "hard"
meta                 = "thud:3541f019a505d18263fad0b46b88d470e3fd9d62"
meta-oe
meta-python
meta-networking
meta-filesystems     = "thud:6094ae18c8a35e5cc9998ac39869390d7f3bb1e2"
meta-yocto-bsp       = "thud:3541f019a505d18263fad0b46b88d470e3fd9d62"
meta-microservicebus-node = "thud:cab931199236b5bdeeb660f64aea55c2e0c09c2b"

Best regards
Jonas

--0000000000006fcecf058148e808
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi<div><br></div><div>I have an=
 recipe based on serialport npm package created with devtool.</div><div><br=
></div><div>I added some custom licenses in my layer with LICENSE_PATH:</di=
v><div><br></div><div><div># Additional license directories.</div><div>LICE=
NSE_PATH +=3D &quot;${LAYERDIR}/files/common-licenses&quot;</div></div><div=
><br></div><div>After this I get some inconsistent build result (or i dont =
understand ).</div><div><br></div><div>Te steps I make is the following, bu=
ild from scratch then bitbake fails, clean recipe and build recipe and it s=
ucced:</div><div><br></div><div>1. bitbake myLayer -&gt;=C2=A0</div><div><b=
r></div><div>WARNING: serialport-6.2.2-r0 do_populate_lic: Could not copy l=
icense file /home/jonas/yocto/build/tmp/work/cortexa9hf-neon-goerlix-linux-=
gnueabi/serialport/6.2.2-r0/npmpkg/node_modules/prompt-list/node_modules/pr=
ompt-radio/node_modules/prompt-checkbox/node_modules/prompt-base/node_modul=
es/readline-ui/node_modules/debug/LICENSE to /home/jonas/yocto/build/tmp/wo=
rk/cortexa9hf-neon-goerlix-linux-gnueabi/serialport/6.2.2-r0/license-destdi=
r/serialport/LICENSE.3: [Errno 2] No such file or directory: &#39;/home/jon=
as/yocto/build/tmp/work/cortexa9hf-neon-goerlix-linux-gnueabi/serialport/6.=
2.2-r0/npmpkg/node_modules/prompt-list/node_modules/prompt-radio/node_modul=
es/prompt-checkbox/node_modules/prompt-base/node_modules/readline-ui/node_m=
odules/debug/LICENSE&#39;</div><div>.</div><div>//</div><div>.</div><div>ER=
ROR: serialport-6.2.2-r0 do_populate_lic: QA Issue: serialport: LIC_FILES_C=
HKSUM points to an invalid file: /home/jonas/yocto/build/tmp/work/cortexa9h=
f-neon-goerlix-linux-gnueabi/serialport/6.2.2-r0/npmpkg/node_modules/prompt=
-list/node_modules/prompt-radio/node_modules/prompt-checkbox/node_modules/p=
rompt-base/node_modules/readline-ui/node_modules/debug/LICENSE [license-che=
cksum]</div><div>.</div><div>//</div><div>.</div><div>ERROR: serialport-6.2=
.2-r0 do_populate_lic: Fatal QA errors found, failing task.</div><div>ERROR=
: serialport-6.2.2-r0 do_populate_lic: Function failed: populate_lic_qa_che=
cksum</div><div><br></div><div>2. bitbake serialport -c clean</div><div>3. =
bitbake serialport -&gt; success</div><div><br></div><div>In my view it fee=
ls like different tasks is executed in different order, like the npm recipe=
 is missing some dependency but before I adden LICENSE_PATH to the layer co=
nfig I had no problem..</div><div>_________________________________________=
_____________________________________________________</div><div><div>Build =
Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;1.40.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0 =
=C2=A0 =C2=A0 =3D &quot;universal&quot;</div><div><br></div><div>TUNE_FEATU=
RES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp neon callconvention=
-hard cortexa9&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;hard&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;thud:3541f019a505d18263fad0b46b88d=
470e3fd9d62&quot;</div><div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</div><div>meta-networking=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-file=
systems=C2=A0 =C2=A0 =C2=A0=3D &quot;thud:6094ae18c8a35e5cc9998ac39869390d7=
f3bb1e2&quot;</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
thud:3541f019a505d18263fad0b46b88d470e3fd9d62&quot;</div><div>meta-microser=
vicebus-node =3D &quot;thud:cab931199236b5bdeeb660f64aea55c2e0c09c2b&quot;<=
/div></div><div><br></div><div>Best regards</div><div>Jonas</div><div><br><=
/div><div><br></div></div></div></div></div></div></div></div>

--0000000000006fcecf058148e808--
