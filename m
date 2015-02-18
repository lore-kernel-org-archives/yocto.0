Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3761BE0027A; Tue, 17 Feb 2015 23:15:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F64DE00278
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 23:15:53 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id hl2so49435197igb.0
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 23:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=H3CPAJzBz8I4RwSAj3qQrxfROe9VRHr8YKtUAymv4z4=;
	b=BkV831BYQeZ/TTEvWhON4irc9MuL5cnCZXjJJ27S2ZBBFE/4Wh381tbYnARsA7Ir76
	AnzfwO/67QrEgpoRLNY4hR7ZtaVD5kk7LnB9mKBmKDTiv9yZLgX42qeE96tZ2Ln1G8MI
	EhNLo2S7EW8l0YcOVbtUtnelGkEhgsEYXNvjIDdcqy9E682kb5ECBFks1VJfBIEHHx+T
	I4qSMyLGq8xyPzZEWhUsvqxM6AM0MXkpQZUJRuxI6jJzu+8UJwlwCN7cPb7+p2p2OW0Y
	glABOmwPKMajJFU+Y1w5eSjXKrbmekZo7+uLoVkf1xq6YM5eOYrs3Tmh10G+lONlCH0T
	mv/w==
X-Received: by 10.50.39.112 with SMTP id o16mr1283905igk.0.1424243752703; Tue,
	17 Feb 2015 23:15:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Tue, 17 Feb 2015 23:15:22 -0800 (PST)
In-Reply-To: <1423908404.20217.100.camel@linuxfoundation.org>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
	<CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
	<80920FD0-CA08-45D7-9A41-3971FB2D58D7@gmail.com>
	<CAJTo0LbqTrQzk0KeHDxYnmtZrrFdZD12DWrjA=Y4RtbQzwM0ow@mail.gmail.com>
	<CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
	<CACS+7ZRNm2Y0SJn76imF6DNoEsL2+ppC1zG45iGspOmL0EN0BQ@mail.gmail.com>
	<CAMKF1sqjQm+n5xKfS0utm9B9h_S+RYWrgnGUCboRNCk5XSUmzg@mail.gmail.com>
	<1423908404.20217.100.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 Feb 2015 23:15:22 -0800
Message-ID: <CAMKF1sofS7MteZnPsTYRNAcMwrrh=T3FP+ASmAOGDMhcwyXB4g@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Dan McGregor <danismostlikely@gmail.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Wed, 18 Feb 2015 07:15:57 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 14, 2015 at 2:06 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Hi Khem,
>
> On Thu, 2015-02-12 at 15:35 +0800, Khem Raj wrote:
>> I have refreshed the branch to include the patch which moves the src
>> uri to use the newly released glibc 2.21 branch
>> and please run it via autobuilder ( top 5 commits )
>
> Its running on the autobuilder at the moment. Errors will be reported to
> the error reporting system and can be seen at:
>
> http://errors.yoctoproject.org/Errors/Search/?items=10&query=be29d13a847d458efaf542ed302e48050f67a655
>
> Right now, poky-tiny failed due to warning are errors and unused
> symbols. Minnow failed due to SSE instruction issues. Full build logs
> are also available on the autobuilder:
>
> https://autobuilder.yoctoproject.org/main/tgrid
>
> as ross/mut-next. We do have other changes in the branch but the above
> are pretty clearly glibc.
>
> Other errors will go to the places above as the builds complete/fail.

Thanks. So I see following errors categories and status

1. valgrind - Martin already sent a patch for that
2. slang - I could not yet reproduce it on my active build (mips) (
seems specific to x86/ppc )
3. poky-tiny - glibc build - ( pushed a fix for that in latest pull tree)
4. minnow/qemux86 - glibc failure - ( pushed a fix for that in latest
pull tree )
5. glibc build failure on qemuarm - need to reproduce here
6. Image failures are probably due to above not building

I might get slang reproduced soon on qemux86 if I do I will try to
push for a fix




>
> Cheers,
>
> Richard
>

