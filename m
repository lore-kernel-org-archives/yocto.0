Return-Path: <figiel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 896B1E010E1; Thu, 12 Jul 2018 23:42:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (figiel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 243C8E00CFD
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 23:42:46 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id d74-v6so17654229vke.10
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 23:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=712sg3+lgnQJESjk4BjLy+rVWBxweEksTW77pwNk13M=;
	b=R/nhMkEmCKWJDyUjCp65IUeq3Eb7E4cJvm55TwcNBm4R72447pkLwW0IM8k5D8doZM
	Pt9OfxMsKGTJKVzoUTayM+DoN2vUm6DEiNRXRSDYr36B6MWPqDFiHRatgtWKn1BSX/pl
	6L3zPs/rwA0TJlO6EXbYdRnyFnG5Eb2j96eouanDfLLqvy5lEvJb2BDlrs4TxlCSCSju
	Bes8RTSdcyucjJFDQ4mz7zd37EAusMRdt4jvOgeazHvioER+Lihk9AbQ9HIYuuTkCEDy
	UhCjVGMwZLDdqPK0YwRxccSNCFoRwRgC949SQgHbl79A5PiKmR6oGWpEqx/vhkFbvrzR
	ICOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=712sg3+lgnQJESjk4BjLy+rVWBxweEksTW77pwNk13M=;
	b=Dfp4EWCpBszA5tabiV9C184oY4Qi28jDyoIV/TIVsC0twCHh7aMo4xeAg3QiJdlid1
	R34gsReARQ9Q7Ooab7y/KJRvtrSrzLIQfFkTOiLnpvSS8Dex4zZDLMMzh2CgpxN+sYUn
	T6bn9v/8EDPfoAECCbQZrSpUyuJ1JxOo9qGJzbtKM8CC/CW9/XlKBE/0mt3w5UJZ3kEC
	ukrFGwmxa13XIlgMmwqjYuA65RF3LbzS07/6BlmC+ilL1RPCGFkeptTsZ4kHHgYGo0xC
	hVZBfn8JweyXJwjFXDaTu8Y0V1YLn8sjnUElSxxxQjVYBNmROhbYOeVEVq1d1Zhdhrn/
	EqBw==
X-Gm-Message-State: AOUpUlEtie2wmGiX2WpYHoJ0dPHDMeOU4SsT8SeI1BxK9cClUY22vL7t
	RiuVhOhcNYzjmwIOWguDndch5lzR/GD604kCXaw=
X-Google-Smtp-Source: AAOMgpcvyBv/hIVHMgTk8n2deU0M8XI5WYhm+DP4oIsrh2BWDo1ecXfnfzSPqbbad+3rnYTZj3ZJ9MFhKJlx0Lzay7g=
X-Received: by 2002:a1f:3b43:: with SMTP id i64-v6mr2948902vka.2.1531464166249;
	Thu, 12 Jul 2018 23:42:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:6702:0:0:0:0:0 with HTTP; Thu, 12 Jul 2018 23:42:45
	-0700 (PDT)
From: Piotr Figiel <figiel@gmail.com>
Date: Fri, 13 Jul 2018 08:42:45 +0200
Message-ID: <CAL9TtUqzaZMzRukGLRwc7nArh_xt2hfVRvy5SkiPS6Tz+Maqmw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: License information of statically linked libraries
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
X-List-Received-Date: Fri, 13 Jul 2018 06:42:47 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
 do license files for statically linked libraries get somehow on the
target image?
 I'm thinking of how license.bbclass works, as far as I understand it
gathers all relevant license files basing on the recipe fields like
LICENSE and LIC_FILES_CHKSUM of installed packages.
 If a recipe is only DEPENDant (and not RDEPENDand) to a library and
uses only static files from it the dependency in question is not
installed on the target. Will the license text files of the dependency
be installed though?
 If I recall correctly for example native DEPENDencies don't get their
license text installed so are static devs somehow special?
 I have similar case here, not exactly about static libraries but I
have a case where a recipe I want to write depends build-time but not
runtime on some BSD licensed component. If I make separate recipe for
that component which will not install anything to runtime image will
the license text get installed?

Best regards,
Piotr.

