Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B5C8E013BB
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 05:15:18 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so7181260pbb.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=cPGAd6e3AldipdjiwL83sVD3uduHjNOOFSMdYRcTBIM=;
	b=JPE1JuPnuyAEyMBxFy3vEAeXV5RO+ky47jhYeLdgS35ic6cDyvBNcvf7ptb9BhIHeE
	Rb/wTodZHc13QrmrFPHXrKwy6esRuinXOOY+nCKsSDr+nm/0JiHuvuRuqGq5aR1KyMYp
	Pgdqj6udcU8/JCfc1KWJjKMBCAcM3qL38JwgDs1D2magFnOhO5KtWsJCc6FPHZJqzfR0
	LUiVr3dmJdeJ51/lBWBuli6ytD1ONgqpiKQTQoiP2kbOSfPbR87S057DwHMgdAyQ856c
	riqRmel433aq2HxQJoFtM628z6GIQapfEGM/dLUiNvTKssLC9Yq6P1BF/pbm9pU/4kvm
	IA4Q==
Received: by 10.68.200.98 with SMTP id jr2mr26227039pbc.81.1345378517833;
	Sun, 19 Aug 2012 05:15:17 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id oc2sm8897208pbb.69.2012.08.19.05.15.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 19 Aug 2012 05:15:17 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 19 Aug 2012 16:15:11 +0400
Message-Id: <0F31BD17-B08A-4D0A-8807-8A2B2F21BE00@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Distributing yocto builds onto an Ubuntu 12.04 LTS cluster
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
X-List-Received-Date: Sun, 19 Aug 2012 12:15:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      Has anyone been able to successfully distribute yocto builds onto =
an Ubuntu 12.04 LTS cluster?=20

Best regards,

Elvis Dowson=

