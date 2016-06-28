Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EB5BE00C9C; Tue, 28 Jun 2016 08:57:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EEECE00C72
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 08:57:51 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 28 Jun 2016 08:57:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,541,1459839600"; d="scan'208";a="726312997"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.16.145])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2016 08:57:39 -0700
Message-ID: <1467129458.2906.0.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Tue, 28 Jun 2016 16:57:38 +0100
In-Reply-To: <1467125601-29760-1-git-send-email-anibal.limon@linux.intel.com>
References: <1467125601-29760-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [PATCH][yocto-autobuilder] nightly-world-lsb.conf: Update buildstep name DownloadBitbakeErrorReports -> DownloadErrorReports
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
X-List-Received-Date: Tue, 28 Jun 2016 15:57:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Merged to master, thanks,

Joshua

On Tue, 2016-06-28 at 09:53 -0500, Aníbal Limón wrote:
> The reference of the buildsteps for download error reports was
> updated [1] but,
> i forget to update this one.
> 
> [1] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commi
> t/?id=e1e7c3b86720786ae4f60da008f68d4cf5d58559
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>  buildset-config.controller/nightly-world-lsb.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/buildset-config.controller/nightly-world-lsb.conf
> b/buildset-config.controller/nightly-world-lsb.conf
> index ae3a621..afc7546 100644
> --- a/buildset-config.controller/nightly-world-lsb.conf
> +++ b/buildset-config.controller/nightly-world-lsb.conf
> @@ -21,5 +21,5 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky-lsb'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images': 'world'}},
> -        {'DownloadBitbakeErrorReports': {}},
> +        {'DownloadErrorReports': {}},
>          {'SendErrorReport': {}}]
> -- 
> 2.1.4
> 

