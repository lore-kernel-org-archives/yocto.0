Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C09C1E00C4B; Fri, 24 May 2019 09:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 May 2019 09:27:21 PDT
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43CE9E008F2
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 09:27:21 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd06.ad.aruba.it with bizsmtp
	id GGSG200172wfazh01GSH8g; Fri, 24 May 2019 18:26:17 +0200
To: Yocto Project Discussion <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <f2e8f3d5-1d34-392d-d489-d17fd5604e21@faresoftware.it>
Date: Fri, 24 May 2019 18:26:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1558715177; bh=K36ykJMN6RYmrXBh+tiJL3CUIqoL9ARuIAfFo/cfSCo=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=bfz9DTXFFVPJgPLeo/zPh752ZXgqBH3Jg/hrUM1yp+qRENIedrAJBkluKdnNgIeL4
	0ejrjFg74oKSucxKYIms/NTw68IUIjtYXtYA1tNwPxv6M1vf5MLcm4i8L9seJBGINK
	dNlzEqY1x8PX9wuARPkvssXE1xXmq+p5yt/YejydbtpCS6usFmhcorG6AQGeWTlBM1
	2qI8djIOD8VduFCrsyta3qUxCLoJQVHYh569CGjkgUwTSrDiQsT2V5/5waC0VxmcaH
	yv0haWt856vhIk7qzp/9pRlJWo7+l0aYv3Yyh0iszBDM4BSGlGFw6aJ8/vj4INwtNk
	3AywkK3F8l9HQ==
Subject: Investigate virtual/kernel assignment
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
X-List-Received-Date: Fri, 24 May 2019 16:27:23 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

How can I ask to bitbake which is the actual value of virtual/kernel?


Thanks all

MZ


