Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7642.1591710559591547639
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 06:49:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=jsJncNL/;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28744E01C31; Tue,  9 Jun 2020 06:49:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [62.149.156.56 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www; Tue, 09 Jun 2020 06:49:17 PDT
Received: from smtpcmd0756.aruba.it (smtpcmd0756.aruba.it [62.149.156.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 482EAE01BF1
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2020 06:49:17 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id p1oC2200W2wfazh011oCML; Tue, 09 Jun 2020 15:48:12 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: OpenRC
Message-ID: <3ece96c1-0778-1b28-8305-5c6f7137e9ff@faresoftware.it>
Date: Tue, 9 Jun 2020 15:48:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1591710492; bh=7Ni2QQVCkBzjdZoPI+zuujCVlx5yNAUSd+XUoJqaulE=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=jsJncNL/ZkAeU6gyNCWtPKITAeUR2YwrPyY5XKUv77u/DFwdvGxkk/5mTjdToVKkO
	 jH+7ypiA1pZGC9OE1PKwMn+7BFWx8Hux1hRYx5u6TTxqj54AeV1Fwii+Bt2f1ZuECz
	 kuDN7lFBeAYMLW/ms9V5zGzJvXeALhY0aZ48vJ9mKY8pJu8XvwQA3JNAq6oyVQfbTF
	 SVi7LErV2fOFoAGr/kSrRZLqA1RmlKX/c7UxMz8dR6+xRNPngCrVuOlPWG8O/L0ZWZ
	 xYIxuTsU/WHHide5Xsdv/0JZNqKBZRqnOMc55f6OYugek5+7plq6CFGlE8Ptjs7Q2k
	 Aa5UQ3akGH1Xg==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

There is a plan to integrate OpenRC like startup scripts environment?


MZ

