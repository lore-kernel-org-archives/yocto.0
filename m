Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82394E006F3; Thu,  6 Oct 2016 11:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0293DE006F3
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 11:57:05 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id x79so24696816lff.0
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 11:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=3IYQMdAE+z/Rei2+MI/X1N+4BDqEbhu5VkcHV8cylJg=;
	b=Yvw6En4uw42MA0Gu0Rz3/EG8uEKVZqEw7P3MGtiA6VOcuktGegRqDwmA0ZFJrfYZal
	glG5OLUoKrtznCo5WUnRG933PfAW40n/0wEhrMod8J8cUw91TM7+bZdoY6QiItbNhbcC
	BpKlBJzbR9YCnqztx08ABPoeIocYdLDvi1H4vVZdNx7U3uNCSO4CcghwsLd4gdRV5Gf4
	Q6hW81L86Jo6z9BVr+IqXyaH0eP3dHtpJMeOb0mPMqOd7RXuPqf13XWKYEEWFx9CdkE3
	Owl9vfAss5wTnAgEhU6KPwu6sw3IWZXrhfHvhmhvf0HO6HnkbI4jeFEGmdMHzSVXNFS+
	dF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3IYQMdAE+z/Rei2+MI/X1N+4BDqEbhu5VkcHV8cylJg=;
	b=W1lnn72EVV8cvEQK7rBJlHSQMoX1zq/YY0JlP+eBCGwNCWhJ85XsCpPMbLDlAl5sOj
	yIiQ+mJRwUQ6e13xLTuueTTBKt5WhvfQhKDjLX2IMxiQWdHGXs57UQRNHWBk3hsEujd4
	Nk/If/J7Nw+04BDNxcYW9XD6/UBoLLZxI5vx1fTKhc4ivvU9sLLSK5sYD0/EKJebcMgm
	nNC2a4ZCjB3kIdHHelBEcYYmzoQPGcamh5cD3SaCGUBaW2yuo0gEDuyold19EA8DPA/t
	AiIyGttLhgNC/l6sVaR4HYr4fhLDqTY5+2co4ADGflHFZHQnVb1o1M8Jb1hvYxu1c22A
	GALQ==
X-Gm-Message-State: AA6/9RkH9NWFAno2VXGMWbNPjdAOOvf96eYQn5GC5/RkkAhfJ6lq+luyoCLyKQ6Kyz2bqzddAup/DiEF6BbNXQ==
X-Received: by 10.46.71.133 with SMTP id u127mr6687324lja.5.1475780224256;
	Thu, 06 Oct 2016 11:57:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.1.18 with HTTP; Thu, 6 Oct 2016 11:57:03 -0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Thu, 6 Oct 2016 19:57:03 +0100
Message-ID: <CABatt_xfx-PXerUpGwk0Ru+wEvLfEgSfY4J9=+qqUg4XjvmFwQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SDK Problems for SuperH 4
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
X-List-Received-Date: Thu, 06 Oct 2016 18:57:09 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

We have a poky sato distributions successfully built and running for
our SuperH 4 processor board.  The problem is the SDK that is built
when using -cpopulate_sdk doesn't.

The simple Makefile:
hellomake: HelloWorld.c
$(CC) -o HelloWorld HelloWorld.c

