Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F12E0084F; Tue, 21 Oct 2014 22:43:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB09E00790;
	Tue, 21 Oct 2014 22:43:21 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id 10so2208755lbg.4
	for <multiple recipients>; Tue, 21 Oct 2014 22:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ynBBEc3RN9hw9bKibZk+2RgtSaHee5i7rpcPSxmJfeU=;
	b=dsys/FjGvxcOG760kSqz61HhCm0YHrY43BnVeD9cvAuKTyYj53nvin0aahVDiOmJK+
	wppfveezjqmV5+sydWCbAE84rel7XUgXRLl9IduChEiR1E8xc5bqQTar4Yb52RgCVmLW
	Tn5bsQRSoB6ZFw2QPPBcPPAcHHaAnuO1sNfcuC3n+A1cSF6v5MtglRnC4iT7i4HBB3FF
	4tNCLS5a31GpLe7RJVSQnkolety+XpwnrWQLTaUW4zuwNfteXkyZ3TIjtFnNvFCvdF4b
	e5ImcI8PgsrxDcydtn0QHC0Ul9yyhj2czyhnTS7gRMqsKz0Zzh6HwAU4N8NbcWxGA19B
	H9ug==
X-Received: by 10.152.7.7 with SMTP id f7mr38846553laa.57.1413956600650; Tue,
	21 Oct 2014 22:43:20 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.6.234 with HTTP; Tue, 21 Oct 2014 22:43:00 -0700 (PDT)
In-Reply-To: <CAP3RZojGKU=iq9dMJsa1RUq0neGpDg1Y0t4yG9kTiB8mJzBXKA@mail.gmail.com>
References: <CAP3RZojGKU=iq9dMJsa1RUq0neGpDg1Y0t4yG9kTiB8mJzBXKA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 21 Oct 2014 22:43:00 -0700
X-Google-Sender-Auth: z0sbiffd0FWh8KkdZBMGU48fV6I
Message-ID: <CABcZANnkayPv+ZXLxb7O_Bux7jmdK7PUiGyA3yAo=SH+GvW96g@mail.gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] /etc directory path in yocto
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
X-List-Received-Date: Wed, 22 Oct 2014 05:43:27 -0000
Content-Type: multipart/alternative; boundary=001a11c2870ae8e0d90505fc6c0d

--001a11c2870ae8e0d90505fc6c0d
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 21, 2014 at 10:28 PM, jags gediya <jags.gediya@gmail.com> wrote:

> I am compiling the custom recipie and i am getting the error in
> do_install function.
>
> Below is the do_install function
>
> do_install() {
>         oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
> MANDIR=${mandir} \
>                                       INCLUDEDIR=${includedir}
> }
>
> Error:
>  saving cache in little endian encoding
> ldconfig: Can't create temporary cache file /etc/ld.so.cache~: Permission
> denied
>
> Looking like, it is trying to create that file in host system's /etc
> directory. How can I avoid it and do_install function can use /etc
> directory of rootfs?
>

Read the makefiles of the project you're building. Specifically, modify
them to stop running ldconfig.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c2870ae8e0d90505fc6c0d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Oct 21, 2014 at 10:28 PM, jags gediya <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jags.gediya@gmail.com" target=3D"_blank">jags.gediya@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":9q" clas=
s=3D"a3s" style=3D"overflow:hidden">I am compiling the custom recipie and i=
 am getting the error in<br>
do_install function.<br>
<br>
Below is the do_install function<br>
<br>
do_install() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake install DESTDIR=3D${D} SBINDIR=3D${s=
bindir} MANDIR=3D${mandir} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 INCLUDEDIR=3D${=
includedir}<br>
}<br>
<br>
Error:<br>
=C2=A0saving cache in little endian encoding<br>
ldconfig: Can&#39;t create temporary cache file /etc/ld.so.cache~: Permissi=
on denied<br>
<br>
Looking like, it is trying to create that file in host system&#39;s /etc<br=
>
directory. How can I avoid it and do_install function can use /etc<br>
directory of rootfs?</div></blockquote></div><br></div><div class=3D"gmail_=
extra">Read the makefiles of the project you&#39;re building. Specifically,=
 modify them to stop running ldconfig.<br>-- <br>Christopher Larson<br>clar=
son at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Ma=
intainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c2870ae8e0d90505fc6c0d--
