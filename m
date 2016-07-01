Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB917E00931; Fri,  1 Jul 2016 09:18:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F50FE006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 09:18:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Jul 2016 09:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,557,1459839600"; d="scan'208";a="1013594310"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.28.1])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jul 2016 09:18:27 -0700
Message-ID: <1467389906.30210.5.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>, yocto@yoctoproject.org
Date: Fri, 01 Jul 2016 17:18:26 +0100
In-Reply-To: <1467241722-307-1-git-send-email-tracy.graydon@intel.com>
References: <1467241722-307-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] bin/release_scripts/release.py: Add some basic logging
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
X-List-Received-Date: Fri, 01 Jul 2016 16:18:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-06-29 at 16:08 -0700, Graydon, Tracy wrote:
> This patch adds some basic logging to help find failure point should
> the script
> barf due to lost ssh session, etc. Without it, finding where to
> resume is not
> particularly entertaining.
> 
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>  bin/release_scripts/release.py | 43
> +++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 40 insertions(+), 3 deletions(-)
> 
> diff --git a/bin/release_scripts/release.py
> b/bin/release_scripts/release.py
> index 89f68be..b62b48c 100755
> --- a/bin/release_scripts/release.py
> +++ b/bin/release_scripts/release.py
> @@ -10,6 +10,7 @@ __maintainer__ = "Tracy Graydon"
>  __email__ = "tracy.graydon@intel.com"
>  '''

<snip>

> @@ -348,9 +355,18 @@ if __name__ == '__main__':
>      os.system("clear")
>      print
>     
> +    logfile = 'staging.log'
> +    try:
> +        os.remove(logfile)
> +    except OSError:
> +        pass    
> +
> +    logging.basicConfig(format='%(levelname)s:%(message)s',filename=
> logfile,level=logging.INFO)
> +    
>      VHOSTS = "/srv/www/vhosts"
>      AB_BASE = os.path.join(VHOSTS,
> "autobuilder.yoctoproject.org/pub/releases")
>      DL_DIR = os.path.join(VHOSTS,
> "downloads.yoctoproject.org/releases")
> +    DL_BASE = os.path.join(DL_DIR, "/releases/yocto")

This will result in DL_BASE being /releases/yocto

You shouldn't include a path separator in any of the components after
the first. From the os.path.join() docs:

"If a component is an absolute path, all previous components are thrown
away and joining continues from the absolute path component."

i.e.

>>> import os
>>> os.path.join('/some', 'path', 'foo', 'bar')
'/some/path/foo/bar'
>>> os.path.join('/some', 'path', '/foo', 'bar')
'/foo/bar'


Cheers,

Joshua

