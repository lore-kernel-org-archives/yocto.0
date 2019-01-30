Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 488ECE00D0E; Tue, 29 Jan 2019 18:50:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD6BE006F1
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 18:50:19 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id n32so24684800qte.11
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 18:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=X8uLFnoxRbiEnmwFtf+FMVoUnRJo7NPKatr1sYtH1Hs=;
	b=cVrnmYejEDKnRUTx5tAR4ARUMVgdR6xVf4AzFGijcf8jjo2fzHzyyE9kcvapsuQaV+
	wTK11tPokA93KND6nrpqGxMuP7ylz+qXY2pjh8DXGWydJ2pT6emp8leiUi4QS/onx6k/
	rvmpaXZ+xL5Ryqbo2h0Yw9LQ+3BQwOyRpvp21ThtcfSGYYMsoGwfbCQd7piXoIx9J/cp
	Zz01BSBJURBnB6I7rZSev1sGCE3QYKvP1ogZD1MxQ9gW0YezjQW13tXXN/8eo4sVDPw8
	X6VZ1x26oMV5OV/QMTmihr3hJmPm9M8vlVsQcbrvpdrPHACump/F8QdtxS5mGzYwpKYt
	VWxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X8uLFnoxRbiEnmwFtf+FMVoUnRJo7NPKatr1sYtH1Hs=;
	b=Q3+TDmlLJk8iDKKQ/+ozMKMtcnCfuX3rywNvtMXHrxpgSeMrw1yE6NN8XYZDpAXbBY
	r0RFlM/T+flHDkfzS9q7a/BMBflAQZvDAdPD8JNy8neCXztGE83gUYrKpyrYXShwhis1
	n8AlQPrAaUmo/SY0zOA+09XrNGPEq8aSyLij/15nqni5glGEbV3N25TImCEQcmxENGwH
	XQsLNfnXFkTouLzZsxCslF4s9hzpZLH1Qae8zH/VGoiHt5tP7ohy8gvfLGHsfrG/C7uZ
	OWwMa5cmIMs0X8/+Tl8xxz4KIer+GA/4SZzLvVQfxxW95r39XKeAppeGGFzj4pzbSPJ9
	7fcQ==
X-Gm-Message-State: AJcUukekaTxZLAHy3Tl+ZKpZ05bfZoVchucJHH6C0TzY7Sr1CxHNyIS+
	Eabnr7B6Ci0YyvLpgVThFnn+xsf6+VZlYhztlmfB1anI
X-Google-Smtp-Source: ALg8bN4sHz8WZvXrQ0tPalJYzTWM96L6NDFVAi+9xriUFuFFXqACMAZQe0+zfX788UYzFkU4boTwMMQXq/w3hPvJ1aE=
X-Received: by 2002:ac8:2a81:: with SMTP id b1mr28631929qta.110.1548816618557; 
	Tue, 29 Jan 2019 18:50:18 -0800 (PST)
MIME-Version: 1.0
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 29 Jan 2019 18:50:07 -0800
Message-ID: <CAB=6tBTimsTsxDDfsK9Jn56SODmeOsYk1UdjYm=VnKupY8yGJA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Deactivating KERNEL_FEATURES
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
X-List-Received-Date: Wed, 30 Jan 2019 02:50:20 -0000
Content-Type: multipart/alternative; boundary="0000000000005f15bc0580a3f8be"

--0000000000005f15bc0580a3f8be
Content-Type: text/plain; charset="UTF-8"

This question is with respect to the Yocto thud (2.6.x) branch. I have also
reviewed section 2.3.3 and 2.3.4 of the Kernel Development document
<https://www.yoctoproject.org/docs/2.6/kernel-dev/kernel-dev.html>.


My kernel configuration (cfg) seems to be overridden by KERNEL_FEATURES and
it is not clear how to stop this behavior. To take one specific example,
nothing I have tried seems to successfully deactivate the sound
configuration kernel options.

My linux-yocto_4.18.%.bbappend file has the following contents:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append += "file://0001-kernel-config.cfg"

The following line appears in 0001-kernel-config.cfg:

# CONFIG_SOUND is not set

And yet when I configure the kernel (bitbake -c configure linux-yocto) the
resultant .config in the linux-yocto ${WORKDIR} contains "CONFIG_SOUND=m"
and a plethora of other sound related options that should be turned off. I
did the full kernel build and verified that the .config reflects the final
result in the kernel.

"bitbake -e linux-yocto" contains the following, which seems to explain a
bit:

KERNEL_FEATURES=" features/nfsd/nfsd-enable.scc features/debug/printk.scc
 features/kernel-sample/kernel-sample.scc features/netfilter/netfilter.scc
cfg/virtio.scc cfg/sound.scc cfg/paravirt_kvm.scc "

I should also add that our configuration includes:

DISTRO_FEATURES_remove = " alsa pulseaudio"
DISTRO_FEATURES_BACKFILL_CONSIDERED = " alsa pulseaudio".


How do I ensure that my kernel config gets the last say and is not
overridden?

Thank you,

..Ch:W..

--0000000000005f15bc0580a3f8be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This question is with respect to the Yocto thud (2.6.x) br=
anch. I have also reviewed section 2.3.3 and 2.3.4 of the <a href=3D"https:=
//www.yoctoproject.org/docs/2.6/kernel-dev/kernel-dev.html">Kernel Developm=
ent document</a>.<div><br></div><div><br></div><div>My kernel configuration=
 (cfg) seems to be overridden by KERNEL_FEATURES and it is not clear how to=
 stop this behavior. To take one specific example, nothing I have tried see=
ms to successfully deactivate the sound configuration kernel options.<br><d=
iv><br></div><div>My linux-yocto_4.18.%.bbappend file has the following con=
tents:<br></div><div><br></div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR=
}/files:&quot;<br>SRC_URI_append +=3D &quot;file://0001-kernel-config.cfg&q=
uot;<div><br></div><div>The following line appears in 0001-kernel-config.cf=
g:<br></div><br># CONFIG_SOUND is not set</div><div><br></div><div>And yet =
when I configure the kernel (bitbake -c configure linux-yocto) the resultan=
t .config in the linux-yocto ${WORKDIR} contains &quot;CONFIG_SOUND=3Dm&quo=
t; and a plethora of other sound related options that should be turned off.=
 I did the full kernel build and verified that the .config reflects the fin=
al result in the kernel.</div><div><br></div><div>&quot;bitbake -e linux-yo=
cto&quot; contains the following, which seems to explain a bit:</div><div><=
br></div>KERNEL_FEATURES=3D&quot; features/nfsd/nfsd-enable.scc features/de=
bug/printk.scc =C2=A0features/kernel-sample/kernel-sample.scc features/netf=
ilter/netfilter.scc cfg/virtio.scc cfg/sound.scc cfg/paravirt_kvm.scc &quot=
;<br><br>I should also add that our configuration includes:<div><br></div><=
div>DISTRO_FEATURES_remove =3D &quot; alsa pulseaudio&quot; DISTRO_FEATURES=
_BACKFILL_CONSIDERED =3D &quot; alsa pulseaudio&quot;.<br></div><div><br></=
div><div><br></div><div>How do I ensure that my kernel config gets the last=
 say and is not overridden?</div><div><br></div><div>Thank you,</div><div><=
br></div><div>..Ch:W..</div></div>

--0000000000005f15bc0580a3f8be--
