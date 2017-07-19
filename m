Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D38F6E00C49; Tue, 18 Jul 2017 21:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.21 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.21 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 407 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Jul 2017 21:55:00 PDT
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9E7CE00BFF
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 21:55:00 -0700 (PDT)
Received: from fwd25.aul.t-online.de (fwd25.aul.t-online.de [172.20.26.130])
	by mailout10.t-online.de (Postfix) with SMTP id E65AF41C0D03
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 06:48:12 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(E4qHBGZFwh8q9iyEIXvQWBdvsAwABTKc6UTknSnkNxiaUHrqRNfvyGSjp9xqdNTw1m@[84.146.40.121])
	by fwd25.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dXgu8-0WWAaW0; Wed, 19 Jul 2017 06:48:08 +0200
Date: Wed, 19 Jul 2017 06:48:08 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170719064808.d856c55a9d17c6d8d74f51fb@t-online.de>
In-Reply-To: <6f93e799-ee94-359e-24d4-ff55b74e36b5@gmail.com>
References: <6f93e799-ee94-359e-24d4-ff55b74e36b5@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: E4qHBGZFwh8q9iyEIXvQWBdvsAwABTKc6UTknSnkNxiaUHrqRNfvyGSjp9xqdNTw1m
X-TOI-MSGID: e7994a0d-aee9-4f4a-b6aa-8838ae0d19f5
Subject: Re: FFplay question ?
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
X-List-Received-Date: Wed, 19 Jul 2017 04:55:01 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Dear Riko,

ffplay needs sdl as dependency, guess that's your problem

regards,
Markus

On Wed, 19 Jul 2017 09:19:24 +0800
Riko Ho <antonius.riko@gmail.com> wrote:

> Dear Yocto Members,
> 
> I tried to compile FFplay with FFMpeg, but I can not get it ?
> 
> What should I change on this code ?
> 
> Here's on ffmpeg_3.3.bb :
> 
> ===
> 
> EXTRA_OECONF = " \
>      --disable-stripping \
>      --enable-pic \
>      --enable-shared \
>      --enable-pthreads \
>      --enable-ffplay  \
> 
> "
> 
> 
> Thank you
> 
> 
> -- 
> *
> 
> /*******/
> Sent by Ubuntu LTS 16.04,
> Kind regards,
> Riko Ho
> /*******/
> 
> *


-- 
Markus Volk <f_l_k@t-online.de>

