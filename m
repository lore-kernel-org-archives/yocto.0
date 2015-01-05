Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27E0DE00521; Mon,  5 Jan 2015 08:32:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.47.26.153 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E868EE00344
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 08:32:15 -0800 (PST)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id t05GWBsL018279;
	Mon, 5 Jan 2015 10:32:11 -0600
Received: from DFLE72.ent.ti.com (dfle72.ent.ti.com [128.247.5.109])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id t05GWBCl026809;
	Mon, 5 Jan 2015 10:32:11 -0600
Received: from dflp32.itg.ti.com (10.64.6.15) by DFLE72.ent.ti.com
	(128.247.5.109) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 5 Jan 2015 10:32:11 -0600
Received: from [172.22.145.215] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dflp32.itg.ti.com (8.14.3/8.13.8) with ESMTP id t05GWB7u023983;
	Mon, 5 Jan 2015 10:32:11 -0600
Message-ID: <54AABC8B.4000604@ti.com>
Date: Mon, 5 Jan 2015 11:32:11 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
	<549EFEF1.1040604@ti.com>
	<D0D07A4A.50C55%belen.barros.pena@intel.com>
In-Reply-To: <D0D07A4A.50C55%belen.barros.pena@intel.com>
Subject: Re: My config got stuck in the toaster
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
X-List-Received-Date: Mon, 05 Jan 2015 16:32:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit


On 01/05/2015 06:59 AM, Barros Pena, Belen wrote:
> On 28/12/2014 00:18, "William Mills" <wmills@ti.com> wrote:
>
>>
>> On 12/27/2014 10:40 AM, Mills, William wrote:
>>> OK, you are not going to believe me but I swear this really happened ...
>
> We do believe you :)
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6935
>

Yep that sounds like another symptom of the same issue.
Thanks.

