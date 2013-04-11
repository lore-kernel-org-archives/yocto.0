Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A507E0144A
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 13:42:13 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id cy12so1853185veb.32
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 13:42:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=ci9jKYOauqmal85k2Both+2W+aPd8P0g8pd474bDmso=;
	b=Rw7YOYzit8U3NTYJx+AiOBHa0mwigdrkebyfuEYsslrJBwg0/X+Ae0+Hd8BzSFR6TH
	siWY0Nh0rKnskYeZjLCGJO2MEzNZFga+ae4j7HRHzblsHEBrLNgqxb+5HhceUzWscCDQ
	0i/5mog8iVyp1cHNgpnuQ7cPes8E7jSOP4uZcOD9MR8+dd4aKox1ew+bQZ4ZkAv5Odn2
	oqXBoLxkNaXIHvhqLqTlOsLvAkQjAc1qQA/NuAlx5dbsN+MoFa6+Qz8jSjIq6Oc3cDQj
	Oi41KFxDEPXriHt/EjSqdXBbneXrFj2bzNvnLdVOztObxcFRAZ8d4p4XtMcdXmq/KSJ9
	Tp0A==
MIME-Version: 1.0
X-Received: by 10.58.205.179 with SMTP id lh19mr6289671vec.7.1365712933096;
	Thu, 11 Apr 2013 13:42:13 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Thu, 11 Apr 2013 13:42:12 -0700 (PDT)
Date: Thu, 11 Apr 2013 13:42:12 -0700
Message-ID: <CAPhnLPB1KJuXpARnU=PK=baamxK1fhG2LWhE4D=1yhSPn-f_mA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>, 
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
X-Gm-Message-State: ALoCoQkeVMyX3yGEpVbIaASTt9DmFZnhtAEsspdPhJDovEvk0pUEH5jTgI4Dz8cOHWGstcLpWdCW
Subject: 1.4_M6.rc1 respin now available
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
X-List-Received-Date: Thu, 11 Apr 2013 20:42:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

All green! Please begin QA on this build.

http://autobuilder.yoctoproject.org/pub/nightly/20130411-3

poky dylan dab237bc6a7679dfeaa981c14736aedc7b04ecb9
eclipse-poky dylan 46be27bd3400419e8325d753b85a76bfb1898944
meta-qt3 dylan
meta-intel dylan fd58fb07cf4fcc0553d0608f5688fc03e41ea15c
meta-fsl-arm dylan 5b8683ad04d63f0d5b2638cac245bff28468b634
meta-fsl-ppc dylan 053e33369633ca7cbbae29c6d3ac9de26a160a16 CheckOutLayers

I'll be pushing tags in a moment.

--
Elizabeth Flanagan
Yocto Project
Build and Release

