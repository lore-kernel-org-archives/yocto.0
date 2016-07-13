Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DEDAE00DA5; Wed, 13 Jul 2016 08:20:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F7BE00D55
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 08:20:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 13 Jul 2016 08:19:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="994478251"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.2.48])
	by orsmga001.jf.intel.com with ESMTP; 13 Jul 2016 08:19:52 -0700
Message-ID: <1468423189.7977.21.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:19:49 +0100
In-Reply-To: <1468273073-8178-1-git-send-email-anibal.limon@linux.intel.com>
References: <1468273073-8178-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [[PATCH][yocto-autobuilder] 1/2] buildbot/steps/transfer.py: Fix typo in DirectoryDownload step.
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
X-List-Received-Date: Wed, 13 Jul 2016 15:20:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

This and the 2/2 have been pushed to master, thanks.

Joshua

On Mon, 2016-07-11 at 16:37 -0500, Aníbal Limón wrote:
> DirectoryDownload step is based on UploadDirectory and i miss
> to upgrade the error log when the buildslave don't support
> downloadDirectory previously said uploadDirectory.
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>  .../site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/transfer.py   | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/transfer.py b/lib/python2.7/site-
> packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
> index fb49597..a2f7007 100644
> --- a/lib/python2.7/site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/transfer.py
> +++ b/lib/python2.7/site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/transfer.py
> @@ -487,7 +487,7 @@ class DirectoryDownload(_TransferBuildStep):
>          version = self.slaveVersion("downloadDirectory")
>  
>          if not version:
> -            m = "slave is too old, does not know about
> uploadDirectory"
> +            m = "slave is too old, does not know about
> downloadDirectory"
>              raise BuildSlaveTooOldError(m)
>  
>          # we rely upon the fact that the buildmaster runs chdir'ed
> into its
> -- 
> 2.1.4
> 

