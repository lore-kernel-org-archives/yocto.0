Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4B85E00857
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 15:33:50 -0800 (PST)
Received: by mail-la0-f50.google.com with SMTP id ec20so2007980lab.37
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 15:33:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=OmstLmv1g3BydH55YDXKgDwZ1Bdrp8b3kNNexLjxsm4=;
	b=JyN4jUkbYjWEtNZjnnr40McvzrO6mhW4v70G3l0HP5WMucWhBy+l+0PpGxvgY3B+PD
	Uk0Hz7m6RO2XT2YbaSjWFz6kAisFivdij9KP92YoWQXjnjLJdn1ZQIcqNToHHjWx6Lor
	CoFg7A5txT1NaF1wJrMW0+yaRhBAYgZzuVMAC2a57v3KoviVcqrEXhl/GLGE64KNDGwr
	chVQS06A881FD94W6Ia3oT0sJH8+vRKelQLsfDNnywoTJMa/sEtbiOoumkm4dS3kwEGc
	Q477Y4Od1nd8OIT8FwlgpEWlYMLfoIEvOoqpsIotKmLs20YQdWpKpUY6hq+fOxvwj3br
	tV3A==
X-Gm-Message-State: ALoCoQkg+kamGWs1/0SJqcx7BUkc3jJnEqOz1PawqCq2BSTZtKWXPGJmBO1wh5WW8ntW4rng5MkU
MIME-Version: 1.0
X-Received: by 10.152.180.228 with SMTP id dr4mr6864627lac.32.1390520028572;
	Thu, 23 Jan 2014 15:33:48 -0800 (PST)
Received: by 10.152.4.70 with HTTP; Thu, 23 Jan 2014 15:33:48 -0800 (PST)
Date: Thu, 23 Jan 2014 23:33:48 +0000
Message-ID: <CAPhnLPBpVNwJ+7qtcTG55FfBiOYc7rv1tnYXDDETDCM5+RMnbg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: 1.6_M2.rc2 available soon.
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
X-List-Received-Date: Thu, 23 Jan 2014 23:33:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

1.6_M2.rc2 will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20140123-3

bitbake 8ef24f4c834298348172b96ec0b855bf09552b09
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler c73c6e4510c42601854f3c542ca6e14b4510380c
meta-fsl-arm 7629b77c63ad9e1ef0c928451626eaac4173d054
meta-fsl-ppc 1536064e02f15761e90f784d88f2a930784f7f3d
meta-intel d8c1d14f9e0a87a0b4357b8764a0df40cc22f789
meta-minnow 6a4f0dd875a5ec0303ab4387944dc7eb98508769
meta-qt3 4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore 24d5b449e5f4d91119f0d8e13c457618811aadfc
poky 1a9226f140f578f11696abf1a3c989fae1d4c14a


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

