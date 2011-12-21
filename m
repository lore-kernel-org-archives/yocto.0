Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38862E00305
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 11:26:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qabg40 with SMTP id g40so2700493qab.14
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 11:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=5hH5Lw/MlA0JTCcANe7JycZrBfUIK4Ab29d8BSnTW/Y=;
	b=cKZbj3fdbX6EoIghz0jSmm9WOh8/NKZ7Dqw4OW4akoAHtkq9C5le7HStBk12OFnk0Q
	HLhz2DrUX+wTfb74Bxq2ELPrKwfWAuEWECpUAMuoCiQUdSITpBC1tYV+K2aClRV5IbKA
	ku9PHsV6xDy/uGEQCdfRr75d3Zui15Zfy+5pQ=
Received: by 10.224.212.10 with SMTP id gq10mr9898605qab.75.1324495599217;
	Wed, 21 Dec 2011 11:26:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.187.141 with HTTP; Wed, 21 Dec 2011 11:26:18 -0800 (PST)
In-Reply-To: <87d56d9907a3ecd03e46d4fbca3c682a893133b6.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
	<87d56d9907a3ecd03e46d4fbca3c682a893133b6.1324493490.git.dvhart@linux.intel.com>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 21 Dec 2011 12:26:18 -0700
Message-ID: <CABcZANkN1n28ZhSfeecx+voUmhe=8-Z_t3qQ_Xy5nMR=xMVbig@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/9] native.bbclass: Fix variable remapping coverage
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Dec 2011 19:26:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2011 at 11:58 AM, Darren Hart <dvhart@linux.intel.com> wrot=
e:
> diff --git a/meta/recipes-devtools/autoconf/autoconf.inc b/meta/recipes-d=
evtools/autoconf/autoconf.inc
> index 08a1b02..1d0cf90 100644
> --- a/meta/recipes-devtools/autoconf/autoconf.inc
> +++ b/meta/recipes-devtools/autoconf/autoconf.inc
> @@ -6,6 +6,8 @@ LICENSE =3D "GPLv3"
> =C2=A0HOMEPAGE =3D "http://www.gnu.org/software/autoconf/"
> =C2=A0SECTION =3D "devel"
> =C2=A0DEPENDS +=3D "m4-native"
> +DEPENDS_virtclass-native =3D "m4-native gnu-config-native"
> +DEPENDS_virtclass-nativesdk =3D "m4-nativesdk gnu-config-nativesdk"

Is this bit needed? If so, I'm not seeing a description of this change
in the commit message, unless I'm missing something.
--=20
Christopher Larson

