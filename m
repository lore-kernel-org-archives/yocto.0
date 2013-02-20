Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1D8D6E0047F
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:58:21 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id 6so3800699qea.38
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=oC+EkeRtTyHvnH5HyOZv+2gF5uMVN8m/1Y3RnYcMJg8=;
	b=y7yBq2yXHX3gTIGSl4bS08qPtyt57bgibmp//RfxKQBSdBTn4kR74qWPPfxE1yFIV9
	ChLxRASIdPJyN7+YFvWwIBQV6iryubpUqsWCALTli1I1lAxHSmc5JQTJS36QJ0dxIKJg
	1RhumWhcaexSLEzsJCTo1ea2iFZDQhpJZINnfWEpIkc6mcCqqAx6FNIP73nLUfZeg+w4
	DP/PuE34fhnh1Oun0m63anrXz28SJxW94cJYzUIJHPLWsSwyG6TITXgOer/grpzZxSGm
	gz/cdb/IYlZ55TX+X9nKW0oXgF6DHcqDFzEZwj+DNm90XZrT81o5JuIa+v0tXw473Sgw
	ZOGA==
MIME-Version: 1.0
X-Received: by 10.49.24.135 with SMTP id u7mr10592566qef.4.1361383100001; Wed,
	20 Feb 2013 09:58:20 -0800 (PST)
Received: by 10.49.60.39 with HTTP; Wed, 20 Feb 2013 09:58:19 -0800 (PST)
In-Reply-To: <CACW_hTZb7DYjNrhjgkD3VYnpNzoJKAb8ocfTkj872D+tKZdVUA@mail.gmail.com>
References: <CAFyqS9qOfZ1m_nUMCF8qK+kxOvXF5XPBb_ZuQFGvSoRMdOCGwQ@mail.gmail.com>
	<CACW_hTZb7DYjNrhjgkD3VYnpNzoJKAb8ocfTkj872D+tKZdVUA@mail.gmail.com>
Date: Wed, 20 Feb 2013 18:58:19 +0100
Message-ID: <CAFyqS9pM8SPeOH1BBerU7Jm7cMgcvZTVcbcCXjc48m8nK6UPcg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake: how to resolve a dependency to kernel-devicetree when building rootfs
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
X-List-Received-Date: Wed, 20 Feb 2013 17:58:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 20, 2013 at 8:33 AM, Frans Meulenbroeks
<fransmeulenbroeks@gmail.com> wrote:
> Is there a kernel-devicetree package in you tmp/deploy ?
>
> I'm using ipk and I have:
> tmp/deploy/ipk/syrcxx/kernel-devicetree_2.6.38-r4_syrcxx.ipk
>
> If it is not there that is your problem.
> You may also want to nuke your tmp dir and rebuild (with sstate it should
> not take excessively long)
>
> Frans
>

Thanks for the pointer. That was indeed the problem. There was no
kernel-devicetree in my deploy/ipk folder.
But now it works :) I actually did two things, I moved from using .ipk
to .rpm and changed to using a bare danny 8.0.
I do not know which of these fixed it. Before that I also tried to
nuke the tmp dir but that was fruitless :(

Hans


>
> 2013/2/19 Hans Beck=E9rus <hans.beckerus@gmail.com>
>>
>> First of all, I am a total noob when it comes to bitbake, but I am
>> struggling and slowly getting there ( I think).
>> So, I am sorry if my questions seems stupid, but this one I just can
>> not seem to figure out on my own.
>> What I am trying to do is to build a custom ARM based rootfs image
>> using the ELDK toolchain that should include all the modules from my
>> kernel build. But the rootfs build stage fails! If I exclude the
>> kernel modules everything work just fine.
>>
>> The bitbake error I get is
>>
>> | Collected errors:
>> |  * satisfy_dependencies_for: Cannot satisfy the following
>> dependencies for kernel-modules:
>> |  *    kernel-devicetree *
>> |  * opkg_install_cmd: Cannot install package kernel-modules.
>>
>>
>> My simple rootfs.bb looks like this
>>
>> require recipes-core/images/core-image-minimal.bb
>>
>> # The list of packages used to build images.
>> IMAGE_INSTALL +=3D "kernel-modules"
>>
>> # Formats of root filesystem images that you want to have created.
>> IMAGE_FSTYPES =3D "jffs2"
>>
>>
>> The device tree blob was built successfully and is located in the
>> kernel deploy image folder.
>> I can see that I have the following files under the kernel work path
>>
>> ./packages-split/kernel-devicetree
>> ./pkgdata/runtime/kernel-devicetree
>> ./pkgdata/runtime-reverse/kernel-devicetree
>>
>> Any advice on what I have missed?
>>
>> Hans
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

