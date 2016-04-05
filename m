Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FD2CE00BFD; Tue,  5 Apr 2016 09:37:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3670E00B8C
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 09:37:08 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id w18so2792328oie.2
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 09:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=2lomqd5oAPfeh62WCpVFq19iNYp4PUh6U61nHsDC1SU=;
	b=n1Mf7hBdXQyHWBlYigrnXypwx+bxkxv0jDerpbf65s+A0YQDe8fDIXe3pbt7iDzYwZ
	XgM7e2h2N6FUWH2Q6jCcq67YZDwkutKWg/gibemFFQ7JPuRd7jkUWi/LwMkI6pkJK7Dp
	PYPvsxmMFPGD1BvrI7QIbGupFWkNM59Xwkor9tB88ufuybKa22jdNohsOvPGdvHbYIxx
	zEaQu6Ma/RC/ggMdDSiGt8VQQaW2ugtEq9uw2CL49PGXnEnksxU945I8ASXfvsQ/X9bT
	uZevQ4BJ+qpVp68sWQACrkU9eBdhtZ3ZNMryn3KZFQVj3HBWN/RrUSHicBp3g4uJ5esk
	XyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=2lomqd5oAPfeh62WCpVFq19iNYp4PUh6U61nHsDC1SU=;
	b=Sm4yZxIzhEgPO73bdXHa6lD0NRuMxte46JKQzkAmO9G6JiKMb7+9FJfH/9o/tGkEpl
	+XXyaSBf5Lw0Zj/0EVHI7xcgeeG9al262SdewKrpfyKoLKt6P5Zxt3+RmC+dK1NDfIZA
	vyasCDldSOoYIvOMRXwm6qB9KazoXvrOkdeENb4ETRF2RyGgIExNj0dYOGI6or4xg5vR
	op+AxZx6a6i7571MdoJ3ab+vDBc+0X2h8TOlMOPM8fGNYtVC0OXJlDrwdKFoBKsj0189
	FSA+Amtd4pRsUviUidSnF540erW/zhkic8BjzeDDwcPepqbRhgD/FfwCxc9mvaTVD1Cn
	tGtQ==
X-Gm-Message-State: AD7BkJJznlEdDEhackh3N/VMlpwAuHA1iFXqnj1v1xQCDNyFpqu3KmiZJi6xhKbL9AGJ3S9btscsDXK6nnLidQ==
MIME-Version: 1.0
X-Received: by 10.202.179.8 with SMTP id c8mr13739056oif.50.1459874227465;
	Tue, 05 Apr 2016 09:37:07 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Tue, 5 Apr 2016 09:37:07 -0700 (PDT)
Date: Tue, 5 Apr 2016 10:37:07 -0600
Message-ID: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: yocto@yoctoproject.org
Subject: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Tue, 05 Apr 2016 16:37:12 -0000
Content-Type: text/plain; charset=UTF-8

When I try to build either emulated or real 64 bit distributions on an
isolated system running Debian 8.0.3 (using BB_NO_NETWORK = "1"),
utilizing a downloads directory copied from a system running Centos
7.2.1511, I get a failure in the do_install step for Python.

I plan on recopying Python.tar.xz onto my isolated station and trying
again.  But, if this doesn't resolve the problem are there any
suggestions?

For what it is worth, we're probably going to be moving to newer, but
still isolated, build stations shortly.  These new stations will be
running RedHat instead of Debian if that might make a difference.

Thank You
  Ron Oakes

