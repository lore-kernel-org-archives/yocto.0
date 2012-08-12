Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 315C2E0049A
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 05:34:37 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1773049lag.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 05:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8nOVGpLSBlukqiTa/QbNJwiStpVO9CUCy1rq7R1cNTU=;
	b=ior+MszrGYZDlsIfN4m2pSlUDf6O2WFYjUK+yyjUWwN+2MrizJjgf09BSkK9C2jA3n
	F2hLNFDAfVJCzSbIPVUcQL5GeZVMNFa43W4CaI5JVcIVWiVpoNFoZxZrJOmwn8NsDfab
	79rImCWjYUf6bEwZWZJVMa6nZDReVtwlcD0mbz4oCWxRAn85b7cSmFB0tTmpvzdbfEqa
	iN4Znkp+Jrh9pWXQO8Z7IO9TBXif3UNr1BewJbI4PeqQ4uWwMn9GHxzPtxigO6vvAH2W
	ISCLP1m+Q1lw7ALakve064qC6/4HRqXA4atUw0KA05GY/criDs7+w6lsCChcuUFNS/qW
	3OqA==
MIME-Version: 1.0
Received: by 10.112.23.7 with SMTP id i7mr4962432lbf.85.1344774876969; Sun, 12
	Aug 2012 05:34:36 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Sun, 12 Aug 2012 05:34:36 -0700 (PDT)
Date: Sun, 12 Aug 2012 08:34:36 -0400
Message-ID: <CAHUNapRfzWsj1ZzFTZr9-dGCUXbsy+uwvC=J_iC-VnX0dy6ntQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: layer.conf: "packages" directory
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
X-List-Received-Date: Sun, 12 Aug 2012 12:34:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

In the Yocto Project Development Manual, section 4.1.2 "Creating Your
Own Layer" it shows an example layer.conf file. In this example, right
before adding the recipes to BBFILES, appears the comment: "We have a
packages directory". The problem is, I can't find a directory named
"packages" anywhere. Is this a historical left-over? Are "packages"
and "recipes" synonymous in Yocto parlance?

Many other layer.conf files also contain this wording too:

meta/conf/layer.conf
meta-fsl-arm/conf/layer.conf
meta-hob/conf/layer.conf
meta-intel/meta-n450/conf/layer.conf
meta-intel/meta-emenlow/conf/layer.conf
meta-intel/meta-tlk/conf/layer.conf
meta-intel/conf/layer.conf
meta-skeleton/conf/layer.conf
meta-xilinx/conf/layer.conf
meta-yocto/conf/layer.conf
poky-extras/meta-kernel-dev/conf/layer.conf

and probably others as well.

Best regards,
    Trevor

