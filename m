Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33E30E00724; Wed, 15 Mar 2017 10:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.220.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 12339 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Mar 2017 10:56:31 PDT
Received: from anteater.yew.relay.mailchannels.net
	(anteater.yew.relay.mailchannels.net [23.83.220.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 888C8E0050B
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 10:56:30 -0700 (PDT)
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 18FEB8A1E6D;
	Wed, 15 Mar 2017 14:30:42 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.126.34])
	by relay.mailchannels.net (Postfix) with ESMTPA id 7F8468A1F6B;
	Wed, 15 Mar 2017 14:30:31 +0000 (UTC)
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.82.168])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.32); Wed, 15 Mar 2017 14:30:42 +0000
Received: from cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	([82.34.23.153]:23679 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>)
	id 1co9wa-000pBa-He; Wed, 15 Mar 2017 15:30:31 +0100
Date: Wed, 15 Mar 2017 14:30:24 +0000
From: Paul Barker <pbarker@toganlabs.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170315143024.5da985c5@host0.betafive.co.uk>
In-Reply-To: <20170315134553.14210-1-twoerner@gmail.com>
References: <20170315134553.14210-1-twoerner@gmail.com>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=2.0
X-AuthUser: pbarker@toganlabs.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] userland_git.bb: remove libgl RPROVIDES
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
X-List-Received-Date: Wed, 15 Mar 2017 17:56:40 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 15 Mar 2017 09:45:53 -0400
Trevor Woerner <twoerner@gmail.com> wrote:

> This recipe does not generate any libGL libraries, so remove libgl from the
> list of libraries it provides. Among the libraries generated are libEGL and
> libGLESv2. This entry makes it impossible to have, say, mesa provide libGL
> since opkg thinks there is a conflict.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 5344dc3..f0f25b2 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -10,7 +10,7 @@ PR = "r5"
>  PROVIDES = "virtual/libgles2 \
>              virtual/egl"
>  
> -RPROVIDES_${PN} += "libgles2 libgl"
> +RPROVIDES_${PN} += "libgles2"
>  
>  COMPATIBLE_MACHINE = "raspberrypi"
>  

I think Khem already has a similar patch staged for this:
https://github.com/kraj/meta-raspberrypi/commit/e070005aa8251c81323b393d49fd87f92e74cae1

Thanks,
Paul

