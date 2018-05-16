Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D035E00A38; Wed, 16 May 2018 00:04:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 351FDE00A0C
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 00:04:13 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id c3-v6so8512006itj.4
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 00:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3XkMs2+2qq/VMjF+TLBhB/3sPiVJh7Y3V11GHKdOFek=;
	b=Hvk7Cc/d+4l1PVh8O2Ba7efKTF95tUlMXN6ArY4EpuO7sbWnKQTow/X7yATFf2XGrk
	jZ9V6CAFxUFvZ1sUXfun574u5fjk6nDLlUdCzXnsFcRLpEz+xqUwbPWAb5lSZen5AdJg
	KF1HReXSeX4fr9whSmaEMRGbX01PR6VsAfWvgNkkJD9+hHUWp3p/sITuddCfAQXmyL1u
	uLJZtw5lEjW9TGCjGgG9/DUd0AmK6JD11W33+gAxGtjQ2N8PaIGREcjCxaPnQFWnKB/j
	pveivuVL9zAyOor+L52qyTtDqmkKBixIaT0JrkylEOHKXHnoOiu7GuuTnpyMaBm/Ipkc
	qdkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3XkMs2+2qq/VMjF+TLBhB/3sPiVJh7Y3V11GHKdOFek=;
	b=ixzGnLKfusp/KNOv4V4b16ASW5nRNANDojZZUsIyuJ64px1J/7kGDs6KgrnqI5Vx2M
	L/QhR7wqT0e28GP/HkPvVXU1JnoZuLWAJHhAJbIF2u3Kr5KHzga7DLeWGyA+o+2RSGs1
	19sPB+usqNV/IwJK1xiOcuTdGUDymGqYJA1efsZcj7F//sU+prd4hjWcHVZFvpVm7Kqp
	Wb9TEsrm2DlZn9/UFLUbiuFZOM98JUGJbZ3eKuVI/48eu/KaLnwwleZn1LiXs0hL8sOR
	npFFmIvubOFN2JsfOoE+H2qsZc0szE/jvhcEtX47FaoRDyyrRbbWa53iqWXIFWM+O0x4
	J+bw==
X-Gm-Message-State: ALKqPwdfelgEkW5f93Tgon7QbA1wDAiOTnb6jfzP9JmSOo2Lg0MfPXpi
	3yYzfb00jT+97Rl4zzivXg9xFwEyIrYqifLVPg==
X-Google-Smtp-Source: AB8JxZpW6Ibq1H8mG3qTLnUYbwUg1aK93Z6CA76w4NVAAS4yYPmNer47pOremPsCg8v+q/UeikFHNGiDA1XkljcmzFo=
X-Received: by 2002:a24:4a54:: with SMTP id
	k81-v6mr1448074itb.82.1526454253011; 
	Wed, 16 May 2018 00:04:13 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv97PdbD8W32rX67FqAdq2ftoYHW4MAyNbPYe8A9Yvuqbg@mail.gmail.com>
	<dfb6fc91-5e3f-1226-0b1b-f1b942e6955d@windriver.com>
In-Reply-To: <dfb6fc91-5e3f-1226-0b1b-f1b942e6955d@windriver.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Wed, 16 May 2018 10:04:01 +0300
Message-ID: <CA+FhBv9--_QOEmcznUMKUNerj9jJxm3ye7Cc-jF8SwubjE+SRg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: LIC_FILES_CHKSUM: spaces in file names
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
X-List-Received-Date: Wed, 16 May 2018 07:04:15 -0000
Content-Type: multipart/alternative; boundary="00000000000084546b056c4d53f9"

--00000000000084546b056c4d53f9
Content-Type: text/plain; charset="UTF-8"

Thanks Mark it works.

-Damien

On Tue, May 15, 2018, 17:29 Mark Hatle <mark.hatle@windriver.com> wrote:

> On 5/15/18 7:25 AM, Damien LEFEVRE wrote:
> > Hi,
> >
> > I have a base recipe generated with devtool.
> >
> > The package I build has several license files which contain space
> characters in
> > the file names.
> >
> > LIC_FILES_CHKSUM =
> "file://COPYRIGHT.md;md5=b229ca0c79785e9e86311477e7bdd9ea \
> >                                          file://LICENSES/MIT
> > License.txt;md5=3ba96e7848c3cedc5df2d00094a0d0f3 \
> >                                          file://LICENSES/FreeImage Public
> > License.txt;md5=ffcd65468a2d2b3e3e43fbaf63ceedf7 \
> >                                          file://LICENSES/Boost Software
> > License.txt;md5=2c7a3fa82e66676005cd4ee2608fd7d2 \
> >                                          file://LICENSES/zlib-libpng
> > License.txt;md5=09b00738058950409d6955872d715416 \
> >                                          file://LICENSES/OpenSIFT
> > License.txt;md5=7a69fc0ac94076df51f7db9b0c02fe7c \
> >                                          file://LICENSES/ISSL
> > License.txt;md5=1ba0d78ed416760e4a8ef3dc121e69c8"
> >
> > Bitbake fails and seem to break at the first space character
> > LIC_FILES_CHKSUM contains an invalid URL:
> > License.txt;md5=3ba96e7848c3cedc5df2d00094a0d0f3
> >
> > How can I deal with this? Any other options than renaming the files?
> >
> > I tried surrounding with quotes, "\ "using, nothing helps.
>
> I've not tried it, but since these are URIs, did you try %20?
>
> --Mark
>
> > Thanks,
> > -Damien
> >
> >
>
>

--00000000000084546b056c4d53f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thanks Mark it works.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">-Damien<br><br><div class=3D"gmail_quote" dir=3D"auto"=
><div dir=3D"ltr">On Tue, May 15, 2018, 17:29 Mark Hatle &lt;<a href=3D"mai=
lto:mark.hatle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">On 5/15/18 7:25 AM, Damien LEFEVRE wrote=
:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I have a base recipe generated with devtool.<br>
&gt; <br>
&gt; The package I build has several license files which contain space char=
acters in<br>
&gt; the file names.<br>
&gt; <br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://COPYRIGHT.md;md5=3Db229ca0c79785e9e8=
6311477e7bdd9ea \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://LICENSES/MIT<br>
&gt; License.txt;md5=3D3ba96e7848c3cedc5df2d00094a0d0f3 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://LICENSES/FreeImage Public<br>
&gt; License.txt;md5=3Dffcd65468a2d2b3e3e43fbaf63ceedf7 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
=C2=A0file://LICENSES/Boost Software<br>
&gt; License.txt;md5=3D2c7a3fa82e66676005cd4ee2608fd7d2 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://LICENSES/zlib-libpng<br>
&gt; License.txt;md5=3D09b00738058950409d6955872d715416 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://LICENSES/OpenSIFT<br>
&gt; License.txt;md5=3D7a69fc0ac94076df51f7db9b0c02fe7c \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://LICENSES/ISSL<br>
&gt; License.txt;md5=3D1ba0d78ed416760e4a8ef3dc121e69c8&quot;<br>
&gt; <br>
&gt; Bitbake fails and seem to break at the first space character<br>
&gt; LIC_FILES_CHKSUM contains an invalid URL:<br>
&gt; License.txt;md5=3D3ba96e7848c3cedc5df2d00094a0d0f3<br>
&gt; <br>
&gt; How can I deal with this? Any other options than renaming the files?=
=C2=A0<br>
&gt; <br>
&gt; I tried surrounding with quotes, &quot;\ &quot;using, nothing helps.<b=
r>
<br>
I&#39;ve not tried it, but since these are URIs, did you try %20?<br>
<br>
--Mark<br>
<br>
&gt; Thanks,<br>
&gt; -Damien<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div></div></div>

--00000000000084546b056c4d53f9--
