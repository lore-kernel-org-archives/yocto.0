Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7D14E0096D; Mon,  4 Apr 2016 16:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D1DE006C7
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 16:06:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 04 Apr 2016 16:06:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,442,1455004800"; d="scan'208";a="925374643"
Received: from adaud-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.25])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2016 16:06:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
Date: Tue, 05 Apr 2016 11:06:06 +1200
Message-ID: <33179756.tdcsmWonzX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.6-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <570253A3.20109@linux.intel.com>
References: <BY1PR0701MB15940BD220DBA10E21250F6AE1810@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<BY1PR0701MB15940CE8F8F0B26D38BD6770E19C0@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<570253A3.20109@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [Query] Process of Up-streaming a new meta layer
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
X-List-Received-Date: Mon, 04 Apr 2016 23:06:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 04 Apr 2016 14:44:35 Alexander Kanavin wrote:
> On 04/03/2016 05:02 AM, Jaggi, Manish wrote:
> >> You need to publish the layer somewhere public (e.g. github), and then
> > 
> > how to publish the layer to git.yoctoproject.org instead of github ?
> 
> Do you have a reason to have your layer on git.yoctoproject.org instead
> of any other repo service? There is no automatic access control
> management there, and no pull requests support, and no issues database,
> and no wiki, so I think it's inferior and more awkward.

Nevertheless, git.yoctoproject.org is available for anyone who would like to 
host Yocto Project / OpenEmbedded related repositories. If you'd like a 
repository there please feel free to email michael@yoctoproject.org with your 
request (and your SSH public key attached).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

