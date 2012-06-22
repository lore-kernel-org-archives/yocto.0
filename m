Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B87E01425
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 21:25:31 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2160284dad.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 21:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=RV9eNOgV4gQ23Q+Zq5/yE1ZSA56FE2Pht2QMC756Kuc=;
	b=FEBLJUOouvZSHr6LefY/ZZiX6ks8yAI/Wtl7dQq0i+4SZUJbOh/Bbbwlsk3CD1OY7w
	Au4EeoNiVjPZU+DF4B0AOn+xC0qKIpqL9JaFfrHNKe07EDqZX8jjYwr9VX8AGEmfpf5V
	RbWIK8+GCRU5X6yNYHYIhEEGyQbj7glgu+xigodG/etPWZuSPPiFlht/TNaCfUozBaKs
	P3I7C8OMoIxSxFW44trOnPwjt/1mixxnqFA08o+lexqWzLWgZ1PcHp/1dTwEqN49/ksX
	iAre25wf2Cb2nTCg57XK4S0SH6uPJ8U6uSgUUmrgVNjUy5Lq4r7IGjwypqhoRsKr8xly
	Lmyg==
Received: by 10.68.226.168 with SMTP id rt8mr6148386pbc.23.1340339131204;
	Thu, 21 Jun 2012 21:25:31 -0700 (PDT)
Received: from [192.168.1.71] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id tq4sm15495525pbc.11.2012.06.21.21.25.29
	(version=SSLv3 cipher=OTHER); Thu, 21 Jun 2012 21:25:30 -0700 (PDT)
Message-ID: <4FE3F3BE.902@gmail.com>
Date: Thu, 21 Jun 2012 21:25:34 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:13.0) Gecko/20120614 Thunderbird/13.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
	<CAMKF1sozLtK1GP_vMn2UtAmi_+H12z5UOKaicxkjvNWQjBJUsg@mail.gmail.com>
	<A1C33720-9A94-4B6B-A211-65D25E3B2161@gmail.com>
In-Reply-To: <A1C33720-9A94-4B6B-A211-65D25E3B2161@gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Jun 2012 04:25:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 6/21/2012 8:05 PM, Elvis Dowson wrote:
> Hi Khem,
> 
> On Jun 21, 2012, at 8:09 PM, Khem Raj wrote:
> 
>> On Thu, Jun 21, 2012 at 8:25 AM, Elvis Dowson
>> <elvis.dowson@gmail.com> wrote:
>>> BBFILES ?= "" BBLAYERS ?= " \ /tool/yocto/poky/meta \ 
>>> /tool/yocto/poky/meta-yocto \ 
>>> /tool/yocto/meta-openembedded/meta-oe \ /tool/yocto/meta-xilinx
>>> \ "
>>> 
>> what does
>> 
>> bitbake -e <image> | grep -e "^BBPATH="
>> 
>> show
> 
> It shows the following:
> 
> BBPATH="/tool/yocto/poky/meta-yocto::/tool/yocto/poky/meta:/tool/yocto/meta-openembedded/meta-oe:/tool/yocto/meta-xilinx"
>
>  There is an extra colon : , how can I remove it?
> 

BBLAYERS above meta appears before meta-yocto but in BBPATH meta-yocto
appears before meta. I think meta-yocto/conf/layer.conf has

BBPATH := "${LAYERDIR}:${BBPATH}"

change it to

BBPATH .= ":${LAYERDIR}"

and if you want meta-yocto to appear before meta then rearrange
BBLAYERS above to

BBLAYERS ?= " \
 /tool/yocto/poky/meta-yocto \
 /tool/yocto/poky/meta \
 /tool/yocto/meta-openembedded/meta-oe \
 /tool/yocto/meta-xilinx \
 "

but that may not solve the problem too since now you will get

BBPATH=":/tool/yocto/poky/meta-yocto:/tool/yocto/poky/meta:/tool/yocto/meta-openembedded/meta-oe:/tool/yocto/meta-xilinx"

and it will whine about : at the beginning since that will present and
empty BBPATH when it separates them out for sanity checks.

The fix would be to see if you have : at beginning or end of BBPATH
(_after_ it has been populated) and strip it out.

> Best regards,
> 
> Elvis Dowson
> 


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/j874ACgkQuwUzVZGdMxSgUQCfTMT+9+YaJK3cUuCGhGjr6V/J
0TwAnR3rjGAwIDs2Fg1zGYiculK4BfkP
=EkD0
-----END PGP SIGNATURE-----

