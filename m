Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E95DE00848; Sat,  7 Feb 2015 19:21:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
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
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2641EE00825
	for <yocto@yoctoproject.org>; Sat,  7 Feb 2015 19:21:08 -0800 (PST)
Received: by iecrp18 with SMTP id rp18so3321732iec.7
	for <yocto@yoctoproject.org>; Sat, 07 Feb 2015 19:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HXwx9PVjdLAo1LeLVDFsVEs6sNs6o5bPQZbil7N1EPA=;
	b=J1Qt3+jivvZwc6u1Vi5yB/pIpjDkCBbcvobJDxTRfeErWJGKwQnhIa3Db9jivLVZO9
	whkg4TZ8DW5/BbAfrcdR8csdNV8iW60gLOTIzvrM/Jyrfa8G/Teti3+5qcg9xmd8x65v
	focr2QdHJCZPPNYUqgKmTKoZYHNDHqS2UiPuX004USaZbpfJI6apPv7+Cl2lzcw/AesA
	uzt8kJmJbz89jjQuAflveoX8OqiPn1e7OwUlfBYLMWyoSYDabEbPNjOoVDZC11AOoMWc
	c/hjJoabSgecULhUTrMxUdWjnABciIJjry8KgG7aQbWSs1bxu303Cob6lBYgKgqs87C/
	341g==
MIME-Version: 1.0
X-Received: by 10.50.44.43 with SMTP id b11mr10071285igm.30.1423365666829;
	Sat, 07 Feb 2015 19:21:06 -0800 (PST)
Received: by 10.36.51.145 with HTTP; Sat, 7 Feb 2015 19:21:06 -0800 (PST)
Date: Sun, 8 Feb 2015 11:21:06 +0800
Message-ID: <CAKGbVbshQj1zUrYERA0eb9Ua6fVMdO9VfazEPNmxX_eqvNjDtA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to write a recipe whose source code will generate host and target output at the same build?
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
X-List-Received-Date: Sun, 08 Feb 2015 03:21:10 -0000
Content-Type: multipart/alternative; boundary=047d7bdc79e4f4f9e2050e8b247a

--047d7bdc79e4f4f9e2050e8b247a
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm writing a recipe for QT5 which will generate both host tools and target
lib at the same build. How can I handle this situation? It doesn't fix
either target or native class.

Can cross class solve this problem? Can cross generate target lib package
and populate both target and host sysroot all at once?

Or I notice a tmp/work-shared dir which can be shared by multi recipes. So
maybe I can write two recipes, one for target lib, one for host tool, which
share the same work dir at tmp/work-shared. Only one build is needed. If
this is possible, how can I use the tmp/work-shared, inherit some special
class?

Regards,
Qiang

--047d7bdc79e4f4f9e2050e8b247a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m writing a recipe for QT=
5 which will generate both host tools and target lib at the same build. How=
 can I handle this situation? It doesn&#39;t fix either target or native cl=
ass.</div><div><br></div><div>Can cross class solve this problem? Can cross=
 generate target lib package and populate both target and host sysroot all =
at once?</div><div><br></div><div>Or I notice a tmp/work-shared dir which c=
an be shared by multi recipes. So maybe I can write two recipes, one for ta=
rget lib, one for host tool, which share the same work dir at tmp/work-shar=
ed. Only one build is needed. If this is possible, how can I use the tmp/wo=
rk-shared, inherit some special class?</div><div><br></div><div>Regards,</d=
iv><div>Qiang=C2=A0</div></div>

--047d7bdc79e4f4f9e2050e8b247a--
