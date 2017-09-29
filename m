Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C9D1E00B53; Fri, 29 Sep 2017 08:48:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 728FEE007EF
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 08:48:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8TFmfFQ019375
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Sep 2017 08:48:41 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 29 Sep 2017 08:48:40 -0700
To: Bryan Evenson <bevenson@melinkcorp.com>, "Burton, Ross"
	<ross.burton@intel.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LYWJFAChPkcOeU4ESOzCZ0XkrVswRnsh7jz=4QnKZ6uWA@mail.gmail.com>
	<DM5PR05MB29543B944CF11354749DE3C6BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LZ3+prEXi4eJH-0qcg_mp7CShyVzGg2=nY3c3s585CQ9A@mail.gmail.com>
	<DM5PR05MB2954E471F11F1ADF08E544CABB780@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LavAJr8D+kuQ_6FkjA-D-XotT7BcrCA3W7bv_HL2EpuxA@mail.gmail.com>
	<DM5PR05MB2954EF4777E6EB3AE7C36815BB780@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LaoXqf700W4wHMwfCJAK3B5xOTuFm-7ug3DWscFpcF=sg@mail.gmail.com>
	<DM5PR05MB2954E147CAF6959E26148F2BBB790@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <1a8404d4-1052-f464-6fde-cdcaf686386a@windriver.com>
Date: Fri, 29 Sep 2017 10:48:40 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <DM5PR05MB2954E147CAF6959E26148F2BBB790@DM5PR05MB2954.namprd05.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Fri, 29 Sep 2017 15:48:46 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/28/17 8:28 AM, Bryan Evenson wrote:
> Ross,
> 
>  
> 
> *From:*Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* Wednesday, September 27, 2017 6:43 PM
> *To:* Bryan Evenson <bevenson@melinkcorp.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Errors building with Windows Subsystem for Linux (aka
> Bash on Ubuntu on Windows)
> 
>  
> 
> On 27 September 2017 at 21:59, Bryan Evenson <bevenson@melinkcorp.com
> <mailto:bevenson@melinkcorp.com>> wrote:
> 
>      
> 
>     I think I found the problem.  I started looking at more file properties for
>     the files that worked and the ones that didn’t, and I noticed that all the
>     ones that failed show a link count of 1024.  The Windows filesystem has a
>     link limit of 1023 links per file (at least as reported here:
>     https://msdn.microsoft.com/en-us/library/windows/desktop/aa363860(v=vs.85).aspx),
>     so I think the hard link is failing due to the Windows link limit.  If that
>     is the case, then I don’t think it’ll be a quick fix to get a working
>     solution under WSL.
> 
>  
> 
> That link count doesn't seem feasible though...  we hardlink frequently during a
> recipe build, but I'd expect to see 10 links, not over a thousand.  You've
> definitely found the problem, just need to figure out what is causing such
> excessive linking,
> 
>  
> 
> Two files, LC_MEASUREMENT and LC_PAPER, seem to be identical through most the
> locales.  I’m not sure which are copies and which are hard links, but I did a
> md5sum comparison and found over 1200 identical LC_MEASUREMENT files in the
> glibc-locale working directory.  I don’t need all the locales, so I set
> GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8" in my local.conf and now
> glibc-locale completes building.
> 

FYI, this is expected.  The locales have numerous copies of the same files for
the same locales.  So to save space there is a step that runs and identifies the
duplicates and hard links them.  (This helps a lot for the sstate-cache for
instance).

It likely wouldn't be difficult to determine the link count 'issue' and simply
link to a different file for subsequent links... but I'm no longer sure where
the linking occurs that does all of this.

--Mark

> 
> I’ll report back if the rest of the build completes.
> 
>  
> 
> Bryan
> 
>  
> 
> 
> 


