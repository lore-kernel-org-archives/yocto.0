Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by mx.groups.io with SMTP id smtpd.web09.9590.1617976418220370452
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Apr 2021 06:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=kbOHWkYu;
 spf=pass (domain: gmx.de, ip: 212.227.17.21, mailfrom: juergen.landwehr@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1617976416;
	bh=9llIqQob+eMPS53yhzbr4deBUTr6rQgQWi0trWRm9cs=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=kbOHWkYustTrOpPSRwHVi1Q6kAsC9fCcChuR+qJy063VkUUcX+Cssw8igTibh/Tsb
	 vKle7i9a/zJyP074/5bj6txfSawHaN3p/kkR7SrUcAEbb1jCUgzzftbv2FIUf21fB/
	 V5FeJGLbJLPYAmdGuiP4LWi8nXOY0KDXhTx0DRr8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [46.223.148.168] ([46.223.148.168]) by web-mail.gmx.net
 (3c-app-gmx-bap62.server.lan [172.19.172.132]) (via HTTP); Fri, 9 Apr 2021
 15:53:35 +0200
MIME-Version: 1.0
Message-ID: <trinity-ee96bdd6-9e22-468a-b5a7-f4909bb2b709-1617976415845@3c-app-gmx-bap62>
From: juergen.landwehr@gmx.de
To: yocto@lists.yoctoproject.org
Cc: alexander.kanavin@daimler.com, raj.khem@gmail.com
Subject: #golang: go fetches dependencies in compile phase
Date: Fri, 9 Apr 2021 15:53:35 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:Wei6Nl0vbN6TdpPsmdMLn6R/a9DWJ4LUFPfgoIcRxbeE8vuuaqM82P+qmrNtyUvOPgTgr
 kr0Q5UmCXBk9V6yhUVY/huvLt9BrIFhL4c1ppnfPzAOLmqPcpHKxzkwhI3SmZ+N4UWfQg3fvglqG
 ofnAd9AJM9SZREB3He5ACWLgps/BpY04QeeqNBM8fPvhpW/DqctbzXGv3//sITEoGU2Js6vr1iFg
 FpBFY8q17H9D1WHv87RHyqZLgTIwRWkrX9LlURqr/jEgVi5BXPr7pMiCfjj/nPrbXUSvgCkRmJ3y
 MM=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HWCd9PujLO4=:JkGLxBQ2GY1ndIO0CzS8ZK
 pC2WC3CIf/DnSW7GtyWGSF4qWp9nOzmOg3oU64dkKk9FXORRCVo+n7RFpO5XYAtGXsywlGJkT
 4rBTndk8jKAIOUsxpZjzBdXhGrZ9z8lYm2olzDGIFbwvtxVgxstKVmiygdosa+WhGJ84QQ5HN
 pd/gdbf4/G+C/YuWvEbUYuUxYtSFfp6zTqhSuyn9CMY/MTBOFYulNB8v//hSTObDUaZXGfafQ
 GmpHTBC3hXyJcYjKa60hrAmZhYk4tvq7XJdcfw4Zv224AV3pOhgX7Tc7kzo2ouJJQkiQ0+Auw
 cd5Oyr0iA+Rqf95mj79YXwinBQWidaWFm9i8H79NKTF1bmJBwqom5sFuUSy6DQDerVEW9Q2v2
 anPTW8abFbvorg+mUcET4AGz4YPlJ4xm1E/RnEDknQ05x+ZwurBlxU5I9RUohaN1ibvSdbYxx
 SJ+W85rkql+IyEn63/xVnWPmRhrIqOBS8VSsxa98fCLs6hD4DJGUr/98PU2/HUDllQAdgizlE
 6nrlG16fv/6ATupYbm5iC0uDS+eZkSa8Zn3czvfYxef5xBe3Nj1N++LrJoy1Ob94sZrVV7DBc
 peX6aF7impOQi0q5lAXHi421ufnliFKIrAx1++R9iSPiOUWEOozMMbsBdXa9r4UXPcShbzwGT
 daSo03dpwke/CbfLwKExT+IPIyoinjgxuaf6LhcY2+Olfo7lxurOyrxLos3bGwjsk+nrdpxMF
 kKZWbMXn0Z3I/GPUQp9yxGX4QEjnno3c4TiqLgP68tyD07M/f+FaNWEFvzRfouwuXB4IpZdX0
 4JCw763PP4ehnboRNckSxKtzNz9EjijIVweu4J2/e8BirDBD0VZeyfsuW0rsA1l7RCY5CmK1q
 IWhZyAH9PzxqocAyOMkJkGHXalRzgixZh4xEyPuQzXYZyo3Yrl8t50+4Z3Uet+hGNBeS+11s9
 Jsu2b/gsk9Q==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi,</div>

<div>&nbsp;</div>

<div>we are developing an application in go and use the &quot;go-mod&quot; bb-class from poky. This works fine.</div>

<div>&nbsp;</div>

<div>However, the problem is, that the dependencies in go.mod are now fetched in the compile phase and not in the fetch phase.</div>

<div>&nbsp;</div>

<div>This is not allowed in our project setup and kind of contradicts the Yocto paradigmn of having a fetch and a compile phase.</div>

<div>&nbsp;</div>

<div>Is there a way to avoid this or some other solution that we could use?</div>

<div>&nbsp;</div>

<div>Thanks,</div>

<div>&nbsp;</div>

<div>J&uuml;rgen</div></div></body></html>
