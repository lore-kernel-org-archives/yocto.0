Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A98E01682
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:13:39 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id hn9so560041wib.5
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=8ZzUxfQAPJ8dXPrgKbxebshwSzTiQgQG53XYx1FEJzE=;
	b=gX1ISWXg9MswTun7s6ppyTSz1FugR/TKICG3wNSVS9YkLCwIUja6cU+bPpjTfDD1Bb
	skqjkmG6vd8UHfKl0Y+CsOyCDOKvSkFAm8Iszv/vDLki8fr5IhTAhilMG1rpKSY3IVlR
	Rh7NWublDoDaqEAPTaXbClcXmeb8sPeUPs+W3pnuz0gNO+iEC8f1Z3uf1k+ZRtObLSIr
	5OMY0LbCSCp8FI6Cn97UZ2kLblsg9xHpKLRIz9y9Cf7RP0VX0izezIGZmPWgQsuWEiEn
	wtSlBMTI8sFd6UAGIqtyZWHZLSGRnE1BEkNGraWphn62fKGfxnv4z3MJDqSfQV28Ffsw
	YDUg==
MIME-Version: 1.0
X-Received: by 10.194.200.100 with SMTP id jr4mr1847928wjc.37.1381922018884;
	Wed, 16 Oct 2013 04:13:38 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 16 Oct 2013 04:13:38 -0700 (PDT)
In-Reply-To: <CABHD4K_e98i7+u2mDZq4whZWqiGDB74t0spZ1tz9L5zBqH4BVg@mail.gmail.com>
References: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
	<1453346.6uHgHqcMcF@fedora-fisso> <2360903.vJkMptqlar@helios>
	<CABHD4K_e98i7+u2mDZq4whZWqiGDB74t0spZ1tz9L5zBqH4BVg@mail.gmail.com>
Date: Wed, 16 Oct 2013 16:43:38 +0530
Message-ID: <CABHD4K_gCtTMpO17BBstkjbKj_B9iJWMdchf2A_O2D+UZVpybg@mail.gmail.com>
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
X-List-Received-Date: Wed, 16 Oct 2013 11:13:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Davide

We have added folder base-passwd to

 meta-xyz/recipes-core/base-passwd

and inside this foler we placed two files one is
base-passwd_3.5.26.bbappend and other is customized passwd file

below is the content of base-passwd_3.5.26.bbappend

FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"
SRC_URI +=3D "file://passwd"

do_install_append_k2() {
                    install -m 0644 ${WORKDIR}/passwd
${STAGING_DIR_TARGET}${sysconfdir}/passwd
}

But after successful compilation my customized passwd file is not
reflected in /rootfs/etc folder

Any Suggestion where we are doing wrong.

Thanks
Amit

On Wed, Oct 16, 2013 at 4:27 PM, Amit Tomer <amittomer25@gmail.com> wrote:
> Thanks Paul for your suggestion
> Method of modifying in base-passws is somehow not working for us
> Let us try your suggestion.
>
> On Wed, Oct 16, 2013 at 4:03 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Wednesday 16 October 2013 10:20:24 Davide Soldan wrote:
>>> In data mercoled=EC 16 ottobre 2013 00:01:13, Amit Tomer ha scritto:
>>> > I wanted to modify the content of /etc/passwd but don't know how
>>> > /etc/passwd files is packed into final image
>>> >
>>> > After the build process ,passwd file goes to
>>> >
>>> > "tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd"
>>> >
>>> > this loaction
>>> >
>>> > Now I see image-k2.bb file but could not find any rule that will pack
>>> > passwd file to
>>> > final image.
>>> >
>>> > Can anybody how it is packed and way to modify it.
>>> >
>>> > Thanks
>>> > Amit
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> Hi,
>>> I think that the recipe that creates passwd file is under
>>> poky/meta/recipes-core/base-passwd (I'm on dora branch). Maybe with a
>>> bbappend of that recipe you can change the passwd file with yours... Ch=
eers
>>
>> Rather than modifying it in base-passwd, with master or 1.5 I'd recommen=
d
>> using extrausers.bbclass / EXTRA_USERS_PARAMS (see meta-
>> yocto/conf/local.conf.sample.extended for an example of how to use it).
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre

