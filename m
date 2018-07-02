Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D71B8E00DAE; Mon,  2 Jul 2018 03:47:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3DA1E00CA1
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 03:47:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 03:47:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,298,1526367600"; d="scan'208";a="67982214"
Received: from kmsmsx156.gar.corp.intel.com ([172.21.138.133])
	by fmsmga004.fm.intel.com with ESMTP; 02 Jul 2018 03:47:54 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.131]) by
	KMSMSX156.gar.corp.intel.com ([169.254.1.177]) with mapi id
	14.03.0319.002; Mon, 2 Jul 2018 18:47:53 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [yocto-ab-helper] Fix syntax load config.json clobber
	buildStep
Thread-Index: AQHUDRw0TtDys5CNp0e4EqzWlQlI9aRxzimAgAn7abA=
Date: Mon, 2 Jul 2018 10:47:53 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068DDCED@PGSMSX103.gar.corp.intel.com>
References: <1529996723-14506-1-git-send-email-aaron.chun.yew.chan@intel.com>,
	<ec0936370bfb0e11dd9800920e514fdde2457ae1.camel@linuxfoundation.org>
In-Reply-To: <ec0936370bfb0e11dd9800920e514fdde2457ae1.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 02 Jul 2018 10:47:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Added a patch fix on this on https://lists.yoctoproject.org/pipermail/yocto=
/2018-July/041644.html

This resolves the handling unicode string during loadconfig() apart from di=
ctonary data expansions.
Let me know what are your thoughts on this. Thanks.

Cheers,
Aaron
________________________________________
From: richard.purdie@linuxfoundation.org [richard.purdie@linuxfoundation.or=
g]
Sent: Tuesday, June 26, 2018 6:20 PM
To: Chan, Aaron Chun Yew; yocto@yoctoproject.org
Subject: Re: [PATCH] [yocto-ab-helper] Fix syntax load config.json clobber =
buildStep

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
>  ourconfig =3D utils.loadconfig()
>
> -
>  def mkdir(path):
>      try:
>          os.makedirs(path)
> @@ -43,7 +42,7 @@ if "TRASH_DIR" not in ourconfig:
>      print("Please set TRASH_DIR in the configuration file")
>      sys.exit(1)
>
> -trashdir =3D ourconfig["TRASH_DIR"]
> +trashdir =3D ourconfig["BASE_HOMEDIR"] + ourconfig["TRASH_DIR"]

You are correct there is a bug here but reverting my change to
config.json is not the way to fix this.

Have a look at this commit:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/commit/?=
id=3Dd6253df2bc21752bc0b53202e491140b0994ff63

and then see if you can send me the patch which fixes this in line with
the commit above.

Cheers,

Richard

