Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6700BE00751; Mon,  5 Jan 2015 15:32:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 101EAE003E3
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 15:32:46 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2015 15:32:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="436833981"
Received: from gcattani-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.20.245])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Jan 2015 15:20:13 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 05 Jan 2015 23:32:34 +0000
Message-ID: <3248018.f3JnKqDr81@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1501051048230.20527@localhost>
References: <alpine.LFD.2.11.1501051048230.20527@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-docs] Mention yocto-layer subcommands add-layer, remove-layer.
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
X-List-Received-Date: Mon, 05 Jan 2015 23:32:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 05 January 2015 10:50:07 Robert P. J. Day wrote:
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml index
> 0085cef..adaf602 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -705,6 +705,12 @@
>                          Lists dependency relationships between recipes that
> cross layer boundaries.
>                          </para></listitem>
> +                   
> <listitem><para><filename><emphasis>add-layer:</emphasis></filename> +     
>                   Adds a layer to bblayers.conf.
> +                        </para></listitem>
> +                   
> <listitem><para><filename><emphasis>remove-layer:</emphasis></filename> +  
>                      Removes a layer from bblayers.conf.
> +                        </para></listitem>
>                     
> <listitem><para><filename><emphasis>flatten:</emphasis></filename> Flattens
> the layer configuration into a separate output directory.

Thanks - however I think you mean bitbake-layers rather than yocto-layer.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

