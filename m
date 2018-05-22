Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29301E008D2; Tue, 22 May 2018 04:26:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA15E0084E
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 04:26:15 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id y189-v6so24785805itb.2
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 04:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CQj52eoymJ8CPSAiK1tVz2MjTkw7rsKWcNVcJIH/Wi4=;
	b=twPO3ryuuCVqdMMzVI8E4iNwEFuVLKxUFx60lUkivaP+Pv4pXgR4yBR+BYJRH5FID6
	EbL05fAUhRi6ROSpjdupmehHBQMsp5TkN2qG4EOWJi5RqK7XGMhzBbi2kRCVAmLAC+Vu
	xbAKoX69fl35kuedZJK/is6rCM2DzBd3AAM0V/D63j1XOwXhUeDLMCHIaVygRG9gqWnn
	KZZRmlL3vBTIziBlAa+JipD9pZMukxDkhnj6s4qa2AyPAvn08ERhkzi5cAAhQjbb6son
	2xv84pf0qpRLCvKYphpZrnnDZiwtTQOqZf+u/KD1NSwA6XvYBSaiA9tr0MwMVjqnN/Tv
	C/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CQj52eoymJ8CPSAiK1tVz2MjTkw7rsKWcNVcJIH/Wi4=;
	b=CCwcMAWx46KOVWt20Pgc3z4z8Rnn6lflaHyE6EqoLyRw+jO5wgVK4h5P8K0Jb1E/jR
	16RUXEhkI6MMhl3hz/JhO8gNXBPLyJF+0kgVG8s24seMUXpl2urtv4doLmI+nrFZVoeX
	VBSyJcvpa6PQP6ixMHOPbTAsVtxi2ewUuOyoO/RLMo3N+0eBuWyyLhpXYWogxhaIjQa5
	HYppc375U0YcoY/Z+HCI6xNV609Pjx5GOj1amRKy4WIX7U9WQYunhNnH+8S6ux56WL2o
	fygn5poycNeP2j9PPKQTW30UXCpVpb2fVqAuIdsD+t9Gf9dqfBKcEcjvIpy3njhxHloa
	jWwA==
X-Gm-Message-State: ALKqPwfeHNEWi3ds7LUPZri/aQWn8rcuOKVrs/Ga+IeHv9nWwkXah/ck
	5CK/RAHIbDmGuT9wuONyHc79amEClogTpUQe5A==
X-Google-Smtp-Source: ADUXVKJDmgrdxbXpvVfrt2zTxIakwgsh1egGjIklsAxBSPhZNuTqfkizSAgdDgxBacisf1xpIP/5efjiFhnvNsvOCSQ=
X-Received: by 2002:a24:f885:: with SMTP id
	a127-v6mr787764ith.29.1526988374928; 
	Tue, 22 May 2018 04:26:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:7a4d:0:0:0:0:0 with HTTP; Tue, 22 May 2018 04:26:14
	-0700 (PDT)
In-Reply-To: <CAJTo0LYG3EDTwTPHEn2qOTpURPdJpG-E5dQst1BzWi6=wN-N7g@mail.gmail.com>
References: <CA+FhBv_pki=SYi3V4OXCn65Hgph6R=y3tphsJLFeVocQKLV6hw@mail.gmail.com>
	<CAJTo0LYdi-cXJY6aNoNqVy0+o+EtjfEX-=Cg6RampP3QB7C6UQ@mail.gmail.com>
	<CA+FhBv-Usqs5A-nVGe2pV2YzFmVhebXL7uLZiqUybY_nDuyXgQ@mail.gmail.com>
	<CAJTo0LYG3EDTwTPHEn2qOTpURPdJpG-E5dQst1BzWi6=wN-N7g@mail.gmail.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Tue, 22 May 2018 14:26:14 +0300
Message-ID: <CA+FhBv8Pc1Jtcz6khywYW4JR3G9eZK1zxnsWPry4pYbXBpTLaw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native recipe question
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
X-List-Received-Date: Tue, 22 May 2018 11:26:16 -0000
Content-Type: multipart/alternative; boundary="000000000000aa057b056cc9afe3"

--000000000000aa057b056cc9afe3
Content-Type: text/plain; charset="UTF-8"

OK I got it now. Thanks!

On Tue, May 22, 2018 at 2:00 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 22 May 2018 at 11:56, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
> > The recipe builds. When I try using with  DEPENDS += "arrayfire-native"
> in
> > the arrayfire recipe I get this warning:
> > WARNING: arrayfire-3.6.0-r0 do_prepare_recipe_sysroot: Manifest
> > /home/damien/pyro/build-jetson-tx2/tmp/sstate-control/
> manifest-x86_64-arrayfire-native.populate_sysroot
> > not found?
>
> Don't call the recipe arrayfire-native and then BBCLASSEXTEND=native,
> as you'll end up with a non-native arrayfile-native and a native
> arrayfire-native-native...
>
> Either have a minimal arrayfire-native recipe which inherits native
> and just builds the piece you want, or do the prepend in the recipe as
> I said.
>
> Ross
>

--000000000000aa057b056cc9afe3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK I got it now. Thanks!</div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Tue, May 22, 2018 at 2:00 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><span class=3D"">On 22 May 2018 at 11:56, Damien LEFEVRE &lt;<a h=
ref=3D"mailto:lefevre.da@gmail.com">lefevre.da@gmail.com</a>&gt; wrote:<br>
&gt; The recipe builds. When I try using with=C2=A0 DEPENDS +=3D &quot;arra=
yfire-native&quot; in<br>
&gt; the arrayfire recipe I get this warning:<br>
&gt; WARNING: arrayfire-3.6.0-r0 do_prepare_recipe_sysroot: Manifest<br>
&gt; /home/damien/pyro/build-<wbr>jetson-tx2/tmp/sstate-control/<wbr>manife=
st-x86_64-arrayfire-<wbr>native.populate_sysroot<br>
&gt; not found?<br>
<br>
</span>Don&#39;t call the recipe arrayfire-native and then BBCLASSEXTEND=3D=
native,<br>
as you&#39;ll end up with a non-native arrayfile-native and a native<br>
arrayfire-native-native...<br>
<br>
Either have a minimal arrayfire-native recipe which inherits native<br>
and just builds the piece you want, or do the prepend in the recipe as<br>
I said.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--000000000000aa057b056cc9afe3--
