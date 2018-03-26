Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36ACFE008E4; Mon, 26 Mar 2018 12:22:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3C0DE007DA
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 12:22:46 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id q80so13715944ioi.13
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 12:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JoSDFDZrR5y06wfHW6NFRFl6S1cuQBqwwA92e2JSe8I=;
	b=fdJTfoMgsZ8zDU0lvZeXaO3PrTsSkgyHqE1XfZ24qjk1mxThIuTB2TFLjJ984/T38F
	+q0Psl9BFPM3Vc4mnn8/BpY5TU/BIemBTNDoThgQ7QA9+BBuHzyT+hB+u71rJUNsydS6
	7lBn6+Nep9lEOjnPE2TgPBxR1n7q0fxg63Nw6WWXsexOli16+n4q6EgEpTw0zCc+JpKc
	zxGd2r2ne+fZXK+0CiJobq5GEbNEXznbO5AYWI6HXcuWPb7bEQioUnVN+xLsxOpDL8ZR
	+kh1wHuh56Y910NVnAiolOcxWoEchEPZgBFG2VK37A6T3VtEcl3e025P1wXqcg1O/I2I
	sPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JoSDFDZrR5y06wfHW6NFRFl6S1cuQBqwwA92e2JSe8I=;
	b=LHHpN0gUyR2ksEZnELhdR++Ri5xlhbBnlFoCu5jKqhlO5amV2icGSHOoxzmN04Y9Kk
	kf/747tnBDRsLmNRiMlarmIIjbUnD+joTIQNDRVsIvpzoOj4d7HVdPvvPkgjQFT2bOpV
	ii3crDW8SmOI0yvGwl+1gvRE15aiWE8w1UhYD77IYdNJUfC6Hwr1f4i86wIh5i5t/czJ
	25dvCtacTe60YQ7Uowj7czsx3qI7T9q/tbMsj3129VJKDixi9+lKta+cTlaALtvWL7pW
	av+mkdN5d+5kqK+TgbEpv+f23jTmwBkhbETFBF16pUmlmy79WPeZkxHLmWckB2SJs4qu
	qRhw==
X-Gm-Message-State: AElRT7E8zasJ27use5o4wOlx2R+DYhRRYgipNamPVe6PwlC7SRF5Y4ET
	e/8KZsaGhbVvqe/fXsSRxGdR4FC+SOpicBJ8X4bHVA==
X-Google-Smtp-Source: AG47ELtGfl1l1As2lD105REehTcZoYWAhX2NsAUOQP8Vz7HzkSpPZ9ONBLMyaCVcPlfTojSa52VtvMHdL5jrEXT9FxM=
X-Received: by 10.107.161.200 with SMTP id k191mr39147318ioe.270.1522092165882;
	Mon, 26 Mar 2018 12:22:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 26 Mar 2018 12:22:25 -0700 (PDT)
In-Reply-To: <1522059972-12702-1-git-send-email-awais_belal@mentor.com>
References: <1522059972-12702-1-git-send-email-awais_belal@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Mar 2018 20:22:25 +0100
Message-ID: <CAJTo0Lb1vEPcZpAUp9GoNhzD1SYmCS3pXrKEP1=vNX3wxGOZnw@mail.gmail.com>
To: Awais Belal <awais_belal@mentor.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [matchbox-wm][PATCH] configure.ac: add lib math for composite enabled builds
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
X-List-Received-Date: Mon, 26 Mar 2018 19:22:47 -0000
Content-Type: text/plain; charset="UTF-8"

On 26 March 2018 at 11:26, Awais Belal <awais_belal@mentor.com> wrote:
> The composite enabled builds require lib math to be
> present on the linker command line otherwise we get
> ld: composite-engine.o: undefined reference to symbol 'exp@@GLIBC_2.2.5'
> during compilation.
>
> Signed-off-by: Awais Belal <awais_belal@mentor.com>
> ---
>  configure.ac | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/configure.ac b/configure.ac
> index dce82cc..1bc113f 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -246,9 +246,11 @@ fi
>  dnl ------ Composite -------------------------------------------------------
>
>  if test x$enable_composite != xno; then
> -  PKG_CHECK_MODULES(COMPO, xcomposite xfixes xdamage xrender, ,
> +  PKG_CHECK_MODULES(COMPO, xcomposite xfixes xdamage xrender, have_compo_deps=yes,
>                            AC_MSG_ERROR([*** Required Composite Librays not installed ***]))
> -
> +  if test x$have_compo_deps = xyes; then
> +    COMPO_LIBS="$COMPO_LIBS -lm"
> +  fi

There's no way that test can fail as if the packages are not found,
configure aborts.  Just do the assignment without the test.

Ross

