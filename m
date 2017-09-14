Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04922E00CC4; Thu, 14 Sep 2017 03:21:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF271E00CAF
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 03:20:59 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id e189so7614244ioa.4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 03:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AxV0AmI/MBLb5TC7b9yqvA+uFqPa5lvQUW1PCJW3o1Y=;
	b=OHrwzG3r5NduAy5k85FUjrRbIL8L2pBHPCGMqGvduAtMBecc3qkXhQpMbarWY9LF9/
	rYBsItwlwm7gb+Fjt/Cc7S3bqdaHU5bOmV73dSZtrskkHZFccTIOZ4E/JmXN0ujyCPR4
	YGknK7woA7CATdK0yjdP5AG+3w8F3nClhMqoDikqxX0mmrLcO/UnkTc0iJ2p8IGB/P/d
	51U3QfsCLlzM+9stXd90Lvz/qu3RfvHIEikWc3bffvA/l8JP2kAeoIVZLhR5dfVxXTAk
	sRQwIKTfwHrNjiFWgOaFg/cfB66sRIaf+DFIebN7yz4IKFotssj2vMDssoqg1Zz3r7ia
	CiLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AxV0AmI/MBLb5TC7b9yqvA+uFqPa5lvQUW1PCJW3o1Y=;
	b=hb7OMr7u5H+Gqti9f5cDsqpcVUsIaoQGfd97yBP41ALVHw/ls2upy4WA7N2ua9yGBW
	/4qKlRcFlN4T+nHanrnTBaeA46HZ4uGEKyPmOPFru3E/R/9ZBKWCI0BQUMEvChyFqaLx
	ADFQQKlYANaJ+OjXFzNGyNArAjn4gS6FdkFXOqk4MrWM/BlruW5VfJq2siJKXiyY/uaM
	XGrMUl7Cl+Qhqcn8siw5UEuyAM3YyWx3yHzmY17wuBRPWis0cukdtTWYXHfltK5kfC47
	Uti5invepq3yUC0IWf95QWRDBQ0p5pMCInvQPyRo8D6fufydHlDGUUqKHFDk2brGYzmc
	wJpA==
X-Gm-Message-State: AHPjjUhtGbo5Xd22OSTCpJmmmJFfPjYGByyoSSXsN5NYnQA3Rc6UC36+
	XNhyjBp3Eax5851bK/1pzZEbboh4lBLqtXO/E1/XJg==
X-Google-Smtp-Source: AOwi7QB7SbdjfiBpmQBud6+hsKzjyKD+QQN2/ue2/z672Q/y7GVs+4/iDqUF10UTmqcfJDv8BRTBtTx+rjcTVPPvcV4=
X-Received: by 10.107.41.18 with SMTP id p18mr1822586iop.142.1505384459313;
	Thu, 14 Sep 2017 03:20:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Thu, 14 Sep 2017 03:20:38 -0700 (PDT)
In-Reply-To: <1505380183-34161-1-git-send-email-huangqy.fnst@cn.fujitsu.com>
References: <1505380183-34161-1-git-send-email-huangqy.fnst@cn.fujitsu.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Sep 2017 11:20:38 +0100
Message-ID: <CAJTo0LYib_sfvwuQDdVzmPJhMm7QgxfZN6iziYGgruKe2zN+ng@mail.gmail.com>
To: Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] libwww-perl: Add HOMEPAGE info into recipe file.
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
X-List-Received-Date: Thu, 14 Sep 2017 10:21:02 -0000
Content-Type: multipart/alternative; boundary="001a1141d8a2f2b915055923a1af"

--001a1141d8a2f2b915055923a1af
Content-Type: text/plain; charset="UTF-8"

Can you resend these patches putting the layer name in the subject?

Ross

On 14 September 2017 at 10:09, Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
wrote:

> Signed-off-by: Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
> ---
>  meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
> b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
> index b365948..4d17b3a 100644
> --- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
> @@ -1,4 +1,5 @@
>  DESCRIPTION = "libwww-perl provides a simple and consistent API to the
> World Wide Web"
> +HOMEPAGE = "http://search.cpan.org/dist/libwww-perl/"
>  SECTION = "libs"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=
> 4d92cd373abda3937c2bc47fbc49d690"
> --
> 2.7.4
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1141d8a2f2b915055923a1af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you resend these patches putting the layer name in the=
 subject?<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On 14 September 2017 at 10:09, Huang Qiyu <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:huangqy.fnst@cn.fujitsu.com" target=3D"_=
blank">huangqy.fnst@cn.fujitsu.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Signed-off-by: Huang Qiyu &lt;<a href=3D"mailto:huangqy.fns=
t@cn.fujitsu.com">huangqy.fnst@cn.fujitsu.com</a>&gt;<br>
---<br>
=C2=A0meta-cgl-common/recipes-perl/<wbr>perl/<a href=3D"http://libwww-perl_=
6.05.bb" rel=3D"noreferrer" target=3D"_blank">libwww-perl_6.05.bb</a> | 1 +=
<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/meta-cgl-common/recipes-<wbr>perl/perl/<a href=3D"http://libww=
w-perl_6.05.bb" rel=3D"noreferrer" target=3D"_blank">libwww-perl_6.05.bb</a=
> b/meta-cgl-common/recipes-<wbr>perl/perl/<a href=3D"http://libwww-perl_6.=
05.bb" rel=3D"noreferrer" target=3D"_blank">libwww-perl_6.05.bb</a><br>
index b365948..4d17b3a 100644<br>
--- a/meta-cgl-common/recipes-<wbr>perl/perl/<a href=3D"http://libwww-perl_=
6.05.bb" rel=3D"noreferrer" target=3D"_blank">libwww-perl_6.05.bb</a><br>
+++ b/meta-cgl-common/recipes-<wbr>perl/perl/<a href=3D"http://libwww-perl_=
6.05.bb" rel=3D"noreferrer" target=3D"_blank">libwww-perl_6.05.bb</a><br>
@@ -1,4 +1,5 @@<br>
=C2=A0DESCRIPTION =3D &quot;libwww-perl provides a simple and consistent AP=
I to the World Wide Web&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://search.cpan.org/dist/libwww-perl/" re=
l=3D"noreferrer" target=3D"_blank">http://search.cpan.org/dist/<wbr>libwww-=
perl/</a>&quot;<br>
=C2=A0SECTION =3D &quot;libs&quot;<br>
=C2=A0LICENSE =3D &quot;GPLv2&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://${COREBASE}/LICENSE;<wbr>md5=3D<wbr=
>4d92cd373abda3937c2bc47fbc49d6<wbr>90&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a1141d8a2f2b915055923a1af--
