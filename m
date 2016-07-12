Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9536E00F38; Tue, 12 Jul 2016 09:15:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE49EE00F32
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 09:15:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 12 Jul 2016 09:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,352,1464678000"; d="scan'208";a="1005396297"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.11.132])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2016 09:15:27 -0700
Message-ID: <1468340125.2733.12.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 12 Jul 2016 17:15:25 +0100
In-Reply-To: <1468003398-31204-1-git-send-email-william.c.randle@intel.com>
References: <1468003398-31204-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] PublishLayerTarballs.py: don't change directories for Eclipse builds
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
X-List-Received-Date: Tue, 12 Jul 2016 16:15:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-07-08 at 11:43 -0700, Bill Randle wrote:
> When publishing eclipse tarballs, we are already in the correct
> directory,
> so skip the change direction operation (which will generate an
> error).
> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
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
> +           and "eclipse" is not in self.layername:

That's not valid Python syntax, you want `foo not in bar`:

[joshuagl@munchkin ~]
$ python3
Python 3.5.1 (default, Jun 20 2016, 14:48:22) 
[GCC 6.1.1 20160510 (Red Hat 6.1.1-2)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> "eclipse" is not in "foo"
  File "<stdin>", line 1
    "eclipse" is not in "foo"
                      ^
SyntaxError: invalid syntax
>>> "eclipse" not in "foo"
True

Regards,

Joshua

>              command = "cd " + self.layername + ";"
>          else:
>              command = ""

