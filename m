Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB3B8E00D8E; Thu, 12 Jul 2018 15:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11DD6E00972
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 15:12:25 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id v71-v6so8934341itb.3
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 15:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/y4xYWO+OuBn7nFyWGXn4hOEWWL1zczTsi2Opn7kC0M=;
	b=hVIjRxTONlbdNjwHqSVczEtdJDF0VChCRqzLXAKZ7sILMcg8qLt8Yt/E2F4rBHqlKS
	AuCAQlOQFj07JKNPhrnmiDd8XlNcObkC9OAVb9eXt3tom+b9EcIHF7yWp1BjNrXTjqST
	5AQpI0lsE8rFxK8FDWUWYgDZorOkbjk6IFukimzZbK6cUH2mfqfypphbVBY+G8NQekmh
	ADLYNKgYw9SK9eDtut7kZTISlYhQGYRtT9IyPhNRTMo3Qqx/eowbE+sdoxpcL/2Z+PCR
	7fLIG/TaaUWbE+jaj+2cX74WczHc8uU/94lKreFHLJNE5GQODS8vxQejMqoFABdB7C1i
	I1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/y4xYWO+OuBn7nFyWGXn4hOEWWL1zczTsi2Opn7kC0M=;
	b=cmzDG5zFHrE3AElr0SUPTxBnY576gCtaO4QzW/qxNT1f/x9WsLLSZlC1FOyVRFpJb6
	A+Kp9NtJYX8XBiImiExfljhFTvzLYDS0Uy2+2fId/W2v7J8p72R4HrpHN71FAW02I/3K
	pc5AsYuEl2K1/0KiSVSwH3oFq7pKjKxFumu7E3ndQuqL7p5YJmv78CbTLE1epbLGBjLD
	x1ryTYkEuLc0qrGPO9x0V1JSaoFpl8jaUD+8c9TuKY3OGK+eZX4achAc98wpSVyAA8+H
	o/gPQyDcWLIhuqEYXzV88FHlDeKx2wOZsFfy1VEl0uR1r5tbAPYQhN30Ld+ap0tNMm6f
	O2Eg==
X-Gm-Message-State: AOUpUlH7isAKCarTUAu8AyacCrHssajyWXggjBB3KZ7sXJL9rumwCOVY
	jACanl+3rX8CWYo4KXaE5oKak9M7MGV+bwEh674=
X-Google-Smtp-Source: AAOMgpeS2ccypbIKvINfbYaZJ2WGhqYq+n4xtbuoR+SA049ymTSZUrSV+pmqXaE23lIaoQU26GPO1FIDEorHTKK72IQ=
X-Received: by 2002:a24:89c3:: with SMTP id
	s186-v6mr2750925itd.122.1531433545523; 
	Thu, 12 Jul 2018 15:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
	<CAJTo0Lauvt-utgGQ8B++ytRt_UcRaUrRitv39WZ+mHCT14q6Mw@mail.gmail.com>
In-Reply-To: <CAJTo0Lauvt-utgGQ8B++ytRt_UcRaUrRitv39WZ+mHCT14q6Mw@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 12 Jul 2018 18:12:13 -0400
Message-ID: <CAFzUWG=hRfY9J0z1j-cy20pegF2iSKXbQb+vRrGUhtSGLYMPdw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Writing a recipe that allows for extra depends, depending on the extra_oemake configurations
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
X-List-Received-Date: Thu, 12 Jul 2018 22:12:28 -0000
Content-Type: multipart/alternative; boundary="0000000000007a6b0a0570d4a8b1"

--0000000000007a6b0a0570d4a8b1
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Thanks. I saw that but the documentation doesn't explicitly mentioned
EXTRA_OEMAKE. Is that the same as EXTRA_OECONF?

Giordon

On Thu, Jul 12, 2018 at 5:08 PM Burton, Ross <ross.burton@intel.com> wrote:

> > I'm wondering how I can make it so that I can have a user allow for
> > additional configuration to enable crypto/krb5 which requires extra
> depends
> > and changing the oemake flags. Is this something Yocto can do, or is it
> > better to have users provide a bbappend file to update this recipe?
>
> Yes, PACKAGECONFIG is exactly what you want.
>
>
> https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PACKAGECONFIG
>
> Ross
>
-- 
Giordon Stark

--0000000000007a6b0a0570d4a8b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div>Thanks. I saw that but the doc=
umentation doesn&#39;t explicitly mentioned EXTRA_OEMAKE. Is that the same =
as EXTRA_OECONF?</div><div><br></div><div>Giordon</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jul 12, 2018 at 5:08 PM Burton, R=
oss &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">&gt; I&#39;m wondering h=
ow I can make it so that I can have a user allow for<br>
&gt; additional configuration to enable crypto/krb5 which requires extra de=
pends<br>
&gt; and changing the oemake flags. Is this something Yocto can do, or is i=
t<br>
&gt; better to have users provide a bbappend file to update this recipe?<br=
>
<br>
Yes, PACKAGECONFIG is exactly what you want.<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.ht=
ml#var-PACKAGECONFIG" rel=3D"noreferrer" target=3D"_blank">https://www.yoct=
oproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PACKAGECONFIG</a><br=
>
<br>
Ross<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--0000000000007a6b0a0570d4a8b1--
