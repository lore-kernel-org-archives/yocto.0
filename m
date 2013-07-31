Return-Path: <martiert@gmail.com>
Received: from mail-bk0-f43.google.com (mail-bk0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1712E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 03:54:53 -0700 (PDT)
Received: by mail-bk0-f43.google.com with SMTP id jm2so189057bkc.30
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 03:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=YJwAq6wJDDOTCTWwWk4pc6ucfxLJvpgSshh8/J/D/yQ=;
	b=wL6FJ4ohGGhP7TcBAGayhGgqkO6lPaTTnbxB31kOIN9A6X5l41bvQ0MxfFVOGQ0KE/
	whJPeXUGPgyolqKFugegKvndf/GWYhXxVjVwcwuPEjufFGhBtvj3b7oeJX4PNX/aoi31
	Va5a/3DRptrckIWYexsCZmLmQ4kYJW9GfOQrnsZXqLO5v9n53vZIVc8XkCG8rTw81gDG
	KTSxnBKRQ5zGRRT5LlAQ07/pt2B06QP54K+dgjexNUFIDFBHIm4k/AxFJ5OX/FtzXTBb
	tMqA0FByY9BrMPNlF35DLutEuT/MConJxb2s3KsPPCFfpRLZIrypVmlmqP82J6cYdnBk
	1zmw==
X-Received: by 10.204.191.6 with SMTP id dk6mr4819780bkb.73.1375268091796;
	Wed, 31 Jul 2013 03:54:51 -0700 (PDT)
Received: from ?IPv6:2001:420:44ff:fd0e:52e5:49ff:fe32:d20b?
	([2001:420:44ff:fd0e:52e5:49ff:fe32:d20b])
	by mx.google.com with ESMTPSA id od6sm325070bkb.11.2013.07.31.03.54.49
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 31 Jul 2013 03:54:50 -0700 (PDT)
Message-ID: <51F8EDB2.4020001@gmail.com>
Date: Wed, 31 Jul 2013 12:57:54 +0200
From: Martin Ertsaas <martiert@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130705 Thunderbird/17.0.7
MIME-Version: 1.0
To: Andrea Adami <andrea.adami@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
In-Reply-To: <CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Wed, 31 Jul 2013 10:54:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/31/13 10:57, Andrea Adami wrote:
> On Wed, Jul 31, 2013 at 9:21 AM, Martin Ertsaas <martiert@gmail.com> wrote:
>> Hi.
>>
>> I'm creating my own bsp layer for omap4 chips (Yes, I know of meta-ti,
>> but I want to learn how to do this myself :)). I'm trying to use the
>> linux-yocto 3.4 kernel,
>> and have gotten it to work locally. I then made a
>> linux-yocto_3.4.bbappend which contains the following:
>>
>> COMPATIBLE_MACHINE_pandaboard = "pandaboard"
>>
>> SRCREV_machine_pandaboard ?= "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7"
>>
>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"

The defconfig is found. I can see a defconfig in ${WORKDIR} with zero
diff to my defconfig. It is, however, not copied from there into
${WORKDIR}/linux.

I changed it so it uses the colon though, and removed THISDIR as
suggested by Paul, but didn't help. I still don't get the config copied
in, and if I add the do_configure_prepend myself to do this, I get a
message from the kernel building saying my folder is unclean.

- Martin

> Martin,
>
> the code in kernel.bbclass does already copy defonfig to .config, see
> http://cgit.openembedded.org/openembedded-core/tree/meta/classes/kernel.bbclass#n216
>
> I think your problem is the deconfig is not found,  you miss a colon at the end.
> Use something like
>
> FILESEXTRAPATHS_prepend :=
> "${THISDIR}/${PN}-3.4:${THISDIR}/${PN}:${THISDIR}/files:"
>
> Cheers
>
> Andrea
>
>
>> SRC_URI += "file://defconfig"
>>
>> do_configure_prepend() {
>>         cp ${WORKDIR}/defconfig ${S}/.config
>> }
>>
>> Problem I get is, without this configure_prepend, my defconfig is not
>> copied into .config the kernel folder. With this however, I get a
>> complaint from the kernel that the kernel directory is not clean and I
>> have to run make mrproper.
>>
>> I would greatly appreciate any pointer/help/explanations as to what I
>> have done wrong here, and how to fix it. Have been struggling for this
>> for a while now, and have no idea what I have done wrong.
>>
>> Best regards
>> Martin Ertsaas
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


