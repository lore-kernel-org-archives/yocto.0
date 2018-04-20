Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D14AE00A6A; Fri, 20 Apr 2018 06:21:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24074E00823
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 06:21:18 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id 131so443015vkf.8
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 06:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=jgTPSwhMjmvrviOrdwkXLV8YHRKX8B0DXoNwMH5My1g=;
	b=SUT7pofBsqi+Rq254ix2vt8WTwxdaWRo/vomrD43RH8Bj8C6Z+8giIzDgwbAMSDj1g
	2e8+NPd9Sn6n849n9xHzUpG1310u6SS6MyrNRiEP5PCwwZ4fZyGOMoEPF1FOvO7QT7ZR
	tQNdzErvIqvht8BnIRNoJoPJYEYUKFkeyZezxvfeNVX4FEWSs+hclGatw1VFVem+Q9ev
	X1nOM3mZU366tUa++dhQ600YR8qGLPOWPCN7dW8KsK2q8hDuzKv3fAwSfU5wB4NmsSCA
	9HvPs4fNojFEJEuTBhDAuper1fzcR/DSh/ft1hcoPd73SXi0pELXL5klhlk35pJz2NdV
	ZCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=jgTPSwhMjmvrviOrdwkXLV8YHRKX8B0DXoNwMH5My1g=;
	b=CbLSSiE/VE3ypir06UWHoy+mLN9Xkmn1eb6rKlIhH1T3kaytjbU5DuG2KzDlCrrgOG
	0ZMo0Ids3H3n8NmPaGfML/y4tUeyqX26pxE9dQQ/MSlqN9FD/99o/NHJaWkHuSAwTiHi
	Eoi+1n4spFvPZSzso46j0SoDulTytWHbRNDMUrFYCg9POjZUBun8wJE1mQZlo9wAexY8
	lSPuheJzrJkLN9ExNkS9FRDF4KlTWOk+d5whBrpBJfBxuZX9f+DXoAbHNorhIhxDb+9o
	wSfLmWv7d1qTduZQjAt78BquZjuiiPP9q1TefrltaAcqG3focz4x/XQz/bc53Pl/Q12w
	oskQ==
X-Gm-Message-State: ALQs6tD9BZD2dh2AkBXyCgru8jQNZtYcilYewO4bwAnSQSf6ySTxbDjc
	FfVLOR+I3wAqK3om04dPNYrNoNQ49t1ENGArvaI=
X-Google-Smtp-Source: AIpwx49B7mgkpcqGYyNnguBtcqmlxLanEHZeP0aNLiMxhZbYxN/jNcJ6bY+gwxSlr8qt3nmMjmMnY4k+cikCYQB0yMM=
X-Received: by 10.31.80.68 with SMTP id e65mr7707412vkb.182.1524230478293;
	Fri, 20 Apr 2018 06:21:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.47.17 with HTTP; Fri, 20 Apr 2018 06:21:17 -0700 (PDT)
In-Reply-To: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Fri, 20 Apr 2018 14:21:17 +0100
Message-ID: <CAO5Uq5T35iuK=+tkvcNxm9sJQpwu8_b5Tq700udOHxLF+BSGAQ@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Fri, 20 Apr 2018 13:21:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 20, 2018 at 8:59 AM, Iv=C3=A1n Castell <icastell@nayarsystems.c=
om> wrote:
>
> Hello forum.
>
> We are trying to use yocto in a continuous integration environment with
> different (production vs debug) scenarios.
>
> To setup a given scenario (production vs debug) we are using something li=
ke
> this:
>
>     $ SCENARIO=3Ddebug
>     $ MACHINE=3D<machine> DISTRO=3D<distro>-${SCENARIO} source
> ../../build-<machine>-${SCENARIO}
>     $ bitbake <image>-${SCENARIO}
>
> So we have different image recipes:
>
>     * image-production.bb
>     * image-debug.bb
>
> Different distros:
>
>     * distro-production.conf
>     * distro-debug.conf
>
> And different build directories:
>
>     * build-<machine>-production
>     * build-<machine>-debug
>
> To optimize space usage and compilation time, we setup a shared sstate ca=
che
> and a shared directory for downloads. This seems a good starting point.
>
> However, things are getting complicated, because there is no way to exclu=
de
> some recipes easily. For example, we don't want iptables installed on the
> debug image, but dependency chains include iptables by default even when
> declaring IMAGE_INSTALL_remove explicitly. In this case we decided checki=
ng
> SCENARIO inside iptables_%.bbappend to decide what rules are installed on
> the image (rules.production vs rules.debug).
>
> But at the end, this method is poisoning all our recipes with that kind o=
f
> ugly controls [...]
>
> Do you think this is the right way to manage this? Can you suggest a
> better/more convenient way to deal with this?
>
> Thank you in advance! :)

We're using the IMAGE_MODE stuff:

https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/clas=
ses/image-mode.bbclass

and then add things like this to the image:

CORE_IMAGE_EXTRA_INSTALL +=3D "\
    ${@ '' if (d.getVar('IMAGE_MODE') or 'production') =3D=3D 'production'
else 'packagegroup-core-full-cmdline' } \
"

--=20
Alex Kiernan

