Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39FA4E008D2; Mon, 21 May 2018 14:00:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 199A1E0084E
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 14:00:22 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id r9-v6so15929358iod.6
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 14:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OH7C4GuCM7C2f1Y/CmbRFE//ArRnKQu6aTDVt3dkV78=;
	b=vPEJXPZvl2oKxZo8xf014+6Zj2pKgt1sNnabNxaszrikkkzxdpYxjbroQaqbqQGc93
	dvQW2Sqifr4OhBrbQy1cUoWilTPa/Do9qRjFU/FmsN1lXi0evXiiZqj76sbl7QAwp6cE
	znaZJfCJw8cgIh0KzdiDbZSjcKjwMuoVAZVhKTGcKeYkn38KhdVZhz1g1p0BtWGsabQj
	mOLSVA3dRG6i7LvmDp1nl/qZGNhdoE1Bj9p3fP9RFFNBaN3wbzasohcsD50RaunjeBE/
	iRGqf7A0Oo7FP8sq1cDhlkYW8bBOiEB7vx0BXvWJsWQ356LW3+hK2t+Lk9U1gA4bjK5z
	pr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OH7C4GuCM7C2f1Y/CmbRFE//ArRnKQu6aTDVt3dkV78=;
	b=KbyILnTSXxsLue4qbPMAkGoXAOUyW29zWOhXcajPQ0jHffTJ+PzqOY7tAPsMsCQSvv
	h+DfXpbIy5f9dyoVzYbnLQrvqjMl4n9mNbnpRA2NaUnF70B49GYZsmFnMe4CPRjS39lx
	3ZKqg/yjT0kYXWdwYJCvgqr4BA4K7DOu4O/x8ajaMcIJ/ZYw4Nj6jgc6iZzIzoVZhvCv
	fCX7/i8TUbYFYbbIl4lJFkqQ4D8FGoOMNOushrQpXy8gP5uiwFj28vBRS5eR3+7tmRAh
	jgTHGBasYL7t679farClSHYae4qxWrsFImSowQ+O8W1hW2jcHedRkU7Plr31uNShCP3p
	mN7g==
X-Gm-Message-State: ALKqPwfgdFOFVzxf/2tXOwxy03VSCmvi3FOPitcMbl72g+qfL8lrjah4
	s2SxAhLNrN4YI0fKYbeZyOrBsz59/uuUuJX50LirIg==
X-Google-Smtp-Source: AB8JxZq3fXsb/QgNx7SpZNvZkN7ZfD/+rP6MA8b4MQc+ynFrW4vJsPe64b4i0GDDXXDBzvKP+TLDCWnbMpI/RM5rq/E=
X-Received: by 2002:a6b:88e3:: with SMTP id
	s96-v6mr23246800ioi.45.1526936421924; 
	Mon, 21 May 2018 14:00:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.139.211 with HTTP; Mon, 21 May 2018 14:00:21 -0700 (PDT)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Mon, 21 May 2018 17:00:21 -0400
Message-ID: <CAKmWj-1Uks-O3HhP016_qhtk-a_dhv=39zMkJKdebkuBPhhifQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Patch for custom imager plugin in wic.
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
X-List-Received-Date: Mon, 21 May 2018 21:00:24 -0000
Content-Type: multipart/alternative; boundary="0000000000000610d0056cbd977c"

--0000000000000610d0056cbd977c
Content-Type: text/plain; charset="UTF-8"

From 136d6214b6fc2c1118dac5b7f3e029ed006fab8a Mon Sep 17 00:00:00 2001
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Mon, 21 May 2018 16:56:51 -0400
Subject: [PATCH] Support for changing the imager used in wic.

---
 scripts/lib/wic/engine.py | 2 +-
 scripts/wic               | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/wic/engine.py b/scripts/lib/wic/engine.py
index edcfab3..d7c5c11 100644
--- a/scripts/lib/wic/engine.py
+++ b/scripts/lib/wic/engine.py
@@ -191,7 +191,7 @@ def wic_create(wks_file, rootfs_dir, bootimg_dir,
kernel_dir,
     if not os.path.exists(options.outdir):
         os.makedirs(options.outdir)

-    pname = 'direct'
+    pname = options.imager
     plugin_class = PluginMgr.get_plugins('imager').get(pname)
     if not plugin_class:
         raise WicError('Unknown plugin: %s' % pname)
diff --git a/scripts/wic b/scripts/wic
index 7392bc4..255e524 100755
--- a/scripts/wic
+++ b/scripts/wic
@@ -360,6 +360,7 @@ def wic_init_parser_create(subparser):
     subparser.add_argument("-v", "--vars", dest='vars_dir',
                       help="directory with <image>.env files that store "
                            "bitbake variables")
+    subparser.add_argument("-i", "--imager", dest="imager",
default="direct", help="the wic imager plugin")
     subparser.add_argument("-D", "--debug", dest="debug",
action="store_true",
                       default=False, help="output debug information")
     return
-- 
2.7.4

--0000000000000610d0056cbd977c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>From 136d6214b6fc2c1118dac5b7f3e029ed006fab8a Mon Sep=
 17 00:00:00 2001</div><div>From: Paul Knopf &lt;<a href=3D"mailto:pauldotk=
nopf@gmail.com">pauldotknopf@gmail.com</a>&gt;</div><div>Date: Mon, 21 May =
2018 16:56:51 -0400</div><div>Subject: [PATCH] Support for changing the ima=
ger used in wic.</div><div><br></div><div>---</div><div>=C2=A0scripts/lib/w=
ic/engine.py | 2 +-</div><div>=C2=A0scripts/wic =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 1 +</div><div>=C2=A02 files changed, 2 insertions(+=
), 1 deletion(-)</div><div><br></div><div>diff --git a/scripts/lib/wic/engi=
ne.py b/scripts/lib/wic/engine.py</div><div>index edcfab3..d7c5c11 100644</=
div><div>--- a/scripts/lib/wic/engine.py</div><div>+++ b/scripts/lib/wic/en=
gine.py</div><div>@@ -191,7 +191,7 @@ def wic_create(wks_file, rootfs_dir, =
bootimg_dir, kernel_dir,</div><div>=C2=A0 =C2=A0 =C2=A0if not os.path.exist=
s(options.outdir):</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.makedirs(=
options.outdir)</div><div>=C2=A0</div><div>- =C2=A0 =C2=A0pname =3D &#39;di=
rect&#39;</div><div>+ =C2=A0 =C2=A0pname =3D options.imager</div><div>=C2=
=A0 =C2=A0 =C2=A0plugin_class =3D PluginMgr.get_plugins(&#39;imager&#39;).g=
et(pname)</div><div>=C2=A0 =C2=A0 =C2=A0if not plugin_class:</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise WicError(&#39;Unknown plugin: %s&#39; =
% pname)</div><div>diff --git a/scripts/wic b/scripts/wic</div><div>index 7=
392bc4..255e524 100755</div><div>--- a/scripts/wic</div><div>+++ b/scripts/=
wic</div><div>@@ -360,6 +360,7 @@ def wic_init_parser_create(subparser):</d=
iv><div>=C2=A0 =C2=A0 =C2=A0subparser.add_argument(&quot;-v&quot;, &quot;--=
vars&quot;, dest=3D&#39;vars_dir&#39;,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&quot;dir=
ectory with &lt;image&gt;.env files that store &quot;</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;bitbake variables&quot;)</div><div>+ =C2=A0 =C2=A0subpa=
rser.add_argument(&quot;-i&quot;, &quot;--imager&quot;, dest=3D&quot;imager=
&quot;, default=3D&quot;direct&quot;, help=3D&quot;the wic imager plugin&qu=
ot;)</div><div>=C2=A0 =C2=A0 =C2=A0subparser.add_argument(&quot;-D&quot;, &=
quot;--debug&quot;, dest=3D&quot;debug&quot;, action=3D&quot;store_true&quo=
t;,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0default=3DFalse, help=3D&quot;output debug informat=
ion&quot;)</div><div>=C2=A0 =C2=A0 =C2=A0return</div><div>--=C2=A0</div><di=
v>2.7.4</div><div><br></div></div>

--0000000000000610d0056cbd977c--
