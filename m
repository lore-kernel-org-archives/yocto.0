Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5D5DE00956; Thu, 21 May 2015 03:47:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70790E004F6
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 03:47:06 -0700 (PDT)
Received: by wgfl8 with SMTP id l8so81332487wgf.2
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 03:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=QNQm3ddHeXAmx8p8ZQ7EVQpX0QhIUp2kXdVjU+mNbww=;
	b=0d3mJRm35PD71EYEQ975C1tCfEZUlDdC9/4wquPpAfucLj7lLCYs3F7fY6Hnv+LI4e
	nc9tvkF8CFHcNEg9i2ggQf930cI9fpoGKmRMRzJEtRddXu9L73O39jWiduO10XS2BloI
	m7W/xURVbESkzZVHkEKVPy+xQAxZqDH460pcSv/NiZ5BalxnppsriKCOsXt/nqiUkzz+
	DmdVoYgVkQvSno+m6VNaMGzbBRUUGeps1ojowiZJOs9M+nqvRER7oS1tZLxC/7r+spQ6
	Yi7Svu4aWzRqytxD//edZuQtAPaSpqo9udF00k9Xm6vSGgyi3HJyX6TXHzMpW9zWY99N
	JAig==
MIME-Version: 1.0
X-Received: by 10.180.14.135 with SMTP id p7mr5080234wic.8.1432205226020; Thu,
	21 May 2015 03:47:06 -0700 (PDT)
Received: by 10.194.16.130 with HTTP; Thu, 21 May 2015 03:47:05 -0700 (PDT)
Date: Thu, 21 May 2015 12:47:05 +0200
Message-ID: <CABc_YGCU1KaKpSZr24-BO2cDHS-s5qkp1j1U2ri+UCoa-zrc0w@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: Removing do_compile task and ordering problem
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
X-List-Received-Date: Thu, 21 May 2015 10:47:11 -0000
Content-Type: multipart/alternative; boundary=f46d040fa1d0be361205169543f0

--f46d040fa1d0be361205169543f0
Content-Type: text/plain; charset=UTF-8

Hi,

I am writing recipe that inherits from *native*.
I removed do_compile task using: *deltask do_compile*
When i was ruing bitbake my-recipe all works fine, but when I added recipe
to *EXTRA_IMAGEDEPENDS *and run* bitbake core-image-minimal *tasks were
reordered in some strange way that task do_install was performed before
do_fetch.
When I hanged *deltask do_compile *to *do_compile[noexec] = "1" * all went
back to normal.
I found *deltask *in manual so I do not know, is it a bug or not?

Regards
Marcin

--f46d040fa1d0be361205169543f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am writing recipe that inherits f=
rom <i>native</i>.</div><div>I removed do_compile task using:=C2=A0<i>delta=
sk do_compile</i></div><div>When i was ruing bitbake my-recipe all works fi=
ne, but when I added recipe to=C2=A0<i>EXTRA_IMAGEDEPENDS </i>and run<i> bi=
tbake core-image-minimal </i>tasks were reordered in some strange way that =
task do_install was performed before do_fetch.</div><div>When I hanged <i>d=
eltask do_compile </i>to=C2=A0<i>do_compile[noexec] =3D &quot;1&quot; </i>=
=C2=A0all went back to normal.</div><div>I found <i>deltask </i>in manual s=
o I do not know, is it a bug or not?</div><div><br></div><div>Regards</div>=
<div>Marcin</div><div><br></div></div>

--f46d040fa1d0be361205169543f0--
