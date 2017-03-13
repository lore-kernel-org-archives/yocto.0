Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04E0DE00935; Mon, 13 Mar 2017 06:54:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13015E00867
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:54:26 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id g6so84123656ioj.1
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=oGcQ9sYkqbMH389x3W+HwnRJHQLJbKyRqVB5SsEVoI8=;
	b=oUK/jncBhAn7woYXq6LsU0bwQSEVS5Gh35Zw57VhP6Rikd+G3ePQ0SI8Zfa1tydBEB
	wJPg/vNo2C4J3Epiz2XFz/PZbLJ7m9H/R345ZOClGqLd+5SZfrc3CFvJweeJHu4vLBoW
	jTNS3WxEFavrST2rlochnVywwuhVgxjAIX5eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oGcQ9sYkqbMH389x3W+HwnRJHQLJbKyRqVB5SsEVoI8=;
	b=FK89V8LUKABojNhW3Bt+JrBOtA8hphk0ZpycXT4Tnre2xL3RdF5YBZOzP2hbgokbsO
	Em07xAIV78TX0SpPJ4MXgb8I1ZNj3QVhyvY2Kq/82isu/te0uyJOkr+YaOQvGmxKJGd1
	wqFggDqqSs0GpF5R+uElNp5CWGjk8JAAEDvBm/Ad5hDiTumjh6ppi1ssLfizdpePy/AU
	csgqHvAmJLmn68BgUunH8sZ3IdNWfYUbgGth44EZth7muPmNzqpddvdJST/e/GUsUNLf
	dZoxiEctkaoIJgBbRf4GASQgTdBVV/gSN6a9bysU8JGy+HX6DVF7av69zdWSwL68pMJ/
	dA5w==
X-Gm-Message-State: AMke39kK9KYC3l+V2Kx1lBQv96DwCsuLMpT5qJKgRUd7beRFEHAJdhgSvRvErNaGgjZX/XbB6lSxC2zWXYI3dw==
X-Received: by 10.107.157.146 with SMTP id g140mr26122373ioe.63.1489413265836; 
	Mon, 13 Mar 2017 06:54:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Mon, 13 Mar 2017 06:54:25 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Mon, 13 Mar 2017 19:24:25 +0530
Message-ID: <CALDHXtezhuV9dEp0a9VQQF8P3c9fDOL3M+g0tiz3xPcN-2krEA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Procedure to build the xfce UI for ODROID XU3 board
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
X-List-Received-Date: Mon, 13 Mar 2017 13:54:28 -0000
Content-Type: multipart/alternative; boundary=001a11409824a280ce054a9d0c1f

--001a11409824a280ce054a9d0c1f
Content-Type: text/plain; charset=UTF-8

I am able to build the bootloaders, linux kernel (zImage), modules and
rootfs images  for ODROID XU3 board using Yocto-poky.

What is the procedure to build the xfce  UI for ODROID XU3 board.

--001a11409824a280ce054a9d0c1f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am able to build the bootloaders, linux kernel (zIm=
age), modules and rootfs images=C2=A0 for ODROID XU3 board using Yocto-poky=
.<br><br></div>What is the procedure to build the xfce=C2=A0 UI for ODROID =
XU3 board.<br></div>

--001a11409824a280ce054a9d0c1f--
