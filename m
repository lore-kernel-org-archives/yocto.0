Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB567E008A7; Mon, 26 Jan 2015 21:53:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-01.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C70F6E00894
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 21:52:58 -0800 (PST)
X-Halon-ID: bfec7832-a5e8-11e4-acbf-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 27 Jan 2015 06:52:59 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 27 Jan 2015 06:52:54 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei <andrei@gherzan.ro>, <theodor@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAK18fxEe4GfNZ9qyOPc5oMU+Y8WyLKSjVw9LnZGj2q4ZBMhRNA@mail.gmail.com>
References: <1417604626-52166-1-git-send-email-incnews@jenslucius.de>
	<CAK18fxEe4GfNZ9qyOPc5oMU+Y8WyLKSjVw9LnZGj2q4ZBMhRNA@mail.gmail.com>
Message-ID: <b437815e1d543db649048ea5af01f905@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org, info@jenslucius.de
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Replace not working v3.16.1 by v3.16.5
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Jan 2015 05:53:16 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Actually this bump is already included in meta-raspberrypi:

efd760d linux-raspberrypi: faulty branch and srcrev for 3.16

BR,
Petter

2015-01-26 00:03 skrev Andrei Gherzan:

> Hi Theodor,
>
> On Wed, Dec 3, 2014 at 1:03 PM, Jens Lucius <incnews@jenslucius.de>
> wrote:
>
>> From: Jens Lucius <info@jenslucius.de>
>>
>> The recipe for 3.16.1 is not working because of a typo in branch
>> and the revision not being available any more.
>>
>> Update to latest (and last) 3.16.5.
>>
>> No Update to a 3.17.x because these get rebased regularly.
>>
>> Signed-off-by: Jens Lucius <info@jenslucius.de>
>
> Could you give this patch a spin?
> --
>
> ANDREI GHERZAN

