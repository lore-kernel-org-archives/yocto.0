Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FDB2E00B18; Tue, 15 May 2018 03:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D449E008D2
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 03:17:11 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 May 2018 03:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,403,1520924400"; d="scan'208";a="228690488"
Received: from csoh-mobl1.gar.corp.intel.com (HELO [10.255.140.247])
	([10.255.140.247])
	by fmsmga006.fm.intel.com with ESMTP; 15 May 2018 03:17:09 -0700
To: Somshekar C Kadam <somkadam76@gmail.com>, yocto@yoctoproject.org
References: <CALbGK-pZz0-MR5Dv8asoOc_eKQ4o2LwLZ+ZjBwTD6wmGkBVB5w@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <6a8431d0-737f-c300-c74c-7c672057fd41@intel.com>
Date: Tue, 15 May 2018 18:17:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CALbGK-pZz0-MR5Dv8asoOc_eKQ4o2LwLZ+ZjBwTD6wmGkBVB5w@mail.gmail.com>
Subject: Re: Ptest log
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
X-List-Received-Date: Tue, 15 May 2018 10:17:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 05/09/2018 03:24 PM, Somshekar C Kadam wrote:
> I use the parser to generate wiki page output provided in qa tools, next
> I need to copy the content  to wiki page which I have no access to get
> the same output format. 
> 
> Please suggest what is that I need to do if I need to get the same
> output format, as I see it contains excel/xml  format. 
> 
> or if there is an other alternative method  to get list of PASS and FAIL
> numbers of each package ptest results. 

It should be easy to modify that script to have the section to parse the
logs and display it differently.

Or, use one of the mediawiki parsers to convert the markup to a
different format ...

Thanks,
Anuj

