Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A782E007EE; Sun, 24 Aug 2014 09:10:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B5D3E00576
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 09:10:43 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Aug 2014 09:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,391,1406617200"; d="scan'208";a="472098279"
Received: from rrhewawa-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.41])
	by azsmga001.ch.intel.com with ESMTP; 24 Aug 2014 09:10:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marius Avram <marius.avram@intel.com>
Date: Sun, 24 Aug 2014 17:10:40 +0100
Message-ID: <2309582.H5pxBmqOuJ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-200.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <1408698518-13130-1-git-send-email-marius.avram@intel.com>
References: <1408698518-13130-1-git-send-email-marius.avram@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [AUH][PATCH v3 1/2] Send emails for a list of recipes
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
X-List-Received-Date: Sun, 24 Aug 2014 16:10:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marius,

On Friday 22 August 2014 12:08:38 Marius Avram wrote:
> If the --send-emails or -e command line argument is active and a single
> or a list of recipes are given to the script, emails with the results
> and patches will be sent to their maintainers or to the overriden
> addresses from the configuration file.

I've merged this and the other patch; I had to do some rebasing after my 
earlier changes and I stumbled over what appears to be a logic error. Here's 
what was removed from one part in the patch:

> -        if ("drop_previous_commits" in settings and
> -                settings["drop_previous_commits"] == "yes" and
> -                err is None) or (err is not None and self.patch_file is not

And here is what was added:

> +        if ("drop_previous_commits" in settings and
> +                settings["drop_previous_commits"] == "yes" and
> +                err) or (err and self.patch_file):

I assumed this should have been "and not err" so I changed it to that when 
merging.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

