Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B3EDE009F3; Wed, 18 Jan 2017 10:13:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AD10E009EA
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:13:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2017 10:13:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,250,1477983600"; d="scan'208";a="1084536023"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.31.154])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2017 10:13:08 -0800
Message-ID: <1484763187.3137.1.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 18:13:07 +0000
In-Reply-To: <1484583955-23541-1-git-send-email-anibal.limon@linux.intel.com>
References: <1484583955-23541-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: Evolution 3.22.3 (3.22.3-2.fc25) 
Mime-Version: 1.0
Cc: richard.purdie@intel.com
Subject: Re: [[PATCH][yocto-autobuilder] 1/2] buildsteps/CreateAutoConf.py: Add support for specify MACHINE by build prop
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
X-List-Received-Date: Wed, 18 Jan 2017 18:13:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-01-16 at 10:25 -0600, Aníbal Limón wrote:
> Sometimes is a good idea to could specify a machine to build via a
> build
> property.

Why's that? I can guess but the commit log should really tell me what
the motivation for the change is.

> 
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>  .../site-
> packages/autobuilder/buildsteps/CreateAutoConf.py          | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> index 021f542..7915dd5 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> @@ -174,7 +174,11 @@ class CreateAutoConf(ShellCommand):
>                      fout = fout + 'baselib = \\042${@d.getVar(\\047B
> ASE_LIB_tune-\\047 + (d.getVar(\\047DEFAULTTUNE\\047, True) or
> \\047INVALID\\047), True) or \\047lib\\047}\\042 \n'
>              if self.distro == "poky-rt":
>                  fout = fout +
> 'PREFERRED_PROVIDER_virtual/kernel="linux-yocto-rt" \n'
> -            machine=self.machine
> +            machine=self.getProperty('custom_machine')
> +            if machine:
> +                self.machine = machine
> +            else:
> +                machine = self.machine
>              if layerversion is not None and int(layerversion) > 1:
>                  if self.machine == "atom-pc":
>                      machine = self.machine.replace("atom-pc",
> "genericx86")

