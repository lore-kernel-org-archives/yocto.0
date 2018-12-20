Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A32AE00D21; Thu, 20 Dec 2018 11:13:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2304CE00D0B
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 11:13:42 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id w204so1674471qka.2
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 11:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=x34l6LEhGt+YebVHqK1RmeR4cXN8B6CmTVNDHuLdNSk=;
	b=AH3knKfMdzMfOwNTfpqijLFKK5L4SjaAM0vQZNnKUiSF5oeqrn14heahsNu0eoUA3/
	aVkVCyF8rtj+k6ztpXjmbhYjcvfeflPAdUt9+hZxjLZ6ReLOnv/49wpQRq020Mk0wAbx
	/CfNM35r5aqOaYFg/nWao1lBOUVaykDZlqc2DrhAwdIZP68eDx/gTR+VFyRS0A0rKdXf
	eWSxOfir6ak2H4THsQ6BscL//GKHVsgCieuDfmoWBZIAeKxxOmjD3RokgKz9re/lSzRh
	JCNk7C0ilSXz2xH2oNQptA3P0cdQHOvVof3vU4xftJuSi6A2avrsNjCmZ9sDZl4j4+BU
	JwMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=x34l6LEhGt+YebVHqK1RmeR4cXN8B6CmTVNDHuLdNSk=;
	b=RLFFjIezCGKq6EmadbZOPRwRJENc+nvzjJmra/uXwxwUmGneLei8CpBAHtlWze8WSJ
	X+rbV4mSF20cwXU+UYgpVVk7AKoXZN7FK88rQjFQsegothaLJXczJeIq3JpR0cFyyvdB
	N98wNn0x25gYFBc88mXt50wKpadox9u4bBNaJmCCnXgTIRKewdjCYtQNNRvWRZhlwfKc
	Nj6I27ZsHUgGTyyQ56s6psX0338dz8S9nTy6RO3Qfw3vIFOWprtxi/ezRWUUiaFx03kS
	yoWTiEjxoz/WNO81l3TEFFyY/LvcQWCsQI3d5R4kmFihdUymw3QrUB/jpbBuBnJ3M51P
	06aw==
X-Gm-Message-State: AA+aEWbQ+txG4Tc/D/Jppe5TolvCRIvVoLue39DZz3lRMI0FVrou/rmn
	fYgX+ccotMmQ5AXIeXZ8CleNdphBdvYlnnAR+g0=
X-Google-Smtp-Source: AFSGD/VA7oqIHmi2NOsVO/lY2dFDViL28O46+IOhfTvuY38D8MI0ofN1mwrFVw84BMXEN0g8t2FqcWz0DG2T/Oj4t1I=
X-Received: by 2002:ae9:dc43:: with SMTP id q64mr25298842qkf.223.1545333221292;
	Thu, 20 Dec 2018 11:13:41 -0800 (PST)
MIME-Version: 1.0
References: <CAMd7AX8y4PXgn-1eajtG8CxB7+SjyzdYCokEvwg3PAE+5HzyiA@mail.gmail.com>
In-Reply-To: <CAMd7AX8y4PXgn-1eajtG8CxB7+SjyzdYCokEvwg3PAE+5HzyiA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Dec 2018 11:13:15 -0800
Message-ID: <CAMKF1sp7qcSPHbX2GKsOood=SSFhx=3uSvEMFssyPMXhxHR_vQ@mail.gmail.com>
To: A <aaron.biver@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Question about temporary directories
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
X-List-Received-Date: Thu, 20 Dec 2018 19:13:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 18, 2018 at 10:28 AM A <aaron.biver@gmail.com> wrote:
>
> I'd like multiple "helper" recipes to contribute files to a temporary directory on my build host, and then a final recipe to combine them into a compressed file.
>
> But I DON'T want the helper recipe's files to get installed on the target system.  My goal is to have them put into a jffs2 image, which will eventually get flashed onto a target partition using JTAG.
>
> So, I suspect I would have to fly under the radar in yocto, having the helper recipes install something into the host filesystem, then have the final recipe know about that location.
>
> Any advice how I can do this as "properly" as possible in yocto?
>

OE build system have a strong sense of components which means when its
building a recipe, it just puts a container sort of around it and
thats all the build for that package sees.

so when you think in that way then you have to establish dependencies
between these helper recipes and build them. Dont worry they only get
staged in recipe specific sysroot for build purposes only. Image builder
will include it in final image only if it appears as direct or
indirect runtime dependency of image or other constituents of image.

> Aaron
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

