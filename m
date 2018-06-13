Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69AD2E03076; Tue, 12 Jun 2018 22:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC871E03074
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 22:08:50 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id l64-v6so750776vkl.12
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 22:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=QDtG8avn6GDoWpdGn2D7vRTIjuqd96FInVIF29rQ88g=;
	b=CODsPefzeo9iD5VGNy3HO0vheM0FNwCzM0pjqXX/Gbpw15+Nynl12TD9He/sbplHsP
	Ydg8pyK3qi/yiecFnLRA1IvBHKYL0HMgCXh704JhIsJX/QSQoS0dT3Honff94S9VRkrA
	chB2u/PB9nujcwDnzeiRdbZEx4c/AotJ6HSGRy107Yc+rwjSi/kd/TNLzYaTCvaXyPDa
	eWnljUp3b5k66E+qPsADhgG9nzIfxsG/YgD2W5BO/Hs0UwhKPtz//UBHnTKy/mIqhJDN
	OOuEQ/4Rz5yZyQUKVgjM7Ci2MkP+J7sEAOnpXlB6AXbUgrGRA+u4rVY1UIrXpc7UpDB2
	2Ctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=QDtG8avn6GDoWpdGn2D7vRTIjuqd96FInVIF29rQ88g=;
	b=YNrYxkLmZE7S1JY5fRgfxV5kF40cHit4V9CfGuNOM8KY5DRWbdO/M9+Ex8q7CEbioU
	nHZq9hlGamX913t52rF1VNuoxU+0tgQ7qMXznEP7c4w5G3qEmodbQqrjkzDxGmHMFzso
	9e1/UdWi+sjXscLPnBErkyHGUvuZYC4j62t2XX2OTFENUm7jI9ri3Y8WerfvgmMc3Cn3
	EPL6VVzwkNvCvsthxYEzFEqIRxCDXJ2VSAE/Trc+xl9rAIWcjLFRXTsugMiWRGLVkHHm
	K2H+scFpNSC5hkqrR7f5CCKd9nigJvTM+FV1wRc7YaWKKg8KHjw0YQ8uBmk74CYrt2Km
	CZGg==
X-Gm-Message-State: APt69E2q51RZ95GO03rUAK9rihBbPvAyuK4VVo744IY5UpAHXBjLVaxg
	8oA6igH/zJMFSb9ix+AP2v2zD7AehB7yyuSLLYlN0VgN
X-Google-Smtp-Source: ADUXVKKefRv5W0HUD1cPFEeJmoLbxw8YHMKsxa68blSr40K1L7nSvYpixo1HiaL/IZ2r7uGHB4mwuqeBqHR0ul1YSVo=
X-Received: by 2002:a1f:fc02:: with SMTP id
	a2-v6mr2106098vki.141.1528866529793; 
	Tue, 12 Jun 2018 22:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <BN6PR1101MB23560CC2388A4D2F295E2454B27F0@BN6PR1101MB2356.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR1101MB23560CC2388A4D2F295E2454B27F0@BN6PR1101MB2356.namprd11.prod.outlook.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 13 Jun 2018 07:08:31 +0200
Message-ID: <CAC+thW1jALyD_gCbhtqh4B+x_W=tHsA7znnTf++JYzhXZ0eTiQ@mail.gmail.com>
To: alexandretm@amotus.ca
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding package's license to the final image
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
X-List-Received-Date: Wed, 13 Jun 2018 05:08:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Jun 12, 2018 at 8:53 PM Mathieu Alexandre-T=C3=A9treault
<alexandretm@amotus.ca> wrote:
>
> Howdy,
>
> I am working on a project that requires the final image to contain a lice=
nse manifest for all the packaged installed on the image.

Take a look at [1]. There's background on licence tacking and a
technique to include licenses in target images (never tested myself).

[1] https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#=
providing-license-text

>
> At first I though about using the tmp/deploy/licenses/xxx/license.manifes=
t but this file is deployed by the IMAGE_POSTPROCESS_COMMAND_prepend which =
happens after the rootfs is done.
>
> Would anyone have a suggestion on how to this properly without using any =
weird hack?
>
> Cheers,
> Mathieu
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

