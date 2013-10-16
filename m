Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C2CE01682
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 03:57:01 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id q58so513059wes.31
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 03:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=mP9kgo45KKFpcdBrif/3hxwxuRX2RgOVh7OJKgk05xg=;
	b=v8Ve/5E3nIPxb/8jBf3P64joy3Nra5gf69V/iwedjNMd6FwSUVHfeWawOAPa0yW5it
	8ljkOAeyaTA1utyJf1dGHYwMBiBJrrE+vOTwCG9sKQr5JUS3DWpZ5hjPClHLh8skWUIH
	YEYWM83IZbr2jBS6H35N+TsonBnSLLHuZalHcUxfgyMLb+qTsb9ScoC4C/OVYNtlKele
	6AkvdO0AH07SHUUKEil6r/El1qE6tz7YgNrptoIS3LQzHuulBx1LjctxehHd2MycUXrG
	dDaocFg1JQVTdQQQ1hZJt73Un3XMBt7xzbbmWGHVZ5hRTbSR5D+9LDWKM7vc/E8Sk0mm
	MHtQ==
MIME-Version: 1.0
X-Received: by 10.180.149.179 with SMTP id ub19mr1699672wib.43.1381921020185; 
	Wed, 16 Oct 2013 03:57:00 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 16 Oct 2013 03:57:00 -0700 (PDT)
In-Reply-To: <2360903.vJkMptqlar@helios>
References: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
	<1453346.6uHgHqcMcF@fedora-fisso> <2360903.vJkMptqlar@helios>
Date: Wed, 16 Oct 2013 16:27:00 +0530
Message-ID: <CABHD4K_e98i7+u2mDZq4whZWqiGDB74t0spZ1tz9L5zBqH4BVg@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How /etc/passwd packed into my final image
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
X-List-Received-Date: Wed, 16 Oct 2013 10:57:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Paul for your suggestion
Method of modifying in base-passws is somehow not working for us
Let us try your suggestion.

On Wed, Oct 16, 2013 at 4:03 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 16 October 2013 10:20:24 Davide Soldan wrote:
>> In data mercoled=EC 16 ottobre 2013 00:01:13, Amit Tomer ha scritto:
>> > I wanted to modify the content of /etc/passwd but don't know how
>> > /etc/passwd files is packed into final image
>> >
>> > After the build process ,passwd file goes to
>> >
>> > "tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd"
>> >
>> > this loaction
>> >
>> > Now I see image-k2.bb file but could not find any rule that will pack
>> > passwd file to
>> > final image.
>> >
>> > Can anybody how it is packed and way to modify it.
>> >
>> > Thanks
>> > Amit
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>> Hi,
>> I think that the recipe that creates passwd file is under
>> poky/meta/recipes-core/base-passwd (I'm on dora branch). Maybe with a
>> bbappend of that recipe you can change the passwd file with yours... Che=
ers
>
> Rather than modifying it in base-passwd, with master or 1.5 I'd recommend
> using extrausers.bbclass / EXTRA_USERS_PARAMS (see meta-
> yocto/conf/local.conf.sample.extended for an example of how to use it).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

