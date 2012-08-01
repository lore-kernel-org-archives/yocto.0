Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40FA4E01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 15:34:55 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2093514pbb.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 15:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=SXaHGfLfqwDB5qQQeii4rzEsyj6Z2paEwcMM7GrTwX4=;
	b=XWW+VS/6PxMUmFDEadn937PbAvFecccwPC/VchgJ407Q0nP/sHfY3OeOtfi++gIk/6
	1AJ9dOTqe3qhHZ9qeidXaI9gIDBBxvXEJhS66gG1c7ecGC0zTnR3I7HxktkECHaJdqfU
	E76dP+5JoEXzGXbEp9ROuQju0hVgCuW2A5lvo7IfHf5CqOaNcTw6Cny8tgur4uIcrolQ
	p6N+PuwLdizD4tM8UTFbPbgHQWzHpo3xF/3o7soyNhs2Mlxs4jcrWdm4zIY13LV/zVXb
	OCh1VwAxa44SKWdMHNHMwigYFLOlJFIDlgY+t7tqt1hQRt4DxHGNEdKyauFHxvhmkC8Z
	nEHA==
Received: by 10.68.235.68 with SMTP id uk4mr54583779pbc.52.1343860494915;
	Wed, 01 Aug 2012 15:34:54 -0700 (PDT)
Received: from [10.11.81.126] (corp.force10networks.com. [64.186.164.204])
	by mx.google.com with ESMTPS id kh1sm3404425pbc.23.2012.08.01.15.34.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Aug 2012 15:34:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <50196467.50903@linux.intel.com>
Date: Wed, 1 Aug 2012 15:34:51 -0700
Message-Id: <80F8A591-0E46-404A-AAC0-59546ACB1ADC@gmail.com>
References: <50189888.3020103@linux.intel.com>
	<C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
	<5018A6E3.1020704@linux.intel.com>
	<20120801061552.GB15199@jama.jama.net>
	<501957C4.7010401@linux.intel.com>
	<CAMKF1soAoCiihcn7OGMfQS29L80zLLvoAWkc2D9AV37ku98idw@mail.gmail.com>
	<50196467.50903@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1485)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 22:34:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 1, 2012, at 10:16 AM, Darren Hart <dvhart@linux.intel.com> wrote:

>=20
>=20
> On 08/01/2012 10:09 AM, Khem Raj wrote:
>> On Wed, Aug 1, 2012 at 9:22 AM, Darren Hart <dvhart@linux.intel.com> =
wrote:
>>> (gdb) target extended-remote 127.0.0.1:1234
>>=20
>> this should be ip of target which in your case is qemu prolly
>> something like 192.168.7.2 or somesuch
>>=20
>=20
> I was trying to use the "redir" feature of qemu which supposedly =
allows
> you to connect to 1234 on the host instead. After looking at this for =
a
> bit and not making any progress, I setup tun/tap networking with qemu
> and easily connected using the target IP as you mention above. I'd =
like
> to understand why redir didn't work - as debugging without a full
> network on the client would be nice - but for now, I'm moving along.
>=20

well redir is visible to qemu gdb stub not to the software stack that =
qemu is running
in your case. although you can use that to debug kernel using qemu. Pass =
-s option=20
and qemu will boot kernel using gdb stub and you can debug the kernel =
from address 0
kind of JTAG debugger for poor :)

> Thanks,
>=20
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel


