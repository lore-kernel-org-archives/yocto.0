Return-Path: <pxmyhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 738FEE00DE6; Fri, 10 Jun 2016 11:13:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pxmyhdev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA68E00D71
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 11:13:01 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id z186so55364880ywd.2
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 11:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=tOWGNUcapRH4YssM7F1St4yWbCrXZcITHh6u8aKZJmc=;
	b=lL4BWFuO5XJNMEYKeAEdeJZ5DO5PTgWHUejlIZndRAVk9W1Kel+X9meCcVOEbw1kJD
	LXZvewikVqIpDs3H2eFjFdNTPRuvLryBtueKLAHZjv1tvwcrfBXM0jqphadi26nHqH8b
	3Mw2BeJXNUS9KLh63jqfDsHCbO5rW2X54URDh0JVICAtJtjYpTR0HhWqyZJtAHQ2HqQ6
	iN69jxkU0WqhUpjScs6imDYvHw2Syv50ltSaUUjzggujQ8sJ4Wjg5C4IvGZgjuWl7XAt
	Oy5WoXgo4isMBXe9Oz3KLfQe38AtVlBUtIhtJonlQZcW4EylBrgzG6y2tLDpaiGXQFLn
	Db1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tOWGNUcapRH4YssM7F1St4yWbCrXZcITHh6u8aKZJmc=;
	b=PZ4sRTeIGcXHLbdfYrmNCgQOXqhZxlp7yEOkX/3qBsOIVUPfi2Si0py9wvmoSLv9tu
	jyzb7khaehD8T8XJXMh0IHVeYEedBdiInDrGZ3BZufjbZ3yAKeRyUZE9I5Cv2CLqGWa5
	eiB0+ztNKZKcYBA0hl0rLhgn8uT0zGGvvYOw62QQuWaY6L8X6jYpfF3M/EYnfOrfkwcv
	xpDZGxAHBf8WdQravKKXjl2vHvDHU67Zhbb9NsKXL5stc92kwurXs6pL3psLrL3XcVP8
	Hy6XLGFyOMkulBxIQPIo+9MyHxIHNqdyFbq2Wcc7daMmtpuVAJAT07DAStz2/g0CCYCw
	CyJw==
X-Gm-Message-State: ALyK8tJceii81kdwDhcSd3t+sWLxudqbY1yOoReGWWD8jnHyuvvpQZx/pASLcloJJhZfPOrsfJQhLafC0a9TkQ==
X-Received: by 10.13.211.134 with SMTP id v128mr1885857ywd.272.1465582380235; 
	Fri, 10 Jun 2016 11:13:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.223.214 with HTTP; Fri, 10 Jun 2016 11:12:59 -0700 (PDT)
From: Michael Hu <pxmyhdev@gmail.com>
Date: Fri, 10 Jun 2016 14:12:59 -0400
Message-ID: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_patch through Yocto fails while "git am" succeed
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
X-List-Received-Date: Fri, 10 Jun 2016 18:13:03 -0000
Content-Type: multipart/alternative; boundary=001a114daa9c29c0f30534f07da2

--001a114daa9c29c0f30534f07da2
Content-Type: text/plain; charset=UTF-8

Does anyone know what's the difference between using Yocto to apply patches
and apply patch directly using git command?

I am trying to apply patches for arm-trusted-firmware through yocto by
extending arm-trusted-firmware.bb file, in .bbappend file, I have:

SRC_URI = "file://<some patch name>"

I got the following error:
ERROR: arm-trusted-firmware-1.2 do_patch: Command Error: 'quilt --quiltrc
/build/tmp/sysroots/x86_64-linux/etc/quiltrc push' exited with 1  Output:
Applying patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch
(Stripping trailing CRs from patch.)
... some files can be patched
patching file <failed file>
Hunk #1 FAILED at 41.
1 out of 1 hunk FAILED -- rejects in file <failed file>
Patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch does not apply
(enforce with -f)

However, if using "git am <patch>" under cloned arm-trusted-firmware git
repo, the patches are successfully patched.

What could be the difference?

Thanks!

--001a114daa9c29c0f30534f07da2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does anyone know what&#39;s the difference between using Y=
octo to apply patches and apply patch directly using git command?<div><br><=
/div><div>I am trying to apply patches for arm-trusted-firmware through yoc=
to by extending <a href=3D"http://arm-trusted-firmware.bb">arm-trusted-firm=
ware.bb</a> file, in .bbappend file, I have:</div><div><br></div><div>SRC_U=
RI =3D &quot;file://&lt;some patch name&gt;&quot;</div><div><br></div><div>=
I got the following error:</div><div><div>ERROR: arm-trusted-firmware-1.2 d=
o_patch: Command Error: &#39;quilt --quiltrc /build/tmp/sysroots/x86_64-lin=
ux/etc/quiltrc push&#39; exited with 1 =C2=A0Output:</div><div>Applying pat=
ch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch</div><div>(Strippi=
ng trailing CRs from patch.)</div><div>... some files can be patched=C2=A0<=
/div><div>patching file &lt;failed file&gt;</div><div>Hunk #1 FAILED at 41.=
</div><div>1 out of 1 hunk FAILED -- rejects in file &lt;failed file&gt;</d=
iv><div>Patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch does no=
t apply (enforce with -f)</div><div><br></div><div>However, if using &quot;=
git am &lt;patch&gt;&quot; under cloned arm-trusted-firmware git repo, the =
patches are successfully patched.</div></div><div><br></div><div>What could=
 be the difference?</div><div><br></div><div>Thanks!</div><div><br></div></=
div>

--001a114daa9c29c0f30534f07da2--
