Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CD2DE00D0A; Thu, 14 Jul 2016 08:53:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81A18E0095F
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 08:53:35 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 14 Jul 2016 08:53:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,363,1464678000"; d="scan'208";a="734258343"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.42.195])
	by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2016 08:53:34 -0700
Message-ID: <1468511612.2701.8.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 16:53:32 +0100
In-Reply-To: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
References: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH 0/2] publish wic images
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
X-List-Received-Date: Thu, 14 Jul 2016 15:53:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-07-06 at 13:16 -0700, Bill Randle wrote:
> QA started testing wic images in Yocto 2.1, but was building them
> themselves. Have the autobuilder publish the wic images so they are
> available for testing.
> 

Merged to master, thanks.

Joshua

> [YOCTO #9397]
> 
> Bill Randle (2):
>   PublishArtifacts.py: create md5sum files in same dir as artifacts
>   publish build artifacts for wic images
> 
>  buildset-config.controller/nightly-wic.conf        |  8 ++---
>  .../autobuilder/buildsteps/PublishArtifacts.py     | 40
> +++++++++++++++-------
>  2 files changed, 30 insertions(+), 18 deletions(-)
> 

