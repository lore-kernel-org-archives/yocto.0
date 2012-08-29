Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B68E00769
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 10:46:54 -0700 (PDT)
Received: by qady1 with SMTP id y1so732486qad.14
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 10:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=8qlf5L5d4cEhEDOiLc6XHXUUQJH2ArwyRDYdXwbpYuc=;
	b=XjX1btIjkUzLlnGjAxaBX0emkDDr7v3pL34pHHMbnPnjLW6oWcEQ3GvfmfryFPDsCu
	XIReaQY5iFZ1rNmGZn7MrFP6y0rQy132K2CsKo9Rcr89aVCoEb5Q96M4YIj0Nv4clL0u
	uzK5l61CmGpBt5pj4GdmpYz4o8elu2DaCP7XM9phlQYX88COkakFwWRJkoEVb0dR9veW
	UEMjnlY1rmi+QRhG8UAzCc2JVOjC8sPgQWLDruvZj+SSp5Etwv3jaRl8p6NTUP0GQhS2
	wIcTZXWMimdtBkURy8rxtVeHq/zu5PRm/rOXrMPExfaGv1dhZxU/C3sL7Isn2nqTn10B
	mNQQ==
MIME-Version: 1.0
Received: by 10.224.176.195 with SMTP id bf3mr5196799qab.55.1346262410104;
	Wed, 29 Aug 2012 10:46:50 -0700 (PDT)
Received: by 10.229.247.198 with HTTP; Wed, 29 Aug 2012 10:46:50 -0700 (PDT)
In-Reply-To: <503D1D55.1010205@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
	<503C3896.5080509@windriver.com> <503D1D55.1010205@intel.com>
Date: Wed, 29 Aug 2012 13:46:50 -0400
Message-ID: <CADkTA4MxAKcbtnEpCDKB==G2hxjRqt5F32kCqtg6HPo1QBcfUA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <darren.hart@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
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
X-List-Received-Date: Wed, 29 Aug 2012 17:46:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 28, 2012 at 3:34 PM, Darren Hart <darren.hart@intel.com> wrote:
> On 08/27/2012 08:18 PM, Bruce Ashfield wrote:
>> On 12-08-27 8:14 PM, Saxena, Rahul wrote:
>>> Hi,
>>>
>>> I am building a BSP (meta-cedartrail) using 1.3 M3 branch of Poky.
>>>
>>> When I try to boot a image such as core-image-sato, I get kernel panic
>>> and errors such as:
>>>
>>> VFS: Cannot open root device =93ram0=94 or unkown-block(0,0)
>>>
>>> Please append a correct =93root=3D=94 boot option; here are the availab=
le
>>>
>>> partitions:
>>>
>>> VFS: unable to mount root fs on unknown block(0,0)
>>>
>>> User configuration error =96 no valid rootfilesystem found
>>>
>>> I do see that the root file system exists in
>>> cedartrail-poky-linux/core-image-sato-1.0-r0/rootfs dir..
>>>
>>> I did not see this problem when I uses a earlier commit of the Poky
>>> master branch.
>>>
>>> It seems like something broke with 1.3 M3 branch that prevents a proper
>>> build with 3.0 kernel. I do need to build my BSP with 3.0 kernel.
>>>
>>> (I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing does
>>> not include testing with the 3.0 kernel)
>>>
>>> Any suggestions would be most welcome. I do need to build my BSP with
>>> the 3.0 kernel.
>>
>> Hmm. It should work, I booted one not that long ago. Can you force
>> qemux86 to prefer the 3.0 kernel and see if that boots ? That would
>> at least start to isolate the potential problem areas.
>
> However, won't 3.0 be removed for the 1.3 release? Keeping with 3.4 and 3=
.2?

For 1.3 the 3 kernel sliding window plan was 3.4, 3.2 and 3.0 with 2.6.37 b=
eing
voted off the island. Or did you mean 1.4 ? Regardless, anything using 3.0 =
needs
to be updated since it's time is running short! :)

Cheers,

Bruce

>
> --
> Darren
>
>>
>> Bruce
>>
>>>
>>> Thanks
>>>
>>> Rahul
>>>
>>
>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

