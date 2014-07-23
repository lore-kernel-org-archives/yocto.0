Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11A37E0074B; Tue, 22 Jul 2014 22:24:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C24C5E00572
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 22:24:23 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id hy10so1241671vcb.18
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 22:24:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=+RMIpy8Cy14hhpxPft1WCFPfX26GSomVw8IcYnv8dHc=;
	b=XN81TBRiZcentckAPLbXieT1UJ+z0A160OvAMkYrevYt46i/0OUk3gqTCuf85FF2do
	8etuXUzgSeMTlCW7wnfZWfLGODQijWD0+gPNf8yiD4nV67kwcqGgBErZxjFVniocX4pv
	5oAB1v0LgKopi+3FoyHaQP+JnY+SnVz4MKf1NwIgdhVP1iOyJz1g+i7NOBb9eMa+5c11
	teA1HqZGUgoGYkAWGt/V/RK9rBDZPwT05h/d2xNO15Z4nkIBLvpMvInWA5l8HUD2pZdG
	Gq3lhnW/OaFyhRl6LO2waU+F6AUF7w02ObvFHvVtIYtZwZEnS0o7nTfzLk3XA0rRv60W
	LrDQ==
X-Gm-Message-State: ALoCoQky4z9ol1t2mgdn4HRuvejEl77uE0hLcrEDcSQFoWja6sw6PzPI6jdHd0mUNcENdXKWIkOt
MIME-Version: 1.0
X-Received: by 10.52.138.209 with SMTP id qs17mr18288107vdb.80.1406093062775; 
	Tue, 22 Jul 2014 22:24:22 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Tue, 22 Jul 2014 22:24:22 -0700 (PDT)
Date: Wed, 23 Jul 2014 06:24:22 +0100
Message-ID: <CAPhnLPCu9Hy0WnppssxyeTcc50jJkv9ubveXF7HDkE9YRS9qGg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build now available
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
X-List-Received-Date: Wed, 23 Jul 2014 05:24:34 -0000
Content-Type: text/plain; charset=UTF-8

http://autobuilder.yoctoproject.org/pub/nightly/20140722-2 Unknown

bitbake 8fbffd25d42f1f2d9a85ae1d9cc4852e835730d4
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm d900d935e1f45a79c7116c4fd290baaa447a870d
meta-fsl-ppc 0772054526043a29b73345540174f2c344f9a353
meta-intel c249763d3cb92bd06742b7986f08cf844ddb1d51
meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 6bc3696d8451a23d743daf03ee98c4ba54ce4551
poky 8b7116d25ed6255a03895d835e5a0560858ab496


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

