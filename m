Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 860B4E00A4D; Fri,  4 Nov 2016 02:50:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5879BE0081E
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 02:50:23 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP; 04 Nov 2016 02:50:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,442,1473145200"; d="scan'208";a="27469539"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.20.151])
	by orsmga005.jf.intel.com with ESMTP; 04 Nov 2016 02:50:21 -0700
Message-ID: <1478253020.22381.0.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>, yocto@yoctoproject.org
Date: Fri, 04 Nov 2016 09:50:20 +0000
In-Reply-To: <1478202917-11580-1-git-send-email-tracy.graydon@intel.com>
References: <1478202917-11580-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] buildset-config.meta-intel/nightly-meta-intel.conf
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
X-List-Received-Date: Fri, 04 Nov 2016 09:50:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-11-03 at 12:55 -0700, Graydon, Tracy wrote:
> Update nightly-meta-intel.conf with the most recent release branches.

Merged, thanks.

Joshua

> 
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>  buildset-config.meta-intel/nightly-meta-intel.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf
> b/buildset-config.meta-intel/nightly-meta-intel.conf
> index 3db11f5..557bb67 100644
> --- a/buildset-config.meta-intel/nightly-meta-intel.conf
> +++ b/buildset-config.meta-intel/nightly-meta-intel.conf
> @@ -19,7 +19,7 @@ props:
> [{'release_me':{'prop_type':'ChoiceStringParameter',
>                         'name': 'release_me',
>                         'label':'<h3> Generate a release?:</h3>'}},
>          {'poky_name':{'prop_type':'ChoiceStringParameter',
> -                       'choices': ['', 'jethro',
> 'fido','dizzy','daisy','dora','dylan','danny','denzil','edison','bern
> ard'],
> +                       'choices': ['', 'pyro', 'morty', 'krogoth',
> 'jethro',
> 'fido','dizzy','daisy','dora','dylan','danny','denzil','edison','bern
> ard'],
>                         'name': 'poky_name',
>                         'label':'<h3> Name of the poky
> release.<br>For further info on release names see <a href="https://wi
> ki.yoctoproject.org/wiki/Releases">; Releases </a> </h3>'}},
>          {'is_milestone':{'prop_type':'ChoiceStringParameter',
> -- 
> 2.7.0
> 

