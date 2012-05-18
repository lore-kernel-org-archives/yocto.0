Return-Path: <eballetbo@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4158FE013EC
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 03:36:40 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so3394763yhf.35
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 03:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=+pxFVGVyOs6VHWW5jNCWanshuRZ/OpJc+hRn3ZEOtEQ=;
	b=vXpBZ1Ewhm0P7D7uOYbdCgecWILxIzCi8fr/xsNyN8/AQq5nqzR69vLoBcQIIO2UAd
	QW7lNSC0aMtv/EhlU7WjCdNbHUHt8NDijvUdUEom+JfKesGLlVbRTt1taPahNjgTkT/M
	/8WLMqiTOu8TOVyjAdzUV6tIxUvID2YkaXxGNp9fkBQ2zaA3fDaaVeZBWRjKzsVRw8HF
	dEkUnXSyZlJtYTSYTZiAqLGMbvxLmr8Q67/SXDkHu9951qsy+ACk8YV24Y+QTyMjpQ+I
	KBEBT7fqNGXLei5NCjqmBoejujCsQpl7iwDOXznsbNpfg9X7Bw6Jf3ramHlEasmtLUIB
	wEmA==
MIME-Version: 1.0
Received: by 10.50.153.132 with SMTP id vg4mr113648igb.2.1337337398955; Fri,
	18 May 2012 03:36:38 -0700 (PDT)
Received: by 10.42.19.134 with HTTP; Fri, 18 May 2012 03:36:38 -0700 (PDT)
In-Reply-To: <4FB60FDF.3040504@communistcode.co.uk>
References: <CAFqH_53V8xEibzh7H5m-LEAm1N1-VmDubM4qrb2GBmF2Tc6G9g@mail.gmail.com>
	<4FB60FDF.3040504@communistcode.co.uk>
Date: Fri, 18 May 2012 12:36:38 +0200
Message-ID: <CAFqH_52_fvqXtF5x_-6o84MZBA7LsGm4X87JVA4VftmWUihunw@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: meta-ti layer and tag 2012.05-yocto1.2
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
X-List-Received-Date: Fri, 18 May 2012 10:36:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jack

2012/5/18 Jack Mitchell <ml@communistcode.co.uk>:
> On 18/05/12 08:48, Enric Balletb=C3=B2 i Serra wrote:
>>
>> Hi all,
>>
>> Just to be sure, should the tag 2012.05-yocto1.2 from meta-ti layer be
>> compatible with yocto-1.2 (denzil) branch ? Or also depends on other
>> layers. Adding only the meta-ti layer to the yocto 1.2 seems is not
>> working, there is an unmet dependency on systemd.bbclass.
>>
>> =C2=A0 yocto-1.2$ bitbake core-image-minimal
>> =C2=A0 ERROR: ParseError at
>>
>> /home/eballetbo/Workspace/poky/yocto-1.2/meta-ti/recipes-misc/payload/bo=
nescript.bb:5:
>> Could not inherit file classes/systemd.bbclass
>> =C2=A0 ERROR: Command execution failed: Exited with 1
>>
>> Cheers,
>> =C2=A0 =C2=A0Enric
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> Hi Enric, to quote Denys from a patch to meta-ti earlier:
>
> README: by popular demand add comment on how to avoid systemd breakage
>
> Signed-off-by: Denys Dmytriyenko<denys@ti.com>
>
> ---
>
> =C2=A0README | =C2=A0 =C2=A06 ++++++
> =C2=A01 files changed, 6 insertions(+), 0 deletions(-)
>
> diff --git a/README b/README
> index b376695..0df391f 100644
> --- a/README
> +++ b/README
> @@ -11,6 +11,12 @@ layers: meta
> =C2=A0branch: master
>
>
> +When not depending on meta-openembedded and not using systemd, you may n=
eed
> to
> +mask few miscellaneous recipes requiring systemd, by adding this to
> local.conf:
> +
> +BBMASK =3D "meta-ti/recipes-misc"
> +
> +
> =C2=A0The base BSP part of meta-ti should work with different OpenEmbedde=
d/Yocto
> =C2=A0distributions and layer stacks, such as:
> =C2=A0distro-less (only with OE-Core), with Yocto/Poky, with Angstrom or =
Arago.
>

Thanks, that works.

I'm a bit confusing because the README of meta-ti layer says that this
layer can only work with OE-core/Yocto but not sure that anyone has
tested. For example bitbaking ti-dsplink recipe results on

    | make[1]: /arm-poky-linux-gnueabi-gcc: Command not found

The problem seems that a lot of meta-ti recipes uses the
TOOLCHAIN_PATH variable that is not defined in OE-core/Yocto or I'm
wrong?. This don't look difficult to solve but are more surprises
waiting for me after solve this ? Someone has tried this layer with
only OE-core/Yocto ?

Thanks,
   Enric

>
> Regards,
>
> --
>
> =C2=A0Jack Mitchell (jack@embed.me.uk)
> =C2=A0Embedded Systems Engineer
> =C2=A0http://www.embed.me.uk
>
> --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

