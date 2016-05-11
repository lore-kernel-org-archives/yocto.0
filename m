Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33838E00E85; Tue, 10 May 2016 19:40:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA106E00E59
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 19:40:48 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id o133so40477407vka.0
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 19:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ljQyFmVqyr6Nb216GsujE4CCZesDV45s4rnTZmoEb/I=;
	b=QuRmVU+xfBLFXOp5o2TRDNLgP8zIfw6J31rwa57bJ4rpB/MRgpG0jL14ODXLEMrp7j
	3vZVs/wOa8OX1Pbqzp9q5FrQN4SFUJ+mo2/IbXYkkzBLODq0WY6i4hab+lVFExdwRj+0
	BZpaUFjXQTs4F64VsJuwEFRa8uEg5+IKUx4JRkptuXAVaSZSxm9MhqW7g7H44jS8goKJ
	C8h4be1zCYUaKIeglVKfiOsfK+x5FyD84P/XRKmjwvYI2LepuOM79gRHEmF39eZLBvEU
	Xu39m2dDLfu+uEVmfh9TrJyCp+DDvRnC9FAJpSutryVCna19DCQb2/RqUa7QCPzarIsb
	+9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ljQyFmVqyr6Nb216GsujE4CCZesDV45s4rnTZmoEb/I=;
	b=dpi7necwB0To8QHUtMNGVU9sr+S2atNK+MdOqK8fgCHdSmUeJHuWKUvZxEDmwxjoDC
	z+AYCnuTri2oaR/dCYfv2NbpgkM2xBEqE4YwOdwe8eQcJ+NiKhRb09Nl+cBGb6w2HJFS
	fpK3yQMyfhreBGeq9EZUM4sNkN+IjjpMs5iXJEJ8MdcjQJswmPKPxkg5uqDzSV1e68u6
	erXXKcgAv9fFBA3+RNRPjsAFMcOWGGzfN2/QKwVP7JvvUiTOzagnSlDB6YtsJlBh5IqK
	6xXsOUClN2MqKjQ4DbWGUsWxruQtSaw19RxQrVVHrD1SCtZtPOSJUrU8XP4JCPf5HArL
	Wi7w==
X-Gm-Message-State: AOPr4FV3TACKxUEBSLughmjwHr2M0yVAOMibZkU3eVkfVo9DNn5alGGE2HjtxAb+uSSCsYKYsmoGRn52MiG5AA==
X-Received: by 10.176.3.172 with SMTP id 41mr423583uau.108.1462934447657; Tue,
	10 May 2016 19:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <CABfz71ch7Uko6uLNX3eSmAOJWRRYwAL_GJ14vbi8GAL65oJyKw@mail.gmail.com>
In-Reply-To: <CABfz71ch7Uko6uLNX3eSmAOJWRRYwAL_GJ14vbi8GAL65oJyKw@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
Date: Wed, 11 May 2016 02:40:38 +0000
Message-ID: <CABfz71dEz8FswBvc30qK7HJaqZ6TJ0TQ4RAiPLvRnoPswpgjEg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel 3.14.28 (imx duallite) will compile under 1.7, but not under 2.0-2.1
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
X-List-Received-Date: Wed, 11 May 2016 02:40:52 -0000
Content-Type: multipart/alternative; boundary=94eb2c000bd81529a2053287f8bf

--94eb2c000bd81529a2053287f8bf
Content-Type: text/plain; charset=UTF-8

Maybe it has something to do with a different make version in the newer
versions of Yocto? Maybe this link is relevant?
https://github.com/zanezam/boeffla-kernel-cm-bacon/commit/ef4fea130eeb70eff4f3a549fd3f6e9b11437550

On Tue, May 10, 2016 at 10:22 PM Paul Knopf <pknopf@medxchange.com> wrote:

> I am trying to update my BSP to work with the latest releases of Yocto,
> however, I can't even compile the kernel with the same
> defconfig/commit/repo.
>
> It works on 1.7, but not under 2.0. Here are the do_compile run and log
> for each version of yocto.
> https://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704d
>
> -------
> make[3]: *** [arch/arm/mm/built-in.o] Error 1
> make[2]: *** [arch/arm/mm] Error 2
>   AS      arch/arm/kernel/sigreturn_codes.o
>   CC      arch/arm/kernel/stacktrace.o
> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:63:2:
> warning: #warning "TODO: return_address should use unwind tables" [-Wcpp]
>  #warning "TODO: return_address should use unwind tables"
>   ^
> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:66:7:
> error: redefinition of 'return_address'
>  void *return_address(unsigned int level)
>        ^
> In file included from
> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/include/linux/ftrace.h:20:0,
>                  from
> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:12:
> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/include/asm/ftrace.h:48:21:
> note: previous definition of 'return_address' was here
>  extern inline void *return_address(unsigned int level)
>                      ^
> make[3]: *** [arch/arm/kernel/return_address.o] Error 1
> make[3]: *** Waiting for unfinished jobs....
> make[2]: *** [arch/arm/kernel] Error 2
> make[1]: *** [sub-make] Error 2
> -------
>
> Any idea why update Yocto would cause this build error?
> --
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
-- 

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--94eb2c000bd81529a2053287f8bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe it has something to do with a different make version=
 in the newer versions of Yocto? Maybe this link is relevant?<div><a href=
=3D"https://github.com/zanezam/boeffla-kernel-cm-bacon/commit/ef4fea130eeb7=
0eff4f3a549fd3f6e9b11437550">https://github.com/zanezam/boeffla-kernel-cm-b=
acon/commit/ef4fea130eeb70eff4f3a549fd3f6e9b11437550</a><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, May 10, 2016 at 10:22 =
PM Paul Knopf &lt;<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchang=
e.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r">I am trying to update my BSP to work with the latest releases of Yocto, =
however, I can&#39;t even compile the kernel with the same defconfig/commit=
/repo.<div><br></div><div>It works on 1.7, but not under 2.0. Here are the =
do_compile run and log for each version of yocto.</div><div><a href=3D"http=
s://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704d" target=3D"_=
blank">https://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704d</=
a><br></div><div><br></div><div>-------</div><div><div>make[3]: *** [arch/a=
rm/mm/built-in.o] Error 1</div><div>make[2]: *** [arch/arm/mm] Error 2</div=
><div>=C2=A0 AS =C2=A0 =C2=A0 =C2=A0arch/arm/kernel/sigreturn_codes.o</div>=
<div>=C2=A0 CC =C2=A0 =C2=A0 =C2=A0arch/arm/kernel/stacktrace.o</div><div>/=
home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-so=
urce/arch/arm/kernel/return_address.c:63:2: warning: #warning &quot;TODO: r=
eturn_address should use unwind tables&quot; [-Wcpp]</div><div>=C2=A0#warni=
ng &quot;TODO: return_address should use unwind tables&quot;</div><div>=C2=
=A0 ^</div><div>/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-=
256mbx4/kernel-source/arch/arm/kernel/return_address.c:66:7: error: redefin=
ition of &#39;return_address&#39;</div><div>=C2=A0void *return_address(unsi=
gned int level)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div>In file in=
cluded from /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256m=
bx4/kernel-source/include/linux/ftrace.h:20:0,</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/pknopf/Git/recipes/=
build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/ret=
urn_address.c:12:</div><div>/home/pknopf/Git/recipes/build/tmp/work-shared/=
seco-uq7-dl-256mbx4/kernel-source/arch/arm/include/asm/ftrace.h:48:21: note=
: previous definition of &#39;return_address&#39; was here</div><div>=C2=A0=
extern inline void *return_address(unsigned int level)</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><d=
iv>make[3]: *** [arch/arm/kernel/return_address.o] Error 1</div><div>make[3=
]: *** Waiting for unfinished jobs....</div><div>make[2]: *** [arch/arm/ker=
nel] Error 2</div><div>make[1]: *** [sub-make] Error 2</div></div><div>----=
---</div><div><br></div><div>Any idea why update Yocto would cause this bui=
ld error?</div></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><p dir=
=3D"ltr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxchang=
e.com</a></p>
</div></blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><p =
dir=3D"ltr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a></p>
</div>

--94eb2c000bd81529a2053287f8bf--
