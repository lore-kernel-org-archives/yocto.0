Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88021E00C18; Mon,  4 Apr 2016 04:48:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57019E00BF4
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 04:48:53 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2016 04:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,440,1455004800"; d="scan'208";a="78655563"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 04 Apr 2016 04:48:53 -0700
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BY1PR0701MB15940BD220DBA10E21250F6AE1810@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<56FCF95D.4040700@linux.intel.com>
	<BY1PR0701MB15940CE8F8F0B26D38BD6770E19C0@BY1PR0701MB1594.namprd07.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <570253A3.20109@linux.intel.com>
Date: Mon, 4 Apr 2016 14:44:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <BY1PR0701MB15940CE8F8F0B26D38BD6770E19C0@BY1PR0701MB1594.namprd07.prod.outlook.com>
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
X-List-Received-Date: Mon, 04 Apr 2016 11:48:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2016 05:02 AM, Jaggi, Manish wrote:

>> You need to publish the layer somewhere public (e.g. github), and then
>
> how to publish the layer to git.yoctoproject.org instead of github ?

Do you have a reason to have your layer on git.yoctoproject.org instead 
of any other repo service? There is no automatic access control 
management there, and no pull requests support, and no issues database, 
and no wiki, so I think it's inferior and more awkward.


Alex


