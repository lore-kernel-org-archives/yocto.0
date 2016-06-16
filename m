Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAED6E00D7F; Wed, 15 Jun 2016 23:04:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B90E00D6C
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 23:04:31 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 53BD768A01D; Thu, 16 Jun 2016 07:04:31 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5D0CE68A01A;
	Thu, 16 Jun 2016 07:04:27 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 202D1674019D;
	Thu, 16 Jun 2016 08:04:27 +0200 (CEST)
To: yocto@yoctoproject.org
References: <111ACD726EC3464BAED310F5EA7BEBDA5FE22C@RCHEXMBP1.fnc.net.local>
	<CAJTo0LY7sPfUwdR6G=BAJ00EChz+hm_coYPnvNo__O0tiTAGyw@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA5FE394@RCHEXMBP1.fnc.net.local>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5762416B.2040805@mlbassoc.com>
Date: Thu, 16 Jun 2016 08:04:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA5FE394@RCHEXMBP1.fnc.net.local>
Subject: Re: resolvconf nameserver
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
X-List-Received-Date: Thu, 16 Jun 2016 06:04:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-14 16:33, Rajasekaran, Monica wrote:
> Yes, I tried that already.
>

How are you getting your network set up?  Static?  DHCP?  using network-manager or conman?

>
> *From:*Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* Monday, June 13, 2016 4:58 PM
> *To:* Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] resolvconf nameserver
>
> On 13 June 2016 at 22:47, Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com
> <mailto:Monica.Rajasekaran@us.fujitsu.com>> wrote:
>
>     I thought it would be the usual method as in other linux versions such as Ubuntu. But there is no /etc/resolv.conf file.
>
>
> Did you try just creating a /etc/resolv.conf with the nameserver entries you want?
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

