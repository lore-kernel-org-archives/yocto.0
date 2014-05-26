Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9EB3E00BB3; Sun, 25 May 2014 23:36:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1775 seconds by postgrey-1.32 at yocto-www;
	Sun, 25 May 2014 23:36:03 PDT
Received: from mail-vc0-f182.google.com (unknown [209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6289E00BAE
	for <yocto@yoctoproject.org>; Sun, 25 May 2014 23:36:03 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id la4so8912295vcb.27
	for <yocto@yoctoproject.org>; Sun, 25 May 2014 23:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JtCktJWaXRC9krwE1lePmmxr3eABpR9xYy2BU4LPslE=;
	b=vURmKFG6clOgkj3mYhdQejWOo5dYtnJKgGcEDCRNLFI8rLDWndeWCWH+qcKcPPwhKd
	QOG2/OwMEEZ3EOHMNvSBy/QLNBvYkZXhVC7oxKZEPDJ6hKmTF8UeCksZgSG4ngDu5zr6
	4RWABkStWL3Z0Z+cJUxoR0yujwF5uKZrcCiPI/l5iPGFtq+15D9HmRYUiiETaI7HpbPl
	dV8U0S2SKmsZZHv8oA31r13Eqa4sMxgk0hYnLAx254ZpHeGMb9Di3uvVM1XhAYwa2w+L
	sM+0vX4IqfI+MbVK2OGn1sBLs9DmGh4rTvyzZg5xqKfXBxvU3aelxo8UteOWX00YE/GS
	rxiQ==
X-Received: by 10.58.116.1 with SMTP id js1mr19039311veb.29.1401084387448;
	Sun, 25 May 2014 23:06:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.161.74 with HTTP; Sun, 25 May 2014 23:06:07 -0700 (PDT)
In-Reply-To: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
References: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Mon, 26 May 2014 11:36:07 +0530
Message-ID: <CAAA4K6LsLF+fJRoAx_z01JW8QTutC2SEC2HdZw_G9Xz94CUz7w@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting default system python version
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
X-List-Received-Date: Mon, 26 May 2014 06:36:08 -0000
Content-Type: multipart/alternative; boundary=047d7b67753436dde404fa4761c8

--047d7b67753436dde404fa4761c8
Content-Type: text/plain; charset=UTF-8

There is variable called PREFERRED_VERSION_pkgname ?= "version" where you
can set the desired version of any packages available.(if thats what you
are looking for) Try adding it in your image recipe or conf file. Also once
added, you can check by executing 'bitbake -s' and see preferred version
tab.

HTH.

-JC-


On Fri, May 23, 2014 at 7:59 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

> Folks,
>
> I did not fount it on manuals.
> How can I set the default system python version for an image?
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
JCP

--047d7b67753436dde404fa4761c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">There is variable called PREFERRED_VERSION_pkgna=
me ?=3D &quot;version&quot; where you can set the desired version of any pa=
ckages available.(if thats what you are looking for) Try adding it in your =
image recipe or conf file. Also once added, you can check by executing &#39=
;bitbake -s&#39; and see preferred version tab.</div>

<div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:&#39;=
trebuchet ms&#39;,sans-serif">HTH.</div><div class=3D"gmail_default" style=
=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">

<br></div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet =
ms&#39;,sans-serif">-JC-</div></div><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote">On Fri, May 23, 2014 at 7:59 PM, Diego Sueiro <span =
dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank"=
>diego.sueiro@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Folks,</div><div><br><=
/div><div>I did not fount it on manuals.</div><div>How can I set the defaul=
t system python version for an image?</div>

<div><br></div><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br>



<br>/*long live rock &#39;n roll*/<br></div></div>
</div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--047d7b67753436dde404fa4761c8--
