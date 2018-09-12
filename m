Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D95D5E006C7; Wed, 12 Sep 2018 12:56:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16FEDE0053F
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 12:56:29 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id k12-v6so6212054oiw.8
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 12:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=L6LQ2Wp/7BMxe0s3nSS9k0TsCq98XrizFZT6u2PW5ac=;
	b=A0kxoHeQuYomaGtvPdWzMks+zSJNcCvJ9YZ+mzB3BeJ7GwreHsuJvUjqF4o8F9qOjW
	nOe+2V5reD4kMCmI3/WhzKb5FWtloXRzxvVgxuTXTradcZbqO0qwz1RawP06F2G5O8X7
	afSPM//Q3t/XRYpRxD0hQPRmTFJ7O01hgKkiS+DEaXwi0388GJCPCMcbvDwuxr+zOlGg
	o9GTz54EFg+B2Uz/dG8OzAqQfgeZlcHW4vlFaQj9k1BnbwiELNEio7VlhK8H6HswghkJ
	nIJUMUaFup/ZrW4+YVBKM02py4/mVphF2lZH8kY26PSuwS0/4FRToYpJwRpkYpdm8VHO
	jSow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=L6LQ2Wp/7BMxe0s3nSS9k0TsCq98XrizFZT6u2PW5ac=;
	b=rUALXoiWQ4MFmzk/gsXhdNsHMkyQW371eaUsvFLt5yMu/UcdSc5vKCph34ryZTa8QK
	HLxPkemCovFhjuHB6oNbHQu1GtNL4YKxN/kjgbw5m1SUiYnegHRkqLLlGtL+9hEoJK5U
	mJ8SLoVIaFzG4b2K8tZytgI15u1V3o1sSfslKePo+PtEYQ/oo/LJnO1B/0RfAp25endt
	XfHagWulUStRt1J1MBXHQG+LTzJ+br/8fnxzT9VanDVbclkHBhnaWRv58GFAvJRxouw/
	tzG5LdOG4ny+XKp/tJlU7NVUj667op8LLxqYryYSjyBZzDpO19/e4qBxng1UhRkrHG2U
	f0Mg==
X-Gm-Message-State: APzg51BkYYIwQYWmfXXU/sZA4btr58Q7lAl9v20wdWaAYPJwRv0ZBtjp
	5WlCnLUoasN+wiVrqXQ1dXmzB+0zhR91PcvSgxxg3g==
X-Google-Smtp-Source: ANB0VdahH9DDHuGJf1wj98EcXvk6LcTImOiYdDcBlMYXUbPEQX5rbGEq3CVc09pTwYX35EU8l/7gA4ahvdKNXd7lurM=
X-Received: by 2002:aca:6cd5:: with SMTP id
	h204-v6mr3576986oic.140.1536782189507; 
	Wed, 12 Sep 2018 12:56:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7ac:0:0:0:0:0 with HTTP;
	Wed, 12 Sep 2018 12:56:08 -0700 (PDT)
In-Reply-To: <VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Sep 2018 20:56:08 +0100
Message-ID: <CAJTo0LaGN05veUbuoZpP5SpfMETcjOGtazPB688+bwuwM+hyHg@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: allarch class used in autoconf-archive recipe
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
X-List-Received-Date: Wed, 12 Sep 2018 19:56:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The autoconf-archive contents - by virtue of just being m4 scripts -
do not change per tune, so the allarch warning is irrelevant.

Ross

On 12 September 2018 at 14:15, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Hi,
>
> myself grabbed autoconf-archive recipe from
>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools=
/autoconf-archive/autoconf-archive_2018.03.13.bb
>
> to build and install autoconf archive for building user-space app.
> autoconf-archive package builds in Jethro,
>
> as the YP release used here is, without problems even if grabbed from
> release later than Jethro.
>
> That recipe inherits =E2=80=98allarch=E2=80=99 class.
>
>
>
> If to review Jethro Reference Manual following note can be found reg.
> =E2=80=98allarch=E2=80=99 class usage:
>
>
>
> =E2=80=9CUnlike some distro recipes (e.g. Debian), OpenEmbedded recipes t=
hat produce
> packages that depend on tunings
>
> through use of the RDEPENDS and TUNE_PKGARCH variables, should never be
> configured for all architectures using allarch.
>
> This is the case even if the recipes do not produce architecture-specific
> output.
>
>
>
> Configuring such recipes for all architectures causes the do_package_writ=
e_*
> tasks to have different signatures
>
> for the machines with different tunings. Additionally, unnecessary rebuil=
ds
> occur every time
>
> an image for a different MACHINE is built even when the recipe never
> changes.=E2=80=9D
>
>
>
> Same note is to be found on reference manual=E2=80=99s master branch.
>
>
>
> Few questions arise from that:
>
> 1. What might be best solution to the discrepancy =E2=80=9Cnot recommende=
d to use
> vs. used in OE-recipe=E2=80=9D; to drop this inheritance?
>
> 2. How might recipe=E2=80=99s past change-flow resulting in recipe=E2=80=
=99s current version
> to inherit =E2=80=98allarch=E2=80=99 class look like?
>
> ________________________________
> This message and any attachments are intended solely for the addressees a=
nd
> may contain confidential information. Any unauthorized use or disclosure,
> either whole or partial, is prohibited.
> E-mails are susceptible to alteration. Our company shall not be liable fo=
r
> the message if altered, changed or falsified. If you are not the intended
> recipient of this message, please delete it and notify the sender.
> Although all reasonable efforts have been made to keep this transmission
> free from viruses, the sender will not be liable for damages caused by a
> transmitted virus.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

