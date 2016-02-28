Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C90E00C4F; Sat, 27 Feb 2016 18:09:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D470E00BBF
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 18:09:07 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aZqmX-0003G3-IQ; Sun, 28 Feb 2016 02:08:26 +0000
To: "T.O. Radzy Radzykewycz" <radzy@windriver.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com>
	<33006C99F5A5194A9B7A7715DFA3E383EB81AF8A@ALA-MBB.corp.ad.wrs.com>
	<CAJTo0LaRP_AY9X3A5pLDY72NmKNjg3M0L6QLrO+rDuRY9vpa2Q@mail.gmail.com>
	<33006C99F5A5194A9B7A7715DFA3E383EB81CE0C@ALA-MBB.corp.ad.wrs.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D256CA.2040009@twobit.us>
Date: Sat, 27 Feb 2016 18:09:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <33006C99F5A5194A9B7A7715DFA3E383EB81CE0C@ALA-MBB.corp.ad.wrs.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Sun, 28 Feb 2016 02:09:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/24/2016 09:53 AM, Radzykewycz, T (Radzy) wrote:
> 
> ________________________________________
>> From: Burton, Ross [ross.burton@intel.com]
>> Sent: Wednesday, February 24, 2016 9:10 AM
>> To: Radzykewycz, T (Radzy)
>> Cc: Hatle, Mark; yocto@yoctoproject.org
>> Subject: Re: [yocto] [meta-selinux][PATCH] swig is in meta-oe, remove this copy
>>
>> On 22 February 2016 at 14:51, Radzykewycz, T (Radzy) <radzy@windriver.com<mailto:radzy@windriver.com>> wrote:
>> It's easy enough to update the one in meta-selinux, if the decision is
>> to keep the duplicate.  I have a 3.0.6 => 3.0.8 update ready to upload
>> to meta-oe, and I can do meta-selinux at the same time.
>>
>> In master at least, swig isn't in meta-oe and oe-core has 3.0.8 already.  oe-core jethro has 3.0.6.  Basically, there's no reason for anything targeting jethro onwards to ship swig.
>>
>> Ross
> 
> Thanks, Ross.
> 
> Yes, I realized yesterday that I had been working on an older branch.  So
> no change is needed.

Thanks Radzy. I'm just catching up on this thread. It looks like swig
was removed from meta-selinux in
321848ab57d7d68c2033d22af1bedd3b86cafc3b so I'm leaving this alone.

Thanks,
Philip

