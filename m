Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8B89E00ACE; Wed,  2 Nov 2016 06:36:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A36FE009FA
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 06:36:34 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id x186so12749096vkd.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 06:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=P6gdskWwtQyP07eiUOsbSQk2xQRwC/m7AN4xnOiF9ZA=;
	b=yoBQylsyTvm2VlpV0sWKNMdpPuts92OLlK7rMscboqiSioYxdUsTe7Ol5uCPXyY5r5
	8EawELEWsEQMJNTNQjRaE4XDbeHT6W4gQoUi9J5jOQyPqvEYiv1djorXY5xRxRtQ1FKB
	i3NTPz+X4BNqEZJfCDlWQDIiNJJp3KCqISGmXdcbhrT6W9kdIKnzhT/hrUt27ES8j5lq
	IxSykJTijrDlF4XXLeZHodwWjxjYFd5YNYQ00jAQh+8ypO7KdgUbVp2FN0BrreYiq9LA
	qGGbPkWRs5VDJgw28n7loW/IePm9eBjhBdTPqdlFI6JWoMjxtc6Mtwe394xIskE23l1j
	sxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=P6gdskWwtQyP07eiUOsbSQk2xQRwC/m7AN4xnOiF9ZA=;
	b=Iohnl2Gjd3EXgqTcla1LHoQRs3F/yg6PFNohFSACnsp1FVW1GGcoULUDYlTSE1YrWT
	yzG5aINkMu9fSSXMKRJlRK2E2VZ2yRnL4/Eh47a/2VITq7PNi9C0AgWyTVVrbgpeziaL
	Y2AtyB080L4nGj95XDyzU11FfklLONFuMU61wnVlTGxXJ45S0R8kJiKgnq6KeABteEMQ
	Ro2UcXTCbCZvo/J3R0VvBkr1feO8Xlbhvh7Su+a3gsQ/hVqGicl804U9ATt+DU5ed4HX
	1czcv6fkvlD571ph/TtcLqOatFTByKTgEMBl5EIIJDMZIGEL8P4DNGeoN+McsiatE4k4
	g9lA==
X-Gm-Message-State: ABUngvcFZjyp5nZRvOrhTdweV4omPpj3RJSCse1kVFVzyV/Vh5hTbAmhKOZsYJqTxe/UUjZ2Ar6LqrH9PcvI2g==
X-Received: by 10.31.61.82 with SMTP id k79mr2380011vka.76.1478093793319; Wed,
	02 Nov 2016 06:36:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.83.27 with HTTP; Wed, 2 Nov 2016 06:36:33 -0700 (PDT)
From: "Chris Z." <winotu.email@gmail.com>
Date: Wed, 2 Nov 2016 14:36:33 +0100
Message-ID: <CAEjjReLcovpDJoMi-AO8stp7CR5gEAe9K8xCCCUL6+v2=py6yQ@mail.gmail.com>
To: yoctoproject <yocto@yoctoproject.org>
Subject: [sstate-cache] using sstate-cache in parallel builds
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
X-List-Received-Date: Wed, 02 Nov 2016 13:36:38 -0000
Content-Type: multipart/alternative; boundary=001a114db3147ee08e05405187f0

--001a114db3147ee08e05405187f0
Content-Type: text/plain; charset=UTF-8

Hi,

Is it secure to use in parallel sstate-cache for building images for
different target machines ?

Br,
Chris Z.

--001a114db3147ee08e05405187f0
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div>Hi,<br><br></div><div>Is it secure to use in parallel sstate-cache for building images for different target machines ?<br></div><div><br></div>Br,<br></div>Chris Z.<br></div>

--001a114db3147ee08e05405187f0--
