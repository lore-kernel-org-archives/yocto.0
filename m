Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16025E00B5C; Thu,  1 Jun 2017 07:52:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CFE3E00992
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 07:52:34 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2BD4368A01C; Thu,  1 Jun 2017 15:52:34 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id A7A9C68A019;
	Thu,  1 Jun 2017 15:52:33 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4E9926740370;
	Thu,  1 Jun 2017 16:52:33 +0200 (CEST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
References: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
	<CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
	<859693e4-eedd-9212-6dc3-eac70c938c71@mlbassoc.com>
	<CAJTo0LZfKRW7NRmJX10v-EDGNmpzr36KmOP8+Nhh7dTn-ejKVg@mail.gmail.com>
Message-ID: <d2d7d713-963d-532b-b604-c48f27f34cf7@mlbassoc.com>
Date: Thu, 1 Jun 2017 16:52:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZfKRW7NRmJX10v-EDGNmpzr36KmOP8+Nhh7dTn-ejKVg@mail.gmail.com>
Subject: Re: Why can't I install eudev-hwdb
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
X-List-Received-Date: Thu, 01 Jun 2017 14:52:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-01 15:46, Burton, Ross wrote:
> 
> On 1 June 2017 at 14:38, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     Thanks for the suggestion.  Sadly, still no go.
> 
> 
> No idea then.  CCing Alejandro...

Very interesting - I'm building two different system images for this
target and I tried to apply the BAD_RECOMMENDS to only one of them.
The target images (pure result of bitbake) did the right thing, one
image had eudev-hwdb and the other did not.  The image without eudev-hwdb
seems to be never able to install it using opkg install/upgrade, but
only if the package would need to be downloaded from the IPK server.
I copied the appropriate IPK package to that image manually and opkg
happily installed it from the direct file.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

