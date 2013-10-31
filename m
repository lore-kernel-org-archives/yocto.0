Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D14EE0174D
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:54:52 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id lj1so2591868pab.8
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=D9EnJe1QClD4kki3IEaVxZdJ4qa2fOahG6fJH/TuU84=;
	b=ILLbWdGRvZHmpk8XIEcGp3JZKcFc0TmQVCZEMfe75nWzensqLy3AZpYzU/CAZAjAse
	NfIST2JRxSok/kLKIzHkhFBR7doW3EbPx3kvJwWvkxrcj5GfFsxCBcfSNBcjL0QWXeXG
	vcE3qASPzG+lp5HUESKuRBqIZ1MTt3wvJDOU9vby1n+2DYHz/fzEdzZY0rRP+2dBegST
	FCZcWr7DlAxTCDCXf4jaQf8WVNtQ5Ut+gksnr+OMvT5vUOi2f3hwsR7UnGh/x0y/tsW1
	F79/mTIAHU7AASQMhRo78ncpESJ4vkykXqjH8cpYJNP6QNgYT9UkqWhKDg7mQbP5zsmi
	GZew==
MIME-Version: 1.0
X-Received: by 10.68.254.132 with SMTP id ai4mr2415166pbd.51.1383231292351;
	Thu, 31 Oct 2013 07:54:52 -0700 (PDT)
Received: by 10.68.104.133 with HTTP; Thu, 31 Oct 2013 07:54:52 -0700 (PDT)
In-Reply-To: <CAMKF1spmfjH-J8irnHysbcKmEsBApQx+DAoGT_yGxd-9FNvjOg@mail.gmail.com>
References: <CABwVrCqig4w67Umr8N+y1Vr1Umze5v-6Qe2wz_cHyqK3ixouaQ@mail.gmail.com>
	<CAMKF1spmfjH-J8irnHysbcKmEsBApQx+DAoGT_yGxd-9FNvjOg@mail.gmail.com>
Date: Thu, 31 Oct 2013 16:54:52 +0200
Message-ID: <CABwVrCqJTEjD6CWBfhj38_Yqb7NRAue4H25C6ub79pxm54XWXQ@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto toolchain build question
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
X-List-Received-Date: Thu, 31 Oct 2013 14:54:53 -0000
Content-Type: multipart/alternative; boundary=047d7b2e0a11d2abb904ea0aa191

--047d7b2e0a11d2abb904ea0aa191
Content-Type: text/plain; charset=ISO-8859-1

I am trying something like this, but I have some annoying QA issues:
QA Issue: Files/directories were installed but not shipped

Hope to make them dissapear. I tried  adding:
FILES_${PN} += ..
 or
install -D -m 0755 ${S}/... ${D}/...

but with no succes.
Do you have any ideeas regarding this.

Thanks.




On Thu, Oct 31, 2013 at 4:44 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Oct 31, 2013 at 1:38 AM, jan alexandru vaduva
> <vaduva.jan.alexandru@gmail.com> wrote:
> > Thanks for the information. That is what I was looking for. I was asking
> of
> > the canadian build possibilities for a toolchian and I found the answer
> to
> > that question.
> >
> > If I may ask. There was a thread:
> > "
> >
> >>* I have a cross-toolchain supplied by an ARM SoC vendor which I need
> to*>*
> >> use to build my distro.  What is required to use a toolchain like
> this*>*
> >> instead of one of the yocto cross-toolchain tarballs?*>**
> > I answered this question just today for another mail thread please
> > search the ml for the same.
> >>* Thanks*
> >
> > "
> > I can`t find the answer to this question, can you help with a link?
>
> you can plugin that toolchain as external-toolchain like sourcery
> toolchain is done. You can use that as example.
>
> look at
>
> ./meta/conf/distro/include/tcmode-external-sourcery.inc
> ./meta/recipes-core/meta/external-sourcery-toolchain.bb
>

--047d7b2e0a11d2abb904ea0aa191
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>I am trying something like t=
his, but I have some annoying QA issues:<br>QA Issue: Files/directories wer=
e installed but not shipped<br><br></div>Hope to make them dissapear. I tri=
ed=A0 adding: <br>
FILES_${PN} +=3D ..<br></div>=A0or<br></div>install -D -m 0755 ${S}/... ${D=
}/...<br><br></div>but with no succes.<br></div>Do you have any ideeas rega=
rding this.<br><br></div>Thanks.<br><div><div><div><div><pre><br></pre></di=
v>
</div></div></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">On Thu, Oct 31, 2013 at 4:44 PM, Khem Raj <span dir=3D"ltr">&lt;=
<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com<=
/a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
hu, Oct 31, 2013 at 1:38 AM, jan alexandru vaduva<br>
&lt;<a href=3D"mailto:vaduva.jan.alexandru@gmail.com">vaduva.jan.alexandru@=
gmail.com</a>&gt; wrote:<br>
&gt; Thanks for the information. That is what I was looking for. I was aski=
ng of<br>
&gt; the canadian build possibilities for a toolchian and I found the answe=
r to<br>
&gt; that question.<br>
&gt;<br>
&gt; If I may ask. There was a thread:<br>
&gt; &quot;<br>
&gt;<br>
&gt;&gt;* I have a cross-toolchain supplied by an ARM SoC vendor which I ne=
ed to*&gt;*<br>
&gt;&gt; use to build my distro. =A0What is required to use a toolchain lik=
e this*&gt;*<br>
&gt;&gt; instead of one of the yocto cross-toolchain tarballs?*&gt;**<br>
&gt; I answered this question just today for another mail thread please<br>
&gt; search the ml for the same.<br>
&gt;&gt;* Thanks*<br>
&gt;<br>
&gt; &quot;<br>
&gt; I can`t find the answer to this question, can you help with a link?<br=
>
<br>
</div></div>you can plugin that toolchain as external-toolchain like source=
ry<br>
toolchain is done. You can use that as example.<br>
<br>
look at<br>
<br>
./meta/conf/distro/include/tcmode-external-sourcery.inc<br>
./meta/recipes-core/meta/<a href=3D"http://external-sourcery-toolchain.bb" =
target=3D"_blank">external-sourcery-toolchain.bb</a><br>
</blockquote></div><br></div>

--047d7b2e0a11d2abb904ea0aa191--
