Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75CACE00985; Thu, 30 Mar 2017 00:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from nov-007-i457.relay.mailchannels.net
	(nov-007-i457.relay.mailchannels.net [46.232.183.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 013A2E00970
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 00:05:37 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 3803F7C12AE;
	Thu, 30 Mar 2017 06:47:13 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.128.154])
	by relay.mailchannels.net (Postfix) with ESMTPA id 6C5447C281D;
	Thu, 30 Mar 2017 06:47:12 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.120.92])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.39); Thu, 30 Mar 2017 06:47:13 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pbarker@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-Blushing-Celery: 203f8200352c0d7f_1490856433105_1770235872
X-MC-Loop-Signature: 1490856433105:447595519
X-MC-Ingress-Time: 1490856433105
Received: from cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	([82.34.23.153]:53636 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>)
	id 1ctTrS-000IAH-ER; Thu, 30 Mar 2017 08:47:11 +0200
Date: Thu, 30 Mar 2017 07:47:07 +0100
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20170330074707.73ed5ace@host0.betafive.co.uk>
In-Reply-To: <20170314103237.9533-1-pbarker@toganlabs.com>
References: <20170314103237.9533-1-pbarker@toganlabs.com>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=5.0
X-AuthUser: pbarker@toganlabs.com
Subject: Re: [meta-raspberrypi][morty][PATCH 0/3] Stable branch kernel updates
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
X-List-Received-Date: Thu, 30 Mar 2017 07:05:42 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 14 Mar 2017 10:32:34 +0000
Paul Barker <pbarker@toganlabs.com> wrote:

> This series contains backports of patches from Khem's latest combined pull
> request. I've boot tested a raspberrypi3 (4.4.y and 4.9.y kernels) and a
> raspberrypi (4.9.y kernel) using these patches and all looks good.
> 
> Khem Raj (1):
>   linux-raspberrypi_4.9.bb: Update to 4.9.13
> 
> Paul Barker (2):
>   linux-raspberrypi: Fix uImage build on 4.9.y and later
>   linux-raspberrypi_4.4: Update to 4.4.50
> 
>  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ----------------------
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb      | 10 +++++---
>  3 files changed, 10 insertions(+), 34 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> 

Ping on these.

