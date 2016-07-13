Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00BA9E00DAB; Wed, 13 Jul 2016 06:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8656EE00D9D
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:25:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2016 06:25:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="1020881614"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.2.48])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2016 06:25:37 -0700
Message-ID: <1468416334.7977.5.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 14:25:34 +0100
In-Reply-To: <1468342649-18342-1-git-send-email-william.c.randle@intel.com>
References: <1468342649-18342-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCHv2] PublishLayerTarballs.py: don't change directories for Eclipse builds
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
X-List-Received-Date: Wed, 13 Jul 2016 13:25:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-07-12 at 09:57 -0700, Bill Randle wrote:
> When publishing eclipse tarballs, we are already in the correct
> directory,
> so skip the change direction operation (which will generate an
> error).
> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> V2: fix Python syntax error
> 
>  .../site-
> packages/autobuilder/buildsteps/PublishLayerTarballs.py       | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishLayerTarballs.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishLayerTarballs.py
> index c140725..7c1ce4a 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishLayerTarballs.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishLayerTarballs.py
> @@ -38,7 +38,8 @@ class PublishLayerTarballs(ShellCommand):
>          snapshot = ""
>          self.basedir=os.path.join(os.path.join(os.path.join(
>                                      self.workerdir, buildername),
> self.workdir))
> -        if self.layername is not "poky":
> +        if self.layername is not "poky"
> +           and "eclipse" not in self.layername:

I believe this is still broken?

It's invalid syntax to continue an if statement on a new line without
either a) a backslash for line continuation or b) enclosing the
statement in parentheses (and thereby using implied continuation).

Cheers,

Joshua

>              command = "cd " + self.layername + ";"
>          else:
>              command = ""

