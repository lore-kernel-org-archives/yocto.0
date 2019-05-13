Return-Path: <ml@calgera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15B18E00D5D; Mon, 13 May 2019 06:25:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from t4v1.calgera.eu (t4v1.calgera.eu [80.208.226.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D29E00D3F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 06:25:06 -0700 (PDT)
Received: from [192.168.1.68] (bl18-13-242.dsl.telepac.pt [188.83.13.242])
	by t4v1.calgera.eu (Postfix) with ESMTPSA id 5AB9ACB4FD87
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 14:25:04 +0100 (WEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=calgera.com; s=mail;
	t=1557753905; bh=IUFwiQwWERKXnIQP71DKZJ1EFJ64XIS8zxR5jP93sC4=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=wzzZdnc5irjZ1sZD5dXIWyZ0nC0LfLsArVUtCP0rosT7is9NO2UnJ9h3obBsHd53q
	Xs0Ve81Pk/Ke2ewO5z+F/5UM3VROp3MUKyDtenihj+o1b4DkkY6C65S+TcaVCWq8SP
	emuiTU18dxAmGrPg7RUk2sjlOVzzxrfilcN2UbgxoDa6yrm7EFRJ0SSK5B0U8C8qn2
	V/Pj057DvDTAkoCq8vZg9N76FY9aFUDUnqPubKIHxYngwSRVKEDBPDvPU5N55hzNsJ
	YYxlncNGPniTAzDmSGoKFPQWYT36oLNY3Ldx0XAHOn7xy6+Y2iewJu3DH9KIceYs1C
	cH5sl93H1EINw==
To: yocto@yoctoproject.org
References: <CAOe0dAXjp=+hqaKk6aGY-pDPBYFUi_zNTAcUFA1Ss170=Q9=Jw@mail.gmail.com>
	<9e31624b7f354039d01318436a4f8de968cea40c.camel@linuxfoundation.org>
	<CAOe0dAU5FF=OhFd+be6pj0_uJWk2tj8P+xush2JQ+fHTREDi3w@mail.gmail.com>
From: Renato Caldas <ml@calgera.com>
Message-ID: <2774bca7-a069-572a-5fb8-09cdbd6f682a@calgera.com>
Date: Mon, 13 May 2019 14:25:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOe0dAU5FF=OhFd+be6pj0_uJWk2tj8P+xush2JQ+fHTREDi3w@mail.gmail.com>
Subject: Re: [Yocto-bsp] Error of " fs.inotify.max_user_watches " while using bitbake [ Yocto-2.6.1 + Qemux86]
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
X-List-Received-Date: Mon, 13 May 2019 13:25:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 13/05/19 11:41, AshishKumar Mishra wrote:
> Yes , i checked the value & increased it 64K ( got pointer from 
> https://hub.docker.com/r/wolverine2k/yocto-build-env/)
> 
> It got the same error again today .
> Currently i have increased the value from 64K to 512K.
> But raised the query to check if i am doing any thing wrong here or 
> missing any caution.
> 
> Like if at 512K if we get the error again , not sure if increasing the 
> value is the only value.
> 
> Thanks
> Ashish

Please don't top post (see mailing list guidelines).

> 
> 
> On Mon, May 13, 2019 at 3:47 PM Richard Purdie 
> <richard.purdie@linuxfoundation.org 
> <mailto:richard.purdie@linuxfoundation.org>> wrote:
> 
>     On Mon, 2019-05-13 at 15:38 +0530, AshishKumar Mishra wrote:
>      > Can team members please let me know the solution & what is causing
>      > the below mentioned error ?
>      > ( I am having around 128GB of disk space still left , hence don't
>      > think that space is the issue here )
>      >
>      > ~/Documents/linux-foundation-projects/yocto/poky/build (slef-bsp)
>     : bitbake -vn virtual/kernel
>      > ERROR: No space left on device or exceeds
>     fs.inotify.max_user_watches?
>      > ERROR: To check max_user_watches: sysctl -n
>     fs.inotify.max_user_watches.
>      > ERROR: To modify max_user_watches: sysctl -n -w
>     fs.inotify.max_user_watches=<value>.
>      > ERROR: Root privilege is required to modify max_user_watches.
>      > ERROR: Command execution failed: Traceback (most recent call last):
> 
>     Did you try what it says above and check the max_user_watches value?
> 
>     Also, did you check you had enough free inodes on the filesystem?

Richard gave you the answer, you're probably running out of inodes. See 
it for yourself:

$ df --inodes

How to fix it depends on your filesystem (google is your friend), but 
the cause is usually a lot of small files. Happens to me a lot.

Cheers,
   Renato

> 
>     Cheers,
> 
>     Richard
> 
> 

-- 
Renato Caldas
Calgera, Unipessoal Lda.
Email: renato@calgera.com
Tel: +351 967 709 735

