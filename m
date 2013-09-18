Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EADEFE015B8
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 15:31:51 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id h10so5660957vbh.20
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 15:31:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=kccE1q57YvmpoqbljRMFSTfqokH0hYzC2EqMjOXvH/Y=;
	b=EhsIYYUK2XMtiIbadnqfas7Km/ZUdRI9fK2sNLsF6vZmM+oiUZSh1YvUiEsIoQCdSE
	etnOQKzsI0IFRN8V326og8uKy6yVCVp55649i0t0Xw6Z5uttV86rEbPo47wltvMneu9/
	UqgMYfjOaKb9bshI2ja5R3UNUNRfViOl1stJbgLf8uwenrFj1nJsYekEh5fTZT9riaBl
	KSdWIOGQsVrWjED4WpKg3mjLoT+eVdrVba83s7DqxVGMQgtC8LppIloOASWOhAG+7L/E
	ziKVNzSFQMVw9FEwkNWPD55yawnaXjRKf2Alkdphot1gsRpgwgBsK9qZ3aFp413qTAYV
	p/Lw==
X-Gm-Message-State: ALoCoQmAXZv+19476DT2kQfQ1hTzbzwU120YcPVkmjQTFimpLxf0EnbB7qefAcFaThlnV5IDBCWB
MIME-Version: 1.0
X-Received: by 10.58.67.9 with SMTP id j9mr26706622vet.3.1379543511092; Wed,
	18 Sep 2013 15:31:51 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Wed, 18 Sep 2013 15:31:51 -0700 (PDT)
Date: Wed, 18 Sep 2013 15:31:51 -0700
Message-ID: <CAPhnLPBuUPybJqvuDVou_bJqXpdVQaV4aUXPQcBO1DBbW5=s0w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] 1.5_M4 released
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
X-List-Received-Date: Wed, 18 Sep 2013 22:31:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

The latest milestone release of the Yocto Project's upcoming 1.5 release is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m4/poky-1.5_M4.tar.bz2

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

--------------------
yocto-1.5_M4 Errata
--------------------

Release Name: poky-1.5_M4
Branch:  master
Tag:  1.5_M4
Hash:  63a5d00bc01b2ec475dc3bcfe5720e76436fdac3
md5: 1e85c342788ab2308ddae625bf00b2f5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m4/poky-1.5_M4.tar.bz2

Release Name: eclipse-poky-kepler-1.5_M4
Branch:  master
Tag:  1.5_M4
Hash:  0cf5246b85ff3e7b08cd2d851ce9fd942acd7ef7
md5: 4059d198768f9f8dc9372dc1c54bc3c3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m4/eclipse-poky-kepler-1.5_M4.tar.bz2

Release Name: eclipse-poky-juno-1.5_M4
Branch:  master
Tag:  1.5_M4
Hash:  cae2ba2cfce2da152581e7e987ae1850c8883181
md5: 4059d198768f9f8dc9372dc1c54bc3c3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m4/eclipse-poky-juno-1.5_M4.tar.bz2

Release Name: meta-qt3-1.5_M4
Branch:  master
Tag:  1.5_M4
Hash:  ea02e2867783dca5e7768d6712b3ff3287788139
md5: 4a8d5475c9fd619092405aeaed92e959
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m4/meta-qt3-1.5_M4.tar.bz2

Release Name: meta-intel-1.5_M4
Branch:  master
Tag:  1.5_M4
Hash:  f01b89cf6c0560845f08d4a11fb2654b8da27183
md5: 87aa6f3b185dfdd18441d2ad541fcd69
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m4/meta-intel-1.5_M4.tar.bz2

