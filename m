Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 106F9E00754; Wed, 11 Mar 2015 09:49:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFE59E0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 09:49:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Mar 2015 09:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,382,1422950400"; d="scan'208";a="678646082"
Received: from urpatil-mobl2.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.254.75.29])
	by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2015 09:49:29 -0700
Message-ID: <55007219.4090600@linux.intel.com>
Date: Wed, 11 Mar 2015 09:49:29 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Poky Build User <pokybuild@opensuse131.osl.yoctoproject.org>, 
	yocto@yoctoproject.org
References: <20150311072432.6776FE3205@opensuse131.osl.yoctoproject.org>
In-Reply-To: <20150311072432.6776FE3205@opensuse131.osl.yoctoproject.org>
Cc: otavio@ossystems.com.br
Subject: Re: Release Candidate Build for yocto-1.6.3.rc1 now available.
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
X-List-Received-Date: Wed, 11 Mar 2015 16:49:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2015 12:24 AM, Poky Build User wrote:
>
> A release candidate build for yocto-1.6.3.rc1 is now available at:
>

Turns out we missed a patch that will require an rc2, please stand by on 
testing and wait for an RC2 build.

Sau!

>
> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6.3.rc1
>
>
> Please begin QA on this build as soon as possible.
>
>
> Build hash information:
> meta-intel : 38e9abf2551dd6c2f701d0dad0d84766800fd25c
> meta-fsl-arm : 0c4de80867c3ab4e9682dd7802d3fd907d1e1a23
> meta-minnow : 58fd55eb321a875d4e51c5c430de4d725ec9ba4c
> meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45
> meta-fsl-ppc : 299f84cceccacd84651c1cefc1c34e66fb598a96
> poky : 827dc7f12cf0d9f446c713a4a5b07a87146b77ab
>
>
> This is an automated message from
> The Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder
> Email: elizabeth.flanagan@intel.com
>

