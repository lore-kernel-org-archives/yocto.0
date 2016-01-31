Return-Path: <cwerther3@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE9F8E00BB7; Sun, 31 Jan 2016 06:40:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cwerther3[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EDA0E00B99
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 06:40:36 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id p187so74800509oia.2
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 06:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:mime-version:subject
	:message-id:date:to;
	bh=72lWyP26LI2G7+l7i9r1hkGaMJcsVsHoIqHp1o/qWzc=;
	b=MtScvSU3tvximxot+dtlCZQJ80aNOcaAqxMPT3yjlNJdHDpXHo8TclLKNEPy9BCbbh
	CbQAOYQQ0WGz5gvp+VStfH1YxFd7TrLwnSq8cXyIRMA6nhMEXPZXt6GrIK9+X/ttwyQb
	zP+1EHU2YQVPEC5yWv7gaPxEmTbcivgI98bXWvbOQDrqjfq5R41Dt03BmqrLKZkPQWjG
	7h22ADiCrqdFvrr8k90S2AXgUUWg4uex/LgBFAhgKOBVJh/cd4jhmSUm5dRViO8vMTSg
	K7xZKUIffB2K8T31OTZx0l654BO90+9WAFQ4vrAxFEBaKneM4zzdj7rPsrR1fTxcfguy
	HmpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:content-transfer-encoding
	:mime-version:subject:message-id:date:to;
	bh=72lWyP26LI2G7+l7i9r1hkGaMJcsVsHoIqHp1o/qWzc=;
	b=YlLaozsiUO03BEkILADKyYb6f4CQF3v3BrRZZi8d8FILR+W/eeeOCjuO4+SDtJPfGz
	S8sPo1nWyhZRIBv0fRYp2UBSR3YFxX7LPBbBPU7zPVowqLrb+yUvOB9M4HLhBNrRat/N
	wgXUVhIfW4UzpTarqdNn35nsNb7hG4eVWrjgFpeKe9kM1HCX5Ofn44Fm6MAaC8a3AhGD
	WhJenIearnlCFZOciCI/Uoafrm+HNUpWsZOFlvo0d2y9PhipozWYrLXVlC6FiS7i70zv
	GCgSZ4PFHjJcQwSqTgUHdQ6VR90S/5cvRWbJ7lUD2qMNvTjXyAkAM89mZwkP5M6VGJbA
	kEiQ==
X-Gm-Message-State: AG10YOSq60dhIZHzrCHeO40OkYazdohNP2QGSzewQWMLiwKVPADTYtWfVa/HQixeaWW4GA==
X-Received: by 10.202.107.205 with SMTP id g196mr13406942oic.129.1454251235814;
	Sun, 31 Jan 2016 06:40:35 -0800 (PST)
Received: from [192.168.1.160] ([74.80.32.22])
	by smtp.gmail.com with ESMTPSA id
	o8sm11424093obm.28.2016.01.31.06.40.35 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 31 Jan 2016 06:40:35 -0800 (PST)
From: Charles Werther <cwerther3@gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <CB3ACCA3-85C3-4B05-B11D-929B9E737A0A@gmail.com>
Date: Sun, 31 Jan 2016 08:40:34 -0600
To: yocto@yoctoproject.org
X-Mailer: iPhone Mail (13C75)
Subject: Image SDK Generation With QT5
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
X-List-Received-Date: Sun, 31 Jan 2016 14:40:39 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

All,

I've created an image for the Raspberry Pi 2 which includes Qt5 and the Wiri=
ngPi library and it runs great on the device. However, when I run the comman=
d 'bitbake myQtImage -c populate_sdk' I get the Pi sysroot with everything i=
n it but I don't get the x86-64 qmake I need to cross compile on my desktop.=
 When I run meta-toolchain-qt5 I get the x86-64 qmake I want but the wiringP=
i library isn't included in the Pi sysroot.  What do I need to do to generat=
e an SDK that includes both the wiringPi library in the Pi sysroot and the x=
86-64 qmake?

Thanks,
Charles=

