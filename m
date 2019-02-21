Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E505FE00CB9; Thu, 21 Feb 2019 03:29:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B94BBE00872
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:29:51 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id f10so21849384ita.4
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zghGBGE2rkVuH2xnlLjJwM9uOjaxN6rf3hPzYTh1uU8=;
	b=yVURbSQyR2ignywZfzQwxuL0ay877kv8iFWBSZokjjZARzyR5ruOLpAs73AmoOftFS
	FL9zXU06tkXMqPgYTQMT6xcBUJOOVngo4EUYNHkXuqCQsxIenZw2nVWPBkroLnFDVp5n
	lXrKJ0nY3pvO4LMMLCkB4Lw53grUwYfed7ueSu4QoaXNm8VujKddVJ94LBwU9HRTJVQF
	RedpoWFTJK3E7KvN4A4/jh3OOD1SwVrIZ2f5X/Jmz1oHy/Acr5mDk4M5fBMBK0sFDASs
	aJt9QSzFtmQ2RV2bL99RfuCE8dNPmFcis6gUqZhVYD98OSgyteUtNkTlxmEDP4OCSulY
	eL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zghGBGE2rkVuH2xnlLjJwM9uOjaxN6rf3hPzYTh1uU8=;
	b=bTVRmniYg/OuWXiHuj42ZAv7+PkLQiRaq3XhezsbA2U7v2B1k/ZtCMQtdP5zBLSD6Z
	Kdp4Mke/YQ4Ak6ywgq+4+1kneBeRBBfB0+bqlNrFzDGZ0eOX5pWUsXARV9+YYExUTUCk
	2UTPT2RN5UW7LgNK0QUaAcziOo+GjgN6ELJ0BlA796WiyaOaVTAqY3Q4ceLpVMmQWkdU
	CKFIhb8g194WjziHrlEbpQDwtKM82I0C3aatJLYJ4cz+UXQfPYNcZu7XYbbsBsCwca0c
	8+uu02quk2nGTggdKA6oPqd8gQLl9Dowc+tNPMEyN28DZH4mfbzG4A2VJ1BO1gF0+uzE
	12YQ==
X-Gm-Message-State: AHQUAuZNEamdSniJ6DwaPiwk6/r9FKOKmwBW85o9/opo2LM1YQ1AZiBN
	JF/ZZyb7YhrabEaiExGNsur36BQi/a44pjrF5NIGyQ==
X-Google-Smtp-Source: AHgI3IZ72M2M+N6Yvoozm4wGIzkRNj5VXn+jkVVftLTnOzGrTz/hJ/RVTABgpkBFam0t7hyJuIYCliecFgIfsXANJJA=
X-Received: by 2002:a02:cd11:: with SMTP id g17mr22102901jaq.79.1550748591217; 
	Thu, 21 Feb 2019 03:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20190220213434.26014-1-JPEWhacker@gmail.com>
In-Reply-To: <20190220213434.26014-1-JPEWhacker@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Feb 2019 11:29:39 +0000
Message-ID: <CAJTo0LZtraWASk-ioufjn90JOF8L4Zf3QJ4jfu09v8CzskQ_bA@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] classes/toolchain-scripts-mingw32: Fix bad cmd flag
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
X-List-Received-Date: Thu, 21 Feb 2019 11:29:52 -0000
Content-Type: text/plain; charset="UTF-8"

+1, feel free to push.

Ross

On Wed, 20 Feb 2019 at 21:35, Joshua Watt <jpewhacker@gmail.com> wrote:
>
> The command to properly set the exit code at the end of the toolchain
> environment was using the correct flag delimiter '/', but the code to
> coerce all the unix-style paths to windows paths was incorrectly
> changing this to a '\'. This worked find in wines cmd, but on an actual
> Windows host, this caused cmd to wait indefinitely. Fix this by
> appending the command after the path separators are coerced.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  classes/toolchain-scripts-mingw32.bbclass | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
> index 32493d7..0afbf7d 100644
> --- a/classes/toolchain-scripts-mingw32.bbclass
> +++ b/classes/toolchain-scripts-mingw32.bbclass
> @@ -38,6 +38,17 @@ toolchain_create_sdk_env_script_sdkmingw32 () {
>         # Change unix '/' to Win32 '\'
>         sed -e 's,/,\\,g' -i $script
>
> +       # set has some annoying properties:
> +       # 1) If it is successful %ERRORLEVEL% is unchanged (as opposed to being set
> +       #        to 0 to indicate success)
> +       # 2) Making an assignment like "set A=" is considered an error and sets
> +       #        %ERRORLEVEL% to 1.
> +       #
> +       # Practically, this means that if any of the set calls make an empty
> +       # assignment that error will be propagated. To prevent this, a command is
> +       # run to ensure that the "exit code" of this script is 0
> +       echo "@%COMSPEC% /C exit 0 > NUL" >> $script
> +
>         # Make the file windows friendly...
>         awk 'sub("$", "\r")' $script > $script.new
>         mv $script.new $script
> @@ -81,17 +92,6 @@ toolchain_shared_env_script_sdkmingw32 () {
>     FOR %%x IN (%OECORE_NATIVE_SYSROOT%\\environment-setup.d\\*.bat) DO call "%%x"
>  )
>  EOF
> -
> -       # set has some annoying properties:
> -       # 1) If it is successful %ERRORLEVEL% is unchanged (as opposed to being set
> -       #        to 0 to indicate success)
> -       # 2) Making an assignment like "set A=" is considered an error and sets
> -       #        %ERRORLEVEL% to 1.
> -       #
> -       # Practically, this means that if any of the set calls make an empty
> -       # assignment that error will be propagated. To prevent this, a command is
> -       # run to ensure that the "exit code" of this script is 0
> -       echo "@%COMSPEC% /C exit 0 > NUL" >> $script
>  }
>
>  toolchain_create_sdk_siteconfig_append_sdkmingw32 () {
> --
> 2.20.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

