Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE049E0095C; Wed, 26 Sep 2018 01:24:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.55 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Sep 2018 01:24:05 PDT
Received: from smtpcmd0655.aruba.it (smtpcmd0655.aruba.it [62.149.156.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58F3BE006F1
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 01:24:05 -0700 (PDT)
Received: from [10.0.3.81] ([78.6.3.122]) by smtpcmd06.ad.aruba.it with bizsmtp
	id g8P11y0072dwwGE018P1eQ; Wed, 26 Sep 2018 10:23:01 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <6c41c425-793f-e62f-94d1-279ef467cd2b@faresoftware.it>
Date: Wed, 26 Sep 2018 10:23:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1537950181; bh=+345z4Mv398DGzpSf7QVsTYk8J2R1kkUlyekU+HQI5c=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=B7Nm7uPs+O+rfnLBI9FCl8NXn/0kwEbP8t+afoEocYPitY691NbiuIuZXA79+pDQi
	jlAZcqyXxTmFRb9k9gVkUaOGtdR0V4vFL+eu9MWnq2DvaApieo/XJ/LondsdHD+BGS
	cyCqPNy3dY5cr3lvC3gh3G1jR8Eijo6xoDlAETPL1u7Eb9+jUWrMvQthdsahUPlQJK
	6q4YwIeVtd9wN4wfT9bUZpIVMZLLtpxaD/YuvaHFgUNbdkKft0ia/ymX6833fmk5oO
	9LZWh5IMRAGWYKDjmV249yA6/KDczYspOvImtFeWRUKyX6N65pDkhG/wEPiI6mLgCi
	TbPqjYp8CcWfQ==
Subject: update_icon_cache fails
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
X-List-Received-Date: Wed, 26 Sep 2018 08:24:07 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I try to build my own image with Krogoth, imx6dlsabresd.

bitbake tells me a warning about update_icon_cache.

The reason is that it cannot find gdk-pixbuf-query-loaders in 
${BUILDDIR}/tmp/sysroot/x86_64-linux

I look for gdk-pixbuf-query-loaders in 
${BUILDDIR}/tmp/sysroot/x86_64-linux and I find it in 
${BUILDDIR}/tmp/sysroot/x86_64-linux/usr/lib/gdk-pixbuf-2.0


I composing my custom image starting from core-image-minimal, adding 
what I need.

Which recipe I miss to add in IMAGE_INSTALL?


Best regards,

   MZ


