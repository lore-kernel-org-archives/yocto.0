Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 481C5E00B45; Thu, 10 Dec 2015 13:57:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D621E0071A
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:57:13 -0800 (PST)
Received: by iouu10 with SMTP id u10so109623941iou.0
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=d6OkPch5U8kk36HktvB/l7QukJfsxoQNFp++TmSMAVM=;
	b=bLkvMrQrJz8iZ0kCnsz0k98XgaI3ZU8WMB7AKjkXQJHU8C1P5L9pqin7etkSK3xCIk
	APZCJNwV3d18WLIDfBiA5gqjelI8jIdNUZIYmsk7YFgMVVpjgeD4j9IBadQ42+lu+JGm
	n5l+7uc76loCO1lCUrLITEQcbGTjmoKLHc/OaL/7tWD+z3F00z3wFcUvS52Y7Nseextr
	mGv10jZqnM4zz5WgSEMu6wxBTogwB3BZYwITW8oKK3hMqsb2zZ7h3gx+dc+NfyDeDnEC
	PZ2XVdeK/xJbuYUis+1ai4vgE2TjjwvnweUPdc8Cj0cbCawEze11l5nFG0EBJyo74l4N
	3mhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=d6OkPch5U8kk36HktvB/l7QukJfsxoQNFp++TmSMAVM=;
	b=YEJDDKi0FEq97MiEwQeHAt5/YSvLtGJinlN7ngiydoCEXqGPH5f72pQsLrdXcGDwH3
	uGJ9jUc4JpUaYrn2oWC3H2MHrNPMdF7QFmlVzob9M6Ssif6aqNyP5McL1HVoGI1ULUQi
	tZ/zAcpyEr95hxkWPTgBDAPAIy7xRwXjnFIt377H5lNrlyqbAPNUJs74tUTwzOlHNSWC
	23zWfSjxSTzDjPSFzuDJHtEa5Xt1DI9uNK56pmq7rE5nSuOizikUagX1EKf4OdkAJRvC
	XtNipchWWJUA4xRxTt1jBzW5rOSB0izSRx0LUHU8ncUDRwNIfFEJirxOUm772Mpwcu8o
	yrZA==
X-Gm-Message-State: ALoCoQnavBMfSpUIPXsqvFovb16Khi44ndWSp5I2brvby/UYBt0GFhZdKtUu+ZxSd9gVr1ltoJxHvlzmjwk2zX1A6FB5IK7NXrK4Q7pIr2Aw4KpH8NjMZtE=
X-Received: by 10.107.130.155 with SMTP id m27mr15255783ioi.133.1449784633486; 
	Thu, 10 Dec 2015 13:57:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Thu, 10 Dec 2015 13:56:54 -0800 (PST)
In-Reply-To: <094B1FB387EB1E4FBF933EEB0EFA3A0B5BE0F2CA@vistrex3.vi.vector.int>
References: <094B1FB387EB1E4FBF933EEB0EFA3A0B5BE0F2CA@vistrex3.vi.vector.int>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 Dec 2015 21:56:54 +0000
Message-ID: <CAJTo0LY1=5wUJp+K=V6iV5w==jrHvfrUsDwE5-h=NdJDVfDAKA@mail.gmail.com>
To: "Philipp, Damian" <Damian.Philipp@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Select make target for cmake
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
X-List-Received-Date: Thu, 10 Dec 2015 21:57:15 -0000
Content-Type: multipart/alternative; boundary=001a113ecd9414839c0526924ac1

--001a113ecd9414839c0526924ac1
Content-Type: text/plain; charset=UTF-8

On 10 December 2015 at 17:24, Philipp, Damian <Damian.Philipp@vector.com>
wrote:

> A Google search didn't turn up anything, so I looked through
> cmake.bbclass, autotools.bbclass and base.bbclass. The source indicated
> that the variable EXTRA_OEMAKE could be abused to inject a make target -
> however, setting EXTRA_OEMAKE = "server" in my recipe did *not* exclude the
> client binaries from the resulting image. In any case, I would prefer a
> clean solution over abusing implementation details.


A clearer way would be to do:

do_compile() {
    oe_runmake server
}

It's possible that the compile phase is building just the server, but then
install is building and installing everything.

Ross

--001a113ecd9414839c0526924ac1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 December 2015 at 17:24, Philipp, Damian <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Damian.Philipp@vector.com" target=3D"_blank">Damian.Philipp@vect=
or.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">A Google sea=
rch didn&#39;t turn up anything, so I looked through cmake.bbclass, autotoo=
ls.bbclass and base.bbclass. The source indicated that the variable EXTRA_O=
EMAKE could be abused to inject a make target - however, setting EXTRA_OEMA=
KE =3D &quot;server&quot; in my recipe did *not* exclude the client binarie=
s from the resulting image. In any case, I would prefer a clean solution ov=
er abusing implementation details.</blockquote></div><br>A clearer way woul=
d be to do:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">do_compile() {</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 oe_runma=
ke server</div><div class=3D"gmail_extra">}</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">It&#39;s possible that the compile ph=
ase is building just the server, but then install is building and installin=
g everything.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--001a113ecd9414839c0526924ac1--
