Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF026E00CA4; Wed, 28 Mar 2018 03:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD8E2E00C6B
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 03:10:22 -0700 (PDT)
Received: by mail-ot0-f194.google.com with SMTP id h8-v6so2032668oti.6
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 03:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bPVMuZbbSXCtgyakhCUlT8qhGCCGUyJ5z3YVDogZ6oE=;
	b=tBtNu42A5jFpwT+BcnYLUB6FHxcN1kJEjRvS6jS8gPMJnR5y66erK4ACyoyyNkuj3g
	g6eC6mW3rCluXo3r8fKryGS8DSXlbe0U+W211lDwcPcls74T61v435rV4aTN2lUuEG4T
	oc0U7YrjEln8h65JI5xy6cDJ4y7uREcAld11I21AWGhbRAZIJ4yFYDNyIOv5yLShDOLI
	2fT24rJzo8+nu2utKYKNsPifhxRPHpuq7T0hqPneVuhPpqN435/+OWG3yhFGUI0219GI
	7rFJ7XE7OhnXaKqxvyrX4ce2Cd5chF5vB4mvhWyhMN6J6wVtNEyQUkd6rLOS0B33rZWd
	YVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bPVMuZbbSXCtgyakhCUlT8qhGCCGUyJ5z3YVDogZ6oE=;
	b=cuRXSLAwDU1zUsUq65bSsjXoVDTnC5h037TSX5kth0pqxrWeIlJ/LD+kEWS08RCx3Y
	GO4gUhmNphviDUmBvt/danI0+rrMFk+nvWaahbK/PRkUs+Ckq4jN3qXkp1e4iyKQU00M
	RMlHxHcX7aW9y3dlIf2MKk7NibbttXZPlfNW2LN8uaZYyAhCyZX5HPgVhi8LVPXrAu2e
	Kk12rT6Z61QBHflI+X40UpJ8dXNzSJ3bIiCw0fuH7woxJYfwB5od2tloABYoSZYOwFoP
	O++7xsNA9NrKieMXICHekKxYwA/SN+5Mntd4lRCt6PAnkRykYpKKEpiLBF9Krchz5ju3
	4CZw==
X-Gm-Message-State: AElRT7GhdRGjqUvz+J634erlGf2YjSc4ERcfz/QFSdCBuMXwjAKKve4v
	E8GAsLjQjoCt3fYr4R1TVHf6V+5qtHPh41VJuKomyA==
X-Google-Smtp-Source: AIpwx482+JBdcqfrPeAHgpVUwPIteL2iiGiWebNOsKn6XUNjPyyoZ4EW+coYlSuAW1QYMWSngX4FRtC4V62ara0lY+U=
X-Received: by 2002:a9d:154c:: with SMTP id
	z12-v6mr1868432otz.65.1522231822110; 
	Wed, 28 Mar 2018 03:10:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 28 Mar 2018 03:10:01 -0700 (PDT)
In-Reply-To: <1522134416-7704-1-git-send-email-awais_belal@mentor.com>
References: <1522134416-7704-1-git-send-email-awais_belal@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Mar 2018 11:10:01 +0100
Message-ID: <CAJTo0LZ3d=-kuRZU1WJfXnEuTeayE=WGGk+=9i8TcOghPq2O8A@mail.gmail.com>
To: Awais Belal <awais_belal@mentor.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [matchbox-wm][PATCH v2] configure.ac: add lib math for composite enabled builds
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
X-List-Received-Date: Wed, 28 Mar 2018 10:10:23 -0000
Content-Type: text/plain; charset="UTF-8"

Pushed, thanks.

Ross

On 27 March 2018 at 08:06, Awais Belal <awais_belal@mentor.com> wrote:
> The composite enabled builds require lib math to be
> present on the linker command line otherwise we get
> ld: composite-engine.o: undefined reference to symbol 'exp@@GLIBC_2.2.5'
> during compilation.
>
> Signed-off-by: Awais Belal <awais_belal@mentor.com>
> ---
>  configure.ac | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/configure.ac b/configure.ac
> index dce82cc..a3e384f 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -248,6 +248,7 @@ dnl ------ Composite -------------------------------------------------------
>  if test x$enable_composite != xno; then
>    PKG_CHECK_MODULES(COMPO, xcomposite xfixes xdamage xrender, ,
>                            AC_MSG_ERROR([*** Required Composite Librays not installed ***]))
> +  COMPO_LIBS="$COMPO_LIBS -lm"
>
>    AC_DEFINE(USE_COMPOSITE, [1], [use bleeding enge composite code])
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

