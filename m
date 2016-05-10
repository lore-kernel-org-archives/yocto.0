Return-Path: <simon@aqwary.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC403E00D19; Tue, 10 May 2016 02:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 962EDE00D11
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 02:18:15 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id j8so7651765lfd.2
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 02:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aqwary-com.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=OBmFUYzuCQuY4yEibEmXqYkWnsBLgM8E/LMvnxvDh8E=;
	b=P0rj5XSS40hj35Hz+DXp6kZi6eEBXAiOWipQ0EBPzwe66DEkHFms9jY6Y28RVVcQ7O
	1u2IeGJHT/uVc9gcjUpBCDUYEu/8N1tM0a306qlYM8PkUg7+LrZIDy7G8HJJsFM4Vqbx
	2FX46lTtW6D27/etG/BIBCvG/ZqrO9FlcV5gLujAEEeRsIWEj5NsYIe7RAy+ligqDznA
	v3C5nWBAH0gvaT9JfShOvNnWzWI2G0oeKL01mVQsiwa5G/y7w46eHaj60ABypwxDF3Zn
	onIwU/1LMomoptZJEkCNHMsq3z8xtuzLGDJKJqJaJL7SmA343CI55y4g253IVYMIrBqd
	Fv1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=OBmFUYzuCQuY4yEibEmXqYkWnsBLgM8E/LMvnxvDh8E=;
	b=cp+uGCl/4hbM00yZXOP1zfyN7QhhLesu2DRMTRP4WjMP4ebL9VtjN2vsUGqB20ESfR
	DNAFWx5GxUO2fr1yWOL5v5m78bL1NSobWt22F59wEpM2EQOYApJJxNHVAed4th72/Wv/
	EfgTVpsKtiLUpS6EoWv8xdjV7wV/GxlHUpmpVSq1iD3IFbl5nCeI9S76BuL4LQ9sZXn9
	Z5UprPqg263P7tAdoc5Op65ygsTtdLJZgKNfNlBQHfNF8BdlPqq7vQhjMfHATMS6yJXt
	bIk7eocacmhr//vvFAIhtqd0mT0dzJ7ibhBwe1thAaW/ISLTpRcaoLbhAdAZ/eQjFVVE
	WdFw==
X-Gm-Message-State: AOPr4FUoRjdA4oK9hJkhMkk/FMXrXJum06IOTT2MohxEUfzW4WxB+o+eMvka/7tRNMu1LqAt
X-Received: by 10.112.146.136 with SMTP id tc8mr4796776lbb.78.1462871894069;
	Tue, 10 May 2016 02:18:14 -0700 (PDT)
Received: from [192.168.2.2] (h-208-32.a163.corp.bahnhof.se. [81.170.208.32])
	by smtp.googlemail.com with ESMTPSA id
	o10sm207666lbp.47.2016.05.10.02.18.13 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 10 May 2016 02:18:13 -0700 (PDT)
To: yocto@yoctoproject.org
From: Simon Lindgren <simon@aqwary.com>
Message-ID: <4667de15-7b22-1ea6-b6a3-b5a255032028@aqwary.com>
Date: Tue, 10 May 2016 11:18:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 10 May 2016 09:18:18 -0000
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

