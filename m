Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE042E00B9D; Sat, 19 Dec 2015 01:35:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E81BE007B4
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 01:35:05 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id jw2so7797410igc.1
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 01:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=0MhFU7XG1vzZgChMurUyyajzyp+k5PJ8EJDnSTl2PUA=;
	b=KHhmWzjqSc1V10HRHxl8IhJ/aP4agNecHMYAfylZOX/sMjJMy0nMKnzawpbCmXjkJl
	axkKDCo5eCyx7yKCtD2GZTrB4o6EOPmrlWPwlVAIu2q3lDVdF3XQgax1WtBQGwxMmK2B
	dck5zHwWtWdo+gTbqW/QIteC7gyKz9Sb82mVwsYmaMgSJ3g+1kAMmfC6nt/kkqrLlZFH
	ZPx0TzpWnW9JprdNvH6qpi5F+keF+5QwW36aB9xBl0LCdElOcaOyqAqrtztjPRFuzNE5
	Tnap3i6lfo5OgWUDNb6AjedWNoIv9MEWXlhO6lgRwI8QT9KJ3WRC6gNK0Y47nKMHydY8
	xTag==
X-Received: by 10.50.20.138 with SMTP id n10mr8256112ige.11.1450517704718;
	Sat, 19 Dec 2015 01:35:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Sat, 19 Dec 2015 01:34:35 -0800 (PST)
In-Reply-To: <0E803250-E909-436A-88B9-BB90C2C6FBAF@t-online.de>
References: <0E803250-E909-436A-88B9-BB90C2C6FBAF@t-online.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Dec 2015 01:34:35 -0800
Message-ID: <CAMKF1sqtiJqUEY-rKArJS3fwQiPErw5C_nxaX-zwXgbPUanzWQ@mail.gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uclibc
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
X-List-Received-Date: Sat, 19 Dec 2015 09:35:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Please try this patch here

https://github.com/kraj/openembedded-core/commit/3345a12ed0dbf71b517d2560be=
73d5da52491b8f

This is in my pending queues that will be submitted soon.

On Sat, Dec 19, 2015 at 1:18 AM, Markus Volk <f_l_k@t-online.de> wrote:
> Hello,
>
> i=C2=B4m trying to build an image using the poky master branch and i=C2=
=B4m stuck right at the beginning with this error message:
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'nativesdk-glibc' (but /home/flk/yocto/poky/meta=
/recipes-core/meta/uninative-tarball.bb RDEPENDS on or otherwise requires i=
t)
> ERROR: nativesdk-glibc was skipped: PREFERRED_PROVIDER_virtual/nativesdk-=
x86_64-oesdk-linux-libc-for-gcc set to nativesdk-uclibc, not nativesdk-glib=
c
> NOTE: Runtime target 'nativesdk-glibc' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['nativesdk-glibc']
> ERROR: Required build target 'neutrino-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['neutrino-image', 'uninativ=
e-tarball', 'nativesdk-glibc']
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> Building the image with TCLIBC =3D =E2=80=9Eglibc=E2=80=9C just works fin=
e. i=C2=B4m also capable to build an uclibc image with poky using the jethr=
o branch without errors
>
> any ideas,
>
> Markus Volk
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

