Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09636E010C4; Mon,  1 Aug 2016 10:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC392E00EA5
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 10:56:54 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 0C18668A01A; Mon,  1 Aug 2016 18:56:52 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 65BA968A019;
	Mon,  1 Aug 2016 18:56:52 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1C2FD6740075;
	Mon,  1 Aug 2016 19:56:52 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <579C6829.8080804@mlbassoc.com>
	<CAJTo0LZ=h9Yoya4CyMNz3jeJR2XzeDqWi+cgmr6rcPRKBxZCJQ@mail.gmail.com>
	<6dc9bda6-6399-19ce-37d3-6886e38b4054@mlbassoc.com>
	<CAJTo0LZcshBKQ7TFNXRhy=9LjpkZ-t9PKf-9uEH2Q7vdq-VSkw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <b59b4b4d-b87b-28e9-05f6-2ea3bbf55598@mlbassoc.com>
Date: Mon, 1 Aug 2016 19:56:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZcshBKQ7TFNXRhy=9LjpkZ-t9PKf-9uEH2Q7vdq-VSkw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: A question of sstate and compilers
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
X-List-Received-Date: Mon, 01 Aug 2016 17:56:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-01 16:28, Burton, Ross wrote:
>
> On 1 August 2016 at 15:26, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Nothing else changed, I'm sure.
>
>
> *Something* changed, although it may be something that shouldn't have caused a rebuild (at which point printdiff is
> useful to find that out).

I'll try running this and report, but the only thing that changed
is the line in local.conf selecting the version of GCC

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

