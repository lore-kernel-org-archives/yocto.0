Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FB6EE00D8D; Fri,  1 Nov 2019 10:23:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64F95E008D9
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 10:23:41 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id r22so3772057qtt.2
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 10:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=FAmj9U9w+OVbtVF7jZ3fwTEh23nhjv0rOoeQKHuQrXE=;
	b=RZeNf2GcbaD+RxmlUl9iJfWZt5LBUaGYvw3iXDIEu8BB4BDtzJJ407as5YyE3CTk9e
	M01O7Y3CAYPpWUFSBiomonZvuz6hML/CJF85ZNmE2RcpfSqKqpw8Xov7H3yH9P7sTYHw
	gaT0aGWt/nMETSOLhXPB6EkcYFEFfi+6Hqktgnz76rsfnrNQVxkwTZMD5c4pMBbq6UgY
	yXWhbjTx5Y+8zAoL4iI/KNHtIJfkeXv9GzW+pPEAYpvOAerLxmHKQf9qirRX1W3GUXXu
	bkNZqqwqgb/+7Boy1vGZIKkSSBtPOI4JtzbdjzopdRsFm0CLPpAdEpwEzK89KUEak6lH
	vTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=FAmj9U9w+OVbtVF7jZ3fwTEh23nhjv0rOoeQKHuQrXE=;
	b=E1ahz4xiV4pNNVSFswFEJrf7QJuAYNv8LYTNeInX+LzS6VWa5NbYRZjEcT7vSO3mdp
	08Pp+U36YSHQpeeFxLSaqidVVUCUeA54GoP6wUx0eodDpo2uUPAxZQI8/wne/6MsLfQq
	fHWtXLbN4eOF+uCnlrhGiSFXGy2NUQPxcnHKRI6b54gAChroCUAad8hSBH54lWIsGZ0Z
	jl6hU5ztAt5lAZg7dTx4eOfeHXZ0YfUpnnx9B/FJwnP1eE9hZleH3yt6I2FS+r+xK+0Q
	FOSV7Fj3jJGmxL0MupMhPGkq50nS5es5mp7BG2UeWwWv93DlM6ezSU0kNuk8pVbfSQhw
	yZXQ==
X-Gm-Message-State: APjAAAXFe90Z12kD4Mnfkn2NUhaTR1sh5lJzY1WaBVyNdex0L1kaD2K3
	b4q6vOZuKEhP6aV/SFKaf7SImolKk7jD0eqrjL5PwKO2UvA=
X-Google-Smtp-Source: APXvYqwDx/nQdg/ft7uwOwG+k74phEqfqKIxq36F8ck3j8ksIraHOKngoSPC6EFXMmYvkQsFCwcgwFF/2NWiaFwaTU0=
X-Received: by 2002:ac8:7655:: with SMTP id i21mr413755qtr.53.1572629020388;
	Fri, 01 Nov 2019 10:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-9c767986-f846-4e0a-9b8c-834746d6fc80-1572599196046@3c-app-webde-bs43>
In-Reply-To: <trinity-9c767986-f846-4e0a-9b8c-834746d6fc80-1572599196046@3c-app-webde-bs43>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Nov 2019 10:23:14 -0700
Message-ID: <CAMKF1squJHoCUUTBtAPd=XyAq7UAtCxOgPHrVmX8=x3-3NEvDQ@mail.gmail.com>
To: JK.Behnke@web.de
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: poky thud: qtscript fails to build with undefined reference to `cti_vm_throw'
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
X-List-Received-Date: Fri, 01 Nov 2019 17:23:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 1, 2019 at 2:12 AM <JK.Behnke@web.de> wrote:
>
> Hello,
>
> I tried to build a poky SDK with QT5 support (I am using poky thud).
> Unfortunately this failed while bitbaking qtscript.
> When executing "bitbake qtscript" directly I get the same error.
>
> Here are the IMHO relevant lines of the huge log.do_compile file.
> I have replaced the long paths by <...> for clarity.
>
> -- multiple warnings ---
> ...  warning: 'template<class> class std::auto_ptr' is deprecated [-Wdepr=
ecated-declarations]
> ---
>
> -- warning ---
> In member function 'allocatePropertyStorageInline',
>     inlined from 'allocatePropertyStorage' at <...>/git/src/3rdparty/java=
scriptcore/JavaScriptCore/runtime/JSObject.cpp:546:34:
> <...>/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.h:6=
79:68: warning: argument 1 value '4294967295' exceeds maximum object size 2=
147483647 [-Walloc-size-larger-than=3D]
>      PropertyStorage newPropertyStorage =3D new EncodedJSValue[newSize];
>                                                                     ^
> <...>/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.h: =
In member function 'allocatePropertyStorage':
> <...>/recipe-sysroot/usr/include/c++/8.2.0/new:122:7: note: in a call to =
allocation function 'operator new []' declared here
>  void* operator new[](std::size_t) _GLIBCXX_THROW (std::bad_alloc)
> ---
>
> --- error ---
> <...>/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-po=
ky-linux/gcc/i686-poky-linux/8.2.0/ld: <...>/recipe-sysroot-native/usr/bin/=
i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/8.2.0/ld:=
 DWARF error: invalid abstract instance DIE ref
> /tmp/ccSwzRoN.ltrans0.ltrans.o: in function `ctiVMThrowTrampoline':
> <artificial>:(.text+0x1f): undefined reference to `cti_vm_throw'
> collect2: error: ld returned 1 exit status
> Makefile:666: recipe for target '../../lib/libQt5Script.so.5.12.2' failed
> ---
>
> Has anyone an idea what could be the problem?
>

perhaps we need to patch binutils/ld with

https://patches-gcc.linaro.org/patch/9614/

see
https://sourceware.org/bugzilla/show_bug.cgi?id=3D23425

if you could try it out and report back that would be awesome

> Thanks
> Jochen
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

