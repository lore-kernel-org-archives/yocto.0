Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CA1FE00D2E; Thu, 11 Apr 2019 01:37:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65B5E00D14
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 01:37:00 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd15.ad.aruba.it with bizsmtp
	id ywcy1z00b2dwwGE01wcy3U; Thu, 11 Apr 2019 10:36:59 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <2e1ac0d1-94d5-4e1f-4b84-ea71685244e3@faresoftware.it>
Date: Thu, 11 Apr 2019 10:36:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1554971819; bh=DmEPmOen7h/WLLR+sm4kVFtNdeCNkMu606lhiF9p6vU=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=KL8lkyhVNdJqee1fO2Vp/jnT+lIzS+4XeorSQVo6SpJ1AE5DxAEEZQ13QdqF9MzYk
	6AfVzlyQUiAL9alyLM7KW9GgFsu3UWN732J+WSnLZpPhapF/dQTc03W3wQRi9cmOGc
	vPAmfRS80ZLcP3ziLBEC0D+LtBGvoYQdtkTSi6MhqLxjQEOr7aLRdbuUZpbpRBeHEf
	LyQtSNfgKkLy1rrBmGX4MpdTNOK0TMpRCjLTtzHCF3Zda36kkblh0rYfBjEzaEkD5I
	5UfTLJuLD5b2y09MLzeCebTVBX6livQY2tA6CNY1XLJUv93w7BuhoQ2hoSi/wNEii9
	85h1hXeOK1epQ==
Subject: Stripping debug symbols
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
X-List-Received-Date: Thu, 11 Apr 2019 08:37:03 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I worked on my project woth Krogoth, gcc 5.3.0, on imx6dlsabresd board.

My application is build with cmake 3.4.3, shipped with BSP.


I'd like to strip debug symbols from the final binary, but if I prepend
the strip parameter in CMAKE_{C,CXX}_FLAGS_RELEASE in my CMakeLists.txt,
bitbake give me errors.


What is the right path to follow to strip final binary?

With debug info the binary is 109MB, without 5MB


Best regards,

 Mauro


