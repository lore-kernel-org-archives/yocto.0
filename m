Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33781E0079E; Sun, 28 Sep 2014 06:53:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4313E00721
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 06:53:23 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id o8so8287930qcw.20
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 06:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=7DR/v15RRShnnqJeyqAvzwcmT930fhN5R5HtjEVDS8I=;
	b=jbSGplZGdCBNxRmDj8NRwMBS3HGmBT80EZ30uaogqelnL79WsjIum5RxfBIKnbhghQ
	i/gjiYX6y4menGkAJEWShCLNy/p+1UNgumm1bbZupNWltv+mklr+6KhsPzN92SS/Rtnd
	Pm0WkaKVIVPRdyLPHrx00eQNvUjGKKlYLz1OUlyGBniy/ip46+aH9IHXWYvq7PmUNY/1
	8DtnIhcu54BGsnWT7deEXKa6MCs9YqRtbnTkw4vr3nQ/dyx8cN17BcV6/k00l4QZIXLQ
	Jp+uX6KPy4MtcWLbGHBfIpuNAg84Qqv6nt5e/XjCRoVkiqd90D+1iT4dkFu7M0k4NJap
	y5Gg==
X-Received: by 10.229.40.131 with SMTP id k3mr3570095qce.11.1411912402309;
	Sun, 28 Sep 2014 06:53:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Sun, 28 Sep 2014 06:53:02 -0700 (PDT)
In-Reply-To: <CAMCfZKH2wg6oLOTuTMb+QMMraxMpzoGBYeOZYB9_tXYigwkZMA@mail.gmail.com>
References: <CAMCfZKH2wg6oLOTuTMb+QMMraxMpzoGBYeOZYB9_tXYigwkZMA@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sun, 28 Sep 2014 10:53:02 -0300
Message-ID: <CAMCfZKG4n8h4J=ms7jP=W3cchJKFznzQfFi6B_Q3JaTvu-+pYg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Rootfs with F2FS.
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
X-List-Received-Date: Sun, 28 Sep 2014 13:53:27 -0000
Content-Type: multipart/alternative; boundary=001a1133988e31998305042079aa

--001a1133988e31998305042079aa
Content-Type: text/plain; charset=ISO-8859-1

Any thoughts or advice?

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

On Thu, Sep 25, 2014 at 12:28 PM, Diego Sueiro <diego.sueiro@gmail.com>
wrote:

> Folks,
>
> As I could inspect on openembedded/yocto source code I didn't found
> anything related with images created with F2FS. Just found f2fs-tools
> recipe.
>
> What needs to be done to get a rootfs with F2FS?
> Just need to make it's entries at image_types.bbclass?
>
> What about u-boot?
> I think it cannot read F2FS partitions, correct?
> If true, I have to put zImage and dtb in a fat or extX partition to get it
> loaded from u-boot.
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
> <http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>

--001a1133988e31998305042079aa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any thoughts or advice?<div class=3D"gmail_extra"><br clea=
r=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS=
<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://ww=
w.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&=
amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarc=
ados.com.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div>
<br><div class=3D"gmail_quote">On Thu, Sep 25, 2014 at 12:28 PM, Diego Suei=
ro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=
=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div>Folks,</div><div><br></div><div>As I =
could inspect on openembedded/yocto source code I didn&#39;t found anything=
 related with images created with F2FS. Just found f2fs-tools recipe.</div>=
<div><br></div><div>What needs to be done to get a rootfs with F2FS?</div><=
div>Just need to make it&#39;s entries at image_types.bbclass?</div><div><b=
r></div><div>What about u-boot?</div><div>I think it cannot read F2FS parti=
tions, correct?</div><div>If true, I have to put zImage and dtb in a fat or=
 extX partition to get it loaded from u-boot.=A0</div><div><br></div><br cl=
ear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*=
dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://=
www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mai=
l&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.emba=
rcados.com.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div>
</div>
</blockquote></div><br></div></div>

--001a1133988e31998305042079aa--
