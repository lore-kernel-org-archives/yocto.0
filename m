Return-Path: <ceolin@ulevel.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE68EE011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 18:01:56 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so8399833obh.35
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 18:01:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=37mlPaLpXYL8fScViUF1dPTiG08PcJsLhhF6HB19R9Q=;
	b=kMWYRmHaxspsK36PCQTcOKKO30ryFDaeAfPwZgeRnDbuEPciujKGNusTNu0PfyhLwJ
	ftQWH+x1U55f17zHuIC20u2oE4EXiUyinoAGewbQhG3IlCF5xA3bmf/V8VhIb8S70TzD
	J7AU+/JQ4F5EMumTXlKel+2OAccoKOiWuKv5NYkVl23cQcBg7rs97VaR+luVbevgtT9Z
	Bl72bafmzZ/DD3aH1dUtgXOeeroGWr5iDXdbbU3A6oPa6CBafF5hfBio2KFuhd3r0ISe
	teaGUiuEbP4tmalFVr9evvFWLWwQOUK2QwhkclWmN13L8hBdIkLbspeSg5osgnN9uGYh
	zpsg==
Received: by 10.60.170.76 with SMTP id ak12mr14227792oec.22.1350435715942;
	Tue, 16 Oct 2012 18:01:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.11.5 with HTTP; Tue, 16 Oct 2012 18:01:35 -0700 (PDT)
In-Reply-To: <CALwiqF2MMaFfRLLo9rM_hkzON4cH4b=rW9Npg-rfo4=5vhB8kQ@mail.gmail.com>
References: <CALwiqF2MMaFfRLLo9rM_hkzON4cH4b=rW9Npg-rfo4=5vhB8kQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Fabr=EDcio_Ceolin?= <ceolin@ulevel.com>
Date: Tue, 16 Oct 2012 22:01:35 -0300
Message-ID: <CALwiqF2hgeLgExuRna4a9M27G3ME5kGc=j+HR3-hwoO5AaShkQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQl6sIcNfcTLq7K7BBMtpUIkf6VPQJrRDwsF4ANetlEZcVbsn2Tg4qJtUKnSKdn1moQ3xKkM
Subject: Re: My first recipe: qjson_0.7.1.bb
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Oct 2012 01:01:56 -0000
Content-Type: multipart/alternative; boundary=bcaec54eea5a2408d404cc36d1d9

--bcaec54eea5a2408d404cc36d1d9
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

I solve my problem following this tutorial:
http://cor-net.org/hello-world-in-qt-using-cmake-and-openembedded/3/

Thanks!

On Tue, Oct 16, 2012 at 6:31 PM, Fabr=EDcio Ceolin <ceolin@ulevel.com> wrot=
e:

> Hi,
>
> I'm new at the yocto project and I'm building my first recipe.
>
> At now, I'm in trouble because the yocto is building my application for
> toolchain and I do not need that. I need build an application only for
> target image.
>
> My machine is x86_64 and my target is qemux86.
>
> When bitbake trying to compile the qjson for toolchain, bitbake tries to
> link 32 bits binaries with 64 bits toolchain's libraries.
>
> See my bb file and error attached
>
> How can I make this compilation use only target libs?
>
> In custom bb files, how do the bitbake know that compilation if for a
> toolchain or a target?
>
> Thanks
>
>
>
>
>
> --
> Fabr=EDcio Ceolin
> ulevel.com
> Diretor Executivo
>



--=20
Fabr=EDcio Ceolin
ulevel.com
Diretor Executivo

--bcaec54eea5a2408d404cc36d1d9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I solve my problem following this tutorial:</div><di=
v><a href=3D"http://cor-net.org/hello-world-in-qt-using-cmake-and-openembed=
ded/3/">http://cor-net.org/hello-world-in-qt-using-cmake-and-openembedded/3=
/</a></div>

<div><br></div><div>Thanks!<br><br><div class=3D"gmail_quote">On Tue, Oct 1=
6, 2012 at 6:31 PM, Fabr=EDcio Ceolin <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ceolin@ulevel.com" target=3D"_blank">ceolin@ulevel.com</a>&gt;</span> wr=
ote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<div><br></div><div>I&#39;m new at the yo=
cto project and I&#39;m building my first recipe.</div><div><br></div><div>

At now, I&#39;m in trouble because the yocto is building my application for=
 toolchain and I do not need that.=A0I need build an application only for t=
arget image.=A0</div>
<div><br></div><div>My machine is x86_64 and my target is qemux86.</div><di=
v><br></div><div>When bitbake trying to compile the qjson for toolchain, bi=
tbake tries to link 32 bits binaries with 64 bits toolchain&#39;s libraries=
.</div>


<div><br></div><div>See my bb file and error attached</div><div><div><br></=
div></div><div>How can I make this compilation use only target libs?</div><=
div><br></div><div>In custom bb files, how do the bitbake know that compila=
tion if for a toolchain or a target?</div>


<div><br></div><div>Thanks</div><span class=3D"HOEnZb"><font color=3D"#8888=
88"><div><br></div><div><br></div><div><br></div><div><br clear=3D"all"><di=
v><br></div>-- <br>Fabr=EDcio Ceolin<br><a href=3D"http://ulevel.com" targe=
t=3D"_blank">ulevel.com</a><br>

Diretor Executivo<br>
</div>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r>Fabr=EDcio Ceolin<br><a href=3D"http://ulevel.com">ulevel.com</a><br>Dire=
tor Executivo<br>
</div>

--bcaec54eea5a2408d404cc36d1d9--
