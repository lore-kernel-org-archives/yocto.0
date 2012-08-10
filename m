Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 478CDE013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 21:29:28 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so1445426yhf.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 21:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=E+JzW56WDIrdLKiXEkGwUaRBeyVPsPI3c1gd3JofpIw=;
	b=Xo5H270AoWmlUvzJDH1GwFXS4/dT1CUN0hPSD1DRl9ZtrP03YuXPXxpPhvTRLilNwL
	ZKtAhmA/Htfb9OmeDgehjVHXtMto1kXpWEncjeK4Wv/V+v0JyzojxfP/t+ZkLGXXnPwG
	NJ90z64TTxbdZ3f/+v731BxD46mG61g4JUdPOugLcS9yFR3eBUqwkzPH0wkojhcqE3cH
	K4I5uMu8V0tZjkFzrBhYbGPHxJzeM6AJnqLFZCAHt/dBUb8HNtcP0FX5d3lDfQ5ygvkU
	de/Lj3AMbezvjA2kqva8Qt23SmMX+YBNyCYiT2zG+xzR54+HHFPrYKAakUO3SR+CConG
	uk5w==
Received: by 10.66.87.132 with SMTP id ay4mr3150272pab.82.1344572967397;
	Thu, 09 Aug 2012 21:29:27 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id tq4sm2510528pbc.11.2012.08.09.21.29.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 21:29:26 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 10 Aug 2012 08:29:22 +0400
Message-Id: <55C0D8D6-DA3A-422A-81E6-E1E8C21E4690@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Running gcc test suites for current machine configuration architecture (e.g. powerpc), from within yocto
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
X-List-Received-Date: Fri, 10 Aug 2012 04:29:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      Is there a way to run the gcc test suites for the current machine =
configuration architecture (e.g. powerpc), from within yocto?

Elvis Dowson=

