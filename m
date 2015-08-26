Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96984E00AD1; Wed, 26 Aug 2015 13:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.117 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx1.mail.bg (mx1.mail.bg [193.201.172.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A38D4E00A92
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 13:07:47 -0700 (PDT)
Received: from [192.168.43.84] (85-118-69-249.mtel.net [85.118.69.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.mail.bg (Postfix) with ESMTPSA id 7F1AD6001AC1;
	Wed, 26 Aug 2015 23:07:45 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1440619665; bh=aoP/A/G6exAVAc4Xv8SKC7KXlu7FOcBUfn1nkgAJvxs=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=rRWl24CVe5elSOGcYxOA0OvRv9RzoPwljhpAmKujzS6nDkWVGx1WzXDk7sIFil2St
	1X19xGamhOzh/vF1sSnfV8orOQXdI8Fa21e30QYcb/6CYfz4Q/U+JiCybTCS2bInaw
	qLNiaFn8lqcAD7NdykdJVNEek4J1cfyWS99gjNRM=
Message-ID: <55DE1C8F.3060206@mail.bg>
Date: Wed, 26 Aug 2015 23:07:43 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ad28bcb1a9ca4653ac92686fe92a4ae3@E2013a.CORP.ICS.COM.UA>	<CAMKF1sq9a3CFqG7T8hZBEn=gWhHuhJqY2J5S2kEn1fKSR-eSSA@mail.gmail.com>
	<1c7f82d0d8884768b0906a80047289dd@E2013a.CORP.ICS.COM.UA>
In-Reply-To: <1c7f82d0d8884768b0906a80047289dd@E2013a.CORP.ICS.COM.UA>
Subject: Re: FW: How to recreate rootfs image
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
X-List-Received-Date: Wed, 26 Aug 2015 20:07:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Victor,

On 08/26/2015 08:12 PM, Lenivyy Viktor wrote:
> This command did what I was trying to avoid: remove Yocto's copy of kernel sources. But starting questions still exist.
>

In your kernel recipe are you using SRC_URI to fetch from a git
repository (e.g. git:// URI) or from a local directory?

I guess that if you're using a local path, there can be either some
uncommitted changes, or a stale git index.

You can try just for the experiment to add your current kernel sources
to a test git repo and point the SRC_URI to it, so bitbake can clone
the repo by git revision (SRCREV = "${AUTOREV}" will skip the need to
update the recipe revision constantly during development). This should
work fine, without the "-dirty" version suffix.

Regards,
Nikolay

