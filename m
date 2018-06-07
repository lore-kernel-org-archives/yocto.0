Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B9EDE0108D; Thu,  7 Jun 2018 07:17:54 -0700 (PDT)
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
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD35E01145
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 07:17:46 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id w23-v6so6630704qkb.8
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 07:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L3C1YRPJlgnSIuX6hi4LvgKRyrVv+lQnWkoNpM6PHwE=;
	b=HHAA6O51JIFC1X2bn0XNRvrtg6rPGiTXSma1C519EL+WDSGvmE0ck4G5vTcbciFaHB
	Pk/NzW3HFWP16Npx1F//klK2MpcGHiZY0Zq62xEC387Kp+Aaa2b43nTofp+oKBldU8pD
	Sn0y+Ut0zl0g7ZUYH3Cc6VYwdaPgAf3x4ORlcZYUgTbnEszmiZboDewkV2+2fN2MQXbr
	lWql9H/ggWAT3+6twbJhtuW4wCUlLi+GxNZVnyFHd3tR48xXwUm/vD+LmoQvyD3Z3J74
	IIS2D8OKpC47XOQ9bhbjT+4RWDI7yTOiNldU3noWB5mk+O89nuzztE3uAaE3dq4ydEgJ
	/ktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L3C1YRPJlgnSIuX6hi4LvgKRyrVv+lQnWkoNpM6PHwE=;
	b=tcRcoSmuwsLQBZDnKje6KAMbbGWl9pEBgSs8kSgT1FkqVMw4VaK0D4MxeGbLXkkXzt
	lJgRsP7BwzhbdYpsp96QZ9AfaU3WlcDBjT7jFglWWkZ3ehFDXZQMQP62hxXCzmqETRZK
	JdbZKqaBDu3/100N8ZYyLQty9Qoh1EbMdXIGIKfJt7Ck80PwbE6IrpK70ODbNnUdsKU3
	PKZqDyRe6ZKmnObzok9nKYwuFNZ6zC1UTHI6/yl0H1yi1AcA92aVnfCvR9WwodnosNLD
	r/DmeXiAyf63hXR+V2FVTRK/HJi62eUV+QNH61hKJ/IZ+kWK3mhywLvFlkJelj4qRjfP
	ho1g==
X-Gm-Message-State: APt69E0Pdj41sGQ5MEoUBaUyuEhaSPOim6GFuw6SLt7pYsz6LevB9no2
	mj2J58KIe8cu71x306BP9hTco50Rd8qqPS8xmEw=
X-Google-Smtp-Source: ADUXVKKKEqHTQCYa5LY9LkvRZYBBuA7UFqx5TyIVlwyqRZAT7ABAQk9FGlpn8HWKszy8mMzcufTra0qJTt/V6es7m/Q=
X-Received: by 2002:a37:fe9:: with SMTP id
	102-v6mr1588325qkp.406.1528381065725; 
	Thu, 07 Jun 2018 07:17:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e486:0:0:0:0:0 with HTTP;
	Thu, 7 Jun 2018 07:17:15 -0700 (PDT)
In-Reply-To: <CAJTo0LZkpEz3cv6giPX+vbYFW6tDG71CWd8=hgVgy7EzDrD9Kw@mail.gmail.com>
References: <20180607135337.28347-1-raj.khem@gmail.com>
	<CAJTo0LZkpEz3cv6giPX+vbYFW6tDG71CWd8=hgVgy7EzDrD9Kw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jun 2018 07:17:15 -0700
Message-ID: <CAMKF1sof7hHGPyjB7D87Y9h1KBH4U8d1fpQrEMOV8SMCnPMpZg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] mingw-w64-runtime: Fix build with gcc8
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
X-List-Received-Date: Thu, 07 Jun 2018 14:17:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 7, 2018 at 7:00 AM, Burton, Ross <ross.burton@intel.com> wrote:
> I've a nigh-on identical patch in master-next running on the AB already:
>
> http://git.yoctoproject.org/cgit.cgi/meta-mingw/commit/?h=master-next&id=46b1bfd8ef26dd9c778504143d4dea2fbe2ce90f
>
> Don't have the security flags bit though (our mingw builds don't use
> that), can you rebase to master-next and submit that?
>

thanks for doing this. I sent another fix on top as a prize to you.

> Ross
>
>
> On 7 June 2018 at 14:53, Khem Raj <raj.khem@gmail.com> wrote:
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  .../mingw-w64/mingw-w64-headers/gcc8.patch    | 30 +++++++++++++++++++
>>  .../mingw-w64/mingw-w64-headers_5.0.3.bb      |  5 ++--
>>  .../mingw-w64/mingw-w64-runtime_5.0.3.bb      |  2 ++
>>  3 files changed, 35 insertions(+), 2 deletions(-)
>>  create mode 100644 recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
>>
>> diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch b/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
>> new file mode 100644
>> index 0000000..2b0eba3
>> --- /dev/null
>> +++ b/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
>> @@ -0,0 +1,30 @@
>> +>From revision 248028 in GCC 8 there is defined function _xgetbv:
>> +https://gcc.gnu.org/viewcvs/gcc/trunk/gcc/config/i386/xsaveintrin.h?r1=248028&r2=248027&pathrev=248028
>> +
>> +It conflicting with mingw-w64 definition from mingw-w64-headers/include/psdk_inc/intrin-impl.h
>> +
>> +workaround for mingw-w64:
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +Upstream-Status: Pending [https://sourceforge.net/p/mingw-w64/mailman/message/35866694/]
>> +
>> +Index: mingw-w64-headers/include/psdk_inc/intrin-impl.h
>> +===================================================================
>> +--- mingw-w64-headers.orig/include/psdk_inc/intrin-impl.h
>> ++++ mingw-w64-headers/include/psdk_inc/intrin-impl.h
>> +@@ -1406,6 +1406,7 @@ __buildmov(__movsd, unsigned __LONG32, "
>> + #endif /* __INTRINSIC_PROLOG */
>> +
>> + /* NOTE: This should be in immintrin.h */
>> ++#if __GNUC__ < 8 /* GCC 8 already has _xgetbv defined */
>> + #if __INTRINSIC_PROLOG(_xgetbv)
>> + unsigned __int64 _xgetbv(unsigned int);
>> + __INTRINSICS_USEINLINE
>> +@@ -1426,6 +1427,7 @@ unsigned __int64 _xgetbv(unsigned int in
>> + }
>> + #define __INTRINSIC_DEFINED__xgetbv
>> + #endif /* __INTRINSIC_PROLOG */
>> ++#endif /* __GNUC__ < 8 */
>> +
>> + #endif /* defined(__x86_64__) || defined(_AMD64_) || defined(__i386__) || defined(_X86_) */
>> +
>> diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
>> index 31fa66f..58d7552 100644
>> --- a/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
>> +++ b/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
>> @@ -5,8 +5,9 @@ LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
>>  COMPATIBLE_HOST = ".*-mingw.*"
>>
>>  SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
>> -           file://epsilon.patch"
>> -
>> +           file://epsilon.patch \
>> +           file://gcc8.patch \
>> +          "
>>  SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
>>  SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
>>
>> diff --git a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
>> index 928a464..0884778 100644
>> --- a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
>> +++ b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
>> @@ -43,3 +43,5 @@ do_configure() {
>>  FILES_${PN} += "${exec_prefix}/libsrc"
>>
>>  BBCLASSEXTEND = "nativesdk"
>> +
>> +SECURITY_CFLAGS_remove_mingw32 = "-fstack-protector-strong"
>> --
>> 2.17.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

