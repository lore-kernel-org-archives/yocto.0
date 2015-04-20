Return-Path: <wouter.van.rooy@axon.tv>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B268E00992; Mon, 20 Apr 2015 02:09:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.203.187.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
	[173.203.187.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2E40E0091D
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 02:09:30 -0700 (PDT)
Received: from smtp25.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp25.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	AB992180382; Mon, 20 Apr 2015 05:09:29 -0400 (EDT)
Received: by smtp25.relay.iad3a.emailsrvr.com (Authenticated sender:
	wouter.van.rooy-AT-axon.tv) with ESMTPSA id 5C0EC18037C; 
	Mon, 20 Apr 2015 05:09:29 -0400 (EDT)
X-Sender-Id: wouter.van.rooy@axon.tv
Received: from [10.4.8.34] ([UNAVAILABLE]. [83.137.143.222])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.4.2); Mon, 20 Apr 2015 09:09:29 GMT
Message-ID: <5534C248.5050107@axon.tv>
Date: Mon, 20 Apr 2015 11:09:28 +0200
From: Wouter van Rooy <wouter.van.rooy@axon.tv>
Organization: Axon Digital Design
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
	<552FC59F.2080603@windriver.com>
In-Reply-To: <552FC59F.2080603@windriver.com>
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
X-List-Received-Date: Mon, 20 Apr 2015 09:09:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bruce,

First of all, thanks for your answer. It would be a comforting idea to 
get this initramfs implemented cleanly in my project.

On 16-04-15 16:22, Bruce Ashfield wrote:
> I'm the proud owner of the bugzilla to document this process better, 
> so let's work through the issues and see if there's a bug, or 
> something that just isn't clearly described. We are talking about the 
> 1.6 release here .. so at least the recent changes in kernel.bbclass 
> processing won't be the cause of the breakage.
Correct, to be even more precise I am using the daisy-11.0.0 tag for Poky.
> Correct, and this definitely used to work. I can't see anything wrong 
> by inspection alone, but will launch some builds to see if I can 
> confirm the behaviour and that variable not making it down into the 
> function call. Bruce 
Thanks, I would love to hear the results of your test builds. Just drop 
me a line if you need anything else from my build environment for 
reproduction, like log files and such.

Kind regards,
Wouter van Rooy

