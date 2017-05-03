Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D1F9E00ACE; Wed,  3 May 2017 00:12:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 498D3E00AA2
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 00:11:56 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 May 2017 00:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,283,1491289200"; d="scan'208";a="94928419"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 03 May 2017 00:11:54 -0700
To: yocto@yoctoproject.org, aravindhlalgss@embedur.com
References: <BLUPR15MB05005784FB3B95086523368AD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <cd07a0e7-c106-470d-9be8-698f1c5c5832@linux.intel.com>
Date: Wed, 3 May 2017 10:11:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <BLUPR15MB05005784FB3B95086523368AD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
Subject: Re: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Wed, 03 May 2017 07:12:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2017 08:16 AM, Aravindhlal G.S.S wrote:
> I am trying to make changes in the bitbake files(recipes) to pull/fetch
> the source code from the local instead of the remote server. The SRC_URI
> points to the local workspace, however I see that while building the
> source code is pulled from a remote repository.

Can you copy-paste the recipe here? Or at least what the SRC_URI 
specifically says? You can obfuscate your project name etc, if that is 
confidential.

> Do I need to make any specific changes in the recipes or any conf files
> under build directory (auto.conf) ? Could you please let me your
> pointers/suggestions ?

Maybe this?
http://www.yoctoproject.org/docs/2.2/dev-manual/dev-manual.html#building-software-from-an-external-source

> [Gentle reminder]
> Can someone help me here, please ?

It's more difficult to provide help, if you describe the issue in 
generic terms, maybe that's why there was no reaction.


Alex

