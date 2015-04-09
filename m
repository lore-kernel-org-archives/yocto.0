Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3BDBE00954; Wed,  8 Apr 2015 19:24:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A902E0088A
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 19:24:41 -0700 (PDT)
Received: by igblo3 with SMTP id lo3so54358817igb.0
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 19:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=6yXCX8d+2nkzKX+AhlGNgTRnapUwcOxJ/zkbA1xjXo8=;
	b=JaqiwCHmuPV9TfFkk/HQwUx/vhbShN/et/HtHDw14z5cYOiSTXqbxr52mBArzaKKId
	WNeQb0g8hxAzwFpCWILrcKKPK+clZRnKtCfrljaWbydY8t3RBiLxEfKZ9Az0R+APtgBU
	1jvqJjsiox2LJNVhkqHTOh8HxAonF07Kat2n+jeU+xAHIvFh44/H6dScdvcf6YU+lBa1
	2FXYvkbDRan31mVt8hezw+KvjKR5pf/5L36seJVFc4aX/prY0lkFrzHKeg+kWFi8KoSP
	Y5aslXTp8u2TxQRM/KLv7IZprMasR+90JznO1wSkSwuLSw5DhX5bEL5jeGMYxRU8HUba
	hBcg==
X-Received: by 10.43.110.136 with SMTP id ek8mr37940159icc.87.1428546281484;
	Wed, 08 Apr 2015 19:24:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.144 with HTTP; Wed, 8 Apr 2015 19:24:11 -0700 (PDT)
From: Ash Charles <ashcharles@gmail.com>
Date: Wed, 8 Apr 2015 19:24:11 -0700
Message-ID: <CAK8F28=tmVPsTSr24Ccv634cOx5UQkikFjasWDajygJg0P-_UQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: False dependency on non-existent libgettextlib-dev
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
X-List-Received-Date: Thu, 09 Apr 2015 02:24:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

In my Yocto build, the RPM package for gettext-dev has a depency on an
apparently non-existent package "libgettextlib-dev".  In the generated
pkgdata/runtime/gettext-dev  file, I see
"RRECOMMENDS_gettext-dev: libgettextlib-dev libgettextsrc-dev
glibc-dev expat-dev".

From the gettext recipe, it seems clear that there is not supposed to
be a libgettextlib-dev package.  How might such a dependency come
about?

--Ash

