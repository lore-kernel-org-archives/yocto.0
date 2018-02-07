Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51AFEE00DB1; Wed,  7 Feb 2018 04:31:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C26D4E00A44
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 04:31:51 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Feb 2018 04:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,473,1511856000"; d="scan'208";a="25450205"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 07 Feb 2018 04:31:49 -0800
To: Alan Martinovic <alan.martinovic@senic.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <CAOT_U5a_cTCpAHHqPfozcH0Lxu=O1BFYgVa-FkdZcR0-+X8QQQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9fd5ab57-6634-c619-e0ba-a16fab765de0@linux.intel.com>
Date: Wed, 7 Feb 2018 14:25:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAOT_U5a_cTCpAHHqPfozcH0Lxu=O1BFYgVa-FkdZcR0-+X8QQQ@mail.gmail.com>
Subject: Re: Creating a python recipe with devtool
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
X-List-Received-Date: Wed, 07 Feb 2018 12:31:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/07/2018 02:17 PM, Alan Martinovic wrote:
>      devtool add
> https://pypi.python.org/packages/65/eb/1c3db9596eddb2bd1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2.6-py2.py3-none-any.whl#md5=b7783a8c449135e5bb344b3f0caa3522

I don't think we support .whl format at the moment. You need to fetch 
sources directly from github.


Alex

