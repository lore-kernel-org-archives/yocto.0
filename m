Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D65E009E1; Mon, 18 May 2015 16:49:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC26CE009D8
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 16:49:07 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so62604542igb.0
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 16:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xZU3OqwS/CckoPqPyQhh6n/IRY+c5o8JevYucWdqHLM=;
	b=RMfuLZ6+mKaXWl4wLIOxr3ZTyF3upTDSEon/z/B31H/0ANZjcOZnmrWi3CDH/4dh3Y
	m93pPoDH1x+kabZsf3skubNMO2rL4cUOfIH9pEYocfGwjDx2ZHImDGG1qdCh3IqmdfSP
	Mj0tvrIHjB1dQTyNyhmd4lUTuz/IzsrVRkDuIPLNX1amabbLXZjtRF8RujVWXF5cuSBq
	5rL0q9DyrUgfqCpg9I5cmYzld+7gW/V2fHM+4E5ukB42SVXy4Yj+wkG+D/4FbGHdNz3j
	IOMKwrPygAJgr/XUqMPNEBchKPSPFicHHzZPsAfErr0MyER3Kz9j4Ucans/29SJZCX3I
	eIdQ==
X-Received: by 10.107.158.15 with SMTP id h15mr30009175ioe.14.1431992946646;
	Mon, 18 May 2015 16:49:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.134 with HTTP; Mon, 18 May 2015 16:48:36 -0700 (PDT)
In-Reply-To: <55555FE4.7060902@windriver.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
	<55555FE4.7060902@windriver.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Mon, 18 May 2015 16:48:36 -0700
Message-ID: <CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Mon, 18 May 2015 23:49:12 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 14, 2015 at 7:54 PM, ChenQi <Qi.Chen@windriver.com> wrote:
> The rpm database is not usable. You do a query to list files that a package
> installed and you will find all the paths are not correct.
Ah okay---that makes sense.  Thanks.
>
> We are now working a new kind of SDK in OE. We call it extensible SDK. By
> design, its components could be updated/installed/removed using sstate
> objects. The task is not completed yet, but we are working on it.

I'd seen the extensible SDK and was thinking it looked pretty cool so
I'll give this a whirl.  From what I've read, it doesn't yet support
updating.  Is there a roadmap for this (happy to help out if I'm
able)?  I'd also need to maintain an online sstate cache to make this
SDK useful to others correct?

