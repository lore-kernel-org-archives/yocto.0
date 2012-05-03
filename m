Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A02DE013B7
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 23:02:02 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1127281wgb.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 23:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version:x-mailer;
	bh=RGMpGD4/grFO5ThmyDRuezKi0eTonwEDQT6fc6eDxRs=;
	b=kOKwKxIkkm3D6fnP2EppOfvASyl0dHzJcKaga3AO+LKe3h7/irpkC+HVgKP0eoug6h
	2Xe3Tn8XBJup97cCzZbMsfGP1iaziRtkKOGvnJSHrHg/LNX0nM4obYUZPBVxsdTjQ4Xx
	Seyo5daNpYp2gMJbQb2Os3d+Rk1HDT+7SwY27SzOI+JQVlt+eGhSJL/wYON+FVJYPb+5
	1fIgJNY+lOXdGjc6SSmYg3r+Eph5cV4W2U3mJJPXEwoQeCZhQmcmgj5wT3en3rTvbeCZ
	ngu+WpQl/VcnSzxZNawXBrqJeufLaltKJa/PFhAhtOWZdg6khcRtDn81S8IeFFAH6zyQ
	5WUw==
Received: by 10.180.83.38 with SMTP id n6mr214721wiy.1.1336024921395;
	Wed, 02 May 2012 23:02:01 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id w10sm55828wiy.3.2012.05.02.23.01.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 May 2012 23:02:00 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 08:01:58 +0200
Message-Id: <FD311A9D-4B4D-479A-BEC6-10C37BF6AF47@gmail.com>
To: =?iso-8859-1?Q?Andreas_M=FCller?= <schnitzeltony@googlemail.de>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: meta-gumstix.git layer dependencies
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
X-List-Received-Date: Thu, 03 May 2012 06:02:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Andreas,
                     I was just taking a look at your meta-gumstix.git =
repository, and it mentions that it depends upon

git://git.openembedded.org/openembedded-core
git://git.angstrom-distribution.org/meta-texasinstruments

Isn't openembedded-core shared with yocto's poky? If so, do I really =
need to add openembedded-core to my bblayers.conf file?

Also there is a meta-ti.git repository for texas instruments on the =
yocto website: git://git.yoctoproject.org/meta-ti

Should one use the meta-ti or the meta-texasinstruments layer?

Best regards,

Elvis Dowson=

