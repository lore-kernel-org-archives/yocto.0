Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 276F0E00D79; Wed, 27 Apr 2016 00:41:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 000FAE00D72
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 00:41:35 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id g8so37856942igr.0
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 00:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+pTqsX6fVQ165JcbR5CMMRT1EQP4cdoeRQ1K5bnOsJs=;
	b=nGuxnQJvzBMe1dIQthGgtO5P4ksHt01hv2c5poQR4/jGnkuP2e4biKwY2B1qGR9sYe
	HZfERjH7F94ONbJ74WCxuwqh8+JMeFG/Edpbi2YiLD4PyhED+FqSCo6UTHP3K+jmQMD+
	RyXF6ZNkWcBYcRsaEsjbHdQuJbUbKfaw03fT7Haa1z0FW/AfOMCHjPm1Jw052nR9Qirg
	EF1VRfvlGa6sFNzNOz6PTIEU3YOy1gyCfJ50UA75g7ihvj9tD+AjQEk5kSwUNEpRC+re
	2huSqXa5E7OXgcHyRd7VYeJwPhwcQugs1UU2HJpaOGvlEQEIAteRISiWoyh4zCbVxmx4
	0UGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+pTqsX6fVQ165JcbR5CMMRT1EQP4cdoeRQ1K5bnOsJs=;
	b=PPVxPTcoMhQ7E3gDuSq2zNOHRD5OjbmLBd97+rgfU7eKiwg37Ayj8oZyvo+XZFcGHt
	oTr5GVJdJLk4Yo01MInWSkKukXxgpu+Koojxwetp56dmInVq+bnG0siacLTN1mTOAeOF
	zXVczY7GeUCfAMnnVml7YBvngrfd6JjeUTy6j6vcP0NFZ8/igpHXfHe+CtTLx+46s9rC
	Nn0ME2Fnh4w+Gg3xqfMraCCpIC2pIx1RZ3zkpzeau5Er0uV3gdGvBj0hSiI13m17QI9b
	JU13IPWxHVjedR25jk5Caii1flNPwdXsy6FW4kcp4uk2T/Pf75EdQt0Qtzul0S7ISacF
	mmqQ==
X-Gm-Message-State: AOPr4FUb7kRI7Mt1F0h0pSxDgQmi945uKqzVT9cGu8VBrXnOZahZx8ryxDErdks656R7JupoM1H+7OEpLRmpuDJ1
X-Received: by 10.50.160.41 with SMTP id xh9mr8435156igb.64.1461742893775;
	Wed, 27 Apr 2016 00:41:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 00:41:14 -0700 (PDT)
In-Reply-To: <DUB130-W61B8E41D400E4ACF8EF600DA640@phx.gbl>
References: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>
	<DUB130-W61B8E41D400E4ACF8EF600DA640@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 08:41:14 +0100
Message-ID: <CAJTo0LZGEfN68QJog53DSjsyQ7p-1FBa6MJot6nZCwt=C8ZG3w@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Errors with new recipe for pjproject (autotools/pkgconfig)
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
X-List-Received-Date: Wed, 27 Apr 2016 07:41:41 -0000
Content-Type: multipart/alternative; boundary=001a11380a16efd89a0531728924

--001a11380a16efd89a0531728924
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 07:27, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> Aside from the issues I mentioned previously, pjproject is detecting
> cross-compilation and this causes it to append '-x86_64-poky-linux-gnu' to
> all its library names.
>
> This is then breaking autotools configuration in other recipes that are
> testing for the base name.
>
> Is it common for a build process to differentiate cross compiled libraries
> like this?  Is there a preferred way to deal with it?
>

No, that's rather unusual.  Typically you'd just have a different libdir
per architecture.

Ross

--001a11380a16efd89a0531728924
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 April 2016 at 07:27, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D=
"mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">Aside from the issues I mentioned previously, pjproject is detecting cr=
oss-compilation and this causes it to append &#39;-x86_64-poky-linux-gnu&#3=
9; to all its library names.<div><br></div><div>This is then breaking autot=
ools configuration in other recipes that are testing for the base name.</di=
v><div><br></div><div>Is it common for a build process to differentiate cro=
ss compiled libraries like this?=C2=A0 Is there a preferred way to deal wit=
h it?</div><div></div></div></blockquote></div><br>No, that&#39;s rather un=
usual.=C2=A0 Typically you&#39;d just have a different libdir per architect=
ure.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a11380a16efd89a0531728924--
