Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65142E00A5C; Fri, 11 Oct 2019 14:49:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EB7E00890
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 14:49:37 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id v24so11219392ljj.3
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 14:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7acT5yQrqZaFHayaJMvZtMdmInQ/K7zgYbXbIWqWlUI=;
	b=uEBROGC6zOd/ucXzpn1PmyBL73/QWVURjNihNRiSwvG/bZ0J90Q0FAArugpOxIzgkM
	wYiRx2V3iaFuSj2BXMMhpU6rkIxkhqt6mpjIbzWW/ADg0fqMMITqIvFzlfE2zOEOJa0b
	liIBc8WP43Ga/HNeihjqOTt3MPVaFg6+qiN69w9S79vpa8BSPyV3pmXhfW2ITb4fZdFP
	1VsPZlgh4SgDQfacYF14IhLvIGCi0oVL08voaD/8VbA4P1DsZsn+Uo68dxzW3niFEPQf
	uJrXC7o9KsfoWCGG2/IZBNuax+m0VH/eIQF2T/HqXq+qhX5XmPfKKhMmMQPeIcZBsm5l
	j3zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7acT5yQrqZaFHayaJMvZtMdmInQ/K7zgYbXbIWqWlUI=;
	b=OjiqmdzBA3032RtAMQB4shHSPn+OOmj5dtAur6x3duiqU7IRqWIxT3nNJbTKSiey6Z
	YVdmGN4+KiYH8QU0zhswrptE3wMtw4Ccb/exz+EWdr4f14QXJjx5nK9J3tmtLd0HeWwN
	gtqtafqJjbxriNzFKodnVWxD2bxWsK7Pl7+PC6CZ7kPKdueX0do5Z9/9/r22wB4r+YA1
	Oc/K9KdrM+BWWJAhnru8XtYayUt+QnObCyfeXAXrLigNFWH43Pw7eKYCWFOWwkJGElqo
	Pm6pqdooMKeDrtAZer0zljtITPxO9MFa9lE8optoS3HLEGhMtfkzILtje0P0zNnGGbYz
	4Aiw==
X-Gm-Message-State: APjAAAWc1k9FQ3EehI8SIdwqUe2nz8JETMog7QJ+O3FNQQA0m1ZKsg1v
	gTQIirIi2ngF9m4QDrKTQGmbgvc9+XP/f5oxA2N4gdb2
X-Google-Smtp-Source: APXvYqyuMCXaEg6wNqu8MVfWfO78L+wyqmn9rlfzLb3hU8xgYsYuQiSLDsAakAZkKe7LbhBHEjSg1knxADS+JFpFGhU=
X-Received: by 2002:a2e:7312:: with SMTP id o18mr10537175ljc.32.1570830576537; 
	Fri, 11 Oct 2019 14:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR01MB51679F138D5E050A2965463688950@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
	<VI1PR01MB51672CA4E502C3442E23AFD888970@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB51672CA4E502C3442E23AFD888970@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 11 Oct 2019 17:49:25 -0400
Message-ID: <CADkTA4MNSrqdZmDoOwTjfH+7Lmcm2OPjfzc-RGUDrnAngeSLiA@mail.gmail.com>
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patches pulled from BSP definition file are not applied
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
X-List-Received-Date: Fri, 11 Oct 2019 21:49:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Diego,

I didn't see your original email. I'm stepping out for a holiday
weekend now, but will write up an explanation of the history reasons
for what you are seeing when I get a few minutes over the next few
days.

Cheers,

Bruce

On Fri, Oct 11, 2019 at 1:11 PM Diego Santa Cruz
<Diego.SantaCruz@spinetix.com> wrote:
>
> Hi,
>
>
>
> I have not received any feedback on the below email and I am not sure I a=
m doing the right thing.
>
>
>
> Can anyone provide some advice as to what would be the recommended way to=
 apply kernel patches listed in a mybsp-patches.scc file for a BSP?
>
>
>
> Adding the =E2=80=9Cmybsp-patches.scc=E2=80=9D file to KERNEL_FEATURES wo=
rks for me, but seems a bit awkward given that there is a BSP definition sc=
c file. It feels more natural to include the mybsp-patches.scc from the BSP=
 definition scc file, but  that does not work for me, the patches are ignor=
ed.
>
>
>
> Thanks,
>
>
>
> Diego
>
> --
> Diego Santa Cruz, PhD
> Technology Architect
> T +41 21 341 15 50
> diego.santacruz@spinetix.com
> spinetix.com
>
>
>
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On =
Behalf Of Diego Santa Cruz
> Sent: 09 October 2019 23:58
> To: yocto@yoctoproject.org
> Subject: [yocto] Kernel patches pulled from BSP definition file are not a=
pplied
>
>
>
> Hello there,
>
>
>
> I am trying to add a few BSP specific kernel patches for my BSP and I wan=
ted to pull them from the BSP definition scc file. However, I cannot get th=
ose patches applied (I am using thud). After looking around the kernel-yoct=
o.bbclass it seems that patches which get pulled from the BSP definition fi=
le are ignored. What is the rationale behind that behavior? How should I go=
 about it?
>
>
>
> To be more specific I have the following structure within my (recipe-spac=
e) kernel metadata.
>
>
>
> bsp
>
> `-- mybsp
>
>     |-- mypatch.patch
>
>     |-- mybsp.cfg
>
>     |-- msbsp.scc
>
>     `-- mybsp-standard.scc
>
>
>
> The mybsp-standard.scc is the BSP definition file, which includes mybsp.s=
cc (among other things). The mybsp.scc file looks as follows
>
>
>
> kconf hardware mybsp.cfg
>
> patch mypatch.patch
>
>
>
> The mypatch.patch file does not get applied when building the kernel, I c=
hecked and it is not added to the patch.queue file. But if I add the follow=
ing to the recipe
>
>
>
> KERNEL_FEATURES +=3D " bsp/mybsp/mybsp.scc"
>
>
>
> Then the patch is added to patch.queue and is applied.
>
>
>
> Looking into do_kernel_metadata in kernel-yocto.bbclass it parses the scc=
 files in two steps, run1 and run2.
>
>
>
> The run1 step uses elements=3D"`echo -n ${bsp_definition} ${sccs} ${patch=
es} ${KERNEL_FEATURES}`" and generates cfg, merge and meta, so that picks u=
p the mybsp.scc file contents, but this step does not generate the patch qu=
eue.
>
>
>
> The run2 step uses elements=3D"`echo -n ${sccs} ${patches} ${KERNEL_FEATU=
RES}`" and generates the patch queue, but this only includes the scc files =
in SRC_URI and KERNEL_FEATURES, but specifically leaves out the BSP definit=
ion file.
>
>
>
> Adding the mybsp.scc file to KERNEL_FEATURES to get this to work seems a =
bit odd. What is the recommended way of applying BSP specific kernel patche=
s?
>
>
>
> Thanks,
>
>
>
> Diego
>
> --
> Diego Santa Cruz, PhD
> Technology Architect
> spinetix.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

