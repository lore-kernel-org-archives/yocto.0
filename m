Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F5FDE00997; Tue, 21 Jun 2016 11:15:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50E7E00972
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 11:15:45 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id v188so3612750vkf.3
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 11:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ObwN5A5YjG986BXptvXnZ+0LQETQ24F6lBwlt7ntVo4=;
	b=VL39MVVRgZDDiakzqzX1vOUR0viNnq2I6uKV8gVCggqLFF4QuTLHCboYX134R2EUUg
	CkdNnHu59whcDYKG7kiYZX5ItgMvNFHBbCk9p2pBkzYDc3wComaB9GSm24/wRbY8oedW
	k5d6BdAh8P4xNHcaAAWJ/OrZ84fMnn+jNOr28ZFz5nLiNqkrLt5sL5jPzUg0Ipv6LsJY
	vLtk42S4HwjHmpPIdRGLRvq1eSuyBuLkgw03ECeXkCCKlGJxeGuZqVu0JiIYwxUyjBRM
	jzmoEKjlCYnMeLTbOcJcuEXs43CK2yy372XI/nD4aB+Z9VMWLSX+0GoWqMxo5/MPGjsG
	yvcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ObwN5A5YjG986BXptvXnZ+0LQETQ24F6lBwlt7ntVo4=;
	b=GHdarKRSY9gTOaI+gy1DCNHq3L0aOvnUqXr7vNmOGwYNt59bDcueuBLxybXNcTytI3
	+O4n6s+w7TsBiDFe8uw7N4rwYqwg//FPiqpHbKi5G5+yvEwqgnTlPuuW1W0BQKkg9zEQ
	DzN7Ds484Tb9SWW+q7tNKIAw56jtVZKhCw7UT/j7y1C2lNg4nZEHFVLjEiEQGgPbPGvF
	3tKS6lSCyxRKqbkkD3Pu/bwiAK6P/ttPdQxD+mzqgqo0DQyeOD8X/WcagOjSTQx1Bg6r
	ylXQ4H95BgJ07PgmWaWTjpLshGABxsn/5ipMt9tmSctEENRWKsqG5i1AeXvJcCLYJhwK
	CVuQ==
X-Gm-Message-State: ALyK8tKxYxB7beTQjfGwnWxuz9HZJIKTAO26Ana1pMVz3B71dpZfmPo3FGXb5qVajC+PCgw8k6HSUWuvsTqFPQ==
X-Received: by 10.31.53.75 with SMTP id c72mr10384654vka.62.1466532945173;
	Tue, 21 Jun 2016 11:15:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Tue, 21 Jun 2016 11:15:44 -0700 (PDT)
In-Reply-To: <OFBE39B056.C95DF73C-ONC1257FD9.002D81E4-C1257FD9.002F013D@esa-grimma.de>
References: <OFBE39B056.C95DF73C-ONC1257FD9.002D81E4-C1257FD9.002F013D@esa-grimma.de>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 21 Jun 2016 15:15:44 -0300
Message-ID: <CAF3SDA78SR_MBTry3r4FFgea38aJFKOBOZX+OeRnOi8eFtf5iA@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: installation of kernel modules
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
X-List-Received-Date: Tue, 21 Jun 2016 18:15:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Take a look at deploy folder if your packages (rpm in my case) are
being created. I have faced problems where files go to -dev.rpm
packages and the yocto silently refuses to create empty .rpm package.

Regards,

2016-06-21 5:33 GMT-03:00  <S.Jaritz@esa-grimma.de>:
> Hej
>
> I have a problem when running do_rootfs() with some own kernel drivers
> included.
>
> My kernel recipe builds some easy GPIO drivers.
>
> # They come as one package:
> myKernelModules:
>         -> a.ko
>         -> b.ko
>         -> c.ko
>
> # I build a recipe which creates:
> myKernelModules.bb
>         -> packages-split/myKernelModules
>         -> packages-split/kernel-module-a
>         -> packages-split/kernel-module-b
>         -> packages-split/kernel-module-c
>         -> packages-split/myKernelModules-.....
>
> # I try to pack/install my Module by adding to layer.conf:
>
> IMAGE_INSTALL_append=3D" myKernelModules"
>
> When I try to build the rootfs I got that error:
>
> The following packages have unmet dependencies:
>  myKernelModules : Depends: kernel-module-a but it is not installable
>                Depends: kernel-module-b but it is not installable
>                Depends: kernel-module-c but it is not installable
> E: Unable to correct problems, you have held broken packages.
>
> Any idea how to fix this problem?
>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Do or do not. There is no try"
  Yoda Master

