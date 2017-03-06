Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D147FE008F2; Mon,  6 Mar 2017 12:18:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9282AE007AD
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 12:18:04 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id f54so23404881uaa.0
	for <yocto@yoctoproject.org>; Mon, 06 Mar 2017 12:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=f9QCcQtdLuzsxIEhiCc6zFInEbt4eTZXu+Ubis2/zio=;
	b=NrchoTspuCH4vN8jrS/Jj1FoDbHp3ovQtourYfbhThWMP+othcfNpqP5cRRF0m+zIH
	cKORUts9DGQIHhBLceLXEV70lA967CUmbYK2TuMS8r3UlitJ/d+I7lcrYVS0RwYdj+Uv
	1f8BGdEPzO8n96+XA1M0FNKV6HvOzeaubIzR8Td8SfF/GE3mB96/K+sIQT/NUckvObXz
	INrEGp7lBTEACoFsdi4Fzj+vockIt37HVOCILrKrrkRRlbimnqp0hESWlgPI2QKWd3AM
	4iDBHicCShjquBQIBvibQ6DFKSfFDd7Vuxe0XOV1ns2qX9QkwYq2xSFgnfbmhPa2OKoJ
	Cxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=f9QCcQtdLuzsxIEhiCc6zFInEbt4eTZXu+Ubis2/zio=;
	b=Q6slV6Qx5VGxR5p8ztrQcGdTraIcnZBwz1rp0LfMAc4CCYqFi9Y3OyYs4Tw8bvI+Xz
	YuH3ifuHeeyFqog2maCHluQ63vC56m+ntCNbsFEtX+MRRwHH2sk/6IvbWELkL6l4fwHq
	fFdPWwl4Z944f7Siqy0qQI4vKsQZjUB6Ly0QfamJstIQ9HMNDi+hA/dTJaVsLzVU8Go0
	pbCQIy05/7R0Rn3ug/y7JTJO3Gn2EJOr0MpC06jc7DyYjscDoW5lTCbjVCYHV8zqlo/l
	WsYA43QJ4HFHe+hlxMObHtre/m6kDVKkTr96w06yjy6pydqd/UNo7L5cZZMhmqu5Ueyd
	+Rew==
X-Gm-Message-State: AMke39n6eiGGEdprwC6q5Bx4UJpeyJEWKDDVtT6Nmt/UbhevkmOlQskCu2Z9AmdHtlnqvK9YwBMEcJuVNpWV4A==
X-Received: by 10.31.114.79 with SMTP id n76mr7658310vkc.53.1488831483375;
	Mon, 06 Mar 2017 12:18:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Mon, 6 Mar 2017 12:18:02 -0800 (PST)
In-Reply-To: <2aa1072c-b51f-9e04-fd95-64e9a6330f63@rock-chips.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-5-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDoLt2RbidD-3L93UkjLuaXn_eoB08=HqLaHsD9=8nLpqmQ@mail.gmail.com>
	<CAHUNapRxFr0kj_ZGv7GW10WySyOgU3g7Zr5B+1UTjULCxtd=cw@mail.gmail.com>
	<2aa1072c-b51f-9e04-fd95-64e9a6330f63@rock-chips.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 6 Mar 2017 15:18:02 -0500
Message-ID: <CAHUNapSjgwHoPoFq+oiRmUUVMaU5s+tAM16JUieJGomstz5fiQ@mail.gmail.com>
To: Jacob Chen <jacob2.chen@rock-chips.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 4/7] recipes-graphics: Add support for mali-userspace
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
X-List-Received-Date: Mon, 06 Mar 2017 20:18:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jacob,

This is a good first version, but I think there are some things that
could be added to make it better. For example, it should have a
COMPATIBLE_MACHINE statement, and it should detect whether the target
is using hard-float. Also the name "mali-userspace_t76x.bb" isn't a
good choice, the part after the underscore should indicate the
version, but t76x indicates the target mali implementation.

I think the sunxi people have done a good job with their mali recipes:
https://github.com/linux-sunxi/meta-sunxi/tree/master/recipes-graphics/libg=
les.
Would you be interested in creating a v2 modeled after their work?

Best regards,
    Trevor


On Thu, Feb 9, 2017 at 2:23 AM, Jacob Chen <jacob2.chen@rock-chips.com> wro=
te:
> Hi,
>
>
>
> Trevor Woerner wrote on 2017=E5=B9=B401=E6=9C=8828=E6=97=A5 09:44:
>>
>> On Fri, Jan 27, 2017 at 9:41 AM, Romain Perier <romain.perier@gmail.com>
>> wrote:
>>>
>>> Hi all,
>>>
>>> Correct me if I am wrong, but these are generic mali userpace binaries =
?
>>> meta-rockchip is a bsp meta layer, it should only contains files and
>>> recipes
>>> to make rockchip board working or things specific to the rockchip board=
.
>>> For
>>> me these recipes are completly generic and might be re-used for another
>>> platform with another SoC.
>>>
>>> I don't want this in meta-rockchip. There is no a layer called meta-mal=
i
>>> or
>>> something ?
>>>
>>> @Trevor: Feel free to comment, the point of view of the second maintain=
er
>>> is
>>> always welcome
>>
>> :-)
>>
>>
>> I was just about to point out that there is no meta-mali, and that
>> most BSP layers do include their own recipes for mali (meta-sunxi,
>> meta-96boards, meta-xilinx) but, googling around, there is in fact a
>> meta-mali provided my ARM itself:
>> https://github.com/ARM-software/meta-mali . So I guess we could go
>> either way. Although I haven't looked at what's specifically provided
>> in meta-mali to know if it would be useful or not.
>>
>
> I think GPU is a part of SOC. Other bsp meta layer also contain gpu userp=
ace
> binaries.
> And, mali userpace binaries are not very generic, there are different in
> hardware versions, software versions and backends.
> e.g:
>     rk3288's GPU is T76x-r0p0 but rk3288w's GPU is T76x-r1p0, so they hav=
e
> to use different binaries.
>
>
>

