Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E59B7E01466
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 20:42:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5R3gYii028575
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jun 2013 20:42:34 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Wed, 26 Jun 2013 20:42:33 -0700
Message-ID: <51CBB4A8.80200@windriver.com>
Date: Wed, 26 Jun 2013 23:42:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <91586D499ADFD74FBCFB8425266A5DE4013B91292051@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B91292051@pluto.melinkcorp.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patch is unpacked but not applied
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
X-List-Received-Date: Thu, 27 Jun 2013 03:42:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-26 11:08 PM, Bryan Evenson wrote:
> I am building a custom Linux kernel under poky-dylan and I am having an issue with patches being unpacked but not applied.  I have two layers that have a bbappend file for the kernel.  Generally, this is what each bbappend file looks like:
>
> #First .bbappend
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> COMPATIBLE_MACHINE_mach1 = "mach1"
> COMPATIBLE_MACHINE_mach2 = "mach2"
> SRC_URI_append_mach2 = " file://${MACHINE}/${KBRANCH}/0001-blah.patch \
>      file://${MACHINE}/${KBRANCH}/0002-blah.patch \
>      "
>
> # Increment the recipe revision
> PRINC := "${@int(PRINC) + 1}"
>
> # Second .bbappend
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> COMPATIBLE_MACHINE_mach1 = "mach1"
> COMPATIBLE_MACHINE_mach2 = "mach2"
> SRC_URI_append_mach2 = " file://${MACHINE}/${KBRANCH}/0003-blah.patch \
>      file://${MACHINE}/${KBRANCH}/0004-blah.patch \
>      "
>
> # Increment the recipe revision
> PRINC := "${@int(PRINC) + 1}"
>
> All of the patch files are properly unpacked, but the last two patches are not being applied.  If I open the devshell for the kernel (bitbake -c devshell linux-yocto-custom) I can see in the git log that the first patch set was applied.  The second patch set exists but is not applied.  If I call "guilt push" repeatedly from the devshell, the patches from the second set are cleanly applied.  My guess is that something doesn't like the second SRC_URI_append call.  Any ideas on how to fix it?

It shouldn't matter. Let me try and set up something that reproduces the
problem and get back to you.

Strangely .. I'm actively debugging something similar here already, so I
may be able to re-use it.

Stay tuned.

Out of curiosity, have you tried this on master ?

Cheers,

Bruce

>
> Thanks,
> Bryan
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


