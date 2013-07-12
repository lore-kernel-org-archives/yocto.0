Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C92BE013D6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 04:22:33 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id n10so12910754oag.28
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 04:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=Lhg4iGmi5o/nDuTIdBK0Wa3H5BWe27fqJJZ4xsHGjzI=;
	b=knTzZ3arH1X7DFrge2EYxep631Iu4DVQmGG65TSyK8qYUFplz5+i2uNCHTC4YCUzN+
	fO5GoJIXirnOpjm/CejKzefsWeO5KaGQBYvueENdqnvp3DwQ0GaHLEH5TXINf1BDFnx2
	2qqbi2BZX0J0+ny1lWNasVsdQ1CW1++pOP7ggfuf7dv/2jgKbak1V273AzMjP9+lraD2
	qmssHYwkjBF9AI8OMJAwfX4s5XhghfpS8tUZ4nye0rXhSwtkAbJuI/D3yrJyWNV2Xddu
	coBWz1cy/me/wt1AJ0WH+PUhplGrvJe04SiqeqN7C7EtvFIKQKvMdQC7QsZvqJcQA4iQ
	Pu5A==
MIME-Version: 1.0
X-Received: by 10.182.47.137 with SMTP id d9mr35978360obn.26.1373628153049;
	Fri, 12 Jul 2013 04:22:33 -0700 (PDT)
Received: by 10.76.158.197 with HTTP; Fri, 12 Jul 2013 04:22:32 -0700 (PDT)
In-Reply-To: <2264563.SPIDgIzv0z@fedora-fisso>
References: <2264563.SPIDgIzv0z@fedora-fisso>
Date: Fri, 12 Jul 2013 13:22:32 +0200
Message-ID: <CA+AhUGxQGeoTj=-1Be6rOeD0fENZuP3A4qG_vk6Hz+JwJiHdCQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Davide Soldan <davide.soldan@kynetics.it>
X-Gm-Message-State: ALoCoQn26R/fhugTeN4B4GGZsL2B1JO/jCac36px2MgdxFPqHc2rCtb6bujOQQ3PIjh9BeZPQHEI
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extend image.bbclass (or any bbclass file)
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
X-List-Received-Date: Fri, 12 Jul 2013 11:22:36 -0000
Content-Type: multipart/alternative; boundary=089e0158a9fe1dc96f04e14eba73

--089e0158a9fe1dc96f04e14eba73
Content-Type: text/plain; charset=ISO-8859-1

Hi,

On Fri, Jul 12, 2013 at 1:11 PM, Davide Soldan <davide.soldan@kynetics.it>wrote:

> Hi to all,
> I'm trying to move, from outside to inside my recipes, all the changes
> I've done for my custom image.
> For example I changed the image.bbclass adding a function. But this file
> is outside of my recipes that are stored under my git repository. So I'd
> like to move this function from image.bbclass to another bbclass file under
> mi recipes directory.
> I tried to copy image.bbclass under my recipes directory, change its name,
> and references correctly, but duplicates functions gave me some errors:
>
> ERROR: The function normal_groups defined in image.bbclass was already
> declared in image-custom.bbclass. BitBake has a global python function
> namespace so shared functions should be declared in a common include file
> rather than being duplicated, or if the functions are different, please use
> different function names.
> ERROR: The function complementary_globs defined in image.bbclass was
> already declared in image-custom.bbclass. BitBake has a global python
> function namespace so shared functions should be declared in a common
> include file rather than being duplicated, or if the functions are
> different, please use different function names.
> ERROR: The function get_devtable_list defined in image.bbclass was already
> declared in image-custom.bbclass. BitBake has a global python function
> namespace so shared functions should be declared in a common include file
> rather than being duplicated, or if the functions are different, please use
> different function names.
>
> So I think there should be a way to append some code to image.bbclass as I
> can do with recipes and bbappend files...right? How I can do that? Or maybe
> there's another and better way to do that?
> Thanks to all!
>

Can't your image-custom.bbclass inherit image.bbclass and then just add the
function you've added? Instead of replicating all stuff from image.bbclass
in your class.

Cheers,
Erik



> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0158a9fe1dc96f04e14eba73
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=A0<div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Fri, Jul 12, 2013 at 1:11 PM, Davide Soldan <span dir=3D"ltr">&lt;=
<a href=3D"mailto:davide.soldan@kynetics.it" target=3D"_blank">davide.solda=
n@kynetics.it</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">Hi t=
o all,<br>
I&#39;m trying to move, from outside to inside my recipes, all the changes =
I&#39;ve done for my custom image.<br>
For example I changed the image.bbclass adding a function. But this file is=
 outside of my recipes that are stored under my git repository. So I&#39;d =
like to move this function from image.bbclass to another bbclass file under=
 mi recipes directory.<br>

I tried to copy image.bbclass under my recipes directory, change its name, =
and references correctly, but duplicates functions gave me some errors:<br>
<br>
ERROR: The function normal_groups defined in image.bbclass was already decl=
ared in image-custom.bbclass. BitBake has a global python function namespac=
e so shared functions should be declared in a common include file rather th=
an being duplicated, or if the functions are different, please use differen=
t function names.<br>

ERROR: The function complementary_globs defined in image.bbclass was alread=
y declared in image-custom.bbclass. BitBake has a global python function na=
mespace so shared functions should be declared in a common include file rat=
her than being duplicated, or if the functions are different, please use di=
fferent function names.<br>

ERROR: The function get_devtable_list defined in image.bbclass was already =
declared in image-custom.bbclass. BitBake has a global python function name=
space so shared functions should be declared in a common include file rathe=
r than being duplicated, or if the functions are different, please use diff=
erent function names.<br>

<br>
So I think there should be a way to append some code to image.bbclass as I =
can do with recipes and bbappend files...right? How I can do that? Or maybe=
 there&#39;s another and better way to do that?<br>
Thanks to all!<br></div></div></blockquote><div><br></div><div>Can&#39;t yo=
ur image-custom.bbclass inherit image.bbclass and then just add the functio=
n you&#39;ve added? Instead of replicating all stuff from image.bbclass in =
your class.</div>
<div><br></div><div>Cheers,=A0</div><div>Erik</div><div><br></div><div>=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"=
>
_______________________________________________<br>
</div></div>yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br></div></div>

--089e0158a9fe1dc96f04e14eba73--
