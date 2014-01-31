Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F50E00511
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 12:18:38 -0800 (PST)
Received: by mail-oa0-f46.google.com with SMTP id n16so5783406oag.33
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 12:18:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=7NBbp8GJhSG33dpRlmhwN4gcRZOwy6+Onv2VeMKcQVs=;
	b=RTd1XQVuWWByHPgMvxNvtWUEqmM7y8O2gjGTjTUo6BlvDrylXDRuH2/cWKRrVoi4UT
	nZjmwZkW+cgz6DrzP7CGJALFp3NOKuCkPOH+uyJP2Y4r5RC4YTg64g4928BIsgfJOwuH
	pEacNDrRKLGiana1DWZq5h5Eq6bG8WVoPoB5jo8YMTAmeeaJ8KAVOMyhcVfESU+shB+j
	1G6ft0iYy3Ijg6DP2TR9al95GYI+J7eXrsgQs5XYEFnWmIGiCFQBF6rDizUOxaohylEm
	My2hTG35dO6YhwU5Wgm/Nom9Bzcdw7fd8P37dcBcZW+NzpouISwq1gEeIaAYy6XiuHrm
	BZ9w==
X-Gm-Message-State: ALoCoQnb+8S3eehdD92U7D63alZlKj3HpnvnpQJ/JRcoxgarEjes35lc+oOHnE1HCdQZrQ1q4wTK
X-Received: by 10.60.62.199 with SMTP id a7mr2674787oes.64.1391199517845; Fri,
	31 Jan 2014 12:18:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.182.99 with HTTP; Fri, 31 Jan 2014 12:18:17 -0800 (PST)
In-Reply-To: <CAF8imWgmu1L6nHBoNFuEQQfnJH+5Uryq6sWmU6iRXM+Q=fg4aw@mail.gmail.com>
References: <CAF8imWgmu1L6nHBoNFuEQQfnJH+5Uryq6sWmU6iRXM+Q=fg4aw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 31 Jan 2014 21:18:17 +0100
Message-ID: <CAP71Wjyt9iBKar6Hw=mzVZQB-5QUSfRbaAYP6Sz1nk7MBpN86g@mail.gmail.com>
To: Bertrand Roussel <bertrand.roussel@cor-net.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Personalized SDKPATH and sysroot
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
X-List-Received-Date: Fri, 31 Jan 2014 20:18:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 30, 2014 at 2:14 PM, Bertrand Roussel
<bertrand.roussel@cor-net.org> wrote:
> 1/ The sysroot seems to be hardcoded in binaries, for instance:
> $
> /opt/poky/1.4.2/sysroots/x86_64-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> --print-sysroot
> /opt/poky/1.4.2/sysroots/armv6-vfp-poky-linux-gnueabi
>
> $ ./poky-eglibc-x86_64-arm-toolchain-1.4.1.sh
> Enter target directory for SDK (default: /opt/poky/1.4.2): /tmp/pokysdk
> You are about to install the SDK to "/tmp/pokysdk". Proceed[Y/n]?
> Extracting SDK...done
> Setting it up...done
> SDK has been successfully set up and is ready to be used.
> $
> /tmp/pokysdk/sysroots/x86_64-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> --print-sysroot
> /opt/poky/1.4.2/sysroots/armv6-vfp-poky-linux-gnueabi
>
> There is a 'relocate_sdk.py', is it meant to replace this path (it does look
> like it) ?
> It's replacing some lib-related paths, but the sysroot is kept intact,
> enforcing the use of --sysroot to use the toolchain.
>
> Did I miss something ?
>

no, you're right the sysroot used when building the cross compiler is
indeed hard coded in the binary. you can find some information about
that in that thread:

http://lists.openembedded.org/pipermail/openembedded-core/2013-September/084156.html

> 2/ I'm using the 'poky' distribution, which specifies the SDKPATH (in
> meta-yocto/conf/distro/poky.conf ) as "/opt/${DISTRO}/${SDK_VERSION}".
> Is there a way to override this without making a new distribution inheriting
> 'poky' ?
>
> I tried to make a new toolchain recipe based on meta-toolchain, and set the
> value there, but only a small part of the toolchain ends up in that
> directory (gcc for instance, is compiled with the value set in the poky.conf
> ).

it needs to be defined in a .conf file to be globally available to all
recipes. unfortunately since SDKPATH is set with "=" in poky.conf and
not "?=" you won't be able to change it easily, even from local.conf
since it's parsed before distro.conf...  SDKPATH is just a 'default'
value, you can change the install dir when running the .sh file. isn't
that enough?

