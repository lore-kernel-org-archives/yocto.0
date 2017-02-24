Return-Path: <jakobsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50FCEE00724; Fri, 24 Feb 2017 00:50:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jakobsg[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36740E00405
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 00:50:54 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id h10so13313575ith.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 00:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dsf3EOOecuhmnOCy5dvD9ma7vWBqAX0W0Wi68d8quaM=;
	b=hj9BZASDrI/kL/HWxfGv2ATYKwlOC2zzMfvjGs/8Le9XmgrW+I+/Ebx4BN8BJgqSm2
	J0k/rSNTUVW1SW5Gfi0Gelk2NARDJqnSWG7gTvRyHR2EDmmD8+y0z6ZTiKzRX0K/6plD
	z3UNZXeBL54sd9sdR723sQtCvdgoWp1z0N22/18EfpP1iPu7CmsLpyB1csJFu9aGPbhT
	TLFUMlJOYc7vy5YPqV97qhDKqbpam1mnt2gYAhbDUgDGcjufwkKpvfO9aZFLbZj8xJNy
	+A2/AAhZok234OVwUt/PnXHh0XQNcSOqvyMQ3OO6ai28OA5K2qsBey+R2DSkQSVn1mIW
	lhuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dsf3EOOecuhmnOCy5dvD9ma7vWBqAX0W0Wi68d8quaM=;
	b=dIfAWCcG7wb8kCCvlfP8i2WhUoQCVBjvYpynE4f3BxVBvtxqNzxx+OCNS8Ycw7aSln
	JS4yVf5xZPdhx1GNDfBQNQXbTQ1BcUn3a0ALUn4RSovnrUmTaHxLS3wePhwG4yTLgQNt
	4rdZyn6NHXB7en1FyMxnM/ItDG725VnhlqzL7A48sHiWS8Be7RBd+uGQQKJUa2Dgwmtm
	fFDYs+GMn2E+7b3jMBI64VjU7G3WE762JHO52lZJLKY3Fe8ebFoaEozpDrNv3L8CVy29
	0Fodbg9HsZL9EuRpryGY4tGRJoRNx1Acw0QrGd433u8D0sz65ItBiU2Ycm8Of4iahXlW
	XJaA==
X-Gm-Message-State: AMke39mBAWMJgcZ42BB6VLdtb7Ogdb92lTTNWe/+MALNUSVuj+M5FNFX3mn40ZMDMSx8kS1pG7FzCxgud/nVRA==
X-Received: by 10.107.8.155 with SMTP id h27mr1502495ioi.16.1487926253981;
	Fri, 24 Feb 2017 00:50:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.81.69 with HTTP; Fri, 24 Feb 2017 00:50:53 -0800 (PST)
From: Jakob Simon-Gaarde <jakobsg@gmail.com>
Date: Fri, 24 Feb 2017 09:50:53 +0100
Message-ID: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Python3 partial rootfs installation
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
X-List-Received-Date: Fri, 24 Feb 2017 08:50:58 -0000
Content-Type: multipart/alternative; boundary=001a113f8a0cd2370f054942d31d

--001a113f8a0cd2370f054942d31d
Content-Type: text/plain; charset=UTF-8

Hi.

I want to use Python3 on yocto 2.2 so I added it as a dependency in my
project. Python3.5 was added to the final rootfs
but it is partial. Many of the standard libraries that are build during the
image creation does not end up in the target rootfs.

For instance socketserver.py which was the first missing module I
encountered.

Is there any way to make a full standard python3 install?

-- 
Med venlig hilsen / Best regards
Jakob Simon-Gaarde

--001a113f8a0cd2370f054942d31d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi.<br><br></div>I want to use Python3=
 on yocto 2.2 so I added it as a dependency in my project. Python3.5 was ad=
ded to the final rootfs<br></div>but it is partial. Many of the standard li=
braries that are build during the image creation does not end up in the tar=
get rootfs.<br><br></div>For instance socketserver.py which was the first m=
issing module I encountered.<br><br></div>Is there any way to make a full s=
tandard python3 install?<br clear=3D"all"><div><div><div><div><div><br>-- <=
br><div class=3D"m_-511724740781647099gmail_signature" data-smartmail=3D"gm=
ail_signature">Med venlig hilsen / Best regards<br>Jakob Simon-Gaarde</div>
</div></div></div></div></div></div>

--001a113f8a0cd2370f054942d31d--
