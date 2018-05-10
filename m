Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 127A6E00D1C; Thu, 10 May 2018 13:44:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4809DE00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 13:44:12 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id e20-v6so4598148iof.4
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 13:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=LJ7tnShBkIw5pcNLqvW0889cGJeqZPsJbYvQkxmb90Y=;
	b=JvxI0PGFi7JtxpPy7c0sysFiaZNhN1O8iWOz1L+ctHom0gIPpYCaWrA9z39ZfrZvbv
	MWDO3FMFPd9+/lSypEEpZgVleZ+1+VvMRDUjaUfFtCbA30JrK1NQo+qYWu391eO4TZSa
	k+hhgyrCmWjgp3gbmMvuB/4446zK8Y2+R9WEOuGG9yW/+Y8/kNPhKxcqeSGm+tLXZWYs
	a7tKCucQWMJkEChpGYoxnR7XsvX9OuHgD41TJQxhKm/D1sVB375kfngIyWRG47VHDJgS
	PK55Uh2r1RjRRf+qdJxjE5x+8Yk7ykmJWZw+t1HtzLjlni5cS457oiQyyblq7ILIfLlz
	mVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=LJ7tnShBkIw5pcNLqvW0889cGJeqZPsJbYvQkxmb90Y=;
	b=Irb1JH5JSwtmvl1Jlym5uQUd3FVOUKK+czhbtaQ574zPEPSPLS1AbpYmWSr1waznc5
	2mIEBPKDAa8M/5B8sUIWWoezqmmwgZJb/CgHsD4cXop6mHs4j3IQXLtNA9RoucjFZvIs
	2s3+QsIGwIXbldZrGBvcUB+Nt1xudVTQUu65j5fgjQHXd+Rf+yzRNY1sSLSur38eyRZT
	uWJSUMWZJdaSvruJ5BgbzO1QrNrB4t6quj3KTYsJ0kif6Z6gIasQCYHi3n0MOy1H5ssr
	jBxFmwyQUwJwNqafJimtcP6J/n1/UcYGDTyoEoke+0xWLasPXTlVil6oR+MCumf4NIaK
	gkxA==
X-Gm-Message-State: ALKqPwcyoL32bGnbluXQhe3DvcdB8s9lT7EfTEHcwE9ADxitRRxc2RAM
	A676eR1C2txtFMyJJSf3J2I=
X-Google-Smtp-Source: AB8JxZq1mJSVpVyLZQKF7h6O1N8cwyUFBoRI9ABJhp/GKJpbJtq2jGGsTmydx6yR4K47/bE02ALumg==
X-Received: by 2002:a6b:a113:: with SMTP id
	k19-v6mr3128803ioe.208.1525985052331; 
	Thu, 10 May 2018 13:44:12 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	u2-v6sm769315ioc.8.2018.05.10.13.44.11
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 10 May 2018 13:44:11 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <be419519c5c0c6d18d9b0925d36e61270e44093a.camel@gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 10 May 2018 15:44:11 -0500
In-Reply-To: <0de2a57e-c10e-ed0d-d893-c73700f4ba56@faresoftware.it>
References: <0de2a57e-c10e-ed0d-d893-c73700f4ba56@faresoftware.it>
X-Mailer: Evolution 3.28.1 (3.28.1-2.fc28) 
Mime-Version: 1.0
Subject: Re: FILES autofilling
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
X-List-Received-Date: Thu, 10 May 2018 20:44:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-05-10 at 22:34 +0200, Mauro Ziliani wrote:
> Hi all.
> 
> My name's Mauro.
> 
> I developed an application with CMake outside Yocto Krogoth.
> 
> In CMakeLists.txt I have a lot of install(...) commands.
> 
> I produce the final deb package with cpack -G DEB command and al
> works fine.
> 
> Now I'd like to import my app into Krogoth.
> 
> I edited correctly the recipe, but the do_package task fails because
> I 
> have not filled the FILES variable correctly.
> 
> I have 656 files to ship with the application.
> 
> The application must be installed in its own folder /home/app
> 
> 
> Any idea how can I list all files to ship inside FILES variable?

It works recursively on folders:

FILES_${PN} += "/home/app/"

> 
> 
> Best regards,
> 
>     MZ
> 

