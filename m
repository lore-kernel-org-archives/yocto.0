Return-Path: <javiroman@kernel-labs.org>
Received: from paris.hostgo.com (unknown [64.71.164.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12DAE00282
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 05:24:13 -0700 (PDT)
Received: from mail-pa0-f46.google.com ([209.85.220.46]:41329)
	by paris.hostgo.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.80.1)
	(envelope-from <javiroman@kernel-labs.org>) id 1VDvq7-0006mk-N9
	for yocto@yoctoproject.org; Mon, 26 Aug 2013 08:24:11 -0400
Received: by mail-pa0-f46.google.com with SMTP id fa1so3362011pad.19
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 05:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=bXx/uVFdvHqCsUDoyFaTz/1VNtXe1rCiLZLbjuu5efU=;
	b=ieQzXOruRb2tZi8ss6yqtjkcCtbvn2cXhHVBAyF2c3BZOMovWreUKREGj41JCmFDzF
	GJepYI8fl9F7s2rWw/iLOnlkPazM7ioYKq62QKBRdGLGLrsPduxtCGlUVM91C9P14ngy
	WL0X9X8SlsV8I62eq3hCwcZcwvyYONshVh7olIHVa9lXRpNkTYzZr3YcSvE8GrQ7GLbP
	oLUPTg0kRM0oes1ty4LTgnDtt0ZFdHEmqwRoV1E3fhOwR8vTv9c2CzZVE8Y060Wfjh9y
	eteJJXMAig2PCncf/tDn/KKOlLofNhPrvb3s3fyGJ2Js6Rp4x2mdXn+QjkbQDTfujZrS
	9mdA==
X-Received: by 10.68.232.166 with SMTP id tp6mr2772964pbc.153.1377519850771;
	Mon, 26 Aug 2013 05:24:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.130.163 with HTTP; Mon, 26 Aug 2013 05:23:30 -0700 (PDT)
In-Reply-To: <loom.20130724T132956-99@post.gmane.org>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org> <1571616.VWc8oWtlLJ@helios>
	<loom.20130614T195255-724@post.gmane.org>
	<CE727E34-D6D2-4B25-840A-0D2F32318C0A@gmail.com>
	<loom.20130614T200317-354@post.gmane.org>
	<loom.20130724T132956-99@post.gmane.org>
From: Javi Roman <javiroman@kernel-labs.org>
Date: Mon, 26 Aug 2013 14:23:30 +0200
Message-ID: <CACWQdqBLwYUR4+C4ico5ss08L_90ozKzvMiDL5bP_jKo2eC3tw@mail.gmail.com>
To: Marcelo Valle <mvalleavila@gmail.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - paris.hostgo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kernel-labs.org
X-Get-Message-Sender-Via: paris.hostgo.com: authenticated_id:
	javiroman@kernel-labs.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Mon, 26 Aug 2013 12:24:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I had the same issue. The problem seems the variable FC (Fortran
Compiler) is not properly setup (in meta/conf/bitbake.conf).

The libtool-cross recipe shows QA problems with wrong include paths
when uses x86_64-poky-linux-gfortran tests.

This workaround works for me:

recipes-devtools/gcc
=E2=94=94=E2=94=80=E2=94=80 gcc-cross_4.7.bbappend
recipes-devtools/libtool/
=E2=94=94=E2=94=80=E2=94=80 libtool-cross_2.4.2.bbappend

With:

$ cat recipes-devtools/gcc/gcc-cross_4.7.bbappend
FORTRAN =3D ",fortran"

$ cat recipes-devtools/libtool/libtool-cross_2.4.2.bbappend
export FC =3D "${CCACHE}${HOST_PREFIX}gfortran ${HOST_CC_ARCH}
--sysroot=3D${STAGING_DIR_HOST}"

Javi Roman


On Wed, Jul 24, 2013 at 1:39 PM, Marcelo Valle <mvalleavila@gmail.com> wrot=
e:
> Dat Tran <dtran11@...> writes:
>
>
>
>>
>> This is the error I get:
>>
>> configure: WARNING: unrecognized options: --disable-silent-rules, --with=
-
>> sysroot
>> DEBUG: Shell function do_configure finished
>> DEBUG: Executing python function do_qa_configure
>> NOTE: Checking autotools environment for common misconfiguration
>> ERROR: This autoconf log indicates errors, it looked at host include
> and/or
>> library paths while determining system capabilities.
>> Rerun configure task after fixing this. The path was
>> '/home/appusr/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-
>> gnueabi/libtool-cross-2.4.2-r5.1/libtool-2.4.2'
>> DEBUG: Python function do_qa_configure finished
>> ERROR: Function failed: do_qa_configure
>>
>> Thanks
>>
>>
>
> Hello,
>
> I followed the same steps to use fortran with Yocto, but get a similar
> error:
>
> ERROR: This autoconf log indicates errors, it looked at host include and/=
or
> library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was '/home/mvalle/poky-
> dylan-9.0.0/build/tmp/work/x86_64-poky-linux/gcc-runtime/4.7.2-r19/gcc-
> 4.7.2/build.x86_64-poky-linux.x86_64-poky-linux/x86_64-poky-
> linux/libgfortran'
> ERROR: Function failed: do_qa_configure
>
> You finally could fix this error?
>
> Thanks in advance.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

