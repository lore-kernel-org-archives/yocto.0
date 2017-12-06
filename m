Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC6C1E00D61; Wed,  6 Dec 2017 09:27:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 878EFE00CE2
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 09:27:20 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Dec 2017 09:27:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,369,1508828400"; 
   d="scan'208";a="476436"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 06 Dec 2017 09:27:18 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
	<CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <6f4e07a8-02f8-eac0-5d63-a6bf0ea42328@linux.intel.com>
Date: Wed, 6 Dec 2017 19:27:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: externalsrc + sstate why is not compatible?
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
X-List-Received-Date: Wed, 06 Dec 2017 17:27:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/06/2017 04:13 PM, Koehler, Yannick wrote:
> When you say "subdirs", are you referring to submodules or something along those line?  We have used attempted to use submodules and it still required 20 + 1 repo and the overhead is similar to yocto + 20 repo but then you have yocto + 20 repos + 1 main repos, as such, this is not acceptable for us.  We also looked at other combination of multiple repos supported or in work for git and none are satisfying or supported in a way I could propose to use it in our project.
> 
> If you mean 1 repo, which subdirs representing each package, I would be interested, but how would it work with yocto SRC_URI?

The latter. It's simple: you set SRC_URI in each recipe to the same 
value, but set S differently:

S = "${WORKDIR}/git/module-1"

S = "${WORKDIR}/git/module-2"

etc.

Alex

