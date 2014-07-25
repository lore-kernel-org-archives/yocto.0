Return-Path: <mark.a.evans@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13102E00736; Thu, 24 Jul 2014 17:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mark.a.evans[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.52 listed in list.dnswl.org]
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 589B5E006C4
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 17:44:01 -0700 (PDT)
Received: by mail-oa0-f52.google.com with SMTP id o6so4746613oag.11
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 17:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=31V4sUeyjU4DhNhh2qBoXzErNyvZiRmm/IkTnjj1uGw=;
	b=EfJ3xOqoh4rJWEJbYF0+f0ORIp3UdtP6X3WEapjSY2y+iBYUl2q6tNXmO6qjfS/t/z
	jkp+py99CxuzRpOjetRLm9HHChhKL8au0MCMqK7De/r7VUQrTYU05Z/nqcPoPCxPLXeX
	nxXxRMZ77N7RosZz1Qa9+BKJBjL6tN7Yrr7fzMmaHKM+CIRSPUDhtS4XSVuq0Ws9g4Kf
	gxJ9p/BWi+W54YYI30qdaIoTHx1n9ffpJLKVn29/6oo+uD3SyrALNRLLXr4J5PvUnX9U
	OrfIb1cpQLkZ1E+b9ILCxZlmggRbbGLbMEmPZ2LvaRJz6R3gTZDJVrbVKVmUFH49H7tL
	gblg==
X-Received: by 10.60.132.203 with SMTP id ow11mr18435117oeb.47.1406249040400; 
	Thu, 24 Jul 2014 17:44:00 -0700 (PDT)
Received: from [172.16.1.39] (99-62-169-121.lightspeed.austtx.sbcglobal.net.
	[99.62.169.121]) by mx.google.com with ESMTPSA id
	sa9sm28875731oeb.17.2014.07.24.17.43.59 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 24 Jul 2014 17:43:59 -0700 (PDT)
Message-ID: <53D1A854.1080002@gmail.com>
Date: Thu, 24 Jul 2014 19:44:04 -0500
From: Mark Evans <mark.a.evans@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
In-Reply-To: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
Subject: OpenSSL 1.0.0m
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
X-List-Received-Date: Fri, 25 Jul 2014 00:44:07 -0000
Content-Type: multipart/alternative;
	boundary="------------010401030901020808040902"

--------------010401030901020808040902
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

question on the openssl recipes and openssl versions... Point me to the 
correct distro if this is the incorrect spot to ask this...

We're currently on Danny, 1.3.2. In there, the openssl version is 
1.0.0j. The openssl project is currently promoting  1.0.1h. Due to the 
multiple CVEs being released, we're wanting to move to the latest. But, 
looking at the poky releases, it seems that, after "Danny", Poky 
reverted back to 1.0.0e and added patches as CVEs are released. For 
example, here's the patches in "Daisy" (1.6.1):

    openssl-1.0.1e-cve-2014-0195.patch
    openssl-1.0.1e-cve-2014-0198.patch
    openssl-1.0.1e-cve-2014-0221.patch
    openssl-1.0.1e-cve-2014-0224.patch
    openssl-1.0.1e-cve-2014-3470.patch
    openssl-CVE-2010-5298.patch

Am I reading that correct? If I move to the recipes there, will that 
close current issues on openssl? Or, is there a recipe available to use 
1.0.1h?

Thanks for any info.
Mark Evans

--------------010401030901020808040902
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    question on the openssl recipes and openssl versions... Point me to
    the correct distro if this is the incorrect spot to ask this...<br>
    <br>
    We're currently on Danny, 1.3.2. In there, the openssl version is
    1.0.0j. The openssl project is currently promoting&nbsp; 1.0.1h. Due to
    the multiple CVEs being released, we're wanting to move to the
    latest. But, looking at the poky releases, it seems that, after
    "Danny", Poky reverted back to 1.0.0e and added patches as CVEs are
    released. For example, here's the patches in "Daisy" (1.6.1):<br>
    <blockquote>openssl-1.0.1e-cve-2014-0195.patch<br>
      openssl-1.0.1e-cve-2014-0198.patch<br>
      openssl-1.0.1e-cve-2014-0221.patch<br>
      openssl-1.0.1e-cve-2014-0224.patch<br>
      openssl-1.0.1e-cve-2014-3470.patch<br>
      openssl-CVE-2010-5298.patch<br>
    </blockquote>
    Am I reading that correct? If I move to the recipes there, will that
    close current issues on openssl? Or, is there a recipe available to
    use 1.0.1h?<br>
    <br>
    Thanks for any info.<br>
    Mark Evans<br>
  </body>
</html>

--------------010401030901020808040902--
