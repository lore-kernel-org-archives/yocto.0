Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30712E01584
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 20:15:21 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id l20so3233810oag.31
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 20:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5dLMf+tRKxyvSZa6zkJw5SLt9mazvORydvS9pwVuqD0=;
	b=SVf3LI7qXK1xljUEoafe4XgxGGJNDYBpxBynvlhUr0kiEZMgami2YDQyBA2KJ15HCA
	gv0807GpI5VY6FQOSHuafLZuvy6b3AM8V2lx48Ns+W+cLia4HravAcR0CBL6z87PGv9M
	5rt2I8Go2RaYa4b9/fAou6X91fgzP2caeJgsk9O9goVxA6hBEg1JwOXiuKoKqUKuEynd
	pSG5tkwbBQ735qysqTRtN0kecsKUlNKn4xTuZPyE6OFDdAPMWiRv0BnDTwa+xtUlGCzi
	O2Ue3LhI2K+N15UR0vQHlXjpNM9YoXw9FMuiKRnn8dWxqvPVO6WvW68cqbE3yJTXSR4D
	ErUg==
X-Received: by 10.182.200.230 with SMTP id jv6mr310371obc.46.1375326920874;
	Wed, 31 Jul 2013 20:15:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Wed, 31 Jul 2013 20:14:59 -0700 (PDT)
In-Reply-To: <7B7D6E03-F812-4C76-B482-205D42D00DA1@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1C406793@POCITMSEXMB06.LntUniverse.com>
	<CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
	<7B7D6E03-F812-4C76-B482-205D42D00DA1@gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 1 Aug 2013 08:44:59 +0530
Message-ID: <CA+Z6RkWkGozYvFf49Ta-qcki_XXWtm9Sjj-JbKE1bkuevBfk8w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Cleaning dependent package
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
X-List-Received-Date: Thu, 01 Aug 2013 03:15:22 -0000
Content-Type: multipart/alternative; boundary=001a11c2cbc4919f8004e2da40ea

--001a11c2cbc4919f8004e2da40ea
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

ok, thank you..


On Thu, Aug 1, 2013 at 4:35 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jul 29, 2013, at 6:54 AM, Navani Srivastava <
> navani.srivastava@gmail.com> wrote:
>
> Is it possible to clean any dependent package from some other recipe?
>
> As an example-
>
> =93bitbake core-image-minimal.bb=94 will build u-boot and linux package a=
s a
> part of dependent package. Is it possible to clean u-boot and linux by
> making changes in core-image-minimal.bb recipe?
>
>
> vice versa is possible where you make changes to one of u-boot and it
> rebuilds core-image-minimal. any package will not interfere cleaning anot=
her
> one, it could be rebuild as part of another dependency
>

--001a11c2cbc4919f8004e2da40ea
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ok, thank you..<br></div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">On Thu, Aug 1, 2013 at 4:35 AM, Khem Raj <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><div cla=
ss=3D"im"><br><div><div>On Jul 29, 2013, at 6:54 AM, Navani Srivastava &lt;=
<a href=3D"mailto:navani.srivastava@gmail.com" target=3D"_blank">navani.sri=
vastava@gmail.com</a>&gt; wrote:</div>

<br><blockquote type=3D"cite"><p style=3D"font-family:Helvetica;font-size:m=
edium;font-style:normal;font-variant:normal;font-weight:normal;letter-spaci=
ng:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px">

Is it possible to clean any dependent package from some other recipe?</p><p=
 style=3D"font-family:Helvetica;font-size:medium;font-style:normal;font-var=
iant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;tex=
t-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px">

As an example-</p><p style=3D"font-family:Helvetica;font-size:medium;font-s=
tyle:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;li=
ne-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px">

=93bitbake<span>=A0</span><a href=3D"http://core-image-minimal.bb/" target=
=3D"_blank">core-image-minimal.bb</a>=94 will build u-boot and linux packag=
e as a part of dependent package. Is it possible to clean u-boot and linux =
by making changes in<span>=A0</span><a href=3D"http://core-image-minimal.bb=
/" target=3D"_blank">core-image-minimal.bb</a><span>=A0</span>recipe?</p>

<br></blockquote></div><br></div><div>vice versa is possible where you make=
 changes to one of u-boot and it rebuilds core-image-minimal. any package w=
ill not interfere cleaning another</div><div>one, it could be rebuild as pa=
rt of another dependency</div>

</div></blockquote></div><br></div>

--001a11c2cbc4919f8004e2da40ea--
