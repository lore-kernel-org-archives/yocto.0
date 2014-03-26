Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6BBAE00A44
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 02:47:22 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id j5so515565qga.4
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 02:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=9s3ApttFehkkRvclnbiMVe8FtVizI0E2rMdMjRxAkQ4=;
	b=lgJ80iIJCd5mzdUwG98wjleq/RH37dA+Z/bsr/NwD0blcWboKpvAn55UlPRSVeVB5h
	8JpestVJQSs4327wzKBT46Ji0la/a9Qu2JewjC+SsAh7eobVVDuWo9n3FA0b8uIShZfu
	MdaXCFtrUQv1aBIgGfZxH2OxEni7vISwE7jsMMWOhTTUqwdNS+E85o5TQ/uJNR5SBGQr
	y6lYH6WNp4Zc50ZGqj9SXlBVnIthYpDts1kGhxTIAjGu0w/Zpz5Lqb8lPvvg66pYs4gq
	8Yzi7dtKTdJFja1+2+vp2cNBSBtQgUrEWTGARDZEt/w1u8DYfpQ9aHJxIvaIiO5eoAAV
	69Iw==
X-Received: by 10.224.160.83 with SMTP id m19mr87338324qax.21.1395827241103;
	Wed, 26 Mar 2014 02:47:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.48 with HTTP; Wed, 26 Mar 2014 02:47:01 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 26 Mar 2014 06:47:01 -0300
Message-ID: <CAMCfZKG3ku29ztup_Dc0HLrnTBB9SirC+VM2QFjChX6Pwv=oZQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Get rid of opkg install error
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
X-List-Received-Date: Wed, 26 Mar 2014 09:47:23 -0000
Content-Type: multipart/alternative; boundary=047d7bacb2aadfd1f604f57f5a05

--047d7bacb2aadfd1f604f57f5a05
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I have a image recipe which installs some custom files on rootfs.
Instead of having a bbappend for each package that provides those files I
want to concentrate it on image recipe.

The problem is that I'm receiving the following error:

"But that file is already provided by package"


Is there a way to get rid of this error?

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--047d7bacb2aadfd1f604f57f5a05
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Folks,<div><br></div><div style>I have a image recipe which installs some custom files on rootfs.</div><div style>Instead of having a bbappend for each package that provides those files I want to concentrate it on image recipe.</div>

<div style><br></div><div style>The problem is that I&#39;m receiving the following error:</div><blockquote style="margin:0 0 0 40px;border:none;padding:0px"><div style>&quot;But that file is already provided by package&quot;</div>

</blockquote><div><br></div><div>Is there a way to get rid of this error?<br clear="all"><div><div dir="ltr"><div><br></div><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br>

<a href="http://www.embarcados.com.br/?utm_source=assinatura_diego&amp;utm_medium=e-mail&amp;utm_campaign=Assinatura%20Email%20Diego" target="_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/<br></div>

</div>
</div></div>

--047d7bacb2aadfd1f604f57f5a05--
