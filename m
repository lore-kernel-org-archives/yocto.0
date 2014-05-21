Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 177CFE00AFD; Tue, 20 May 2014 23:10:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 43947 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 May 2014 23:10:48 PDT
Received: from mail-vc0-f177.google.com (unknown [209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2427AE0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 23:10:48 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id if17so1904062vcb.36
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 23:10:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=sgRTdtQwfrnUGKpYQlrYHhnGwje99mzgau9KB150WaM=;
	b=PuggVOV2wWfS/4oDoJjbbxmGn0V7O7ByP4wubf/lTPX+PN8Li3wA7wwWKQgH83AgtA
	GjSBLDjwRurSuQqaPYeGwkLQVFxOpDfIkTJN1Njewnz4ThXjwD21xsbaBWU3AiF5Tj7C
	FA+9ml5ta/+Wz+3zXSTG0HIl2NZIHpXnkRHRrx7mJM8cOcp2HYoKy5rk/jRkMfcrOAIR
	/H/REznmC4MReDIiQ+jgQ7XaZp5yescTfhMdJtaJo7A2eA99Hccj453piPP6UvwWCZnH
	d6bAp3tGKgpXw4VyTx3Gh0jkpmhY+iGcEzbL8PWPTj3S/b2Yhl6YECcgQ5KyO9iTI273
	QP1Q==
X-Gm-Message-State: ALoCoQkODLS7ppsVeZ+UF5f2wykqPH5D9zr3YABJP1i0VXkGvY00YS6Pa3Pwf+7hRQiLvQqh5Sah
MIME-Version: 1.0
X-Received: by 10.58.112.8 with SMTP id im8mr6230273veb.35.1400652647755; Tue,
	20 May 2014 23:10:47 -0700 (PDT)
Received: by 10.52.243.73 with HTTP; Tue, 20 May 2014 23:10:47 -0700 (PDT)
Date: Tue, 20 May 2014 23:10:47 -0700
Message-ID: <CAPhnLPC1zcDhDq51msiME4zyQq3hBx=24m016XY8J4e7_q3uiw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build available
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
X-List-Received-Date: Wed, 21 May 2014 06:10:50 -0000
Content-Type: text/plain; charset=UTF-8

http://autobuilder.yoctoproject.org/pub/nightly/20140520-2

bitbake     ef2bf63e56b87e19d1a9059dd2d81a9a1a537254
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm     3336ef362109eef14f9e73cdededb43caefedb2f
meta-fsl-ppc     913fc371e9976cc95fc1b2ee2deb87efd13faafb
meta-intel     cb0f5fbd614ec6a9052539416734ca1ab26a1892
meta-minnow     7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
oecore     be0327b6a900be5434b6b1f08277faf2f65d5da8
poky     8293f564685d0f587ab63a107285625dc4f98f1c

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

