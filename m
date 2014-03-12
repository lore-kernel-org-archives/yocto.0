Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F4CAE00792
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 21:07:59 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ij19so9279264vcb.10
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 21:07:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=zh7osDQRY90Qhkrib246GV5SaW7zmYnm1nPcKLYfZ7M=;
	b=hEFY3qC431liz14lgSluyB2QItVdDrCFJxZU4zvaJFtnHNXo7tVNXjkeoWC5gC4urm
	lR1aJ2Js/FEMcxFwhEKa2y0jUCKzVabyhV7QsJllC2qRrkT1SACmfm+HfTRKSneZdFzw
	FQ+v2VFTcTQcpsy6fXjdzvB4azRubz5i5Rbxj/3YP4T7aaDicyxHOyB/lDn9LWZHKCYC
	jqvPC6TB+BbI1ARoXPOjeirB8Gty0XHuO+qz5H/K6n0gHh7e6bLvuS8c8rX/8FaWvOrH
	wiwCpoP3lM79OT+nYRBEZS+q7rxmUQpIk93fKc+EShHP4ZIZf0jcuFCyia2EUyTNmM1Z
	a06Q==
X-Gm-Message-State: ALoCoQlhDG4HZg9F6VPat9MqO1KCGfh5KAGR31mvfGNyqijiemQ7bjGruv6D7OyuX2UczmaORtOP
MIME-Version: 1.0
X-Received: by 10.58.200.168 with SMTP id jt8mr42780vec.30.1394597278647; Tue,
	11 Mar 2014 21:07:58 -0700 (PDT)
Received: by 10.52.76.201 with HTTP; Tue, 11 Mar 2014 21:07:58 -0700 (PDT)
Date: Tue, 11 Mar 2014 21:07:58 -0700
Message-ID: <CAPhnLPC3C6jQz6EkZZX=AtTjUoB8T_GG-YK5sZT6dYt4mR1ijA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.6_M4.rc1 availabe for QA soon
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
X-List-Received-Date: Wed, 12 Mar 2014 04:08:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

The first release candidate for 1.6_M4 will be available
in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20140312-1

bitbake a53c8d1f846d94082aa459996c4114f10970b8ef
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm 730108d2317999c9b7bca6f1c2b73c0c625468c1
meta-fsl-ppc 290a669e5480792836d4f7769ba2ef6f49799323
meta-intel a5b790da02f657bae8f32d817fc391e2c67fd3a9
meta-minnow 32e4d6f17917027c3babe1ab738480de9691024d
meta-qt3 0fd2469d05181520e0a0c1603968f8201bca2f29
oecore a3ccbdffc04d16ae56699314dbd7ee8b6de75267
poky 1960f6b2ecbb793b40ebc9aed25c8f9cb7884c9a

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

