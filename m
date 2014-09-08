Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 075EDE00849; Mon,  8 Sep 2014 05:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [81.169.146.160 listed in list.dnswl.org]
X-Greylist: delayed 380 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Sep 2014 05:37:17 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE6DE00847
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 05:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1410179835; l=650;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date;
	bh=Wn9ZzvjfX6fgPBjuWuz+k6wJZFY=;
	b=uXWJbIgkIE+ea02iKsIaSC6LIfqHi5rNIWal3+Mtfk1xfJsXWAQs7aViiV7QJOPxHl/
	fggUDtAoPk1sHFUZ7dePxtopnu4vNARKZhwDHuSLu+mF9pyVNr9SHptiZ+h9QVKAESb91
	v3vkaWbejcs6KQc3p14mmtcq2Xh0FG4Gemo=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgBcHsubAgpjn8lA2nv8=
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p57915AC7.dip0.t-ipconnect.de [87.145.90.199])
	by smtp.strato.de (RZmta 35.8 DYNA|AUTH)
	with ESMTPSA id J04050q88CUt3IC
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Mon, 8 Sep 2014 14:30:55 +0200 (CEST)
Message-ID: <540DA189.1000109@jenslucius.de>
Date: Mon, 08 Sep 2014 14:31:05 +0200
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
References: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>	<540C68E0.5050907@windriver.com>	<CAPhDKbGc=aZ0Uy2XD5nSivugzwERKFJXbW3MJH=ye4UEM-X5Tg@mail.gmail.com>
	<540D9DC2.5010900@windriver.com>
In-Reply-To: <540D9DC2.5010900@windriver.com>
Subject: Include PaX / GRSecurity
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
X-List-Received-Date: Mon, 08 Sep 2014 12:37:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am trying to include the GRSecurity & PaX patches for the kernel in a 
Yocto build.

The patch is applied to the kernel correctly, but when the build begins 
I get the following error:

| Makefile:686: *** Your gcc installation does not support plugins. If 
the necessary headers for plugin support are missing, they should be 
installed.  On Debian, apt-get install gcc-<ver>-plugin-dev.  If you 
choose to ignore this error and lessen the improvements provided by this 
patch, re-run make with the DISABLE_PAX_PLUGINS=y argument..  Stop.

Any ideas how to solve this? (Compile is on an Intel machine 
crosscompile for ARM)

Thanks,

Jens

