Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FAF3E00D7C; Tue, 11 Oct 2016 07:39:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2EE6E00D70
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 07:39:11 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 11 Oct 2016 07:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,329,1473145200"; d="scan'208";a="18909980"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.31.77])
	by orsmga004.jf.intel.com with ESMTP; 11 Oct 2016 07:39:09 -0700
Message-ID: <1476196748.2912.36.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: gmane@reliableembeddedsystems.com, yocto@yoctoproject.org
Date: Tue, 11 Oct 2016 15:39:08 +0100
In-Reply-To: <97f92f451012b39869a89eaeffbdf1a7@reliableembeddedsystems.com>
References: <97f92f451012b39869a89eaeffbdf1a7@reliableembeddedsystems.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: Y-AB automatic updates?
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
X-List-Received-Date: Tue, 11 Oct 2016 14:39:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-10-11 at 11:42 +0300, gmane@reliableembeddedsystems.com
wrote:
> Hi,
> 
> With a latest and greatest Yocto Autobuilder I noticed stuff like
> this 
> when I restart it:
> 
> ---
> ...
>   Updating PRSERV
> remote: Counting objects: 20, done.
> remote: Compressing objects: 100% (20/20), done.
> remote: Total 20 (delta 17), reused 0 (delta 0)
> Unpacking objects: 100% (20/20), done.
>  From git://git.openembedded.org/bitbake
>     35927a9..d9713ed  master     -> origin/master
>     35927a9..d9713ed  1.32       -> origin/1.32
>   + 21defce...09dd499 master-next -> origin/master-next  (forced
> update)
> Updating 35927a9..d9713ed
> Fast-forward
>   bin/bitbake         |  2 +-
>   lib/bb/__init__.py  |  2 +-
>   lib/bb/ui/depexp.py | 24 ++++++++++++++++++++++++
>   3 files changed, 26 insertions(+), 2 deletions(-)
> 
> ---
> 
> This pumps e.g. the bitbake version:
> 
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Tue Oct 11 08:46:35 2016 +0100
> 
>      bitbake: Update version to 1.32.0
> 
> ---
> 
> Is this really intentionally and what's the purpose?

The bitbake repository is fetched by the ab-prserv script, the purpose
of which is to run a PRServer for the autobuilder.

The ab-prserv script, and the code which calls it in yocto-start-
autobuilder, won't start the script if PRSERV_HOST and PRSERV_PORT
aren't set.

If you point PRSERV_HOST and PRSERV_PORT at a non-localhost PRServer
the git repo won't be fetched/updated.

Regards,

Joshua

