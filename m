Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50A46E00A54; Mon,  8 Apr 2019 11:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 558B2E0097C
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 11:04:29 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id w5so16521764qtb.11
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 11:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7tScza4kmc/z41k8Avqj7EapjL9N5Y1PgvC1V6FSYlU=;
	b=OM4a/LZePC/uUoyBq5F0mljYCUx4yVD89k4HmHLtduLXmt8tZZt/Dt8OPDrLTVVfJO
	AFwrUByL5V45QcZV8zjEjLu/KWgQ8O0HvZTVfkFeCTdpJkwdmGMtyMwA/jOefCCqJRTg
	AgQ/82sLncg4+/7qn0ywC599OLXu171OiNZ9xLXlR3XHEloJi7xSfIoG9MBmSAUe4x/l
	XzEMjas/KBJ5Mt+CpUSmxQTdF8VZpNERe2sRui06sS77jRoC5uU1OP4TFw0Sbj7W0+X3
	z4n8Cg6bDFVvkraIszeeHc3XcioXV02b0QS2IGKdaXJ4dvuDNojAODOHO1misF0eHy8j
	9BcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7tScza4kmc/z41k8Avqj7EapjL9N5Y1PgvC1V6FSYlU=;
	b=s5nupRdugyntcEL554uPFce1moKaC1bPXV8ULR0R+8YQzJRWlidmaEU2bdrGTZRs0Q
	R8IkRmSiP1srxwDpwEd84bZuNNHmS5ScvkAOL+gB96mDCL1TLBi0FhVrPYkcpenSMBie
	25XwE7vOzYgTMEjWqLqjH5P3I8ndpOAUtsbM6Iq8jPwN2/KcbDMGooPMOVfBAefYpByH
	htXTpida6b5Lggw3JhjlZhaGhQlo8scD0seX4dddDG5f7o7Fv281OgEIollPuzBC2Rhs
	o4ELXPHIJt481hgetsrPakWPwzWeCDKJGNgUhgbWpbpPK179/lyb/jyPaOVGiCeCBN87
	UgYA==
X-Gm-Message-State: APjAAAUyrgB9edy5drLIfOxahEBHdr6bDRkEp9Y4kkxOdbiMxxaPFdc5
	ipf9ES3ue5F6W7/QaBDxNfjcWekQK/8H5eAhgLQ=
X-Google-Smtp-Source: APXvYqzwI/zYVHuuykC/RCCGqxXRPYTcCsBg3SuUo07ud+MDpwFNqdmzNCXZN3PgtlUPF8M7kvKiQd5RUiuH6k6TUWE=
X-Received: by 2002:ac8:f86:: with SMTP id b6mr25715380qtk.330.1554746668307; 
	Mon, 08 Apr 2019 11:04:28 -0700 (PDT)
MIME-Version: 1.0
References: <000501d4ea27$d512a4e0$7f37eea0$@viveris.fr>
In-Reply-To: <000501d4ea27$d512a4e0$7f37eea0$@viveris.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 8 Apr 2019 11:04:02 -0700
Message-ID: <CAMKF1sq=HhkpXswf5OmH9k6aEB1ZqJv-u3-=OQ-+O9bm54oqFg@mail.gmail.com>
To: =?UTF-8?Q?Cl=C3=A9ment_Cherbeix?= <clement.cherbeix@viveris.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: problem with ruby
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
X-List-Received-Date: Mon, 08 Apr 2019 18:04:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 8, 2019 at 9:44 AM Cl=C3=A9ment Cherbeix
<clement.cherbeix@viveris.fr> wrote:
>
> Hello all,
>
> I=E2=80=99m trying to add the MIB mechanics in my yocto project, for that=
 I use dadi (ruby depenedent) but I get an error when bitbake try to compil=
e :
>
> DEBUG: Executing shell function do_compile
>
> ERROR:  Loading command: build (LoadError)
>
>                 cannot load such file -- zlib
>
> ERROR:  While executing gem ... (NoMethodError)
>
>     undefined method `invoke_with_build_args' for nil:NilClass
>
> WARNING: /home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-native/2=
.8.0-r0/temp/run.do_compile.567:1 exit 1 from 'LANG=3D"en_US.UTF-8" LC_ALL=
=3D"en_US.UTF-8" gem build $gem'
>
>
>
> I have tried to build the gem in an environment outside of Yocto and it w=
as correct but when I try to do it in Yocto, I get my error.
> Did someone have an idea on what to do ?
> what is the recommended way of building ruby via gem in yocto ?
>
>

It seems that it is using ruby-native but does not have zlib-native
and it cant find this library. Can you add zlib to DEPENDS in ruby
recipe and see if that helps.

>
> Here is my build environment :
>
> BB_VERSION           =3D "1.40.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "universal"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> DISTRO               =3D "poky"
>
> DISTRO_VERSION       =3D "2.6.1"
>
> TUNE_FEATURES        =3D "m64 corei7"
>
>
>
> Thanks in advance !
>
>
>
> Cl=C3=A9ment C.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

