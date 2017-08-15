Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D294EE00CF1; Tue, 15 Aug 2017 02:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8485AE00C7B
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 02:20:17 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id f9so1201789uaf.4
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 02:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GAj3Zc4KGmHlwyi9n3AS0X4Ufv/QHhrzdf3KIT81oeo=;
	b=YsAiTYh/cq6om2oh+eQNZbBweR/DzqykGwS9Fyg8CTh3ZBzkTDir1BSMVITp7ZI28H
	9YUpl0rp8lKq1VUhepclgmnuIDr5K5hD85GBMzpgt+CYmC9KCN0uLtpnAoqUthWt9lm6
	A/n4IR41/+C+x5RVYtKPGP7JBzcbhvIgb7njPJV6JW2HX371oUlwTYLI6uHabtzJBjKe
	NbytVbNQ7RHMqlgcxM6kVrAl1n3Tcu7Xf0EJ4aBgiw2upxvaZLde/F0SExOHPJfTACJL
	EPGZ8ja/p+z3Cgk05F4e+DKHpgBQUzJKndm4nj1VvZ0Xef3QYcoweKEgVuOe0u33wfEx
	5JzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GAj3Zc4KGmHlwyi9n3AS0X4Ufv/QHhrzdf3KIT81oeo=;
	b=Yp/hzUxwh3Lx8ddAP936mP3oJrurmqjbIXHSgKjQgVF/YqGsrem0VlvOL1B3y3ydg1
	XYODxfDcvlgce84dyRhlGY74daIWSP+peUgg0s+eAm4vOsYsuKW+VddCWLjoJR0T/ie0
	6OE8n4grm6PQovoXTYEOEMwDRcEv+pk84+V0J+famO6IedKtOC8jnaZxNsn9EaY8dRSN
	RpaHAKpNIS6X2heh9czF2+FtGeZVfWfn269PkfTTUXdeGEjJD2WX/6qr0A7ELyUgg/QS
	DM/s5t72vVZVbHH29yo/lwOoVgLEkQHNoTi4D+1G0ETAiGSZfGOUalkt278Zzhug5zHP
	izTA==
X-Gm-Message-State: AHYfb5iHMTSvTB9JkKF8RzxIOBzleeTmlo4pzsxXBRLm0+ya9IlM/Uct
	QtL83r0JJy0PsA2U+8eS5sxJOXNaIw==
X-Received: by 10.176.71.213 with SMTP id w21mr18745814uac.14.1502788816745;
	Tue, 15 Aug 2017 02:20:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.122.88 with HTTP; Tue, 15 Aug 2017 02:20:16 -0700 (PDT)
In-Reply-To: <CAMKF1sq9gu9fHDARcYkwH36ZBp_9OtaF_FfDHLz5CyThdvxq-A@mail.gmail.com>
References: <a94a076e-50a3-bf78-e628-15128682128f@gmail.com>
	<CAMKF1sq9gu9fHDARcYkwH36ZBp_9OtaF_FfDHLz5CyThdvxq-A@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 15 Aug 2017 11:20:16 +0200
Message-ID: <CA+chaQdZXaBg+ykJCHH+9gcW6gmze3VL_ifHBHokj8TBhb+8NQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Riko <antonius.riko@gmail.com>, "N:" <yocto@yoctoproject.org>
Subject: Re: How can I use PREFERRED_VERSION_ ?
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
X-List-Received-Date: Tue, 15 Aug 2017 09:20:17 -0000
Content-Type: multipart/alternative; boundary="f4030437a0a09839900556c749f5"

--f4030437a0a09839900556c749f5
Content-Type: text/plain; charset="UTF-8"

and you should start by not including 2 different versions of
openembedded-core/meta in your builds.

Then you won't need PREFERRED_VERSION for openssl and the issue with
wic.vmdk you reported elsewhere will also probably disappear.

On Tue, Aug 15, 2017 at 7:31 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Aug 14, 2017 at 7:15 PM, Riko <antonius.riko@gmail.com> wrote:
> > Dear Yocto Team Members,
> >
> > How can I use PREFERRED_VERSION_ ?
> >
> >
>
> read through
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-
> manual.html#var-PREFERRED_VERSION
>
> > ERROR: Multiple versions of openssl are due to be built
> > (/home/bianchi/poky/openembedded-core/meta/recipes-connectivity/openssl/
> openssl_1.1.0f.bb
> > /home/bianchi/poky/meta/recipes-connectivity/openssl/openssl_1.0.2k.bb).
> > Only one version of a given PN should be built in any given build. You
> > likely need to set PREFERRED_VERSION_openssl to select the correct
> version
> > or don't depend on multiple versions.
> >
> >
> > Regards,
> >
> > Riko
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f4030437a0a09839900556c749f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">and you should start by not including 2 different versions=
 of openembedded-core/meta in your builds.<div><br></div><div>Then you won&=
#39;t need PREFERRED_VERSION for openssl and the issue with wic.vmdk you re=
ported elsewhere will also probably disappear.</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Tue, Aug 15, 2017 at 7:31 AM, K=
hem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Mon, Aug 14, 2017 at 7:15 PM, Riko &lt;<a=
 href=3D"mailto:antonius.riko@gmail.com">antonius.riko@gmail.com</a>&gt; wr=
ote:<br>
&gt; Dear Yocto Team Members,<br>
&gt;<br>
&gt; How can I use PREFERRED_VERSION_ ?<br>
&gt;<br>
&gt;<br>
<br>
</span>read through<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#var-PREFERRED_VERSION" rel=3D"noreferrer" target=3D"_blank">http://www.y=
octoproject.org/<wbr>docs/latest/ref-manual/ref-<wbr>manual.html#var-PREFER=
RED_<wbr>VERSION</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; ERROR: Multiple versions of openssl are due to be built<br>
&gt; (/home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-connectiv=
ity/openssl/<a href=3D"http://openssl_1.1.0f.bb" rel=3D"noreferrer" target=
=3D"_blank">o<wbr>penssl_1.1.0f.bb</a><br>
&gt; /home/bianchi/poky/meta/<wbr>recipes-connectivity/openssl/<a href=3D"h=
ttp://openssl_1.0.2k.bb" rel=3D"noreferrer" target=3D"_blank">o<wbr>penssl_=
1.0.2k.bb</a>).<br>
&gt; Only one version of a given PN should be built in any given build. You=
<br>
&gt; likely need to set PREFERRED_VERSION_openssl to select the correct ver=
sion<br>
&gt; or don&#39;t depend on multiple versions.<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Riko<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--f4030437a0a09839900556c749f5--
