Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 929F3E017BC
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 20:40:44 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id u16so4002997iet.35
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 20:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=z9Mwc2/jLouVi5JY7/OaqIbdYby0zbKtgb/LeMIVC+Y=;
	b=X9HNZVyMKbSTm2PEHf3kCq00Wl1Epl004UaCKi/hNL5Urlzilp94/13BkxbWNqr0he
	25HshdgSDLXnGTMnux3DmsPJ+ZvAr6EJ2ym3Z4mtxBEs7RreCPlaRa1HoWxZDzv19Pm2
	y5uZGcZOQySt0fKuJsNGmmYrP7z4mVRqzgL7HtiSfLM0EPGuoXUktKkhPy26seZdjfz3
	8x52AVVO+4Bygl8k1BT5SdEvqu20ljumOOuEJuMjcMyObFg5XYflcz6Gzcoxtkf+MUwq
	L8hLUTs2Px9hydKDdoGBFEK/cWStHfFVP9WNN5tty/HVgp1pgm0GTuK4uWvMK1joAHrg
	y3dA==
X-Received: by 10.50.22.67 with SMTP id b3mr4805914igf.39.1383190843572; Wed,
	30 Oct 2013 20:40:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 20:40:13 -0700 (PDT)
In-Reply-To: <CAKP9-SiihiZWQ2isEP24h20f84Byn2Ny88-Rko3UL0eLis4JEQ@mail.gmail.com>
References: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
	<CAE_REAucf4Epi1v=xfEGYhLvc1bG_cDDTrUfzxrYJX1jjPyHMQ@mail.gmail.com>
	<CAKP9-Siz-+PmGtvc+BG6bNq3M8uPMG_qxGx+s75wD=T81hUxzA@mail.gmail.com>
	<1385671.jQL6qvobNp@helios>
	<CAKP9-SiihiZWQ2isEP24h20f84Byn2Ny88-Rko3UL0eLis4JEQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 20:40:13 -0700
Message-ID: <CAMKF1srh=HyJstw70Cr+xJveoB1fUQHVUzLS4xgg5OUuST0=SQ@mail.gmail.com>
To: "Sandeep G.R" <grsandeep85@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to bring up "apt and dpkg" packages on yocto
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
X-List-Received-Date: Thu, 31 Oct 2013 03:40:47 -0000
Content-Type: text/plain; charset=UTF-8

This seems more of multilib issue with dpkg provided you have
configured multilib correctly in your distro/local.conf for ppc64. One
test would be that you use default packaging/opkg and see if that
works to  isolate the issue

On Mon, Oct 28, 2013 at 8:26 AM, Sandeep G.R <grsandeep85@gmail.com> wrote:
> Hi Paul,
>
>         I have made those changes as PACKAGE_CLASSES ?= "package_deb"
> IMAGE_FEATURES += "package-management" IMAGE_INSTALL_append += "dpkg" but
> ended with an error and attached a log file for reference. I have attached
> the log for reference.
>
>
> On Mon, Oct 28, 2013 at 5:05 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>>
>> On Tuesday 22 October 2013 08:10:15 Sandeep G.R wrote:
>> >       I have selected PACKAGE_CLASSES ?= "package_rpm package_deb" and
>> > IMAGE_FSTYPE is tar.gz
>>
>> "package_deb" must be listed first in PACKAGE_CLASSES if you wish to use
>> it for
>> constructing your image. You will also need to have "package-management"
>> in
>> IMAGE_FEATURES if you want apt/dpkg and the package manager data to be
>> installed into the image itself.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
>
>
>
> --
> Thanks & Regards,
> Sandeep G R
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

