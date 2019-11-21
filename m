Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3147E00DEE; Thu, 21 Nov 2019 07:15:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51319E007D4
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 07:15:07 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xALFF33W001857
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 09:15:04 -0600
To: yocto@yoctoproject.org
References: <MN2PR04MB54872474D62A95704B7AB0B7FA4E0@MN2PR04MB5487.namprd04.prod.outlook.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <d1ea4d96-3745-2f8c-4c04-80f9270d28b0@kernel.crashing.org>
Date: Thu, 21 Nov 2019 09:15:03 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <MN2PR04MB54872474D62A95704B7AB0B7FA4E0@MN2PR04MB5487.namprd04.prod.outlook.com>
Subject: Re: busybox + SELinux (warrior) - reboot issue
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
X-List-Received-Date: Thu, 21 Nov 2019 15:15:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

I've been trying to find time to look into it, but I've not had any so far.

I'd suggest trying it on more full Linux system first to see if that resolves
the issue.  If it does, then it's simply a configuration and you can use the
audit messages to help figure it out..  but the fact it's rebooting suggests to
me that something is incorrect in the initscripts when used with busybox.

--Mark

On 11/21/19 8:54 AM, Yair Itzhaki wrote:
> Anybody?
> 
>  
> 
> Thanks,
> 
> Yair
> 
>  
> 
>  
> 
> 

