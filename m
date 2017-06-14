Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B590DE00B87; Wed, 14 Jun 2017 10:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D56CE00B43
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 10:57:43 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id x23so1495468wrb.0
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 10:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WCmhEJJau1hzOpwijcY7F8Yqn7rCrrcN61RWug9LY0o=;
	b=LugjgTejuUMhfGwgfomQ64ppT0jFKUV/Xq27GccFsb7vfOdJvrLbnnIR9jDroQL2N7
	zp+VX/sA+Qu3lxLM1wYLS7zqLb7viTln3V90kf7LuPMpF3pJRypufpKIaCK5mOtolo83
	+6hWn5a8FvTuapqXq27DaEKGuT5AhGJsn8K5bYlZ66g0mjdOF4juy5WO+QOgweMjosHN
	gAa/UeRFqp+R9Ne0BCWNhrc0H4ajNcdNpGFutv9rOuC6U8d9LSjenHJoPKjjqkJBjLCi
	Bz+I0fP2PWEg6YYiZmDx/Mhh1ghf2yy/VRER16tu+STcw1XQ9EnRHH+xxpDYZoI4Cpgi
	nxZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WCmhEJJau1hzOpwijcY7F8Yqn7rCrrcN61RWug9LY0o=;
	b=ZnbwemrZ9k716XMb6fe3xVVrbrTsGdenVMiBjoC6SPmiwC+45TvSl3+VVZzC70TAtl
	C5Yu4n8ZTTk7NDKHPwsd76JzYBpsBbNkekA+7uVOCcVkX4Me478/6QYyApLz10bVNlVI
	EQVYZtriVH6vbJM5X3tMu5qaiUpNUfI3m3hmJRRsgBMKUfn/ZfQyKcKPoSHPqz4hhsG9
	qjFr3ZqhIflWY6NKi9pX0lE/psaudBX/J4yby+5w6RCuYBYwr5nNbLcocIby5Dul8hnu
	w22J6N2hIxqRM4yDPg91iUSCIT8pQVCx+HyNEdsM13sAGTsygLd4PR9Wh+OwZqz+G3qI
	i6kg==
X-Gm-Message-State: AKS2vOxariG2mHZFB3xeVS1ekQlf5s24+f4clGf1i/ZPHV725+1H9z7i
	td/aTv5TbI2vo+rN9/LBnMHaOy/oQQ==
X-Received: by 10.28.41.193 with SMTP id p184mr851193wmp.86.1497463062539;
	Wed, 14 Jun 2017 10:57:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.170 with HTTP; Wed, 14 Jun 2017 10:57:41 -0700 (PDT)
In-Reply-To: <1497442376-42554-1-git-send-email-maxin.john@intel.com>
References: <1497442376-42554-1-git-send-email-maxin.john@intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 14 Jun 2017 10:57:41 -0700
Message-ID: <CAJ86T=XU8Shd6LuQXBQbiLDPJqTU45crQH3pYA3F7QVwZRrYvQ@mail.gmail.com>
To: "Maxin B. John" <maxin.john@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, srifenbark@gmail.com
Subject: Re: [PATCH] documentation: updates to static library support in SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 17:57:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 14, 2017 at 5:12 AM, Maxin B. John <maxin.john@intel.com> wrote:
> For development purposes, static libraries need to be
> present only in the SDK. We do not need those static
> libraries in the image for most scenarios. So, replace
> IMAGE_INSTALL with TOOLCHAIN_TARGET_TASK in the documentation.
>
> Suggested-by: Anders Darander <anders@chargestorm.se>
> Signed-off-by: Maxin B. John <maxin.john@intel.com>
> ---
>  documentation/adt-manual/adt-prepare.xml         | 8 ++++----
>  documentation/sdk-manual/sdk-appendix-obtain.xml | 8 ++++----
>  2 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
> index 65df1d0..7587305 100644
> --- a/documentation/adt-manual/adt-prepare.xml
> +++ b/documentation/adt-manual/adt-prepare.xml
> @@ -684,16 +684,16 @@
>          <note>
>              By default, this toolchain does not build static binaries.
>              If you want to use the toolchain to build these types of libraries,
> -            you need to be sure your image has the appropriate static
> +            you need to be sure your SDK has the appropriate static
>              development libraries.
>              Use the
> -            <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
> +            <ulink url='&YOCTO_DOCS_REF_URL;#var-TOOLCHAIN_TARGET_TASK'><filename>TOOLCHAIN_TARGET_TASK</filename></ulink>
>              variable inside your <filename>local.conf</filename> file to
> -            install the appropriate library packages.
> +            include the appropriate library packages in SDK.
>              Following is an example using <filename>glibc</filename> static
>              development libraries:
>              <literallayout class='monospaced'>
> -     IMAGE_INSTALL_append = " glibc-staticdev"
> +     TOOLCHAIN_TARGET_TASK_append = " glibc-staticdev"

That should perhaps be "libc-staticdev" so the same instructions work
for musl (although it looks like currently musl doesn't rprovide
libc-staticdev so that would need to be fixed too).

>              </literallayout>
>          </note>
>      </para>
> diff --git a/documentation/sdk-manual/sdk-appendix-obtain.xml b/documentation/sdk-manual/sdk-appendix-obtain.xml
> index 3156f77..86e0eff 100644
> --- a/documentation/sdk-manual/sdk-appendix-obtain.xml
> +++ b/documentation/sdk-manual/sdk-appendix-obtain.xml
> @@ -96,16 +96,16 @@
>                  <listitem><para>
>                      By default, this toolchain does not build static binaries.
>                      If you want to use the toolchain to build these types of
> -                    libraries, you need to be sure your image has the
> +                    libraries, you need to be sure your SDK has the
>                      appropriate static development libraries.
>                      Use the
> -                    <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
> +                    <ulink url='&YOCTO_DOCS_REF_URL;#var-TOOLCHAIN_TARGET_TASK'><filename>TOOLCHAIN_TARGET_TASK</filename></ulink>
>                      variable inside your <filename>local.conf</filename> file
> -                    to install the appropriate library packages.
> +                    to install the appropriate library packages in SDK.
>                      Following is an example using <filename>glibc</filename>
>                      static development libraries:
>                      <literallayout class='monospaced'>
> -     IMAGE_INSTALL_append = " glibc-staticdev"
> +     TOOLCHAIN_TARGET_TASK_append = " glibc-staticdev"
>                      </literallayout>
>                      </para></listitem>
>                  <listitem><para>
> --
> 2.4.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

