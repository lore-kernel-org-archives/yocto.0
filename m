Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA33E0053A
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 07:11:41 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id hv10so4895399vcb.36
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 07:11:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=0V8DgHQGyJcnS5OSQdw2S1hyZ1y4ygTZ72PFbBSvHFs=;
	b=ikPmAQbYqiwn1jvCyuNMSdB0L4WTpoNlFlV6YuStxNe4kTYAdpmNUxx8psWigCiOcU
	ewWQqD8PosInfbZ9w6xfU63HENmY8Vqu7DRK6cwixM5NF30Vkdu6q3upK8duMWgYiYcg
	l4bUnl3pr8Onb/lUkaRf+yytj/NW3TEFPHnxi3qmJkFlhlumBXKDpV3Kr1kzAi3/0o2i
	WCGIis1nDg+T8bVAAgmxMz+PrZYL6/GEnQxvKJH5pZwNBfYYn/mZfgj7/k9qxjR7ze1Q
	QE9TtBelSrq06z3J5c6RoAbkX0pMFNW8RDXoU3c8gYGQylVkN+OFgw/+E6/d5JKSlm1M
	5/Cw==
X-Gm-Message-State: ALoCoQnX6OhTzO0W+3Jd83D2kiVvpedpu42AhIs1/6LP1GGvtejem3tpK8P1wzu4iLzzyAQl34Zc
MIME-Version: 1.0
X-Received: by 10.220.145.75 with SMTP id c11mr808130vcv.30.1385565099889;
	Wed, 27 Nov 2013 07:11:39 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 27 Nov 2013 07:11:39 -0800 (PST)
Date: Wed, 27 Nov 2013 15:11:39 +0000
Message-ID: <CAPhnLPBfePCSFK8ptNDRh8vT2_4LdSzYU4vNfcB0ZiPCz92R_g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly Build Available
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
X-List-Received-Date: Wed, 27 Nov 2013 15:11:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is about the be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20131127-1

Please begin scheduled testing.

bitbake 347b2ead091f00ee60703f6f3d17cfdd9075ac07
eclipse-poky-juno e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9
eclipse-poky-kepler 3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82
meta-fsl-arm 987115d6d099a5e87d9d5b3c4e6567a5e6309fd0
meta-fsl-ppc 768c6ef13546e0f977847bc1fbb5957571fbf724
meta-intel a649e92498d234f2d0d52f3da5a85bdc87296c23
meta-minnow 91cff9475081a5625c1c0bb49c17c6f3130ec503
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
oecore f991d2d60b74f5ebd990f77aecd3324b1a4533e9
poky 32adaac34a614d106e6dd3e9f1130f4e94ff39ae

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

