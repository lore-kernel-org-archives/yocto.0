Return-Path: <matthias.gwerder@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80945E006EF; Thu, 11 Sep 2014 08:16:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matthias.gwerder[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE20E006C5
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 08:16:09 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id hz1so12783921pad.21
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 08:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=2NW5HPkrCPdDJZqt7p4bsz1fZClx8AduiDvdVpM1LDs=;
	b=knE4q8ZIpSBkMD7icwlMN81HkRZh5Y6hEJs7nnt0I5gFbNAZ9VFyQWosu2kp3lKZlY
	o2lAYozNzPw/Ou/I7CFAHmrKCPKfQuQ4AlK2UYtE+NYcatGy6wBg/OMrZKcFvBGNMmLh
	cUIK1NBRAN4BqCcUgj8Fq7qdqMvL6QvdJMnc+EALDAtbQuafT6T2DRy0wlMh5nXpsGGX
	KOqyD968QlYnaynCaIXVitL6iKveC/+8qxnn+Xs0NIB8wrZ/z+vKguPRl70KCsBh+Nzu
	g6ED62V/rXsMSOgfxge/K2HmxaFUhX+DOg5rNrRMlBN0AMM4yahcz6k4XEQE+G55pNzv
	OqEQ==
MIME-Version: 1.0
X-Received: by 10.66.90.162 with SMTP id bx2mr2436181pab.39.1410448569392;
	Thu, 11 Sep 2014 08:16:09 -0700 (PDT)
Received: by 10.70.135.65 with HTTP; Thu, 11 Sep 2014 08:16:09 -0700 (PDT)
Date: Thu, 11 Sep 2014 17:16:09 +0200
Message-ID: <CAHMnrYPQna0it4A_WeLgidDtzV+LgAVyMnoQX7zKvx2C+46vkQ@mail.gmail.com>
From: Matthias Gwerder <matthias.gwerder@gmail.com>
To: yocto@yoctoproject.org
Subject: Feed URIs not inserted to /etc/opkg
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
X-List-Received-Date: Thu, 11 Sep 2014 15:16:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I=E2=80=99m using ipk packages and runtime package management.

When migrating from dora to daisy, I noticed that the package feed
URIs are not being configured any more in the do_rootfs_ipk task. The
final /etc/opkg directory in the target root fs contains a basic
opkg.conf, but no local-ARCH-feed.conf files any more.

According to the documentation, it should be sufficient to append
=E2=80=9Cpackage-management=E2=80=9D to IMAGE_FEATURES and define the
FEED_DEPLOYDIR_BASE_URI in local.conf.

I am referring to the following documentation:
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-FEED=
_DEPLOYDIR_BASE_URI
http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual.html#using-runti=
me-package-management

Am I missing some changes there? Or has anyone else seen the same behavior?

(I also noticed there is an IPK_FEED_URIS variable in the reference
manual, but defining that one did not help either.)

Matthias

