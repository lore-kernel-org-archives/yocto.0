Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2233E00D91; Wed, 27 Apr 2016 05:37:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DCFFE00D86
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 05:37:40 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2016 05:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,541,1455004800"; d="scan'208";a="793450314"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 27 Apr 2016 05:37:30 -0700
To: Zhenhua Luo <zhenhua.luo@nxp.com>,
	Chris Trobridge <christrobridge@hotmail.com>
References: <54885.10.252.24.10.1461091271.squirrel@linux.intel.com>
	<DUB130-W1404A31E54DC5663F194CFDA620@phx.gbl>
	<AM2PR04MB06743A619EEE3F06D9F01DCEEE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5720B2A9.7020204@linux.intel.com>
Date: Wed, 27 Apr 2016 15:38:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <AM2PR04MB06743A619EEE3F06D9F01DCEEE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Fwd: gobject introspection release notes]
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
X-List-Received-Date: Wed, 27 Apr 2016 12:37:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/26/2016 11:05 AM, Zhenhua Luo wrote:
> Any ideas as to why "qemu-ppc64 crashes out immediately"?
>
> I can confirm the build ends in a segfault when I tried building
> gobject-introspection for the t1042d4rdb-64b machine.
>
> */[Luo Zhenhua-B19537] This is a gobject-introspection support issue of
> QEMU PPC64, the fix is not available now, you can use the following
> workaround to bypass the issue. /*
>
> */http://git.yoctoproject.org/cgit.cgi/meta-fsl-ppc/tree/README#n18/*

I'm afraid disabling introspection data is not an acceptable solution 
for Chris, because he does want to have that data.

Also, I'll send a fix to disable building of introspection data on all 
ppc64 machines for now.

Alex

