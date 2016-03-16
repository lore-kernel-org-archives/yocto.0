Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5C3BE008C1; Wed, 16 Mar 2016 02:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8EA6E0083D
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 02:02:17 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id ig19so109639579igb.0
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 02:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=79QZRgswK8pgoec29XgTgPbEIC4nFfDgSbC3Ug11Rpw=;
	b=AgnsZFve/OPTeaqTvIZcoZglLa37GtBaYnT9x0lLHPtRIhhYaHlI7ZFZEuYf2bagUg
	XyrmZ7GlOuR1A9CGdYfN/9HQ2gjTONfyvP7LeFowGImAtdZeHn2H73VY/0WHk7w4U+m8
	omDZv6yBfofy4KACvpgnYcDe+J/7Lk1bXnWxX+mgpf0J1kcUid0W2q4zDnf/P84OUXyH
	vOQ7snYFkd26eVEiMT1IQe8a7Mo46bCvSE9hXpP5IY/pAAW89W9dEtqEJl135uKM+j9n
	EWL7r6mKCGxrhSiAxIkK9D14OgQFhihpQZ9ypxnKTqS4xPNTOv2jkX6PCA+sv2j2teyD
	eQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=79QZRgswK8pgoec29XgTgPbEIC4nFfDgSbC3Ug11Rpw=;
	b=ZTt0P4a3BZeEPCK2Q6rPoA8omHybVAJBTMyUADRs/ZPHQQ12K5UBDwptY8hCxTqooW
	dbdmTtEDVxukEPcgkEW6+5KRHtKTm5QMQbnSqkTR5OVOxgT8aBLhWvodK6CTdO1o43HW
	qK4maVO/zIEEcmM67PwGVD8s/d5OPdOyuotKzCEu0mGrLMQ3fHtxGKPLVl03KyVU0HV/
	jAOIcaMPcjYbSS9Bxl60eUyExV3ZO7udONMAt0gAOclsCR0MrsF38R93Kzbr11PZ+lsS
	0IOvzrTdRmTIZ8IKeSKn1f/m9UiNOAZuQcRz+02SdRquAM0yO4tSk3OfkEMedFlHZG9q
	pnGQ==
X-Gm-Message-State: AD7BkJJJKma+sasVZmQOeSIxFOF2VDVNpM+vjOlxqrxgAa1ifCg6bGWwMJooXoouD9C5OBZEjjvVw2mGJS1OM5cC
X-Received: by 10.50.150.41 with SMTP id uf9mr3577444igb.64.1458118936562;
	Wed, 16 Mar 2016 02:02:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 16 Mar 2016 02:01:57 -0700 (PDT)
In-Reply-To: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
References: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Mar 2016 09:01:57 +0000
Message-ID: <CAJTo0LaVEa3-GL6Nd3uMkBC0P7PvUj23FqTLchMo8bLcLbKXCg@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional compile for package in layer.conf for Qemu
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
X-List-Received-Date: Wed, 16 Mar 2016 09:02:20 -0000
Content-Type: multipart/alternative; boundary=001a11345c0c41c6e3052e26c598

--001a11345c0c41c6e3052e26c598
Content-Type: text/plain; charset=UTF-8

On 16 March 2016 at 08:56, Mark T <mtl1nuxd3v@gmail.com> wrote:

> I'd like to be able to do the following
>
> IMAGE_INSTALL_append += "package_a"
> if ( not qemu )
> IMAGE_INSTALL_append += "package_b"
> endif
>

The neater way would be if you can easily identify what "not qemu" is, for
example:

IMAGE_INSTALL_append_intel-corei7-64 = "package_b"

Would install package_b only for intel-corei7-64 machines.

If you want to support arbitrary machines but not qemu then something like
this might work:

MOREDEPS = "package_b"
MOREDEPS_qemuall = ""
IMAGE_INSTALL_append = " ${MOREDEPS}"

(qemuall is an override that is enabled by all qemu machines)

Ross

--001a11345c0c41c6e3052e26c598
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 March 2016 at 08:56, Mark T <span dir=3D"ltr">&lt;<a href=3D"mailto:m=
tl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>I&#39;d like to be able to do=
 the following<br><br>IMAGE_INSTALL_append +=3D &quot;package_a&quot;<br>if=
 ( not qemu )<br>IMAGE_INSTALL_append +=3D &quot;package_b&quot;<br></div>e=
ndif <br><div><div></div></div></blockquote></div><br>The neater way would =
be if you can easily identify what &quot;not qemu&quot; is, for example:</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">IMAGE_IN=
STALL_append_intel-corei7-64 =3D &quot;package_b&quot;</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Would install package_b on=
ly for intel-corei7-64 machines.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">If you want to support arbitrary machines but no=
t qemu then something like this might work:</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">MOREDEPS =3D &quot;package_b&quot;</d=
iv><div class=3D"gmail_extra">MOREDEPS_qemuall =3D &quot;&quot;</div><div c=
lass=3D"gmail_extra">IMAGE_INSTALL_append =3D &quot; ${MOREDEPS}&quot;</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(qemuall i=
s an override that is enabled by all qemu machines)</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11345c0c41c6e3052e26c598--
