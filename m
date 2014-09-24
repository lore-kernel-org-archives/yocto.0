Return-Path: <ohliger.tim@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10707E007DF; Wed, 24 Sep 2014 06:30:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ohliger.tim[at]gmail.com)
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
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C94E0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 06:30:13 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id u20so6359985oif.0
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=V+LfP2lisTIz5d/kqJp1TVlMWcOqROonz/ncQmwIaF0=;
	b=oq2Jo/HCwupVi10KHfvC/T8UefptEkZ74UgbnY8wbol7yqnajvQQidQNORTKweEg/M
	OmLeOtJThB5goVxYe7Fh+V+0DxqhNd7K8UWIXOh5IGV4VbLUyyqJv52PSCdKiBOB4kmo
	cK8CxQWsZH96EBWMgFlfByUwC+dGR6Idq6/7B6lWAdFExsyqVNS1b6X/w9X73cAePq2y
	/BOY5LdTBzkGJ9AZyS8D+xVdeOk+JyoIfBneksHnoZBItX7Ti9dGJUgcoV79v6BKXmXU
	dPaVygSlvzYy2CUliOpf+gAj/uDFeUY/EBQaiICrl74OxAkCEEm3WjZhM2jkH09adc2I
	IPdQ==
MIME-Version: 1.0
X-Received: by 10.60.130.196 with SMTP id og4mr6948057oeb.1.1411565412561;
	Wed, 24 Sep 2014 06:30:12 -0700 (PDT)
Received: by 10.182.252.202 with HTTP; Wed, 24 Sep 2014 06:30:12 -0700 (PDT)
Date: Wed, 24 Sep 2014 15:30:12 +0200
Message-ID: <CALp=6pUUGVRL+oCZ3hA2wFkVQB9HEiMHSKF16Ynf6HkdLDRtGw@mail.gmail.com>
From: Tim Ohliger <ohliger.tim@gmail.com>
To: yocto@yoctoproject.org
Subject: tools-sdk with gcc-runtime
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
X-List-Received-Date: Wed, 24 Sep 2014 13:30:25 -0000
Content-Type: multipart/alternative; boundary=089e013a0dd4fe3c7b0503cfaece

--089e013a0dd4fe3c7b0503cfaece
Content-Type: text/plain; charset=UTF-8

Hello.

Currently I am trying to build the core-image-full-cmdline with
crystalforest-server machine from meta-intel/meta-crystalforest and using
Yocto Project 1.6 (daisy) release.
I am quite new to yocto so this might be a beginner's mistake.

When I install the image-feature "tools-sdk" on my image to use gcc amongst
others, it seems like some libs are missing, e.g. libssp.so.
I found those in the gcc-runtime package.
Unfortunately adding gcc-runtime to IMAGE_INSTALL does not work and
displays during bitbake the error:
"ERROR: gcc-runtime not found in the base feeds (crystalforest_server
corei7-64-intel-common corei7-64 core2-64 x86_64 noarch any all)"
Followed by a quite long list of packages.

I added those two lines to conf/local.conf
EXTRA_IMAGE_FEATURES = "debug-tweaks dev-pkgs tools-sdk ssh-server-openssh
package-management"
IMAGE_INSTALL_append = " git gcc-runtime "

I hope anybody can help me.

Best regards
Tim Ohliger

--089e013a0dd4fe3c7b0503cfaece
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello.<br><br></div>Currently I am try=
ing to build the core-image-full-cmdline with crystalforest-server machine =
from meta-intel/meta-crystalforest and using Yocto Project 1.6 (daisy) rele=
ase.<br></div>I am quite new to yocto so this might be a beginner&#39;s mis=
take. <br><br>When I install the image-feature &quot;tools-sdk&quot; on my =
image to use gcc amongst others, it seems like some libs are missing, e.g. =
libssp.so.<br>I found those in the gcc-runtime package.<br>Unfortunately ad=
ding gcc-runtime to IMAGE_INSTALL does not work and displays during bitbake=
 the error:<br>&quot;ERROR: gcc-runtime not found in the base feeds (crysta=
lforest_server corei7-64-intel-common corei7-64 core2-64 x86_64 noarch any =
all)&quot;<br>Followed by a quite long list of packages.<br><br>I added tho=
se two lines to conf/local.conf<br>EXTRA_IMAGE_FEATURES =3D &quot;debug-twe=
aks dev-pkgs tools-sdk ssh-server-openssh package-management&quot;<br>IMAGE=
_INSTALL_append =3D &quot; git gcc-runtime &quot;<br><br></div>I hope anybo=
dy can help me.<br></div><br>Best regards<br>Tim Ohliger<br></div>

--089e013a0dd4fe3c7b0503cfaece--
