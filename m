Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61EE7E00C2B; Tue, 25 Jul 2017 05:45:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E96E00C1C
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 05:45:20 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id u207so6701750ywc.3
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 05:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=from:mime-version:subject:message-id:date:to;
	bh=shdqfxptOUyjglsnqQh0HdifoiJG3hZAPOCs2xBNfws=;
	b=e0H2HX89HyENJm48lu1cPm6yse40j4z8m038/sLvXb4Xflh16GTKrnxb5eJbnLe+lo
	ssnjnUfoAb5TCOkdnxzJCSMnKtnY70L06VW6zOXcQZdNSLb87cVImwIlppaEFEEZPx9F
	BJSCG8R3GqlTzAUM2uNUvrDO9b0MEikwjWBLYvIkxGAhGi0+doyWZ+p8s3/Hh+tuV69r
	Hu8jqrnvEUcGImsew3uS4+PVITZXUH18JtMgrUqGLfVESNc1oAG22N4emlQLakskmHuF
	qlaDs5CAOHb9W6hFaUrNEG1BfZ7PQm+5kQOYu888k76B9kwvKN0NO4lojTyg9M3w2MLB
	ilbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=shdqfxptOUyjglsnqQh0HdifoiJG3hZAPOCs2xBNfws=;
	b=SbS8bMeQdP7xPA+urmrybZCabajXuYsRiQsHnpjAunLWoju3GhEHIZ0QNan0ddt/MI
	Gro73zeUnOhyqyoXHUs6yNgRX7tm7oPIoqljGi3eOzY6fPht/y5eA8vr9e3Eh6EuiODT
	xZ3rHLRo9FPVAx7/diXP+BurV26OOAyx5ndUtWVO9CzcwxQnWadeLTBgafh6xJykBCJF
	VkgvFvEy13dQFdZhQK/Txarbv5JeO5+Qkpj+bc1oZ1/5dCHh3C5WRegl34IKH/P72mLk
	9xabSGku0K1aWPf302sj8imIK3Z+wf/MlCa7Pq4l1MmCyCDP+nQahFZNENj0hWBveX+d
	d2jA==
X-Gm-Message-State: AIVw113I8wUaXNlslnHI8Jaz65C2YMwZkFLnYmfD0BmuG0DCwOoCwcxb
	LMdCwuF72qGnmUeOU4fQ2Q==
X-Received: by 10.129.132.77 with SMTP id u74mr16020878ywf.361.1500986720091; 
	Tue, 25 Jul 2017 05:45:20 -0700 (PDT)
Received: from [192.168.1.33] (653240hfc152.tampabay.res.rr.com.
	[65.32.40.152])
	by smtp.gmail.com with ESMTPSA id c9sm4988157ywk.20.2017.07.25.05.45.19
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Jul 2017 05:45:19 -0700 (PDT)
From: Drew Moseley <drew.moseley@northern.tech>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <57397116-4AA7-4BAF-8C45-3D047883927C@northern.tech>
Date: Tue, 25 Jul 2017 08:45:18 -0400
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3273)
X-Mailman-Approved-At: Tue, 25 Jul 2017 11:19:05 -0700
Subject: Extra rebuilds when using rm_work
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
X-List-Received-Date: Tue, 25 Jul 2017 12:45:23 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_16E616AA-D3F2-44F6-9CD1-20F7F1617798"

--Apple-Mail=_16E616AA-D3F2-44F6-9CD1-20F7F1617798
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

With both pyro and master, I have noticed that when I use 'INHERIT +=3D =
=E2=80=9Crm_work=E2=80=9D=E2=80=99 I get extra rebuilds of the image =
rootfs.

My current build uses poky rev 5686f4e1fe5229705b8c7d35895aa03827796d13

Specifically, without =E2=80=9Crm_work=E2=80=9D:

$ . src/poky/oe-init-build-env build-rm-work
$ cat >> conf/local.conf=20
DL_DIR =3D "/work/dmoseley/yocto-downloads"
SSTATE_DIR =3D "/work/dmoseley/yocto-sstate-cache"
MACHINE=3D"beaglebone"
$ bitbake core-image-minimal
<snip>
NOTE: Tasks Summary: Attempted 2611 tasks of which 2379 didn't need to =
be rerun and all succeeded.
$ bitbake core-image-minimal
<snip>
NOTE: Tasks Summary: Attempted 2611 tasks of which 2611 didn't need to =
be rerun and all succeeded.

and again with =E2=80=9Crm_work=E2=80=9D

$ echo 'INHERIT +=3D "rm_work"' >> conf/local.conf
$ bitbake core-image-minimal
<snip>
Tasks Summary: Attempted 3052 tasks of which 2390 didn't need to be =
rerun and all succeeded.
$ bitbake core-image-minimal
<snip>
Tasks Summary: Attempted 3052 tasks of which 3039 didn't need to be =
rerun and all succeeded.
$ grep NOTE:\ Running tmp/log/cooker/beaglebone/console-latest.log=20
NOTE: Running noexec task 2577 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_fetch)
NOTE: Running task 2578 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_prepare_recipe_sysroot)
NOTE: Running task 3042 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rootfs)
NOTE: Running task 3043 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image)
NOTE: Running task 3044 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_jffs2)
NOTE: Running task 3045 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_tar)
NOTE: Running task 3046 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rootfs_wicenv)
NOTE: Running task 3047 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_wic)
NOTE: Running task 3048 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_complete)
NOTE: Running task 3049 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_qa)
NOTE: Running task 3050 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rm_work)
NOTE: Running noexec task 3051 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rm_work_all)
NOTE: Running noexec task 3052 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_build)

Has anyone else seen similar behavior?

Drew=

--Apple-Mail=_16E616AA-D3F2-44F6-9CD1-20F7F1617798
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">With both pyro and master, I have noticed that when I use =
'INHERIT +=3D =E2=80=9Crm_work=E2=80=9D=E2=80=99 I get extra rebuilds of =
the image rootfs.<div class=3D""><br class=3D""></div><div class=3D"">My =
current build uses poky =
rev&nbsp;5686f4e1fe5229705b8c7d35895aa03827796d13</div><div class=3D""><br=
 class=3D""></div><div class=3D"">Specifically, without =
=E2=80=9Crm_work=E2=80=9D:</div><div class=3D""><br =
class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; border: none; =
padding: 0px;" class=3D""><div class=3D""><div class=3D"">$ . =
src/poky/oe-init-build-env build-rm-work</div></div><div class=3D""><div =
class=3D"">$ cat &gt;&gt; conf/local.conf&nbsp;</div></div><div =
class=3D""><div class=3D"">DL_DIR =3D =
"/work/dmoseley/yocto-downloads"</div></div><div class=3D""><div =
class=3D"">SSTATE_DIR =3D =
"/work/dmoseley/yocto-sstate-cache"</div></div><div class=3D""><div =
class=3D"">MACHINE=3D"beaglebone"</div></div><div class=3D""><div =
class=3D"">$ bitbake core-image-minimal</div></div><div class=3D""><div =
class=3D"">&lt;snip&gt;</div></div><div class=3D""><div class=3D"">NOTE: =
Tasks Summary: Attempted 2611 tasks of which 2379 didn't need to be =
rerun and all succeeded.</div></div><div class=3D""><div class=3D"">$ =
bitbake core-image-minimal</div></div><div class=3D""><div =
class=3D"">&lt;snip&gt;</div></div><div class=3D""><div class=3D"">NOTE: =
Tasks Summary: Attempted 2611 tasks of which 2611 didn't need to be =
rerun and all succeeded.</div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">and again with =E2=80=9Crm_work=E2=80=9D<=
/div><div class=3D""><br class=3D""></div><blockquote style=3D"margin: 0 =
0 0 40px; border: none; padding: 0px;" class=3D""><div class=3D""><div =
class=3D"">$ echo 'INHERIT +=3D "rm_work"' &gt;&gt; =
conf/local.conf</div></div><div class=3D""><div class=3D"">$ bitbake =
core-image-minimal</div></div><div class=3D""><div =
class=3D"">&lt;snip&gt;</div></div><div class=3D""><div class=3D"">Tasks =
Summary: Attempted 3052 tasks of which 2390 didn't need to be rerun and =
all succeeded.</div></div><div class=3D""><div class=3D"">$ bitbake =
core-image-minimal</div></div><div class=3D""><div =
class=3D"">&lt;snip&gt;</div></div><div class=3D""><div class=3D"">Tasks =
Summary: Attempted 3052 tasks of which 3039 didn't need to be rerun and =
all succeeded.</div></div><div class=3D""><div class=3D"">$ grep NOTE:\ =
Running =
tmp/log/cooker/beaglebone/console-latest.log&nbsp;</div></div><div =
class=3D""><div class=3D"">NOTE: Running noexec task 2577 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_fetch)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 2578 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_prepare_recipe_sysroot)</div></div><div =
class=3D""><div class=3D"">NOTE: Running task 3042 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rootfs)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3043 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3044 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_jffs2)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3045 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_tar)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3046 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rootfs_wicenv)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3047 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_wic)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3048 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_complete)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3049 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_image_qa)</div></div><div class=3D""><div =
class=3D"">NOTE: Running task 3050 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rm_work)</div></div><div class=3D""><div =
class=3D"">NOTE: Running noexec task 3051 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_rm_work_all)</div></div><div class=3D""><div =
class=3D"">NOTE: Running noexec task 3052 of 3052 =
(/work/dmoseley/community/yocto/pyro/src/poky/meta/recipes-core/images/cor=
e-image-minimal.bb:do_build)</div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Has anyone else seen similar =
behavior?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Drew</div></body></html>=

--Apple-Mail=_16E616AA-D3F2-44F6-9CD1-20F7F1617798--
