Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17AB4E00A93; Sun,  4 Aug 2019 13:25:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C39CE00A00
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2019 13:25:05 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id y8so35617769plr.12
	for <yocto@yoctoproject.org>; Sun, 04 Aug 2019 13:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=aAT32TY6FpZRU9M1F6+c82JK4nH6NWO6m7uRSFf2R0I=;
	b=IaokKyLVsUXPL3C/sFuhKy3OKyhpyZ5eU4SwYAB+wENJscSnn76UnaJ4MdzThRuZ/n
	CTgNYRhE+UGqT4hLjlCZC69ILHoPLhG26+873NGaCjBb7T1q82r9QvWAjmkD31yiAQoM
	gSd7VA27SGFwJ7g8rc/YOXOX8fbEkBf4oWgQzfIgN8DU3iRiXeiOUJjZM/VTLvSGlbM4
	Bpr4fxTF8uoUoE5Os5PFbBVMzS7bPIVH0Q70KU7wpjkbAckk5CrMqdsH2PdKJyjIf38q
	KV5Cznk4SYa3GG0aTuYRVJLmY8P/l7nKapgs5T7l6LIPoK1UuJjg1He9cOCqCzuctOk1
	p42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=aAT32TY6FpZRU9M1F6+c82JK4nH6NWO6m7uRSFf2R0I=;
	b=X/dz+c9FvBPvNkZan8JhqQmCnAY5uLaGX+4ErO+x6dd/2m/61vMrClZe95a3ST/f9+
	wnqaGVwy6Xj3gXvAvp4zC3dHn92WufA7PhUIzjWzUuJq8D3ha7xd441fps14wlvd5AHN
	5wrd1J9pNv8JS+Abm9quxmenwSYxo28PTdo8sB1AxZhJ8f2FsTZ6OIOXn9ZldCDYYUSn
	OSb24CW9C1qdylYobdquPmoq9ge8pNpUJCH/O8GjOu+uHR9bBs+uFglcUyfBkVLBp5Lg
	PdL4gdo9jmNQL9k0ebuoQ2ZD4sydcMQFjD4Subj0HRgKjy/NwKPF2FdfcJkHdblgoBS2
	cBkA==
X-Gm-Message-State: APjAAAU6SqG+LLNZZgdmOVOSPRSf3HsUYpNGbhGVMxGL9Pwbmdpi9qFm
	Z1NhlG/66mbcoC9Qoc9ZmQfZkaR1bE8fqryMwe0=
X-Google-Smtp-Source: APXvYqybhisaMtMI02cy6ZiuzL2bQB9Ss0SxUDXcSSuCNq/IbsoxwUuziiYOGOFXVMZexS2jxiUhGlKhh5SjcvgtNJQ=
X-Received: by 2002:a17:902:900a:: with SMTP id
	a10mr27500052plp.281.1564950305558; 
	Sun, 04 Aug 2019 13:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190728153150.9438-1-dbaryshkov@gmail.com>
	<20190728153150.9438-2-dbaryshkov@gmail.com>
	<1ba0a774-2ad2-94a0-24cf-1ed3964f2948@gmail.com>
In-Reply-To: <1ba0a774-2ad2-94a0-24cf-1ed3964f2948@gmail.com>
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
Date: Sun, 4 Aug 2019 23:24:53 +0300
Message-ID: <CALT56yPm96ZCC9QX1c=sJLkhRVS8AZDEdygw2zbY3FByqMPRiw@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security 2/3] kernel-modsign.bbclass: add support for kernel modules signing
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
X-List-Received-Date: Sun, 04 Aug 2019 20:25:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=81, 4 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 18:30, akuster808 <=
akuster808@gmail.com>:
> On 7/28/19 8:31 AM, Dmitry Eremin-Solenikov wrote:
> > From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
> >
> > Add bbclass responsible for handling signing of kernel modules.
> >
> > Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.=
com>
> > ---
> >  meta-integrity/classes/kernel-modsign.bbclass | 29 +++++++++++++++++++
> >  .../data/debug-keys/privkey_modsign.pem       | 28 ++++++++++++++++++
> >  .../data/debug-keys/x509_modsign.crt          | 22 ++++++++++++++
> >  3 files changed, 79 insertions(+)
> >  create mode 100644 meta-integrity/classes/kernel-modsign.bbclass
> >  create mode 100644 meta-integrity/data/debug-keys/privkey_modsign.pem
> >  create mode 100644 meta-integrity/data/debug-keys/x509_modsign.crt
> >
> > diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integ=
rity/classes/kernel-modsign.bbclass
> > new file mode 100644
> > index 000000000000..1e4d94b79091
> > --- /dev/null
> > +++ b/meta-integrity/classes/kernel-modsign.bbclass
> > @@ -0,0 +1,29 @@
> > +# No default! Either this or MODSIGN_PRIVKEY/MODSIGN_X509 have to be
> > +# set explicitly in a local.conf before activating kernel-modsign.
> > +# To use the insecure (because public) example keys, use
> > +# MODSIGN_KEY_DIR =3D "${INTEGRITY_BASE}/data/debug-keys"
> > +MODSIGN_KEY_DIR ?=3D "MODSIGN_KEY_DIR_NOT_SET"
> > +
> > +# Private key for modules signing. The default is okay when
> > +# using the example key directory.
> > +MODSIGN_PRIVKEY ?=3D "${MODSIGN_KEY_DIR}/privkey_modsign.pem"
> > +
> > +# Public part of certificates used for modules signing.
> > +# The default is okay when using the example key directory.
> > +MODSIGN_X509 ?=3D "${MODSIGN_KEY_DIR}/x509_modsign.crt"
> > +
> > +# If this class is enabled, disable stripping signatures from modules
> > +INHIBIT_PACKAGE_STRIP =3D "1"
> > +
> > +do_configure_prepend() {
>
> This is being pulled in with every configure task and causing parsing
> issues.
>
> I changed it to "kernel_do_configure_prepend" and that fixed the issue I
> was seeing.

Interesting. I haven't seen this issue. Could you please share any details?

Changed bbclass appears to work for me, so either of them is fine from my
point of view.

> things appear to be still working, Can you double check.

--=20
With best wishes
Dmitry

