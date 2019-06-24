Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03FB8E00CBD; Mon, 24 Jun 2019 10:30:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Jun 2019 10:30:51 PDT
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA76E00C94
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 10:30:51 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id UhVm2000z2wfazh01hVnYo; Mon, 24 Jun 2019 19:29:47 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <a0336aa1-3a09-3b10-8c0b-d0233933f14d@faresoftware.it>
Date: Mon, 24 Jun 2019 19:29:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1561397387; bh=GLm6LCsea+kTD3EVlOqbaGfcnXq/vK+to7gAZiDR2pA=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=VskJvzsCZvRvIBIMnEV6CMbV4cWe02fInV1FEGRAPt95SV/Tf7iDOKnnSyJAUmDZQ
	ywyL86sSM/rOxrnzNFe2/7S0h/RoWzw0/K+WslCa+pLBLLSjqHUqxgHCaJgz6h5mnf
	hdH4QR+ZvjLZwhGbT7DGR0GWilqrSqX1yITKueAVKsyT5sT8U+eyH39ps+vk3JjjIL
	qekxyoLgC2sUba7RBIUSr2/7YS1zGGBMbs9M+byT7Lk2LSFtZY6kUNKxeBz8ODWmCf
	yPY3b2sNYAR0c5jvBwaJaqVtokrswLvxjG931DqY/facxeLBSCODxANC5/eT2w75E6
	5Ekich2hkQ7ew==
Subject: Remove include /usr/include/SDL2
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
X-List-Received-Date: Mon, 24 Jun 2019 17:30:53 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I'm trying to compile kivy inside yocto for a 586 board.

The compilation fails because the i586-cc uses /usr/include and 
/usr/local/include paths as INCLUDEDIR (togheter with others paths)


How can avoid this?


I need /usr/include o /usr/local/include for other apps, but I don't 
like the /usr/include is involved in yocto


MZ


