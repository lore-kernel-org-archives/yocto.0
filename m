Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D584CE00971; Fri,  2 Nov 2018 09:53:35 -0700 (PDT)
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
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F7EFE008D7
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 09:53:34 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id o89so4142522qko.0
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 09:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=uXQNozYw+WPU2fH6vwogTy9wY6guLajcmoX2QBR+GqE=;
	b=CvAMY5XvxxUbrtjWt62pqV4ZQtU8ah2eA65QIMSPKURqugFjM6x6aliclmwP5nmrWh
	KFH9oJpfc6dZGO8gPvANAJ7HzrfR2aeWr+rWVSMr1CbXa68pFz3mb9+MR2CA0QNf4Juq
	ZsWOGz5us2wTbLs1PaYiJYC8JKFc0Ryryda8k8RxeCwQ6P56JTQ+NlpaIg2rOJhTL2S4
	g849mvGWDw2J0VVD4yUw8i0KAfRs1hA/nVyAVH/HBgz/REXxZkM2+6TKO4LCWXdH+eyJ
	Siq+YC/71CbuAfS/hnddLlHdGm7vTQ3arHLSxD2wdLZ1NmVnxY4eZGjsqGchVWVuXApj
	Ok+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=uXQNozYw+WPU2fH6vwogTy9wY6guLajcmoX2QBR+GqE=;
	b=entOQpE42a9x6AlEdOywnVKYLFRpawQjf/R30Q9udcpnWFwty4xe62VjKQWeXraUUM
	Ot1im9xPOy0uLeTpU60vQbbX5VPAMJRVkxUa52JmhoG0URgr2WoavXpuj4dk+SuQbuXB
	cystvmAG8BH83D1bNt1+VDWQFoz2T2ndmc7T2NSYWN7jsf5FmBdJDcWk+BO+iY3q3eUw
	h3A3BIaa6MZPFKVvWwu38e4l/TPoL6ejZoYEQbnwVC9PQyeJwpxKWzRcCHIapROoNj3D
	tJvs6QsdIw8luOwCeRk27FZgO0I/Lf6v3zT8o3hX57YETAntlwo85RfX8TgoBXwgHFsN
	BjNQ==
X-Gm-Message-State: AGRZ1gL5hyLY8VGMcDEeC2Z/oo9/bhhxFTApydJwA7l8nOo/fJqZdtlU
	2lD95rzW/n+/lJHXcOAwistxKGBc+TzNLVgZkxQ=
X-Google-Smtp-Source: AJdET5fgpVZw0XMDXm2/mlgexb70jjrw9yV/ujSZySYbo4smzemGtqcR6OuOMGC6/weFSDZfaz3sTazfw9Ne/e+NOIE=
X-Received: by 2002:a37:4c41:: with SMTP id z62mr11211772qka.206.1541177613641;
	Fri, 02 Nov 2018 09:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0@AM5PR0602MB2802.eurprd06.prod.outlook.com>
In-Reply-To: <AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0@AM5PR0602MB2802.eurprd06.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Nov 2018 09:53:07 -0700
Message-ID: <CAMKF1srp=Yp9G+SjJsZH9Wexp+i6kV+D==FE2diM=Whgu0siRA@mail.gmail.com>
To: radoslaw.chmielarz@leica-geosystems.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel development using externalsrc
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
X-List-Received-Date: Fri, 02 Nov 2018 16:53:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 2, 2018 at 8:47 AM CHMIELARZ Radoslaw
<radoslaw.chmielarz@leica-geosystems.com> wrote:
>
> Hi all,
>
>
>
> The company I work for uses yocto to build an image with a custom linux k=
ernel. The documentation (https://www.yoctoproject.org/docs/2.5.1/kernel-de=
v/kernel-dev.html) suggests a setup where the kernel is under git and the k=
ernel recipe specifies this git repository hence the workflow is the follow=
ing:
>
> Make changes in local kernel directory
> Submit changes to git (and presumably push to shared space)
> Run yocto build which fetches the changes
>
>
>
> However since I don=E2=80=99t want to push the changes to git server befo=
re I test locally I have added the kernel sources using externalsrc. Unfort=
unately this has the drawback that linux-libc-headers runs do_configure and=
 do_install phase which invalidates glibc-initial and requires a recompilat=
ion of a couple of hundreds of packages. I would like to avoid it.
>
>
>
> Thus my question is: how can I retain this setup where I only make local =
changes to the kernel without yocto rebuilding glibc and dependent packages=
?
>
>
>
> To add more background we are using morty release and the changes in kern=
el will be in configuration and devices (probably as modules but some may b=
e included with the kernel binary). Glibc is also an externalsrc project at=
 the moment since I=E2=80=99m trying to upgrade to newer yocto release but =
this will be taken from git in the long run.
>

may be you want to take a look at devtool workflow
https://www.yoctoproject.org/docs/2.2/dev-manual/dev-manual.html#using-devt=
ool-in-your-workflow
>
>
> Cheers,
>
> Radek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

