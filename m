Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD200E0078F; Mon, 21 Jul 2014 04:32:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1915AE0078A
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 04:32:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jul 2014 04:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,700,1400050800"; d="scan'208";a="564877657"
Received: from atdias-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.153])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2014 04:32:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
Date: Mon, 21 Jul 2014 12:32:35 +0100
Message-ID: <82706453.Ua2n0zDnTM@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <20140716095330.GC23194@axis.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886164946@kihagwinex01.int.kistler.com>
	<20140716095330.GC23194@axis.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bash parser
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
X-List-Received-Date: Mon, 21 Jul 2014 11:32:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 16 July 2014 11:53:30 Olof Johansson wrote:
> On 14-07-16 11:36 +0200, Isak Lichtenstein wrote:
> > Does a page exist somewhere describing the bash features
> > supported by the parser and also the execution environment?
> > Are arrays supported at all?
> 
> I don't know of any such documentation, but if you stick to
> portable shell script features, you should be mostly fine.

The following may be helpful:

  http://mywiki.wooledge.org/Bashism

  http://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

