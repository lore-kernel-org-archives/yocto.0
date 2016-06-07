Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 183D1E00C28; Tue,  7 Jun 2016 09:58:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C435AE006E9
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 09:58:39 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 1542868A01B; Tue,  7 Jun 2016 17:58:38 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4470D68A019;
	Tue,  7 Jun 2016 17:58:38 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id DA1486740315;
	Tue,  7 Jun 2016 18:58:37 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
	<CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5756FD3D.3010109@mlbassoc.com>
Date: Tue, 7 Jun 2016 18:58:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's this
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
X-List-Received-Date: Tue, 07 Jun 2016 16:58:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-07 18:20, Burton, Ross wrote:
>
> On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com <mailto:ross.burton@intel.com>> wrote:
>
>     It means the hash calculated my the bitbake master was different to the hash calculated when the worker started up.
>     This usually means that you're using something like ${TIME} in the recipe but not marking it appropriatly so the
>     cache ignores it.  Do you have a base-files bbappend that writes a timestamp?
>
>
> The always wise Joshua reminds me that if your DISTRO_VERSION contains ${DATETIME} then this happens.  If you're doing
> this then you'll want to set [vardepsexclude] on DISTRO_VERSION to stop the DATETIME from getting into the cache (or not
> put the current date/time into the distro version).
>

Ah, that's probably it.  Exactly how do I set that exclusion?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

