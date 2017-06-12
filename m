Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 705CBE00B76; Mon, 12 Jun 2017 10:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FEF8E00B63
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 10:39:59 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id D6F0A68A01C; Mon, 12 Jun 2017 18:39:57 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 35D4D68A019;
	Mon, 12 Jun 2017 18:39:55 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C1B506740364;
	Mon, 12 Jun 2017 19:39:54 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CAML1SccnQCtK0WQ8uauHLXhZO9Sc9e+sFYnmjoHoc_S0PbsczA@mail.gmail.com>
	<CAHiDW_EM+xpcp9NpQAdWBDc1MN0YsseehKCumgZNJKmc83ny1Q@mail.gmail.com>
	<CAML1SccOh9k83Cq3njB3_qE9r0oiMFgY=PPer+KcBnGjHJyZQw@mail.gmail.com>
	<CAML1Scc5JxkFRXPi8mqeYgGhDWaSgQST3zkUWGsWHp=6H_ZNqA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <7b796ca6-7839-8cc5-ce6c-0f8cbafb5442@mlbassoc.com>
Date: Mon, 12 Jun 2017 19:39:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAML1Scc5JxkFRXPi8mqeYgGhDWaSgQST3zkUWGsWHp=6H_ZNqA@mail.gmail.com>
Subject: Re: Wireshark but no Tshark?
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
X-List-Received-Date: Mon, 12 Jun 2017 17:40:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-12 19:19, Michael Calve wrote:
> I was able to create a username and password, and use this as credentials for SSH.  However, I can't run some of the 
> commands that I can when using picocom, and thus operating as root.

Such as?

> 
> On Mon, Jun 12, 2017 at 10:34 AM, Michael Calve <michael.calve@vectare.com <mailto:michael.calve@vectare.com>> wrote:
> 
>     Okay thank you very much for the clarification.
> 
>     Is there a set password for the root username?  I'm attempting to send files across and run scripts abord the joule
>     from my host system!
> 
>     On Mon, Jun 12, 2017 at 3:50 AM, Jussi Kukkonen <jussi.kukkonen@intel.com <mailto:jussi.kukkonen@intel.com>> wrote:
> 
>         On 7 June 2017 at 20:59, Michael Calve <michael.calve@vectare.com <mailto:michael.calve@vectare.com>> wrote:
> 
>             Hi, I've seen that Wireshark is portable to Yocto, however Tshark is not?  Is there other/better software
>             for reading pcaps and getting field data???
> 
> 
>         Hi,
> 
>         tshark is part of wireshark: it should be built by the wireshark recipe in meta-networking.
> 
>         If you want a smaller footprint tool, try tcpdump (also in meta-networking). It's not as featureful as tshark
>         but uses the same sniffing library and wireshark can display tcpdump results just fine.
> 
>         Jussi
> 
> 
> 
> 
> 


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

