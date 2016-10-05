Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CFDDE00A85; Wed,  5 Oct 2016 09:53:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BB37E00803
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 09:53:15 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id b186so91430518vkb.1
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 09:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=OML2yXBGyUwoW0UMEHacBJJvad3ZHmGJGkFRspBrX4E=;
	b=GT6TuLpOdnhrp7QYAsdq0ypHqO3QmCEQcr5lTjvsDtv2OPx9AfMUMSDq6xAXABooo1
	JEnSmbuEiqEUX8sS26JgWKv/l5bIRRvQXAYcdjm12GXw+wZ4hrkSXGn+1aPS2RH7/oGs
	tJzKDGT0D02w3mXnKFdlUnRvEzXXI4+jP7JjWk8mdTkshpS5fb8OOM9zqvngTfoeqHJR
	ciJ6QH7XnUeZo2rnpOvTaG3ZKlNmZ0P6SS2TsbkAskgIv5W3kvg1UKoyi3+GcR8o73HU
	PGPGFVuHpwnHe9SXdrVQRPruWVAISzmNl+zeRh6NNXtuzXA9bqSKI4RNwWO80aUzxA54
	oKzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=OML2yXBGyUwoW0UMEHacBJJvad3ZHmGJGkFRspBrX4E=;
	b=FAkbtDhDHCBnrYERpDT8opJbBsUYY2sxoOCF8Jyc10EAfHwlVdL7D2gWbp6+u5OTTS
	dROpu5qpyby8sDVnudjzFu6ytNC9bdtBTpaC//7fLqrFtA+OoHbV84ZV+bs+W3Xcs6qd
	4R2do9L5aN9qGXnfmJP3Tr1KcIAPumtFo4W3LPrvNQNFXJ0w5diKGpDWHlAxB9TFbFOT
	KrdoUDB6gVxTaR52dVO5OpNagjrPbstoITT6YM4LDp7MarNcyAklSUTKq48kOsPO0bK9
	Mk3g0OaXn22wKrLk6XHTnZN+3u5D461lmTFNiuLRb8pgTkx7Hddy7WBYuI6xBeo8vDEU
	BlwQ==
X-Gm-Message-State: AA6/9Rm6mKm4hLEKVtcA0HWLn4mNVzuT5FtavTTZORRPeg5SR2VBJZInigxD4G8V82u0TU3Gp/gXr6Zi1Rhp1w==
X-Received: by 10.31.15.207 with SMTP id 198mr6549587vkp.93.1475686394654;
	Wed, 05 Oct 2016 09:53:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Wed, 5 Oct 2016 09:52:44 -0700 (PDT)
In-Reply-To: <894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Oct 2016 09:52:44 -0700
Message-ID: <CAMKF1sp-08VEVyhSEtpYGX+Lek3m9QUp+ZAw81fNshWYh2=oCw@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 16:53:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 5, 2016 at 9:06 AM, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote=
:
> Many thanks Paul. Your help is greatly appreciated.
>
> 1. >>> Like the other responder I would suggest you not set PACKAGES
>
> Yes, I did not set the PACKAGES, so -dev, -dbg and main packages were bui=
lt as shown below:
>
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find t=
mp/deploy | grep c-mlibtmp/deploy/ipk/core2-64/c-mlib-dbg_1.1-r0_core2-64.i=
pk
> tmp/deploy/ipk/core2-64/c-mlib-dev_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
> tmp/deploy/licenses/c-mlib
>
> 2. >>> FILES_${PN}-dev =3D "${includedir}=E2=80=9D
>
> I added that to .bb as you suggested so .so file doesn't end up in the ${=
PN}-dev
> Package =E2=80=94 No longer see the error mentioned in previous mail. Thx
>
> 3. >>> This is what I suspected would happen - these files would normally=
 be part of
> the ${PN}-dbg package, but since you've removed that from PACKAGES, they =
are
> ending up unpackaged and that is not allowed.
>
> Did you mean the "install -m 0644 xxx yyy=E2=80=9D to remove those files =
from the PACKAGES? How do I copy .so and binaries from my target to the lib=
dir or bindir?
>
> After changing the .bb to remove the PACKAGES setting and FILES_${PN}-dev=
 =3D "${includedir}=E2=80=9D
> For the very first time, packages were built find, image were created und=
er image directory and c-mlib source is still in the yp workspace as shown =
below:
>
> A.Packages were built
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find t=
mp/deploy | grep c-mlib
> tmp/deploy/ipk/core2-64/c-mlib-dbg_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib-dev_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
> tmp/deploy/licenses/c-mlib
>
> B. Source files and the c-mlib git directory still have all the sources (=
e.g just grep the mlib_api.c)
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find .=
 -name "mlib_api.c"
> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/git/src/mlib_api.c
> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/packages-split/c-mlib-dbg/us=
r/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/package/usr/src/debug/c-mlib=
/1.1-r0/git/src/mlib_api.c
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$
>
> C. Image was built as well including binaries and libmlib.so
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/wor=
k/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ ls -ltr
> total 1424
> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 datamodel_cache
> -rw-r--r-- 1 dinhn dinhn 187434 Oct  5 01:17 invoke
> -rw-r--r-- 1 dinhn dinhn 184961 Oct  5 01:17 invoke_b
> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 protocol_infra
> -rw-r--r-- 1 dinhn dinhn 191362 Oct  5 01:17 publisher
> -rw-r--r-- 1 dinhn dinhn 187084 Oct  5 01:17 rpc-register
> -rw-r--r-- 1 dinhn dinhn 179648 Oct  5 01:17 service
> -rw-r--r-- 1 dinhn dinhn 174518 Oct  5 01:17 subscriber
>
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/wor=
k/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ cd ../lib
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/wor=
k/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/lib$ ls -ltr
> total 856
> -rw-r--r-- 3 dinhn dinhn 872657 Oct  5 01:17 libmlib.so
>
> So it is all good for the first time, but thereafter that, if I do clean =
=E2=80=9Cbitbake -c clean c-mlib=E2=80=9D and =E2=80=9Cbitbake c-mlib=E2=80=
=9D again.
> All packages were build successful, but all data under c-mlib got was gon=
e. Nothing there including .c/h files, image directory etc...
>
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/wor=
k/core2-64-poky-linux/c-mlib/1.1-r0/git$ ls -ltr
> total 0
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/wor=
k/core2-64-poky-linux/c-mlib/1.1-r0/git$
>
> Please give me an idea why how to solve this? Sorry for a long email ;-))

I guess its getting renamed as per debian package renaming rules. Just add

ALLOW_EMPTY_${PN} =3D "1"

and see if you get the ipk

>
> Best,
>   =E2=80=94Dinh
>
>
>
>
>
> On 10/4/16, 11:55 PM, "Paul Eggleton" <paul.eggleton@linux.intel.com> wro=
te:
>
>>On Wed, 05 Oct 2016 05:12:27 Dinh Nguyen wrote:
>>> Thanks much Paul.
>>>
>>> >>>> PACKAGES =3D "${PN}" should work
>>>
>>> It solved the early error =E2=80=9C c-mlib listed in PACKAGES multiple =
times, this
>>> leads to packaging errors=E2=80=9D =E2=80=94 Thanks again.
>>>
>>>
>>> But running into other issue. Below is my do_install
>>>
>>> do_install () {
>>>      oe_runmake all
>>>      install -d ${D}${libdir}
>>>      install -d ${D}${bindir}
>>>      install -m 0644 ${S}/target/libmlib.so ${D}${libdir}
>>>      install -m 0644 ${S}/target/datamodel_cache ${D}${bindir}
>>>      install -m 0644 ${S}/target/invoke ${D}${bindir}
>>>      install -m 0644 ${S}/target/invoke_b ${D}${bindir}
>>>      install -m 0644 ${S}/target/protocol_infra ${D}${bindir}
>>>      install -m 0644 ${S}/target/publisher ${D}${bindir}
>>>      install -m 0644 ${S}/target/rpc-register ${D}${bindir}
>>>      install -m 0644 ${S}/target/service ${D}${bindir}
>>>      install -m 0644 ${S}/target/subscriber ${D}${bindir}
>>> }
>>>
>>> PACKAGES =3D "${PN}"
>>> FILES_${PN} =3D "/usr/bin/datamodel_cache \
>>>              /usr/bin/invoke \
>>>              /usr/bin/invoke_b \
>>>              /usr/lib/libmlib.so \
>>>              /usr/bin/protocol_infra \
>>>              /usr/bin/publisher \
>>>              /usr/bin/rpc-register \
>>>              /usr/bin/service \
>>>              /usr/bin/subscriber"
>>>
>>>
>>>
>>> And under ${S}/target, it has the libmlib.so and other binaries built,
>>> And I intended to copy the .so to ${D}${libdir} and binarires to
>>> ${D}${bindir}. I am able to build the c-mlib package as shown below:
>>
>>> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find
>>> tmp/deploy | grep c-mlib
>>> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
>>>
>>>
>>> The problem is that, after "bitbake c-mlib=E2=80=9D, it moved all sourc=
es under ${S}
>>> to /usr/src/debug etc..
>>> I googled but unable to find the root cause.
>>> Would you and other can help to identify the issue?
>>> NOTE: Executing RunQueue Tasks
>>> ERROR: QA Issue: c-mlib: Files/directories were installed but not shipp=
ed
>>>   /usr/src
>>>   /usr/lib/.debug
>>>   /usr/lib/.debug/libmlib.so
>>>   /usr/src/debug
>>>   /usr/src/debug/c-mlib
>>>   /usr/src/debug/c-mlib/1.1-r0
>>>   /usr/src/debug/c-mlib/1.1-r0/git
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src
>>>   /usr/src/debug/c-mlib/1.1-r0/git/include
>>>   /usr/src/debug/c-mlib/1.1-r0/git/deps
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_metrics.c
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_util.c
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_local_metrics.c
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/utils
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/service_sdk
>>>   /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_service_cac=
he.c
>>> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_wrapper.c
>>> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_dsa.c
>>> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/include
>>> =E2=80=A6.
>>
>>This is what I suspected would happen - these files would normally be par=
t of
>>the ${PN}-dbg package, but since you've removed that from PACKAGES, they =
are
>>ending up unpackaged and that is not allowed.
>>
>>Like the other responder I would suggest you not set PACKAGES - instead y=
ou
>>just need to take steps so that the .so file doesn't end up in the ${PN}-=
dev
>>package. You could do something like this:
>>
>>FILES_${PN}-dev =3D "${includedir}"
>>
>>Cheers,
>>Paul
>>
>>--
>>
>>Paul Eggleton
>>Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

