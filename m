Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5BF8E00751; Mon,  5 Jan 2015 08:54:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.94.94.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C49E00344
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 08:53:55 -0800 (PST)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id t05Grfdb006966;
	Mon, 5 Jan 2015 10:53:41 -0600
Received: from DFLE73.ent.ti.com (dfle73.ent.ti.com [128.247.5.110])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id t05GrfSC010168;
	Mon, 5 Jan 2015 10:53:41 -0600
Received: from dlep32.itg.ti.com (157.170.170.100) by DFLE73.ent.ti.com
	(128.247.5.110) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 5 Jan 2015 10:53:40 -0600
Received: from [172.22.145.215] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dlep32.itg.ti.com (8.14.3/8.13.8) with ESMTP id t05GremS001095;
	Mon, 5 Jan 2015 10:53:40 -0600
Message-ID: <54AAC194.7050002@ti.com>
Date: Mon, 5 Jan 2015 11:53:40 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
	<549EFEF1.1040604@ti.com>
	<D0C5AB88.50A09%belen.barros.pena@intel.com>
In-Reply-To: <D0C5AB88.50A09%belen.barros.pena@intel.com>
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
X-List-Received-Date: Mon, 05 Jan 2015 16:54:00 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 12/28/2014 02:16 AM, Barros Pena, Belen wrote:
> On 28/12/2014 00:18, "William Mills" <wmills@ti.com> wrote:
>
>> BTW: Building "world" does not look nice in toaster.  It list 100s of
>> build targets instead of just "world".
>
> Anything with "does not look nice in toaster" is probably my problem.
>
> Can I ask you to open an issue in Bugzilla for this, so that we can put
> some thought into how to present 'world' builds?
>

Done.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7110

Thanks.

I also noticed that the "toaster manual" link in the upper corner of the 
UI links to the Hob manual not the toaster manual.

I am running 1.7 code but the URL in templates/base.html looks OK to me.
The website seems to be redirecting this to the hob manual.

I filed the following bug against infrastructure with you in CC.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7111

-- Bill



