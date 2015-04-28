Return-Path: <wouter.van.rooy@axon.tv>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F226EE00960; Tue, 28 Apr 2015 00:48:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.203.187.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp86.iad3a.emailsrvr.com (smtp86.iad3a.emailsrvr.com
	[173.203.187.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F06E0086D
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 00:48:46 -0700 (PDT)
Received: from smtp11.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp11.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	A65AF10029D; Tue, 28 Apr 2015 03:48:45 -0400 (EDT)
Received: by smtp11.relay.iad3a.emailsrvr.com (Authenticated sender:
	wouter.van.rooy-AT-axon.tv) with ESMTPSA id 35F3A100289; 
	Tue, 28 Apr 2015 03:48:45 -0400 (EDT)
X-Sender-Id: wouter.van.rooy@axon.tv
Received: from [10.4.8.34] ([UNAVAILABLE]. [83.137.143.222])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.4.2); Tue, 28 Apr 2015 07:48:45 GMT
Message-ID: <553F3B5C.5010207@axon.tv>
Date: Tue, 28 Apr 2015 09:48:44 +0200
From: Wouter van Rooy <wouter.van.rooy@axon.tv>
Organization: Axon Digital Design
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
	<552FC59F.2080603@windriver.com> <5534C248.5050107@axon.tv>
	<553E95B2.4050004@windriver.com>
In-Reply-To: <553E95B2.4050004@windriver.com>
Subject: Re: [poky] Initramfs not appended to kernel image
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
X-List-Received-Date: Tue, 28 Apr 2015 07:48:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 27-04-15 22:01, Bruce Ashfield wrote:
> I was traveling last week and am just getting back to this now.
> I wanted to check in to see if your issues are still persisting to see 
> if you worked it out in the meantime.
>
> Bruce

Unfortunately I have not found a solution yet. For now I am using the 
workaround as described in my patch file, but obviously that is not a 
very clean way to fix the issue.
If you would be willing to take a look at it that would be a great help.

Kind regards,
Wouter van Rooy

