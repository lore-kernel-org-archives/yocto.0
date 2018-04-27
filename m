Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 208DEE00994; Fri, 27 Apr 2018 04:38:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72ED0E00831
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 04:38:36 -0700 (PDT)
Received: by mail-ot0-f174.google.com with SMTP id w4-v6so1641423ote.12
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 04:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=109TKOTqTSeh8j6qRg+pA0BlIDmMrRN6FR2+oPmaJ7I=;
	b=Dqa4QUUsvfjZ49qibL3W7QziIzLIvO48m9zIGBa6UM8CVx6Old0joerBqmYOXntkbR
	4d86eBwctXijjIbRer9P3rLjotSLzz3kUc/xx8ucmdvEbdJqWXpftt8sPabzg+DKAtGl
	ecEe8rKqrzbCOSV87u3tcPZ4DChyIJOT8mYP1ZUQncLhhXL3eSJT6Pphz9Mhtzl5MyEm
	OIyROCYBq//Faul1XXt6sDqWG33HqC4w9qcp8V7b0t4I2mpmbJgB2KaqeZ2zmFRceCds
	tCR4p5/BVJIUcnskh3twR+vcrw7TVxVLSyM5nfBnvKxvWlRxaEqqT0ZhSQPomKgf7U8l
	8d2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=109TKOTqTSeh8j6qRg+pA0BlIDmMrRN6FR2+oPmaJ7I=;
	b=envrpj43Dbo51hoaV1SGlrWsvU7B9THgi9fReGppPuvJOlYS+XigCZ2clOfwXEvpuA
	u2aLae/b1+GdbTEBN2Z57BWa0ps++8ng0LMNrGpuehJggN+dTF9wbAOSBmDHCQl6zdAM
	lT0IvHANoVJzcpzjHHyKKfItJT4XMXd22xldw8AOk/gWvBfC5PcMsKEDwwYu7ocedFjS
	/qycGFJQ0N/xNFkSFvrMgFWnDbcN6PnL9HZ7jPoQOj+9vuW5aWKWwBiaJTQTs6Dt4sfx
	vFiRw+p4uqaCs9Trj9PDPvU3EnPPQMAR1QZM3ws8mGsMby4hqABU6SeC84YVa4gyKnyf
	NCPQ==
X-Gm-Message-State: ALQs6tBo3D9mBxhxe0N31pLm6lUbp7rj2USe8yHj9wzQRy8GKR/Z3fFy
	gqhffzuEKFWjGC3u0hppEuzsRAH1WQ/S722q144h3gQI
X-Google-Smtp-Source: AB8JxZoeTv0Ei2S3xZK2itvRxdo+5q9/EpoBHzTXzR8QQ5gQybOVcmDWi2/AK58qkOroewaGlDlMXCn3vDDpUq3TR0w=
X-Received: by 2002:a9d:4d0a:: with SMTP id
	n10-v6mr1258177otf.306.1524829116093; 
	Fri, 27 Apr 2018 04:38:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.26.152 with HTTP; Fri, 27 Apr 2018 04:38:35 -0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 27 Apr 2018 13:38:35 +0200
Message-ID: <CAOT_U5YEgeYdOJxdncO0vXm4OnNLofd6rj8amNiOMZZ_qbzqvw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Installing a package on the board at runtime
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
X-List-Received-Date: Fri, 27 Apr 2018 11:38:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hey,
I know there is a method in devtool called devtool deploy-target.
It's a great thing to install a package on the board at runtime.

Is there something like that available without devtool?


A digression:
Am asking for a non devtool option because it
seems like devtool is ignoring the patch and config files
the recipe depends on (can't find any in workspace/sources).
My particular recipe has a custom build step that
depends on rendering config file templates (which fails due to missing
not finding the config file).

