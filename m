Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4BD9E00717
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 05:54:00 -0700 (PDT)
Received: from mail-wi0-f176.google.com ([209.85.212.176])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 06 Sep 2012 05:53:59 -0700
Received: by wibhn17 with SMTP id hn17so5162110wib.11
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 05:53:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=DmcmlWOXsFCFL+ro2OPo55pWF/AC3+ZuiQexqOVqDm0=;
	b=IZUiSCiFd5jU2xxdcaIFnDukaGDRb9C97F4qhnRtsPVMvjabI/5cvl415pwFFaXxHB
	hn+q+KkEJ0SLNFZOiTETxHdcrUkJD5NZbuIAD6fMA+GUFqc+xn1TngM0i+H0PV1VmHt7
	p+yT6VfPO51cqj8Sksew4RjVu/OHNTuzQSUG/PHtoTJ24zJwbPBCLFYKaRX3l7PdOPRQ
	asJtXyRBD0vGClzejOM+IgDuoWRNrtLWj3P5zNN7J3/2QuOaQ25yju39n2Tn2GyQJxsW
	unRZait680ymp2fuDLGbxBSsQsOx2ne+p/Prtk9H4Wgkur8xVrljg7faCYBRt+9lJAux
	N/Pw==
Received: by 10.216.132.91 with SMTP id n69mr1079064wei.178.1346936037300;
	Thu, 06 Sep 2012 05:53:57 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id dw6sm4019213wib.5.2012.09.06.05.53.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Sep 2012 05:53:55 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 13:53:07 +0100
Message-Id: <1346935988-22808-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQkAJ/S2PoDLQNVi1smo8sWiXjjTwpxgpcXec5rnpnDdOp+ofedu6+ZhtLrcekI9t1UPEerN
Subject: beagleboard: change to xserver-xorg, not -lite
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
X-List-Received-Date: Thu, 06 Sep 2012 12:54:01 -0000

Coming up is a patch to change the meta-yocto-bsp beagleboard machine to use
xorg-xserver instead of xorg-xserver-lite.  The -lite variant was intended to be
GLX/DRI-free for systems which don't support GLX but the GLX module is packaged
separately so it's simple enough to just not install it.

Yi Zhao at Wind River has done a test run with this patch and found no
regressions.

