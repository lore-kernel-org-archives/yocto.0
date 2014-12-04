Return-Path: <mohd.azril.ahmad@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 812BFE00521; Wed,  3 Dec 2014 23:50:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohd.azril.ahmad[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15D2E002F9
	for <yocto@yoctoproject.org>; Wed,  3 Dec 2014 23:49:57 -0800 (PST)
Received: by mail-qa0-f42.google.com with SMTP id j7so11729658qaq.29
	for <yocto@yoctoproject.org>; Wed, 03 Dec 2014 23:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jqi8hyI46PvKuMBMTD1rd6oFUi5C2Aspc6waZtQW3uY=;
	b=x7kdUrLGk2IuksgCJZSSSjzro+O4YTtrmKUJE2HM4LVn0JKTD7BSxYNOCvwnU/M+kW
	nAYSnkLi/3EihtkLVuzPIwdpAyAcw4oEen6Y91j3MWY7jnA7kHL3PyxAa2PsBrpeCS3Z
	sgkBIYarHph4MoZoHcNGTOLB9GHTLxfKMlphvP3f7w/ewlPhPHW8x4FMPovnhlzWng7T
	jv5YySCwJX7YyiFLwNNrtwJIn8+NA/Ev2eUK4GPgi+EspQdGqPVaO9abpVZSJ23an3aH
	WiTiN56Fj4lcFTtpWCv8SRX23zNgE81ZC4xpir8aDb8vkNDG3UH2w5dELOQT/yBqDzEL
	WLIA==
MIME-Version: 1.0
X-Received: by 10.224.37.133 with SMTP id x5mr14790128qad.58.1417679396528;
	Wed, 03 Dec 2014 23:49:56 -0800 (PST)
Received: by 10.140.109.118 with HTTP; Wed, 3 Dec 2014 23:49:56 -0800 (PST)
Date: Thu, 4 Dec 2014 15:49:56 +0800
Message-ID: <CAJzb4Mg+WTSa=baqRsZxU2jWX3K94TT=10Gfi-f-DBwEJ5p0OQ@mail.gmail.com>
From: Mohd Azril Ahmad <mohd.azril.ahmad@gmail.com>
To: yocto@yoctoproject.org
Subject: GStreamer1.0 : gstreamer1.0-plugins-* doesn't extract the codec libraries into GStreamer library path
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
X-List-Received-Date: Thu, 04 Dec 2014 07:50:01 -0000
Content-Type: multipart/alternative; boundary=001a11c1f4bad5e78405095f34ae

--001a11c1f4bad5e78405095f34ae
Content-Type: text/plain; charset=UTF-8

Hi all,

I have successfully built the Yocto with multilib environment by using the
meta-intel BSP (ValleyIsland). Plus, I'm including the GStreamer1.0 base +
VAAPI as my default video player.

During the boot-up time, I've noticed that the GStreamer1.0-plugin
libraries (good, bad, and ugly) are not extracted into the GST library path
(/usr/lib64/gstreamer-1.0/).

**On first, I was looking for "libgstisomp4.so" (to play video with qtdemux
pipeline) but gst-inspect-1.0 returns nothing.

After some investigations, I've observed that the bitbake (.bb) and include
(.inc) recipe for gstreamer1.0-plugins-<good/bad/ugly> does not package out
the *.so files and I have no choice but to force a .bbappend to install for
it by adding :

FILES_${PN} += "${libdir}/gstreamer-1.0/*.so"

My question here, why the plugin libraries are not extracted ? is it due to
multilib environment ? or missing packaging steps in default recipe ?

Please advise ..

Thanks.

Regards,
Azril

--001a11c1f4bad5e78405095f34ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi all,<br><br></div>I have successfully built t=
he Yocto with multilib environment by using the meta-intel BSP (ValleyIslan=
d). Plus, I&#39;m including the GStreamer1.0 base + VAAPI as my default vid=
eo player.<br><br></div><div>During the boot-up time, I&#39;ve noticed that=
 the GStreamer1.0-plugin libraries (good, bad, and ugly) are not extracted =
into the GST library path (/usr/lib64/gstreamer-1.0/).<br><br></div><div>**=
On first, I was looking for &quot;libgstisomp4.so&quot; (to play video with=
 qtdemux pipeline) but gst-inspect-1.0 returns nothing.<br><br></div><div>A=
fter some investigations, I&#39;ve observed that the bitbake (.bb) and incl=
ude (.inc) recipe for gstreamer1.0-plugins-&lt;good/bad/ugly&gt; does not p=
ackage out the *.so files and I have no choice but to force a .bbappend to =
install for it by adding :<br><br>FILES_${PN} +=3D &quot;${libdir}/gstreame=
r-1.0/*.so&quot;<br><br></div><div>My question here, why the plugin librari=
es are not extracted ? is it due to multilib environment ? or missing packa=
ging steps in default recipe ?<br><br></div><div>Please advise ..<br></div>=
<div><br></div><div>Thanks.<br></div><div><br></div><div>Regards,<br></div>=
<div>Azril<br></div><div><br></div><div><br><br></div></div>

--001a11c1f4bad5e78405095f34ae--
