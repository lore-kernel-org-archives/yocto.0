Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 442564C80039
	for <yocto@yoctoproject.org>; Fri,  3 Dec 2010 13:11:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm2 with SMTP id 2so8208175fxm.35
	for <yocto@yoctoproject.org>; Fri, 03 Dec 2010 11:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=CC2UDk/q7u1rg/q3B7xs2m69XlRF3lxSWm+679sNg4s=;
	b=PWXj5mLm8I0icUG5ByYc12YUxxxOBH9pIXDywUDiT984thBGBAuHWuYu2Qh6GIg0QI
	GlUIg8MMWS7Dp+GT0T/VerY3rrs0lOKu/tDmowRL1tu8/+Pd+9EPN4I8gkRNOpBDTcPn
	WPS3jJi4E/vi3jVQJRg/S2IjUp+n7inldWrtM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=HhkZaBQeAEiHCKXSY0EZ06Wzt0lYzxonEmjGU6MQH/68Az3+ke6QZqVS+MRtZKJTHA
	ZSgnGisQ5W/5Jb2DkAZ7ed/MqbmiKM9E0QwXBq/V4Ly3wzYIgGtslvhb1IQiVnzThjRw
	RRHvgqt10yq/PZFiVuy1fvfhgjbeANz9c1RuA=
MIME-Version: 1.0
Received: by 10.223.122.201 with SMTP id m9mr2584424far.79.1291403496460; Fri,
	03 Dec 2010 11:11:36 -0800 (PST)
Received: by 10.223.109.11 with HTTP; Fri, 3 Dec 2010 11:11:36 -0800 (PST)
In-Reply-To: <20101203184643.GW10755@ibawizard.net>
References: <8A929EC0-8AF1-48BB-ACD4-9D38C8F72DCD@jonmasters.org>
	<1291399287.16321.18.camel@feynman.coloradoengineeringinc.com>
	<20101203184643.GW10755@ibawizard.net>
Date: Fri, 3 Dec 2010 13:11:36 -0600
Message-ID: <AANLkTinc8zq20orAerFvTz9T6CFkQe9pChAG9JwdEJTQ@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: beagleboard@googlegroups.com
Cc: yocto@yoctoproject.org
Subject: Re: [beagleboard] Yocto
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
X-List-Received-Date: Fri, 03 Dec 2010 19:11:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 3, 2010 at 12:46 PM, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
> Michael J. Hammel <mjhammel@graphics-muse.org> [2010-12-03 11:01:27]:
>
> Hi,
>
>> I've heard of Yocto only in passing. =C2=A0I'm assuming it's another
>> bitbake-based metabuild system? =C2=A0Is there some reasoning why
>> Meego/Linaro/OpenEmbedded/Angstrom/Custom Builds cannot fill the
>> requirements of Yocto? =C2=A0I don't mean that harshly at all - I'm just
>> curious about the evolution and true target audiences of these projects.
>> It's nice to have choices, but developers should have some idea of the
>> differences so they can choose wisely when just starting.
>
> Richard wrote nice summary[1], it's worth reading and it might answer you=
r
> questions as well :-)
>
> 1. http://lists.linuxtogo.org/pipermail/openembedded-devel/2010-November/=
026598.html
>
> -- ynezz
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Beagle Board" group.
> To post to this group, send email to beagleboard@googlegroups.com.
> To unsubscribe from this group, send email to beagleboard+unsubscribe@goo=
glegroups.com.
> For more options, visit this group at http://groups.google.com/group/beag=
leboard?hl=3Den.
>
>

May we know roughly how many paid resources are behind Yocto?

Which arch will be first officially supported? Will it be ATOM as Poky
is really part of Intel? Beagle/ARM will be done by the community
instead?

Thanks,
Xianghua

