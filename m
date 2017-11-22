Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 972B1E00A9C; Wed, 22 Nov 2017 00:10:31 -0800 (PST)
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
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D5F4E008A4
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 00:10:29 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id k66so17180458lfg.3
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 00:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=z/mEIWDnixbERdq9XFojSTTICIMRKCw/vPSlEUK0SdY=;
	b=b0rVHGQyEaMfo/inMeeJCONDR+k/ws+szQQFbWOHscnc/D8Y2CjDHJgHFVL+0KFpct
	7j/hS+/bDp2q0ogTcMlevzhxiMJ7QZXxpipLiw6nufyJe6TgqaFHqsNvP0UY4BtsROzB
	44zQ5BP5AjhdZWHcDYQEid3UBDMyAxC4FogyWOLmzmJ4eo8s70BlwpHl/gcce6rLQzUP
	Vlu6iYO7jJnUKh4vnDsuD89KF/DQshaervl5RiF3X3f9ZqtBR2awW1TL5wM2Vc2HQUmL
	jhvgGzV++a2rsYsdIBeFOQXXIxdvCk8zJ9v6nk/IH5AJQu2pcam8Oq9NikO85EvE236Q
	TOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=z/mEIWDnixbERdq9XFojSTTICIMRKCw/vPSlEUK0SdY=;
	b=N32RQKYxx/KrBdU4wjjs8aqxn51bW78kt7XD2Nw2Xh9XbAaDZDyAJBGYFO08sHF66N
	Cq+cARzpF+y/8dOwNjh+X1dN2CaeFrnR8IAHXaz7OaoU57RsVJq9cScX562wWUCb9rUa
	ptu/Nu9LZYE3b18h8bhkt7y3a1nByZVHORHBRmsTTinfUBdCvL0FlvidWDeELMKA+R9s
	cZk9mCMtBZLuAVJkIpxPLI/V7IcYirGVYpHd3nvN7UGxZj39F0MC/eYQlc8+2vfnVtet
	6JoVsT3z1tQ6w2ep9ZdzF9sFdwfev63uzjoTxm5oQf0ETUFO/+Kcm9VDtSl0byZPQTMi
	d3OA==
X-Gm-Message-State: AJaThX7tzfSsLUzgQ71LSjOKc0NLECHl7z1n3p4JlXY0eRBapHFK7XcR
	74uTu1UVwhUYXA37eRMwmNNWT4XmMM6J02PD323SxQ==
X-Google-Smtp-Source: AGs4zMZyJLQOM0QPMsVHphCGLMrTGSSuX/mNvEsDuR/vz2HIR6HNS1NAMyWGCxD28m+urxh/sq5RLn1w5+3Bmurz0yI=
X-Received: by 10.46.83.29 with SMTP id h29mr7410124ljb.144.1511338228909;
	Wed, 22 Nov 2017 00:10:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.76 with HTTP; Wed, 22 Nov 2017 00:10:28 -0800 (PST)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Wed, 22 Nov 2017 03:10:28 -0500
Message-ID: <CAKmWj-13qwhLX54szaK5gvxdHfJOKS7Xa98UxiSibLJkxSDRnw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: When are file checksums gathered from files, for tasks? During recipe parsing?
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
X-List-Received-Date: Wed, 22 Nov 2017 08:10:31 -0000
Content-Type: multipart/alternative; boundary="94eb2c1ce7fa450cc4055e8dda25"

--94eb2c1ce7fa450cc4055e8dda25
Content-Type: text/plain; charset="UTF-8"

I have a recipe that depends on a deployed output from an image.

----------------------------------------------------------
SRC_URI +=
"file://${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.tar.gz;subdir=update"
do_fetch[depends] += "my-image:do_build"
----------------------------------------------------------

Will the hash for "do_fetch" be computed after "my-image:do_build" is
executed?

If not, how would you propose I do something like this?

--94eb2c1ce7fa450cc4055e8dda25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a recipe that depends on a deployed output from an =
image.<div><br></div><div>-------------------------------------------------=
---------</div><div><div>SRC_URI +=3D &quot;file://${DEPLOY_DIR_IMAGE}/my-i=
mage-${MACHINE}.wic.update.tar.gz;subdir=3Dupdate&quot;</div><div>do_fetch[=
depends] +=3D &quot;my-image:do_build&quot;</div></div><div>---------------=
-------------------------------------------<br></div><div><br></div><div>Wi=
ll the hash for &quot;do_fetch&quot; be computed after &quot;my-image:do_bu=
ild&quot; is executed?</div><div><br></div><div>If not, how would you propo=
se I do something like this?</div></div>

--94eb2c1ce7fa450cc4055e8dda25--
