Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6283E00E46; Mon, 22 Aug 2016 08:22:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6D0E006D8
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 08:22:00 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 22 Aug 2016 08:21:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,560,1464678000"; d="scan'208";a="159428178"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.69])
	by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2016 08:21:58 -0700
Message-ID: <1471879317.5256.19.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 16:21:57 +0100
In-Reply-To: <1471877520-5615-1-git-send-email-william.c.randle@intel.com>
References: <1471877520-5615-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH v2] PublishArtifacts.py: fix filecheck to work under dash (or other POSIX shell)
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
X-List-Received-Date: Mon, 22 Aug 2016 15:22:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-08-22 at 07:52 -0700, Bill Randle wrote:
> An earlier patch (ed3857990) to check for existing msd5sum files
> worked
> fine when tested under bash, but failed with an error message about
> [[
> not found when run under dash. Updated the test to not rely on
> bashisms.

Pushed to master, thanks!

Joshua

> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> 
> V2: use POSIX shell expansion for simplified test (thanks Joshua)
> 
>  lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> index d8b554f..e738521 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -260,7 +260,7 @@ class PublishArtifacts(ShellCommand):
>          cmd = ""
>          if os.environ.get('GEN_IMG_MD5') == "True":
>              cmd += "for x in `find " + deploy_dir + " -maxdepth 5
> -type f`;"
> -            cmd += "do if [[ $x != *.md5sum ]]; then md5sum $x >> "
> + "$x.md5sum; fi; done;"
> +            cmd += "do if [ ${x##*.} != md5sum ]; then md5sum $x >>
> " + "$x.md5sum; fi; done;"
>          return cmd
>  
>      def getDeployNames(self, artifact, buildername):

