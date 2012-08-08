Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDBF8E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:20:27 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2172472pbb.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 11:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=ed8hbehKhLtMrOolRIkws+Qf4Xna+3iUjeuLtgYYJsU=;
	b=am8EZTVlPacVcpPWT+ZNEEqeGrKUK0yy6NUozmOAq/bpaWo2wWpPU/YdRuyQJm8vAl
	HMN3mFWUyOpX4dTDyRP2+qR1T90ivKfhx/c5UnSy8tdMc5ErylGPoTQbocA9/fe6tqjw
	aJwZQUtxjx8pI603BkA/OUTJdaDDqeKyOOmzJGCyb+catjWYpny4U3riSMyGqjHMa+RE
	xakV8T7+YxW2X8zr5dL8Du124j5FIxdW8h1jvxFhX4mxLJa/8dCYoC1D03k/cN2tH6aE
	3p4Fw7wK0MiaRVzvv/lkEFUT/hhdlZ9cNXZSnyz0J7++7BlRvQr30kPk1qXVMqNMccoc
	0NoA==
Received: by 10.68.229.73 with SMTP id so9mr6201659pbc.66.1344450027520;
	Wed, 08 Aug 2012 11:20:27 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nr2sm4345419pbc.48.2012.08.08.11.20.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Aug 2012 11:20:26 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 8 Aug 2012 22:20:22 +0400
Message-Id: <22F5AB9F-5063-4443-97B6-B88EA9DAE877@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Maintenance on older branches, e.g. bernard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Aug 2012 18:20:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       I just noticed that if one were to try switching to an older poky =
branch, say bernard, there are a few errors:

e.g. meta-yocto layer doesn't have a conf folder.=20

Also if you use one of the tags, e.g. bernard-5.0, bernard-5.0.1, =
bernard-5.0.2, you can run into build failures.

I think at the very least, one should be able to build successfully off =
one of the older branches, and perhaps it should be part of the regular =
regression tests?

I'm just going to try to revert to bernard branch, temporarily, to see =
if my root filesystem dynamic linker issues for my powerpc440 target =
goes away with gcc-4.5.1.

Best regards,

Elvis Dowson=

