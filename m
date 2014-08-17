Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB5A7E006DB; Sun, 17 Aug 2014 08:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D06F1E00655
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 08:30:41 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id ho1so2600030wib.10
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 08:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:content-type:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=xl0hrBmg855oW2fomdxtjhiEkohpuaDsMYpxGPUnw8U=;
	b=D7dPc3eICBo9J3dzRoASgPe2I+gKZx1oSLNuIwV8Rl7IBaoWzZx5TC5iiV2o+zxcfG
	gA+9OcMY5QlWXZgX8Uv3cOG5hUfIJIJuJ9tRDzTmemFF3asI2fHQCKUwbUIZg0gbwV2r
	Y9eCSk30x7JS/8dxY2SeG6iOFYAgQxoAHi5wJyHYxGcd4cJeDfkik9u5hajXZ2oAAv73
	TSQojzrhVRfPYDRBzvZ3YgySpBSMqrtc1cektIwyo45Izdo/stkSdFy9h3Fgp3aAa7S3
	Nj4IAcFivr3xz6I8b7qo1AF1ItJl2jGiPsq1NqUnirZImHA8Y4r0gGXEE0YCJUpDYWw4
	TNTA==
X-Received: by 10.194.200.137 with SMTP id js9mr35291220wjc.90.1408289440396; 
	Sun, 17 Aug 2014 08:30:40 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id ub17sm6789904wib.8.2014.08.17.08.30.39
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 17 Aug 2014 08:30:39 -0700 (PDT)
Sender: Jens Rehsack <rehsack@gmail.com>
From: Jens Rehsack <rehsack@cpan.org>
Message-Id: <C8748801-9A92-46B5-9AED-EDCCC7A882C0@cpan.org>
Date: Sun, 17 Aug 2014 17:30:32 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: Layer for CPAN recipes
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
X-List-Received-Date: Sun, 17 Aug 2014 15:30:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

during some project we're developed an initial backend version for =
Packager::Utils.
This layer is available via https://github.com/rehsack/meta-cpan

It's very basic - but if it helps someone (or there is a perl module =
which would help other projects I should add), I'm happy to help out.
But no private requests please - via list cc'ing me is fine.

Cheers
--=20
Jens Rehsack
pkgsrc, Perl5
rehsack@cpan.org
cpanid: REHSACK





