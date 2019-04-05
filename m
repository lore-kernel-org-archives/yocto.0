Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8424AE00D08; Thu,  4 Apr 2019 23:40:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28250E00BB7
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 23:40:57 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id l203so4019048oia.3
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 23:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e9vTIiOiotVEgvWVwUMl818DpvKfmJd62Wxlt0Qb8Mo=;
	b=WkjG3SXk/DMzTcsabthmb9PFw9rWYgn05KqWOmfZQjGDBVnoUD6g8x8qphri5OPAvG
	d/VXPdCyj9ompeU2AFhIxOhK8OVz0SpqqmAhG5EYi8zXmsdJ6NVNWqrbo1XK37TTRc3O
	N4PjhIB2f5xHIad7q5Cq7w3a3A3WlT4PF9alpz9CSEiirBT+uPAi9dmJb1bWj7okRFaR
	8US1u+iITRUgs8nlTP3KvbrGbEz/jxefo55yQ69t/Gnvy4Nul463f4KBFL32fHqSFBqj
	OUQV8JiVM4NjpY/UrfgtyEubklkvF91n1xOVdEesGi74V0bPxILBJ1nqru3CWqRNTVTH
	vDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e9vTIiOiotVEgvWVwUMl818DpvKfmJd62Wxlt0Qb8Mo=;
	b=t81Iz8oVI67OUFvJVITsSK4RAzAGvuhb5bW2do8Mw1K3KHYO7HIbeLJstDOF/e1iZV
	Xx7PVDhZTP5rc/oekfNkpEVaIecHFYks6YD9OpKGuFquOMCXK0NrVrDkNqh6jF8R4YwF
	1hn57eMnWWlKnqF/TEp60ljCRt6YdrGsdoSAfiNpMOJXL2MnyBHY+zOkZ8uJCSucGlJo
	ANQq2oHUEpbJPA28KPQPJQtqH3uSJWpRpkUzhRpIIlpdGJDhNB/dyaqBSFheH/nGz0T8
	NDJmqAzIt7p/pV3AXIBclQpPWBcp2SJHjejpom+WrDEklreXfAOe5/tq0OVjdkI3wyW/
	AF2g==
X-Gm-Message-State: APjAAAU3eFcHLPG2xAtrm6WiGiZ/Cdqc4Te+tmRkzo0/pN42GbDJCPDp
	MBBqFaOkFKPhEb3oeJTu8vHXc7B2ceVovRP9a4U=
X-Google-Smtp-Source: APXvYqwkYT7anO+ag+kteSX91JA5xWqx7gbybvUQzjN9m7tqP1Yv0lQiyNtIFUEMab+6S5VGAcwDlnw0ELWpLA6VDEg=
X-Received: by 2002:aca:b588:: with SMTP id e130mr5681703oif.161.1554446456919;
	Thu, 04 Apr 2019 23:40:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAK3Qp=X2ruZbpA+noENyPkwSPF9h0gebA+4c6iUpOMXw37A5UA@mail.gmail.com>
In-Reply-To: <CAK3Qp=X2ruZbpA+noENyPkwSPF9h0gebA+4c6iUpOMXw37A5UA@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Fri, 5 Apr 2019 08:40:46 +0200
Message-ID: <CACKFPN0NeRFcUfxYqw6CLm87E8HAfA591Wz19w3QX72UxODbFA@mail.gmail.com>
To: Fernando AE <fernando.ae2017@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: get_kernelversion_headers not replacing '_' by '-'
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
X-List-Received-Date: Fri, 05 Apr 2019 06:40:58 -0000
Content-Type: multipart/alternative; boundary="000000000000e31cf70585c2c43c"

--000000000000e31cf70585c2c43c
Content-Type: text/plain; charset="UTF-8"

The same also happens with the deb packager.
But it works with rpm. For deb '_' is not allowed character, so
I guess ithe same for ipkg.

You need to either change the 'LOCALVERSION' of the kernel
or use rpm.

Dimitris

On Thu, Apr 4, 2019 at 11:07 AM Fernando AE <fernando.ae2017@gmail.com>
wrote:

> Hello all,
>
> I discovered that if a '_' in present in the kernel version string,
> the task package_write_ipk during the kernel build will fail.
>
> In Yocto 2.6, get_kernelversion_headers is defined at
> meta/classes/linux-kernel-base.bbclass.
>
> In the attached file, I set KERNEL_VERSION="kernel_version" in my linux
> recipe.
>
> Any thoughts?
>
> Kind regards,
> Fernando
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e31cf70585c2c43c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The same also happens with the deb packager.<div>But it wo=
rks with rpm. For deb &#39;_&#39; is not allowed character, so</div><div>I =
guess ithe same for ipkg.</div><div><br></div><div>You need to either chang=
e the &#39;LOCALVERSION&#39; of the kernel</div><div>or use rpm.</div><div>=
<br></div><div>Dimitris</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 4, 2019 at 11:07 AM Fernando AE &=
lt;<a href=3D"mailto:fernando.ae2017@gmail.com">fernando.ae2017@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">He=
llo all,<br>
<br>
I discovered that if a &#39;_&#39; in present in the kernel version string,=
<br>
the task package_write_ipk during the kernel build will fail.<br>
<br>
In Yocto 2.6, get_kernelversion_headers is defined at<br>
meta/classes/linux-kernel-base.bbclass.<br>
<br>
In the attached file, I set KERNEL_VERSION=3D&quot;kernel_version&quot; in =
my linux recipe.<br>
<br>
Any thoughts?<br>
<br>
Kind regards,<br>
Fernando<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000e31cf70585c2c43c--
