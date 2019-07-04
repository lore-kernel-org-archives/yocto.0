Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBC22E00C43; Thu,  4 Jul 2019 05:15:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 606F4E00B1B
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 05:15:01 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id d15so5387080qkl.4
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 05:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0sTVnZLDHzUdi9t+3edk8EsEDnQsVQX+kUr1TzsmhGo=;
	b=hiyzh4QRN1shlzmCsFhwAmnprOm5I+c046sScFHUVe9oCDZVxeVBQlij/YJ1NVqbKV
	OwH4ji3NnZXBdLPyrAj2iKQS/3EukG/fsJ+/tZvZO02FgXU7tfPPYBtwD/RRV6KTFHjB
	tOOVpgm5MfA2pqIfoBFw+1RIndAvXLtNiCQpIPCYToYFFCEY0ezfaz5sWQ+Zeb1GxCJw
	t6yAKedb2dFm7GetMojtrSb1nssSnhgZKSBCA7ftgdkbYrX2rsnZpIqHfkaet7CWprdA
	9m8USZOzwIabUoE1/LBfls3EwNrWwgjTqxAaCF4Fx2J5dEAVwIqAReJ4akYhJhUZYs6p
	Fczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0sTVnZLDHzUdi9t+3edk8EsEDnQsVQX+kUr1TzsmhGo=;
	b=ZIqDD7SdG5ZsEFN1tp3+65Rs+PP8Yk/tpRYPIe8dqyb7ZiuiqHDFCy+NzYL/aob93N
	Hvd96MAgaU34fxAJVxTf5qAoQKRuS1Q4snQQysZyHSRIkG2iWKPfVz3YTNEH+ldsYD7/
	nippZeRszTl5tFTDYNlTAHt3vIfxrCb+vC7Ck2LLtdPOnVUKcCZPoOMeXyxqG4fWmH/u
	GqunSkQvCnGPzAb7PLOEJpGQAK2Ln/Bsh2WR1NxJkdpTtHR9x6zvcWwiuwRIGx5Dq66J
	Zd0CpXiHb2NNNx+17YgONuSp9kZSNRwg7eYXy1kVIDH8QxgvaM2ZIoS0YwJjJ76K+myC
	e8sQ==
X-Gm-Message-State: APjAAAWdYtUFY9l77bBhcAqx4OtmH1ltiEojgJ7hAYjrZa2PNIHwcfom
	gMhxW+p5rkuuqYwBxYM1MNpcq13eecEM1qYbshw=
X-Google-Smtp-Source: APXvYqwGcoaGiewQdmpWV4qs9EzLPKFSL9e6Dal4BVkl/8crIN7hR0vz7SI0NxLWUut9hJWoNUQ9u92X7C9vgKFuzUA=
X-Received: by 2002:a37:795:: with SMTP id 143mr35387153qkh.140.1562242500719; 
	Thu, 04 Jul 2019 05:15:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
	<CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
	<AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0@AM0PR0302MB3331.eurprd03.prod.outlook.com>
In-Reply-To: <AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0@AM0PR0302MB3331.eurprd03.prod.outlook.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 4 Jul 2019 14:14:49 +0200
Message-ID: <CAGAf8LwiyqeZ7RVBVn+_eow2dckknLL6V0UV6m6d66_etGSbzw@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 12:15:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> And thank you for giving me information about my host system, Zoran.

Not a problem. Please, concentrate on your real/true (target) problem,
so we here can help you in different ways (every one has different
experiences, which I found very positive).

Thank you,
Zoran
_______

On Thu, Jul 4, 2019 at 12:21 PM Onur Eser <onureser12@gmail.com> wrote:
>
> Well, changed my configuration a little bit. Now, compiling again for a c=
ore weston image. I will let you know if anything goes wrong again. And tha=
nk you for giving me information about my host system, Zoran.
> Onur
>
>
> ________________________________
> Kimden: Burton, Ross <ross.burton@intel.com>
> G=C3=B6nderme tarihi: Per=C5=9Fembe, Temmuz 4, 2019 1:16 =C3=96S
> Kime: Zoran Stojsavljevic
> Bilgi: Onur Eser; Yocto Project
> Konu: Re: [yocto] Json-Glib failed to build during the building of Weston=
 image
>
> On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > Why Weston protocol? Why not classical X11 Client Server in user
> > space? Which DeskTop are U using in Ur YOCTO build?
>
> Weston is arguably superior to X11 in most respects, and for new
> platforms which are not tied to a classic X server I entirely
> recommend Weston over X.
>
> Ross

