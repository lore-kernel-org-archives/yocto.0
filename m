Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD9E1E009E1; Fri, 15 May 2015 04:07:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.87 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24.bullet.mail.ne1.yahoo.com (nm24.bullet.mail.ne1.yahoo.com
	[98.138.90.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64884E00956
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 04:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1431688048; bh=f8SyOHseAgB8fs4U+Mg72PYPVcNK52vbWfh6jbmY/Bk=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=UGHubXomSOLt3cM/gAZwnbXXuWuzVuq5o6VOdhDJZMBlcAE5Mwv85vR4xsgxkO0PMJFkhz3iUDBwnCDkSD9KRSGMXhHIcDo53wxdKF3e16Non2vFHzDp9o3I+/iLaTMBV87tQeST7B+F75YS2mw9NeDXBMh3YXIqD2eSbkLq7w2/LZpH729sf1SSHag1c4YHvs2KYgFU69pv+PaV7d3NyLfNvfLTXtbIkjH9/zTTAEVY/WWX7QJZDt5BqKixuK0iBMDG19Gp0KqGuF7x6yL2J0C9KYaKrs+0n9KhVT2CJbgsi9HGyi2FZuuyUoeu0gUVJdYNYObCOJCmLjFgR8PS+w==
Received: from [98.138.100.111] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	15 May 2015 11:07:28 -0000
Received: from [98.138.88.235] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	15 May 2015 11:07:28 -0000
Received: from [127.0.0.1] by omp1035.mail.ne1.yahoo.com with NNFMP;
	15 May 2015 11:07:28 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 952182.43220.bm@omp1035.mail.ne1.yahoo.com
X-YMail-OSG: RL6kl9gVM1mYV0.mKR31GEywK9p7TpSfMdACfj.9npC8Q1F_HcSjpHfpSUcC.Tk
	csvV.q7ti6arcgqBlcQuY2VqS7qdWndPgmViWjUooI8C5H5rxwAp8OUDtEcd6eXpdJRB.xH4UJ7z
	c6cMicjW0NWBZQfxmRNDsk_BSYNbBDz8xq6kYbb0gWDYjXAT6rL2y64UEi3FrMesTJpK6iuyNSjb
	lY29vJHjSGqlridPQQtTj0Zs6sx4jEWzExA7DTUs1.cepRh3UYi92GGUOxc4aKgBP24XVo5sFm9e
	kLwDoWJfGQSq.wRsPTVLh7WB_nJ1JkE4b8MuqnI1Bk6h070y2CPflzNFyuX2HwV2WtHNAmRuKk1K
	TlcNwhmkcouVtZW624HTwynm6URnXZO39HSc7wDzmHAob6wvWIQ3BV4oIx6WNJ86SnOErj24R_Ct
	HLAkHRE4oHsdGfHoK3zFuzjaxA8mBNiluHG03Hyo3EH_JwnODKGWzU5pj0v5EXzEN.XkvHodmAX8
	78Kc-
Received: by 217.12.9.14; Fri, 15 May 2015 11:07:27 +0000 
Date: Fri, 15 May 2015 11:07:24 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <570277767.349734.1431688044876.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <55551B53.1080307@mlbassoc.com>
References: <55551B53.1080307@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: recipe removing (some)contents of /etc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 May 2015 11:07:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> The recommended way is to use CORE_IMAGE_EXTRA_INSTALL.

Ok, this one worked! thanks


>> I have other recipes(not *.bbappend) which end up in the image without adding any explicit statement, just the fact of being part of the layer includes them, is there any explanation?
> Something must cause them to be included, either explicitly or implicitly.


Therefore if it is included implicitly involves dependencies or requirements by other recipes.

> What package(s) in particular are you asking about?


Both components were simple recipes created by my own.

I have discovered the root of my confusion, I had a "Hello World" recipe in my layer, which was in the image, hence I thought It was included implicitly. 

But I was wrong, /usr/bin/hello was already in the default image, some other layer/recipe adds it.

Whats the experts' way to find out the origin of a deployed file?

Hopefully there is a faster way than searching whole $BUILD/tmp/work

Thanks again

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world

------------------------------------------------------------
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

