Return-Path: <simon@aqwary.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50F2BE00D3D; Mon,  9 May 2016 02:44:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC1D2E00825
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 02:44:36 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id j8so193159821lfd.2
	for <yocto@yoctoproject.org>; Mon, 09 May 2016 02:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aqwary-com.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=OBmFUYzuCQuY4yEibEmXqYkWnsBLgM8E/LMvnxvDh8E=;
	b=yAafsCtrbIDJaQWlUljpt+Yv96r5TgGEi6032bQmeQOikUYpqBbeXWX77Xs/+sTyt1
	MrFE4XIBmJSyzbcTj91xONCqeYB6/Zl4Ue4kWOWwyTotQvdRDMj4PGJE6l2/vR7dCllK
	Ilel8AmJoxGN6nf8eGTkzihLTj46mro8x/vHFmRhlpv3d7HyIx/0At3cfaLPdFIEBJVq
	qN25Xd/Paju6zD8uNe/X4ebXWZg9givRn/5aV8h8t1dDy9xPhnS2iFQLKGE1RaJZfjcn
	58DD4T6Zq5trghZ+AxoTdGAN687LjY2ncEXBRgyv7dV2SUwAj9QVz9m87l71K95QCTZZ
	A1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=OBmFUYzuCQuY4yEibEmXqYkWnsBLgM8E/LMvnxvDh8E=;
	b=LM8EJ3sE28het+YMewwnW1C0GD7CHXZfpQMNo/vb8IIdk+SbCkVcswBQgfD9O/WN/+
	xO3geKipfsYs/94ieuD+8CYrZlWfFQ/Ku3etqnUrrq4ySCfyfe1WiFPfuwEl8/80t2Lr
	V3lamp1Y/coC91JbQ1smGUIpmz1zyroEJ+TePrIpmdny1q0nGbf6YRsqFwnVCgF7rFjx
	F6yrPps0b5kmsdZua1yXyNykGHXd+qOFdmaezDWkZtBI0hs4BapNUCOTPQMoTYsDSXHn
	ipgKovzdT3o4EwHTmDfnhqiMZyqzu7ZeFaGQH4tRY1ZjvTDGskgQkaaHxcoRHlF4JLhi
	W7tg==
X-Gm-Message-State: AOPr4FVMoYBAnY0PZbz8PLxVAP40Z4f2onxLFEaBhm0V6/dc6qsmOXiZ8SxzdWElTggFL3HR
X-Received: by 10.112.124.228 with SMTP id ml4mr12109092lbb.113.1462787074446; 
	Mon, 09 May 2016 02:44:34 -0700 (PDT)
Received: from [192.168.2.13] (h-208-32.a163.corp.bahnhof.se. [81.170.208.32])
	by smtp.googlemail.com with ESMTPSA id
	ri2sm427394lbb.41.2016.05.09.02.44.33 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 May 2016 02:44:33 -0700 (PDT)
To: yocto@yoctoproject.org
From: Simon Lindgren <simon@aqwary.com>
Message-ID: <35a918b4-9d83-1240-b62c-33f834b83328@aqwary.com>
Date: Mon, 9 May 2016 11:44:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 09 May 2016 08:04:51 -0700
Subject: Eclipse, CMake and EXTRA_OECONF_GCC_FLOAT
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
X-List-Received-Date: Mon, 09 May 2016 09:44:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'm having some issues using the Eclipse CMake support with my own hard
float arm toolchain.

This used to work, and I believe the main change affecting my problem is
this:
https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/gcc/gcc-configure-common.inc?id=075e2884ce10094258af6f7c6db1af7579b5bffa

The problem I'm having relates to the float abi. For Autotools, as far
as I can tell, the float abi is set explicitly in via the CC/CPP
variables but this is filtered out in the corresponding CMake variable,
OECMAKE_CXX_COMPILER and/or OECMAKE_CXX_FLAGS. Code in
YoctoSDKCMakeProjectNature.java (around lines 47-61):

---snip---

String ccString = YoctoSDKUtils.getEnvValue(project, "CC");

if (!ccString.equals("") && !ccString.equals(" ")) {
	ccString.trim();
	ccString = ccString.split(" ")[0];
}

env.addVariable("OECMAKE_C_COMPILER", ccString,
		IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
String cxxString = YoctoSDKUtils.getEnvValue(project, "CXX");

if (!cxxString.equals("") && !cxxString.equals(" ")) {
	cxxString.trim();
	cxxString = cxxString.split(" ")[0];
}

env.addVariable("OECMAKE_CXX_COMPILER", cxxString,
		IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);

---snip---

And the removed part is not added back to any other variable. So this
used to work because before the value of
EXTRA_OECONF_GCC_FLOAT/EXTRA_OECONF_FPU would be such that the hard
float abi would be the default for hard float MACHINEs. After the commit
linked above it isn't, so the abi needs to be set explicitly when
calling the compiler. But, it seems those flags are not carried over to
CMake in Eclipse.

Is this a bug with the CMake support, or should I actually set
EXTRA_OECONF_GCC_FLOAT="--with-float=hard"?

Changing the variables seems to be exactly what the commit wanted to
avoid so both hard and soft float machines can use the same cross toolchain.

