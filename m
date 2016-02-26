Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB00CE00D72; Fri, 26 Feb 2016 05:38:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2C94CE00D58
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 05:38:00 -0800 (PST)
Received: (qmail 8311 invoked by uid 1003); 26 Feb 2016 13:37:59 -0000
Received: from unknown (HELO ?192.168.11.124?)
	(philip@opensdr.com@71.171.15.136)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	26 Feb 2016 13:37:59 -0000
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org,
	openembedded-architecture@lists.openembedded.org
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <56D05536.3090904@balister.org>
Date: Fri, 26 Feb 2016 08:37:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
Cc: Brian Avery <brian.avery@intel.com>
Subject: Re: [Openembedded-architecture] Removing Hob for 2.1
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
X-List-Received-Date: Fri, 26 Feb 2016 13:38:03 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/25/2016 09:49 PM, Paul Eggleton wrote:
> Hi folks,
> 
> So we've been gearing up the Toaster web UI to replace the Hob (GTK+ based) UI 
> for some time now; Hob has basically been on life support for the past few 
> releases. As of late last month in master, Toaster has the capability to 

Please remove Hob.

I've heard that the Linux Foundation training still mentions Hob, I'll
double check that this content is removed and shifted to Toaster.

Philip

> select the packages in an image, removing the last thing that Hob could do 
> that Toaster couldn't. This means it's about time we looked at removing Hob - 
> particularly if we want to do so for the upcoming 2.1 release as we should 
> really do so within the M3 development timeframe which is almost over.
> 
> To recap, the reasons why Hob ought to be removed include:
> 
> - The code is tightly woven into BitBake, making it fragile. This means it 
> needs significant QA and maintenance on an ongoing basis.
> 
> - Some of the implementation is not ideal; we'll be able to remove some cruft 
> from BitBake and OE-Core at the same time.
> 
> - It's GTK+ 2 based, not the current GTK+ 3.
> 
> - Toaster is now a much more capable UI and is being actively maintained
> 
> I'm maintaining a list of things we would drop together with Hob, so I could 
> probably come up with a patchset - I just wanted to give people a heads up and 
> double check that this is something we indeed want to do in 2.1. Any comments?
> 
> Cheers,
> Paul
> 

