Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D0DE00A49; Mon,  1 Jun 2015 05:08:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD17E009CA
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 05:08:20 -0700 (PDT)
Received: by ieczm2 with SMTP id zm2so106967053iec.1
	for <yocto@yoctoproject.org>; Mon, 01 Jun 2015 05:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=97E1imSjuYRiOu7qAt7pW+ZVgNCgST6AjKI1u8b/kH4=;
	b=L8YjJ3KwSASddw/tVQNjLHIrSZBYZq3JGFWlo8nBqADkmagkbI69kDVN9ijwU697gu
	eXuD0oKg39wU2k/ZQbg/eX65IB1y6b/HaxxJdwM99G3e7PJnfzTnxSrYWWchSXeWlAY2
	ywrgXjau+V3cmQ92E6GVuteVDqsvjPpuWBLpO2ZYH0ursXG4+puwsp0ZMDQ7eLmFGJjB
	95WLWGKfEp83nSYEHtIEQTT9ZovLE+mrGYjmtNBGHDWMmy9ar2HHFLGLxyQ4eqSifbz8
	TpnsqYxMNHlAbnw4Cyp82Sfg5SkLa3H1zX5yECuYzk75fYPKDz39zu54UQ5eRsnNWWuU
	HmZg==
MIME-Version: 1.0
X-Received: by 10.107.33.9 with SMTP id h9mr26594494ioh.1.1433160500026; Mon,
	01 Jun 2015 05:08:20 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Mon, 1 Jun 2015 05:08:19 -0700 (PDT)
In-Reply-To: <CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
References: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
	<CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
Date: Mon, 1 Jun 2015 07:08:19 -0500
Message-ID: <CAK5mtexC81Yi9C2YA6O4SuKZ=vQ6wk8=cUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build hello_world.c in yocto
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
X-List-Received-Date: Mon, 01 Jun 2015 12:08:23 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 31, 2015 at 5:48 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 29 May 2015 at 21:59, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>>
>> Question what are the necessary IMAGE_INSTALL_append to build a c
>> hello world in an core-image-minimal ?
>
>
> The easy way is to add tools-sdk to IMAGE_FEATURES.  That gives you a
> complete toolchain (not just gcc) and more pieces.
>
> Ross
Thanks a lot Ross

I will try this on e, I had the idea that just with

EXTRA_IMAGE_FEATURES = "debug-tweaks dev-pkgs"

Thanks

Victor Rodriguez

