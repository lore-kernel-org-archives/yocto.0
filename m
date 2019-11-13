Return-Path: <vladimir.molokov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 335ECE00E18; Wed, 13 Nov 2019 03:33:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vladimir.molokov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A16FCE00BF7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 03:33:41 -0800 (PST)
Received: by mail-yb1-f170.google.com with SMTP id v2so654823ybo.3
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 03:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Mx9/DqCHF8CgbbHpeVotV80BjJXejzd/Tj2hOUljWuI=;
	b=KxT8eXX2ZZi7GSXBqwwZaaQn2LAbjqpC7OfBpJf/tXxFILfSBFSaAdfMsWEo5xPiST
	iUS7wgPQukn5NEsrBt+BUVplInJSOiMSKufM6sbw68gFwf573FN/uYlqbeMdrNHezEsV
	wlVJM05uwJXK2GyNUK/QnXGSrlHZeUl6TUVjcgshzEBdzk+Vitm239mE4iU2+WYNv4YA
	OG7LKxoTvIaJVn5nd2qmdC7jyw/utD23KwHyhs3No1M86rDVrP25yN3C5aCfctm7LTT8
	cDL2R/5dtpQwYWXMETHiJRwGV7Z4TRTrLRr0H4ASlCNGJ+wnVT4jOi7tKvo88IowIgYY
	OYsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Mx9/DqCHF8CgbbHpeVotV80BjJXejzd/Tj2hOUljWuI=;
	b=HpPk17gJZFdYF6fRUuTopvz0+EPDM3fy1WX/8uOkmkw4vgJqg54WLGZ7/xLuI/MrWL
	xMVwuJjOWwCQKACISIEMWSVUFLjYijQ1+vrU+b+mRErqEakoiuhaNqEQP97t9kc1ku2k
	5tPOOfwJj9XofK/O9FaL80+szLMrdYhatV84rythRzLq8r37EsWu5+mwnlvjhgToSrNi
	NjnwC0xOs2rRK3Iw5pjdNeY/C0vJKRxQaC4oUpFFR8j8709FCqVMrTSBT+r1mA2/Z2X7
	zN69pxP6b4w+++PPrtrMO5QtGBt2d2KmqCQt2LbiffSIPI/6X00Kz4x7rI5uAWYOxgRc
	Vsyw==
X-Gm-Message-State: APjAAAXJRAdHuBy3Ynwjk++08/gF5yisSwIwQ6q/TvruWcgYmtr+gTqN
	Er8rcFRGIt8l57N2zCWVEgSbErkX1brdbsFtOOfc/g==
X-Google-Smtp-Source: APXvYqzNYyc7MNKasE3pWlCJ6hd0MukOXdX7lxBbVzWEH7Jm0nHC7STEAXktgDQdpxlZPrS+H2Xsq4dPdOXvYN82IOU=
X-Received: by 2002:a25:6e86:: with SMTP id j128mr2159580ybc.456.1573644820868;
	Wed, 13 Nov 2019 03:33:40 -0800 (PST)
MIME-Version: 1.0
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
In-Reply-To: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
From: Vladimir Molokov <vladimir.molokov@gmail.com>
Date: Wed, 13 Nov 2019 12:33:30 +0100
Message-ID: <CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: puzzle: simple recipe gets image dependencies
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
X-List-Received-Date: Wed, 13 Nov 2019 11:33:43 -0000
Content-Type: multipart/alternative; boundary="0000000000008cf4e4059738bc7b"

--0000000000008cf4e4059738bc7b
Content-Type: text/plain; charset="UTF-8"

Hi all,

Here is a strange dependency puzzle:
simple recipe which doesn't inherit image class
gets EXTRA-IMAGEDENDS, kernel, initramfs and so on.

It's reproducible on latest poky,
I've made a minimal example, all lines are important,
if you remove something, like systemd or attr
it drops all the dependencies
though I didn't find anything wrong in systemd nor in attr recipes.

Steps to reproduce:

1. mkdir puzzle && cd puzzle
1. git clone git://git.yoctoproject.org/poky
2. source poky/oe-init-build-env
3. bitbake-layers create-layer meta-puzzle
4. bitbake-layers add-layer meta-puzzle
5. cp meta-puzzle/recipes-example/example/example_0.1.bb \
   meta-puzzle/recipes-example/example/bad-example_0.1.bb

6. mkdir -p meta-puzzle/conf/distro

7. printf "require conf/distro/poky.conf\n\n\
DISTRO = \"extra-img-dep-test\" \n\
DISTRO_NAME = \"Extra image dependency test\"\n\
DISTRO_VERSION = \"0.1\"\n\n\
DISTRO_FEATURES_append = \"systemd\"\n"\
> meta-puzzle/conf/distro/extra-img-dep-test.conf

7. printf "MACHINE ?= \"qemux86\"\n\
DISTRO ?= \"extra-img-dep-test\"\n\n\
EXTRA_IMAGEDEPENDS += \"bad-example\"\n\n\
INITRAMFS_IMAGE = \"core-image-minimal\"\n"\
> conf/local.conf

8. echo 'DEPENDS = "attr"' >> \
   meta-puzzle/recipes-example/example/example_0.1.bb

9. bitbake -g example && grep bad-example task-depends.dot

10. see dependencies on 'bad-example'..

Will be very grateful if anybody point out
what is wrong with this setup.

I've talked with people struggling with similar problem
and nobody was able to solve it so far
and I myself stumbled in it in a couple of projects.

BR,
Vladimir.

--0000000000008cf4e4059738bc7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">Hi all,<br></div>
<br>
Here is a strange dependency puzzle:<br>
simple recipe which doesn&#39;t inherit image class<br>
gets EXTRA-IMAGEDENDS, kernel, initramfs and so on.<br>
<br>
It&#39;s reproducible on latest poky,<br>
I&#39;ve made a minimal example, all lines are important,<br>
if you remove something, like systemd or attr<br>
it drops all the dependencies<br>
though I didn&#39;t find anything wrong in systemd nor in attr recipes.<br>
<br>
Steps to reproduce:<br>
<br>
1. mkdir puzzle &amp;&amp; cd puzzle<br>
1. git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">git.yoctoproject.org/poky</a><br>
2. source poky/oe-init-build-env<br>
3. bitbake-layers create-layer meta-puzzle<br>
4. bitbake-layers add-layer meta-puzzle<br>
5. cp meta-puzzle/recipes-example/example/<a href=3D"http://example_0.1.bb"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">example_0.1.bb</a> \<br>
=C2=A0 =C2=A0meta-puzzle/recipes-example/example/<a href=3D"http://bad-exam=
ple_0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">bad-example_0.1=
.bb</a><br>
<br>
6. mkdir -p meta-puzzle/conf/distro<br>
<br>
7. printf &quot;require conf/distro/poky.conf\n\n\<br>
DISTRO =3D \&quot;extra-img-dep-test\&quot; \n\<br>
DISTRO_NAME =3D \&quot;Extra image dependency test\&quot;\n\<br>
DISTRO_VERSION =3D \&quot;0.1\&quot;\n\n\<br>
DISTRO_FEATURES_append =3D \&quot;systemd\&quot;\n&quot;\<br>
&gt; meta-puzzle/conf/distro/extra-img-dep-test.conf<br>
<br>
7. printf &quot;MACHINE ?=3D \&quot;qemux86\&quot;\n\<br>
DISTRO ?=3D \&quot;extra-img-dep-test\&quot;\n\n\<br>
EXTRA_IMAGEDEPENDS +=3D \&quot;bad-example\&quot;\n\n\<br>
INITRAMFS_IMAGE =3D \&quot;core-image-minimal\&quot;\n&quot;\<br>
&gt; conf/local.conf<br>
<br>
8. echo &#39;DEPENDS =3D &quot;attr&quot;&#39; &gt;&gt; \<br>
=C2=A0 =C2=A0meta-puzzle/recipes-example/example/<a href=3D"http://example_=
0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">example_0.1.bb</a><=
br>
<br>
9. bitbake -g example &amp;&amp; grep bad-example task-depends.dot<br>
<br>
10. see dependencies on &#39;bad-example&#39;..<br>
<br>
Will be very grateful if anybody point out<br>
what is wrong with this setup.<br>
<br>
I&#39;ve talked with people struggling with similar problem<br>
and nobody was able to solve it so far<br>
and I myself stumbled in it in a couple of projects.<br>
<br>
BR,<br>
Vladimir.<br>
</div></div>

--0000000000008cf4e4059738bc7b--
