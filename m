Return-Path: <kkl89@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 084B7E00D6E; Fri, 26 Jan 2018 12:40:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kkl89[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Jan 2018 12:40:11 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D75AE00D5F
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 12:40:11 -0800 (PST)
Received: from [87.171.74.217] ([87.171.74.217]) by
	3c-app-gmx-bs22.server.lan (via HTTP); Fri, 26 Jan 2018 21:35:07 +0100
MIME-Version: 1.0
Message-ID: <trinity-ce390c85-2a6d-4e8c-b53f-6563225bd803-1516998907686@3c-app-gmx-bs22>
From: "John Smith" <kkl89@gmx.de>
To: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 26 Jan 2018 21:35:07 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <8cf76e0f-e81b-d83e-c8cf-25e7d73549c6@gmail.com>
References: <trinity-6b2e8095-aa74-42f3-960c-b26c140fbc44-1516988853978@3c-app-gmx-bs56>
	<8cf76e0f-e81b-d83e-c8cf-25e7d73549c6@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:52cgsQmU8CuiWnt9Q7gdj4roRd0PsfO16KV39GY1x33
	yodtb501BFQT6cGWM8ey/qJ3ElpaXKTlmG2iudXaEJwsbWQMcy
	ZdziuFg1wbJ31Y/rNQ25mUDzL0M5Ww94qi2X4ftHmoSBTSev/p
	HnH3XinvrBmBaEPfncMFbuth8ZtLhqOiAVZ/Tf15OpvkvRPBCT
	dtwis7Tkn8mxCE/KVOFf/NnUlcOBolyHxr26GPCvVaLcQwqnHB
	/Mdat81LOjt61Cxn/+DhP0FCaOJg7KDK71F96lbi/PyyeF6Fvp O+AkkE=
X-UI-Out-Filterresults: notjunk:1;V01:K0:JGFyOPKm3/8=:eCX6LH8l89UXxglS0bati1
	aG0W9Th5YPRnuI4PQ1QsKGj7wxhcsWEODz+M/oBip8PQziKwG7j66GbAcCraE/uJm5HRneaci
	gHJmiKllaSHiEbTS5VgRIFEnrq86esFmzgH77NVBDFGMDAnZMNQz09rDvSLa/44NQCydoenFh
	IRfSRHtstrorNVc0QtDwgCQFWfvvkhExYnS8jWs5jB/5j8/7qW4vUqQFqnxz6KA0BJOrjQ+/b
	8Im3Gj41AFtwc8LPZCvvBjXW1AgNQMgBndsMMJnZPG6m3u97pWzNCjZhNQPhZItuqNKQ72MKW
	AMFchdXzCGU+AGXPqSFIrGj87kVi93v5yTxnQsFUvN5AsxKZAYoa6DVPL4rpDKScE2v5Wo13Y
	oqpziPFQetSbhpQczIJXDiOSH8p2WjKkfnnZG6mw4KJXWz9HtiR/YgKFrjuQwBsom51p/jyND
	+lHFM8WKznqhu+x8kLgBvmfH2kBQa7s6P/+hU6gtz6Q2WkM4xpyJ
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk won't work
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
X-List-Received-Date: Fri, 26 Jan 2018 20:40:13 -0000
Content-Type: text/plain; charset=UTF-8

> what is your build host OS/arch

Host:    OS debian/x86_64 kernel v4.9
Target:  arm v4.14

A while ago I added the the kernel sources and it has been working (yocto-2.4.0)
Since I ve updated to yocto-2.4.1 it does not anymore. Before build I removed build/tmp build/sstate-cache and did a clean.

