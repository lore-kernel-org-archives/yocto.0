Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4E04E00559; Tue, 29 Jul 2014 23:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F23FFE003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 23:41:48 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id le20so1133122vcb.0
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 23:41:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=h9lvh51f1poXDYuBOlx6u2CQ0ZNtu/VMafWGHtBMKPU=;
	b=Tsqwu3Qia7FHtXkzwlwia4wPUnEbE4gyqRUSmH8hC7ooBSUXKyopbkT/docV4BlYED
	rY3o/vhTgZoNyOEgksrvGxLO4z6zQ0t0U1Ul+ADScGYRQhRGN1zRN2nH9iwuV0zZD2Ki
	Mq20zVL/oAYzYA5qaCi9w0qpDz3CF37R362ZCFR3RdsyMWV0ro6u8r2Q5Qrnb6fCaWBl
	2MYTT7r29wTSUNP6UnJc9MmK3ch++AwzUMIsm6W5/lKvrPr3SDgDB8OIcOlsGj32RGki
	EAiHeY3dcHBheL/THNvuPznyXIn1kgsu1W8/wmlNF8UZOevWlHOa/QNhdnm1kOucSfhQ
	ccsA==
X-Gm-Message-State: ALoCoQlkXELOZReA2GXWSAfDUdX4vVKlYICYsr0YBaNnFejEAYSqWf/sS/OSo8yyiEr/ljPsIVO4
MIME-Version: 1.0
X-Received: by 10.52.244.138 with SMTP id xg10mr5567088vdc.40.1406702507312;
	Tue, 29 Jul 2014 23:41:47 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Tue, 29 Jul 2014 23:41:47 -0700 (PDT)
Date: Wed, 30 Jul 2014 07:41:47 +0100
Message-ID: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Yocto 1.7_M2 release candidate 1 ready for QA
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
X-List-Received-Date: Wed, 30 Jul 2014 06:41:49 -0000
Content-Type: text/plain; charset=UTF-8

Full green build!

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1

bitbake 4aaf56bfbad4aa626be8a2f7a5f70834c3311dd3
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm 6ef8db67df3436a463851ff95dcfb6a66132f3c0
meta-fsl-ppc 5efa2d27dcf4637b008faf782b5e257b748b24c0
meta-intel 67b7f6f3a03ddbdcf66823eb5a236edbc0aa4858
meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 7986adeac16550b33f65fded39a55f668e0e543f
poky 2d1660112e54653f7bb763939d0416472c49fe01


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

