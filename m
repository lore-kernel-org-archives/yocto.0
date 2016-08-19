Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7583BE00EF8; Fri, 19 Aug 2016 03:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D92E00ED8
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 03:30:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Aug 2016 03:30:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,544,1464678000"; d="scan'208";a="1017262020"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.27.178])
	by orsmga001.jf.intel.com with ESMTP; 19 Aug 2016 03:30:00 -0700
Message-ID: <1471602599.5679.0.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>, yocto@yoctoproject.org
Date: Fri, 19 Aug 2016 11:29:59 +0100
In-Reply-To: <1471595687-2314-1-git-send-email-dmitry.rozhkov@linux.intel.com>
References: <1471595687-2314-1-git-send-email-dmitry.rozhkov@linux.intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] swupd-client_git.bb: fix typo in config files creation
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
X-List-Received-Date: Fri, 19 Aug 2016 10:30:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-08-19 at 11:34 +0300, Dmitry Rozhkov wrote:
> The patch puts intended values to the config files with
> swupd-client's default values.

Thanks! Patch pushed to meta-swupd master.

Regards,

Joshua

> Signed-off-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
> ---
>  recipes-core/swupd-client/swupd-client_git.bb | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-
> core/swupd-client/swupd-client_git.bb
> index 7e2bdd9..1815db0 100644
> --- a/recipes-core/swupd-client/swupd-client_git.bb
> +++ b/recipes-core/swupd-client/swupd-client_git.bb
> @@ -41,9 +41,9 @@ do_install_append () {
>  
>      # Write default values to the configuration hierarchy (since
> 3.4.0)
>      install -d ${D}/usr/share/defaults/swupd
> -    echo "{SWUPD_VERSION_URL}" >>
> ${D}/usr/share/defaults/swupd/versionurl
> -    echo "{SWUPD_CONTENT_URL}" >>
> ${D}/usr/share/defaults/swupd/contenturl
> -    echo "{SWUPD_FORMAT}" >> ${D}/usr/share/defaults/swupd/format
> +    echo "${SWUPD_VERSION_URL}" >>
> ${D}/usr/share/defaults/swupd/versionurl
> +    echo "${SWUPD_CONTENT_URL}" >>
> ${D}/usr/share/defaults/swupd/contenturl
> +    echo "${SWUPD_FORMAT}" >> ${D}/usr/share/defaults/swupd/format
>  }
>  
>  FILES_${PN} += "\
> -- 
> 2.5.5
> 

