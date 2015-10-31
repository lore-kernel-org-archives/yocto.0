Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07CB9E007D5; Sat, 31 Oct 2015 08:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514C8E006F3
	for <yocto@yoctoproject.org>; Sat, 31 Oct 2015 08:19:36 -0700 (PDT)
Received: by iofz202 with SMTP id z202so107029132iof.2
	for <yocto@yoctoproject.org>; Sat, 31 Oct 2015 08:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=J5SH/tQX6hJ6qifZo1DOM+AVBrroV7qKkMbuFT9thx0=;
	b=i3TJl6VNkh8+ODvCsK0CdBMScFwc4Q5ZOAFV7Fujvuyv8Dl65zQyrHhnX1jzFkKGCr
	wGyOKRHghpqC/pm8k0ptHIqTuCF8QAZDtGTBYO3/4EMh7H7qOy+jZonN16nEjFR+3uZ/
	1ff2F2IwDdJniRWPyJRFjF3mABcZ/Hp6BhFvzS5UWvj7UM3+cZeUkdPfzZ+tvcq83aWw
	fLGZK9v2MabRsEyHGQltkAUjJllHjVLM7xhr9Tw+xtT/jkVApEQEmSX/vSNQwnqZLK9r
	9X7aE9x62b4QInY+dIOFgguuuTO0a38kkGm1FUOrkcONBwd9sEBOVOB70E542wsvUBlR
	MIvQ==
X-Received: by 10.107.4.3 with SMTP id 3mr17494484ioe.195.1446304776395; Sat,
	31 Oct 2015 08:19:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Sat, 31 Oct 2015 08:19:07 -0700 (PDT)
In-Reply-To: <248B5DD4-47DB-4EF4-B115-393D045CB60D@gmail.com>
References: <248B5DD4-47DB-4EF4-B115-393D045CB60D@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 31 Oct 2015 08:19:07 -0700
Message-ID: <CAMKF1soeZXiq-R=sWa5AAjP==NQR+46154McuUDMuDBKOCpLuQ@mail.gmail.com>
To: jim Schimpf <jim.schimpf@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where is the c compiler
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
X-List-Received-Date: Sat, 31 Oct 2015 15:19:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 31, 2015 at 5:35 AM, jim Schimpf <jim.schimpf@gmail.com> wrote:
> Hi,
>         I am building the core-image-full-cmdline code and want to have a=
 C compiler on the board(Beagle Bone). I have added the line EXTRA_IMAGE_FE=
ATURES =3D "debug-tweaks tools-sdk tools-debug=E2=80=9D in my local.conf fi=
le.  After this it builds the image and it is larger than previous ones wit=
hout this. After this is done where is the c compiler and what is it=E2=80=
=99s name ? I=E2=80=99ve found things like distcc but no cc.


on booted target

gcc -v

sould say something ?

>
>         Probably looking in the wrong place or did I not include the righ=
t stuff.  Thanks.
>
> =E2=80=94jim schimpf
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

