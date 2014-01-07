Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B8BDE006CA
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 11:04:11 -0800 (PST)
Received: by mail-vb0-f45.google.com with SMTP id i12so424189vbh.32
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 11:04:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=2/fmauZky6ySVeNnLLDnhMROQNAUBHDsfMECJlV6YpQ=;
	b=cU24AYHyG17nRDRDlKAJpz844SobOEFCB6AUpVWaSVg7BwH0lsns87vthnUh8ARPY6
	UoCxTG+OnfhiB040sB2JPk4eJ/AORvum2+vmVpZzC7nrcX632vYdMK0eXotO+oI1woyj
	qva1XC0GnZNoTDuDrwmQhhaABvoCDBJnfVpe5ZjMbDwzo3n2PPQ4Rgdy6DoWTIYZC4u9
	66r5cOOiiecDrbYD2LU6SYSYiIGdX8syOa9/m5maXoHO51vW2bor+MH3bT94/YeF7lG9
	2YxC/7t+H9PyMqHUpFJK2TXoidJLIghazmNGH3m444SwJEdDQGcq5iH+aonXUGm7d/rn
	cL/g==
X-Gm-Message-State: ALoCoQkq2N0OAm8H4qADJ299F+d8xG7aapQpCIyjXP32I4kgM2NpkvyYwzTCnZrRHuF/XT1pUNFr
MIME-Version: 1.0
X-Received: by 10.52.57.194 with SMTP id k2mr3674471vdq.41.1389121450895; Tue,
	07 Jan 2014 11:04:10 -0800 (PST)
Received: by 10.52.164.142 with HTTP; Tue, 7 Jan 2014 11:04:10 -0800 (PST)
Date: Tue, 7 Jan 2014 19:04:10 +0000
Message-ID: <CAPhnLPCQXXwWjY2qaJvYETDg3_BqAtOOJd+bphUMt4vS13imoA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build soon available
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
X-List-Received-Date: Tue, 07 Jan 2014 19:04:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

The latest weekly will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20140107-1

Please begin your QA processes

bitbake f594cb9f5a18dd0ab2342f96ffc6dba697b35f65
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler c73c6e4510c42601854f3c542ca6e14b4510380c
meta-fsl-arm 5ede821064bfe6b94500a113c05d03d15c63af5e
meta-fsl-ppc 035687a8e3a9a9d1576b33142f3c5817ef1161c0
meta-intel 11fc51c05f378b7fef2f5879e8e1f11d7046e85b
meta-minnow 6a4f0dd875a5ec0303ab4387944dc7eb98508769
meta-qt3 4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore 1028ac813fa9803ebfff6bcfa7f8b67012609b27
poky e93a345fae7c21652547bec501fcb1f3b6c6427d

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

