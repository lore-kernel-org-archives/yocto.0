Return-Path: <david.c.nystrom@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0FB1E00B5D; Mon, 12 May 2014 12:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (david.c.nystrom[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1349 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 12:05:37 PDT
Received: from mail-la0-f46.google.com (unknown [209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C98E00AE8
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 12:05:36 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id ec20so2281350lab.33
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 12:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=0/bYkrEQXZSp0VVf/f8yMt3EoijrTgrQ+wi7ZOeOGTw=;
	b=BO7C9ABtBBLKHM7LuAIOWhObVcLYzviPeMGCf0bMIkIh4Q/GU5zxyQFLKcTyvGw6nh
	5KftDRABvMTBWJQXEf9yXue6LYP1uH9ciXHyN6eTUT5EkRqAAgdHHQ1d69SmcA4uuZxY
	MXwqVPmCoIxZnuvAR9rdUX8LhIIY7GkSwgsuqC5aHQ/4FLZBjXkByl7tuXmoOI1oPGfW
	pGt6RXcQZG9g1QevbLkh5QE0BGBRs0gE/FNkyG19sS5KDElJE+lwSXBvbPLrML3evrpu
	qg3db5mNKYdNIE8Bmrpk69Fwv/UqvS/jmo170MDqJVpAxJmGfVh1vSBbV+q8vg8nrvLn
	82mg==
X-Received: by 10.152.5.202 with SMTP id u10mr2961732lau.42.1399920186838;
	Mon, 12 May 2014 11:43:06 -0700 (PDT)
Received: from [192.168.43.169] (c-5eeaaa34-74736162.cust.telenor.se.
	[94.234.170.52])
	by mx.google.com with ESMTPSA id f9sm12599262lae.16.2014.05.12.11.43.05
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 12 May 2014 11:43:05 -0700 (PDT)
Message-ID: <53711637.7070105@gmail.com>
Date: Mon, 12 May 2014 20:43:03 +0200
From: =?ISO-8859-1?Q?David_Nystr=F6m?= <david.c.nystrom@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Paul McGougan <PMcGougan@topcon.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>	<536CE9B4.6050303@windriver.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
In-Reply-To: <C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
Subject: Re: Question / issue
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
X-List-Received-Date: Mon, 12 May 2014 19:05:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 2014-05-12 07:56, Paul McGougan wrote:
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>   
>>> Secondly, (and this is our main issue) I have found that by adding the
>>> do_install_append function, even if it is completely empty, whenever I
>>> try to bitbake anything that depends on the kernel, that bitbake always
>>> re-runs the kernel install stage, even when there have been no changes.
>>> Literally I can run a bitbake, then run the same bitbake command again,
>>> and both times the kernel install stage gets run (this is a problem
>>> because it takes a long time to run). It appears to be happening because
>>> the stampfile is not found every time (the hash appears to be wrong).
>>> Is this a bug? Is there a fix or work-around for this problem?
>> In this front, I'm not the best reference. Checking the sstate signature
>> might help, it should show which variables are being used .. and possibly
>> invalidating the signature, triggering the steps to run again.
> Thanks Bruce.
>
> Just for reference of anyone else who runs into a similar issue our issue was:
> 1. The do_install_append function was not *really* empty, the content of it
> was commented out.

To me, Thats sound like a bug in the dependency parser.
It should not parse for changes in comments, i.e. in this case 
do_install_append comments.

Or perhaps in variable expansion, which could be avoided in commented 
sections.

Br,
David


