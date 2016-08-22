Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A93E00D04; Mon, 22 Aug 2016 03:28:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCED3E008BA
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 03:28:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Aug 2016 03:28:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,559,1464678000"; d="scan'208";a="1045274048"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.69])
	by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2016 03:28:07 -0700
Message-ID: <1471861685.5256.11.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 11:28:05 +0100
In-Reply-To: <1471733421-27188-1-git-send-email-william.c.randle@intel.com>
References: <1471733421-27188-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: fix file check to work under dash
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
X-List-Received-Date: Mon, 22 Aug 2016 10:28:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2016-08-20 at 15:50 -0700, Bill Randle wrote:
> An earlier patch (ed3857990) to check for existing msd5sum files
> worked
> fine when tested under bash, but failed with an error message about
> [[
> not found when run under dash. Updated the test to not rely on
> bashisms.
> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> index d8b554f..58048f0 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -259,8 +259,9 @@ class PublishArtifacts(ShellCommand):
>      def generateMD5cmd(self, artifact, deploy_dir):
>          cmd = ""
>          if os.environ.get('GEN_IMG_MD5') == "True":
> +            # crufty test for existing md5sum file required for dash
> shell
>              cmd += "for x in `find " + deploy_dir + " -maxdepth 5
> -type f`;"
> -            cmd += "do if [[ $x != *.md5sum ]]; then md5sum $x >> "
> + "$x.md5sum; fi; done;"
> +            cmd += "do echo ${x} | grep -q '\.md5sum'; if [ $? -ne 0
> ]; then md5sum $x >> " + "$x.md5sum; fi; done;"
>          return cmd

Rather than a "crufty" test, how about using POSIX sh parameter
expansion, i.e.

$ foo="blah.bar"
$ if [ ${foo##*.} == bar ]; then echo "bar!"; fi
bar!

Therefore, the patch would be something like (untested):

cmd += "if [ ${x##*.} == .md5sum ]; then md5sum $x >> $x.md5sum; fi"

Regards,

Joshua

>  
>      def getDeployNames(self, artifact, buildername):

