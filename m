Return-Path: <dlaroche7@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1651BE0084A; Sun, 26 Oct 2014 15:24:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dlaroche7[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69EEFE0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 15:24:41 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id v63so2537420oia.12
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 15:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=b1lbEK9bWajVkr2EH4g6lWgTcrlngnHB8CIFnZR1naw=;
	b=tZe+a7vq7l/xkSsca8v9H+h8NWaJLOJWEvajG5py4erboXGmIUfeQ9xGYTLH7WRvw7
	4qShyCgcnQq+Mw3BQLcrjDpxh4SNbIW3VwBGjF7Hj0jNNcNGiPQssBuF3NUjveS6nXeW
	6BLska4skA5M3uRaWd4uWqZs0XXlOpuGVKoH1X2G5eKGuX+PnKYT0HW2hQh8+D0Y44NB
	vvnW8utDTjGFxywl1w9lhj9y3wZzz07AwH96TJ10pp3dJlM5egaaQT696oGI96213ldm
	5m8P8Bfhsa8x4wwIQidwk5r5MHjlqvOd/Uliwp64StcqCQlyRWUti8vM2feXiITXbUHs
	L/LA==
MIME-Version: 1.0
X-Received: by 10.202.88.66 with SMTP id m63mr15868529oib.11.1414362281159;
	Sun, 26 Oct 2014 15:24:41 -0700 (PDT)
Received: by 10.202.49.2 with HTTP; Sun, 26 Oct 2014 15:24:40 -0700 (PDT)
In-Reply-To: <CAJTo0LZiW0nCx0b5aCj1QHf-BRssL8=jH03vfazNgYtGGoq12g@mail.gmail.com>
References: <CAELZnSmhcswJLt8VWyWRLCKPtaEONz_KhqyC5TnwaSeDR1xXLA@mail.gmail.com>
	<CAJTo0LZiW0nCx0b5aCj1QHf-BRssL8=jH03vfazNgYtGGoq12g@mail.gmail.com>
Date: Sun, 26 Oct 2014 18:24:40 -0400
Message-ID: <CAELZnS=ov8k_6hiy3zS2t89OY95jQD-d+1-K5oFBgfR04svePA@mail.gmail.com>
From: Denis Laroche <dlaroche7@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bash tab completion not working
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
X-List-Received-Date: Sun, 26 Oct 2014 22:24:43 -0000
Content-Type: text/plain; charset=UTF-8

2014-10-26 17:59 GMT-04:00 Burton, Ross <ross.burton@intel.com>:
>
> On 26 October 2014 21:41, Denis Laroche <dlaroche7@gmail.com> wrote:
>>
>> I also added the layer to the build/conf/bblayers.conf file. Alas,
>> after rebuilding bash it still doesn't have a dependency on readline
>> and tab completion still doesn't work.
>>
>> Would someone have a suggestion?
>
>
> Did you check the configure log to verify that bash was actually enabling
> readline, and if not then it hopefully says why.
>
> Ross

Thanks for the reply. Yes I see the log of configure that readline is enabled:

config.status: creating lib/readline/Makefile

What's interesting is the binary I built is much bigger than the
original (2963751 vs 847044 bytes). Looking at the log of the compile,
I can see that readline is built and is linked statically, which would
explain the bigger size of the executable and why ldd doesn't report
it.

But the end result is still the same.

