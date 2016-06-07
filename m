Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 521CAE00C28; Tue,  7 Jun 2016 09:24:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 523A0E006E9
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 09:24:47 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id ECAE468A01D; Tue,  7 Jun 2016 17:24:45 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 822D168A019;
	Tue,  7 Jun 2016 17:24:45 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 2516A67404A7;
	Tue,  7 Jun 2016 18:24:45 +0200 (CEST)
To: yocto@yoctoproject.org
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5756F54D.9020707@mlbassoc.com>
Date: Tue, 7 Jun 2016 18:24:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
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
X-List-Received-Date: Tue, 07 Jun 2016 16:24:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-07 18:02, Burton, Ross wrote:
>
> On 5 June 2016 at 17:44, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I just updated my Poky repo and did a rebuild and saw this "error"
>     (although it carried on with the build):
>     ERROR: base-files-3.0.14-r89 do_install: Taskhash mismatch ceb25febc6f11a5cc2b3c4a4b0b2c136 verses
>     44f498452dfce5875451bca66b230e31 for
>     /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install
>     ERROR: Taskhash mismatch ceb25febc6f11a5cc2b3c4a4b0b2c136 verses 44f498452dfce5875451bca66b230e31 for
>     /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install
>
>     What does this mean?  Should I be worried?
>
>
> It means the hash calculated my the bitbake master was different to the hash calculated when the worker started up.
> This usually means that you're using something like ${TIME} in the recipe but not marking it appropriatly so the cache
> ignores it.  Do you have a base-files bbappend that writes a timestamp?

Sorry, nothing like that in my layers.  Note: this only happened once,
immediately after a poky pull and the builds have been happy since.
Whatever it was only happened that one time (not that that should be
any less concerning...)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

