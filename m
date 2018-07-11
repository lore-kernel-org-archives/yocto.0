Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24A7CE00E1A; Wed, 11 Jul 2018 12:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FA2BE00DB7
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:55:37 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id d74-v6so15091425vke.10
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Gs2yyBE9txCayxaxDgbaB1CC/2FsVdEws9lEfqbvHQU=;
	b=K4GSO0y7MWTyimGKraq6QSg9fwAtdNNl2h8bjC06IHCNcs9aeHuc1H1eoyGpLKNH0i
	/uauSZBNj7Up46DCXBNfdkKz/IM9lo6vkJnJfSUEdO6nEf6uIfIM8weu+UkdOP3BES+3
	9ZJywa7Qg9HweNxlsoDczdnxCHOMG/CU+K6r9Ix6zvqsyk8zhMb8mtf4DQx5HrLpsE+v
	f1xkVhAzrkm8/HWd2G8KpCW2A+tMe8pvLxYkapcsU3JYI/Ap5HCcS+PJlCZGStIJn4+n
	jqZrB7KdbFJF8DXr3CSHYyOaLLz78C/EwK9BG0FCtpPcVBXFyUcUsL5Ps8wZq4YJsmxv
	X8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Gs2yyBE9txCayxaxDgbaB1CC/2FsVdEws9lEfqbvHQU=;
	b=t+EE/RC6EQ7c5xSdA1xbVjjT/X6HCAQ33LXmV2ckyAZhJgbpgKxXnEP2iqDwsAHJBz
	HrdkVViE1yCQ5/e8oHWcYNSzA+BDV/naS9fef/sAPyF43uv2KojZfogQRgfgjg9aOgeb
	/rUhHXDt3NFFW9JcaMQc0pJoFyQcJ210OUWx9gyenP3CUDR6EfapBQ8pdhX5ENBpX+So
	Rt96Wh8ThmuUpPh22OemO7AfaWjalrclZVldBQxrTGv79juM6qcXmeSFDCudGsj/gowC
	Cgpce6JKiWzVuULcAp3TM2Azb5xTzPFJKFEdAPeeeZf7W9xlQjZ3ap0XAA83uc1Rmd5O
	nHrg==
X-Gm-Message-State: AOUpUlEOuek2ku0RdNSKsjXmEjZMXZkUO3uNE4mA4Oq3+mX4B0CjTHTq
	DDVJ2BA3vvRn2wn7ig5Kxg4IiwBKQJQFXs0PEvE=
X-Google-Smtp-Source: AAOMgpdr6R5OEEjC4y2xcdv39oc5Zp/SF5CZTJtkeJLkhgRShZDE9CRSl6kyNCUAIP4Tca95ciCB5XtDD4FEtPS3MZs=
X-Received: by 2002:a1f:88:: with SMTP id 130-v6mr23356vka.154.1531338936518; 
	Wed, 11 Jul 2018 12:55:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Wed, 11 Jul 2018 12:55:36 -0700 (PDT)
In-Reply-To: <f5cb281b-731f-14a6-d611-906875e4c40f@gmail.com>
References: <CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=jUwkOxXNkPnQ@mail.gmail.com>
	<f5cb281b-731f-14a6-d611-906875e4c40f@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 11 Jul 2018 12:55:36 -0700
Message-ID: <CAJ86T=XFmB2ZLaewbDVFtNdRB=dfpZnymGS00XDwyDTKrVDHtw@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Which bb is chosen when several versions are available
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
X-List-Received-Date: Wed, 11 Jul 2018 19:55:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 11, 2018 at 12:30 PM, Rudolf J Streif
<rudolf.streif@gmail.com> wrote:
> The one with the higher version number unless explicitly overridden with
> PREFERRED_VERSION_php.
>
> However, if there is also a recipe with <PN>_git.bb then that one will be
> chosen as git indicates the latest.

Selection between multiple recipes in the same layer will be made
based on their PV variable. By default PV will follow the version
defined by the recipe name, but there's nothing to stop a recipe
explicitly setting something else... and it's the final PV value which
is used to select between multiple recipes, not the recipe name.
There's nothing special about _git recipes. If a _git recipe sets a
higher PV value then it will be selected, if it sets a lower PV value
then it wont.

> On 07/11/2018 12:28 PM, Simon Chamlian wrote:
>
> Hi,
>
> In the BSP yocto image, I have 2 recipes:
>
> /sources/meta-openembedded/meta-oe/recipes-devtools/php
>
> drwxrwxr-x 2 jay jay  4096 Jun 28 09:48 php
> -rw-rw-r-- 1 jay jay   232 Jun 28 09:48 php_5.5.38.bb
> drwxrwxr-x 2 jay jay  4096 Jun 28 09:48 php-5.6.26
> -rw-rw-r-- 1 jay jay   291 Jun 28 09:48 php_5.6.26.bb
> -rw-rw-r-- 1 jay jay 11980 Jun 28 09:48 php.inc
>
>
> If I add in my image recipe:
> CORE_IMAGE_EXTRA_INSTALL += " \
>     php \
> "
>
> which version will be included?
>
> Thanks,
> S
>
>
>
>
> --
> Rudolf J Streif
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

