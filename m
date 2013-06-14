Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A602CE013A8
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 19:24:11 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id a13so182536iee.34
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 19:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CWr+DvbiCuVOX2+dLANMkkkqI689H4Lkh8OmN+LbYJ8=;
	b=cUqAn0jR6AHnTAta1LLTZrtvyqW8DTcaTr1S71gtf3ylAEkBZsrbboT/GqwkyjsySW
	bh2KaJyKpRqoxgQYXzP1TrnqZwRDK0yRJEMFnHTIEom+S6L22R4USR4wc0XMupJYcekV
	a6+Z9MbY7oCI8BoW5/uqYTkr1mhycjyMxhiYBjSg39A6pw/vaSxpQ2WOA1KlB6ts41dc
	eewt9MRoKsBnLNnvy+ShKfbSG5qEYVLKzU/ENITvL0lGGyqeP9y4z7niDkQyotfQa1+d
	JflFI7mrEHOXmIpGjY5McxJwPJ/BJC50p43P5UZGBKfhQjptrhLWPRqc555BSjpNiRou
	MlaA==
X-Received: by 10.50.8.65 with SMTP id p1mr116729iga.19.1371176650662; Thu, 13
	Jun 2013 19:24:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Thu, 13 Jun 2013 19:23:40 -0700 (PDT)
In-Reply-To: <1370952018-31698-1-git-send-email-noor_ahsan@mentor.com>
References: <1370952018-31698-1-git-send-email-noor_ahsan@mentor.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Jun 2013 19:23:40 -0700
Message-ID: <CAMKF1spC1Rvx8bmM1ApiYsFRGzQs51dH7fALX92rQye4gP0Rkg@mail.gmail.com>
To: "Noor, Ahsan" <noor_ahsan@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] dlt-daemon: Fix multiple issues with service files.
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
X-List-Received-Date: Fri, 14 Jun 2013 02:24:13 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 11, 2013 at 5:00 AM, Noor, Ahsan <noor_ahsan@mentor.com> wrote:
> +do_install_append() {
> +    # Remove "User=genivi" option from systemd service files, as we want this to go to default setting
> +    sed -i '/User/d' ${D}/${systemd_unitdir}/system/*.service
> +
> +    # Install the required systemd services links
> +    install -d ${D}${base_libdir}/systemd/system/basic.target.wants
> +    ln -sf ../dlt.service ${D}${base_libdir}/systemd/system/basic.target.wants/dlt.service
> +    ln -sf ../dlt-system.service ${D}${base_libdir}/systemd/system/basic.target.wants/dlt-system.service
> +}


shouldnt this be done only when system is in DISTRO_FEATURES ?
secondly install into ${D}${base_libdir}/systemd/system should be
enough and you can use ${systemd_unitdir}/system
since thats multilib safe.

