Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6551BE00BBC; Thu, 24 Aug 2017 21:45:39 -0700 (PDT)
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
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D45EE00B3D
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 21:45:37 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id b8so8642304pgn.5
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 21:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sn6PY9T5E5r+F/xIOEmdPtR6ChDDl0TQ2TwbRGsGtfI=;
	b=iyVmxzOqeoOqzZg8w0WHmXeT5QW8Wc565RPEKwunDbNfLuzi8BMqTkU1Y8GJY7/rGs
	fel9SGX87Vj90Wc2STz7yZyWrHCTHoKzgjT00/aZ+PhWKw/Qwr2YfbNh0sO5jCuWs4l0
	GACiW/P3K67xzfTARGbIIGVKeFt4jdyqjsfcwYrYSTYs3EbyDrlCGf1lmQY/m8+D/SEc
	LvxBeUeiIPFLLfWEAOw9qbzyB87BkOEJhC/C6hsB5UEV5ngC4BUWOSnTDIOjNADdd40N
	VpJKCdBf76EcljCs0FvvH3eMfIND0+IBNO+jKuI4ldYku6hf67F2ojZ/YV73voxxVCuJ
	sbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sn6PY9T5E5r+F/xIOEmdPtR6ChDDl0TQ2TwbRGsGtfI=;
	b=cU4SwRpZSB07lLtVVLdAGqAPQlXIAcbmH1TVfVLx8QiU80mvW0eFPDlx963A5kWNdV
	wqvHL8STtrfqeu1NFNOk/J7Q43CU3SFqnAjZTaVjuHk2FSifU8ughSSL3ckRj7EfYer/
	xu9TWjOCQWqw3zI6mjl6NlLZ0gpAtqzBQ5Y8Qlp9hWqtkkCZeix//0yRBuyMMUqa740S
	vF6zmsZ294QwhGOGSQM0pyai7hINRY0oFSG2kBxeRqc5C5bCuBMiJzlLd3AZjuJBfeJo
	7j9oiM3DyUf7QvrXcE9dqqU/CWIyDMUVCJXMCOpCqCbX5JwFUsPbu83VJWGfH2tUYkTC
	4ubQ==
X-Gm-Message-State: AHYfb5jRLfa66galUwZcS19B7PhxF3Sus5/wdaCIN/f59lZStra1I1pf
	axk7uPqsqRv7dr7bxnurZTwWy8YVDw==
X-Received: by 10.84.133.14 with SMTP id 14mr9334445plf.440.1503636336790;
	Thu, 24 Aug 2017 21:45:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Thu, 24 Aug 2017 21:45:06 -0700 (PDT)
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F0864194@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F086417D@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864183@IR-CENTRAL.corp.innerrange.com>
	<CAMKF1soq1xM+HM+tBX3ear57EU0P8N5MMSJxgOy3+ixyt2GPOA@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864194@IR-CENTRAL.corp.innerrange.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Aug 2017 21:45:06 -0700
Message-ID: <CAMKF1soW30WKkrHtcNcgLM5A22oLO-irncSnBFjJFw999PjtdQ@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module and build_ext args
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
X-List-Received-Date: Fri, 25 Aug 2017 04:45:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 24, 2017 at 9:42 PM, Craig McQueen
<craig.mcqueen@innerrange.com> wrote:
> Khem Raj wrote:
>
>
>
> On Thu, Aug 24, 2017 at 6:48 PM Craig McQueen <craig.mcqueen@innerrange.com>
> wrote:
>
> I wrote:
>> I'm trying to make a recipe for python3-uvloop, using setuptools3.
>>
>> The Python 3 uvloop module depends on libuv. It bundles a version of
>> libuv,
>> and setup.py tries to build it, but it doesn't work well for
>> cross-compilation.
>> However, it also provides a build_ext parameter "--use-system-libuv",
>> which
>> seems to work when I try running it manually in devshell. (I have made a
>> suitable recipe for libuv and added libuv to DEPENDS.)
>>
>> How can I specify the "--use-system-libuv" parameter for build_ext in the
>> python3-uvloop recipe? I see a reference to DISTUTILS_BUILD_EXT_ARGS,
>> but it doesn't seem to be functional.
>
>
> I see DISTUTILS_BUILD_EXT_ARGS was submitted in this patch:
> https://patchwork.openembedded.org/patch/66071/
>
> However, in the Yocto poky repository, I see commit
> 0221af0f4ee9e8bfb8796841bdf806e38bc600c6 which appears to be a broken
> version of the above patch with the separate build_ext step not actually
> executed with the DISTUTILS_BUILD_EXT_ARGS parameters.
>
>
>
> You did not explain broken in which sense ?
>
>
>
> It is broken in the sense that: The separate build_ext step is not actually
> executed with the DISTUTILS_BUILD_EXT_ARGS parameters. The original patch
> submission contained:
>
>
>
>           STAGING_INCDIR=${STAGING_INCDIR} \
>
>           STAGING_LIBDIR=${STAGING_LIBDIR} \
>
>           BUILD_SYS=${BUILD_SYS} HOST_SYS=${HOST_SYS} \
>
> -         ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.py
> build ${DISTUTILS_BUILD_ARGS} || \
>
> +         ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.py
> \
>
> +         build_ext --include-dirs
> ${STAGING_INCDIR}/${PYTHON_DIR}${PYTHON_ABI} \
>
> +         --library-dirs ${STAGING_LIBCDIR}/${PYTHON_DIR} \
>
> +         ${DISTUTILS_BUILD_EXT_ARGS} \
>
> +         build ${DISTUTILS_BUILD_ARGS} || \
>
> +         ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.py
> build_ext ${DISTUTILS_BUILD_ARGS} || \
>
>           bbfatal "${PYTHON_PN} setup.py build_ext execution failed."
>
> }
>
>
>
> However that part of the patch is not present in commit
> 0221af0f4ee9e8bfb8796841bdf806e38bc600c6.
>

IIRC there were some breakages with this but it was long time ago. Can
you appy this change and test it out ?

