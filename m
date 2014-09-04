Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 153ADE0079B; Wed,  3 Sep 2014 17:59:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08DAE004A0
	for <yocto@yoctoproject.org>; Wed,  3 Sep 2014 17:59:19 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id im17so9756169vcb.4
	for <yocto@yoctoproject.org>; Wed, 03 Sep 2014 17:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=q9LXowqoMUq5YHctYqBQoWH3mRMFqecMR+0H8grZr3w=;
	b=LELG2H3dP+zLa1JoMpRVP5T2xmssS/sPb/HAvNyzdM3Eh6SaK7OXQTNxsVwDsQDzRb
	IrSpNO/jJlAJ8X/NIFSkAa1TDCYmm0tAKe1smbWi5WibcxUBUbxnL794mjJcxbHW1q17
	ioNTlSY1C/q5opAU+vpC1GVuDMa8B8KlhIhvU+QbSLmlaYmVaK+btZ5wkqakPqDIBMuv
	ocLd4YoWFXprQFPOPAg7HQZ5JGUHiedOoODAzlNdf0nJp8g6dLxxptQ1qsTJwnmEH0jv
	HxmpPW4CSbg1EjbzzgZjqM4Ers0GFkdmazbHuuBhROuQl34Ih54fMCwNwyP6BFpt1u0A
	cBrQ==
X-Gm-Message-State: ALoCoQkcMVhJ268groxu+QkIcT31xfmwOdak/vs6RcZ3pui6fxEqccULy+WGyXvuLfysivq72QhR
MIME-Version: 1.0
X-Received: by 10.52.146.17 with SMTP id sy17mr582198vdb.29.1409792359133;
	Wed, 03 Sep 2014 17:59:19 -0700 (PDT)
Received: by 10.52.244.44 with HTTP; Wed, 3 Sep 2014 17:59:19 -0700 (PDT)
Date: Wed, 3 Sep 2014 17:59:19 -0700
Message-ID: <CAPhnLPBkEF+Y=OoyQS=Mmfck+X9pm4nnPwfM7bhENXgA=yzO_A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: Milestone release candidate now available (1.7_M3.rc1)
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
X-List-Received-Date: Thu, 04 Sep 2014 00:59:26 -0000
Content-Type: text/plain; charset=UTF-8

All green!

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M3.rc1

bitbake    8f5c1cdae1ee6ce04ae0d04d0b95bd80efbf7534
eclipse-poky-juno    26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler    4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm    a99370b1d84b357479eb8b82124bb346ac37de4c
meta-fsl-ppc    d953212ae5936a7d969d13801b0c2c1eb65cee6f
meta-intel    b89a7c533df4fa17d8c239e674b0af83253a65b6
meta-minnow    238a45e9da8bbfff7a6af220b48c11cabd31e01c
meta-qt3    3016129d90b7ac8517a5227d819f10ad417b5b45
oecore    e72aac2ae9e5fce1715fa04b7e94034fd06892d9
poky    a44006262cf3b810ec78b4cccd8076102a7a0f3e

Please begin QA as soon as possible.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

