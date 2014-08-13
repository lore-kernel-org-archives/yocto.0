Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC654E0079E; Wed, 13 Aug 2014 09:27:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 246A2E0079A
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 09:27:47 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id le20so15399402vcb.14
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 09:27:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=RF17+jBB8UKSm65G7Qq5kk5aAvOrGQYI9bMhGD1uHis=;
	b=STTZCGHdPDUmQu8gWCplxjo7soqaF4VE+nHV5vFspe1ENDOs/E1wIxA4MdMtJdw8FS
	zAfYXQ5tt24DC8kgWxlop/ghFSgA/pmWdiUbfBC89foso/AZUTpRRDwIaWmuBjTp8CZR
	27lCwzsMC+9jSYP0/z/d6kchHkhL1rUmEjEjEOPI5pXt+ayBKFlIsdCqqURwlEpI1DXc
	YJ7U5xc66pq3vjQ0AhM1EWl8XMqhjOPMVNb6bXZW+Y9vDXMz3x+SeW+zd79jjg4oSff2
	DVAJecKSzxmqhfLsVW/NFGTNUhsoZtuXXlzOsxk3cnBnEkH5uYPBrRPkR40rLPzHBLxU
	y3MA==
X-Gm-Message-State: ALoCoQnbpbzjrmdjGZypMf1HGRKS4qnCo7qzkzdIDRAQcKaH25R+E7iQGGhI4TM308+jVdpmr/RO
MIME-Version: 1.0
X-Received: by 10.220.166.207 with SMTP id n15mr1834169vcy.75.1407947266801;
	Wed, 13 Aug 2014 09:27:46 -0700 (PDT)
Received: by 10.52.255.168 with HTTP; Wed, 13 Aug 2014 09:27:46 -0700 (PDT)
Date: Wed, 13 Aug 2014 09:27:46 -0700
Message-ID: <CAPhnLPB1uCygoPk-=2k6xqgjoBhbn=b_xNfd6CqyZLrsWtf6oQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Aug 2014 16:27:55 -0000
Content-Type: text/plain; charset=UTF-8

http://autobuilder.yoctoproject.org/pub/nightly/20140811-2

bitbake 38d4f65bf1cbcdd5a2d60dff0e1d2859c34ed62e
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm b0cf5c78c5f98c5977ae556d331e7495648f154c
meta-fsl-ppc 06c140cb72406b6d88140ca1085c20352ba193d4
meta-intel 7d9471578801d571ceca9e54bbdf22cb84284ff9
meta-minnow 238a45e9da8bbfff7a6af220b48c11cabd31e01c
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 4321c553d5ae816e566234e981a0815bba046d39
poky 0f24d9c569db733b4f63803ee4a9c12ec1789791

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

