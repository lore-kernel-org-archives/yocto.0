Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5317E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 17:24:30 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id x10so1097632pdj.15
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 17:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=UAWmi7VXftceNnlruHmdzy8PJW8nWNT1eXcuVw5HI0w=;
	b=BaWp3UgJGbCAfB7Zm/AeGy/fMq+9XLJf0bRlFCOpjFyl1HbndeNq2LkBWCDJaUbDvh
	SRJzjuAAjfSODt/8aFILPPc2jyOhjNUk9LPrk/4kPVFBe+BH/VbKgyUvU5CGkE+T9F31
	dVzaQgIoK4D0sW0thXd3ZpyPMIRDAzfRmoLyVQ+hs2HqcGK42OTaQ9lAmHV7awAJCtlP
	wnB1lY7JLEzE0CTq8vqwYMr5wPRUFS+DE962I3LEAlfQsWYlPUa6tyYepYLiQmsbFoEM
	lyBVSHM+RBTQSIyMhvXMGCgkkc0+3EWLuWdXlRYMB1CDMiP95VyHZlxHlA2J4E1Lj25m
	BB4Q==
X-Received: by 10.68.162.36 with SMTP id xx4mr4762105pbb.47.1377044669849;
	Tue, 20 Aug 2013 17:24:29 -0700 (PDT)
Received: from [192.168.1.105] ([94.205.106.26])
	by mx.google.com with ESMTPSA id pq1sm4655034pbb.26.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 17:24:28 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <6AEB2375-D87A-413D-878C-EF46956B7D53@gmail.com>
Date: Wed, 21 Aug 2013 04:24:24 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.0 \(1793.4\))
X-Mailer: Apple Mail (2.1793.4)
Subject: Recipe for building an Ubuntu-12.04 root filesystem
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
X-List-Received-Date: Wed, 21 Aug 2013 00:24:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,
     Does anyone know how to create a recipe for building an =
Ubuntu-12.04 root filesystem image?

The Ubuntu and Linaro websites don=92t document how the actual binary =
*.deb packages were created, the just document the process of assembling =
a rootfs from deb binary package feeds.

I=92m aware that Yocto/OpenEmbedded can be used to generate *.deb =
packages, but what isn=92t clear to me is how one can go about =
assembling a basic Ubuntu rootfs image that will boot into the Ubuntu =
Unity interface.

Best regards,

Elvis Dowson=

