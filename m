Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20185E0122E; Tue, 26 Jun 2018 03:20:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF473E0122E
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 03:20:11 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5QAK31w004102
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 26 Jun 2018 11:20:04 +0100
Message-ID: <ec0936370bfb0e11dd9800920e514fdde2457ae1.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Tue, 26 Jun 2018 11:20:03 +0100
In-Reply-To: <1529996723-14506-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1529996723-14506-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-ab-helper] Fix syntax load config.json clobber buildStep
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
X-List-Received-Date: Tue, 26 Jun 2018 10:20:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-06-26 at 15:05 +0800, Aaron Chan wrote:
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  config.json        | 5 ++---
>  janitor/clobberdir | 3 +--
>  2 files changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/config.json b/config.json
> index ecfca51..c9dc21e 100644
> --- a/config.json
> +++ b/config.json
> @@ -8,15 +8,14 @@
>      "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro",
> "poky:rocko", "poky:master"],
>      "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" :
> "poky:master", "poky:master-next" : "poky:master"},
>  
> -    "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
> -    "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
> +    "REPO_STASH_DIR" : "/git/mirror",
> +    "TRASH_DIR" : "/git/trash",
> 
>      "QAMAIL_TO" : "richard.purdie@linuxfoundation.org",
>      "QAMAIL_TO1" : "yocto@yoctoproject.org",
>      "QAMAIL_CC1" : "pidge@toganlabs.com, otavio@ossystems.com.br, yi
> .zhao@windriver.com, tracy.graydon@intel.com, joshua.g.lock@intel.com
> , apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.cha
> n@intel.com, rebecca.swee.fun.chang@intel.com, chin.huat.ang@intel.co
> m",
>      "WEBPUBLISH_DIR" : "${BASE_SHAREDDIR}/",
>      "WEBPUBLISH_URL" : "https://autobuilder.yocto.io/",
> -
>      "defaults" : {
>          "NEEDREPOS" : ["poky"],
>          "DISTRO" : "poky",
> diff --git a/janitor/clobberdir b/janitor/clobberdir
> index 5dab5af..73ec87c 100755
> --- a/janitor/clobberdir
> +++ b/janitor/clobberdir
> @@ -19,7 +19,6 @@ import utils
>  
>  ourconfig = utils.loadconfig()
>  
> -
>  def mkdir(path):
>      try:
>          os.makedirs(path)
> @@ -43,7 +42,7 @@ if "TRASH_DIR" not in ourconfig:
>      print("Please set TRASH_DIR in the configuration file")
>      sys.exit(1)
>  
> -trashdir = ourconfig["TRASH_DIR"]
> +trashdir = ourconfig["BASE_HOMEDIR"] + ourconfig["TRASH_DIR"]

You are correct there is a bug here but reverting my change to
config.json is not the way to fix this.

Have a look at this commit:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/commit/?id=d6253df2bc21752bc0b53202e491140b0994ff63

and then see if you can send me the patch which fixes this in line with
the commit above.

Cheers,

Richard

