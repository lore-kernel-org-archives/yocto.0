Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A87E00C8F; Wed,  3 Feb 2016 23:19:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CB24E00C88
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 23:19:10 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id ik10so8356982igb.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 23:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=iWgpWneJLdqkubUXjJh+BeUbVewrQeuz1GJZLuzjNXw=;
	b=Ns4UemK2+QbJW1VrBrIqkQr4J/HaA3JkBlLW8AkaHOOXHKGi8ghB4Z8IhR5UfNoWvs
	8F/L4pL74bmByVbpUr0rL9HLUjIlNZ4zCRPS75IhFNCiqZ+4ukuQQzmTSMDym1yDrvDv
	uP3d12iEDKg7GEuubjsVHebYcR+ZrgZRqJCNNYEibdgLf1lVXJeKI/b+++CuJJZBrqWm
	Bjyp41cUQX35cNSeZPDjqAotQpHRT0l0gRVXxoeAscfNWJVVlsSokfl2fMEAXj2C1gp0
	KuzCQ/3qyZUFxrSJ5aMmk848g1TCjeqJ5+MB71MDJNbRUwfO5BAUMnyCEvYZRfzmHvjp
	l12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=iWgpWneJLdqkubUXjJh+BeUbVewrQeuz1GJZLuzjNXw=;
	b=c6TB9Pow3mbUVyd6WB6aK3u4O99EBbJS0DUOayeiygDUK+CiEsq/1xv2NP09mPb/Q7
	1qRvL/Vd4x++Cre7MdDnRVu/hQftsTf61i+sQBNU3cR75VIH4w+lsb7+jlJmwX4bORAp
	9pYDGStal9lped8/XQJgE8CH0ReVW2ShY7+Y0rN+k6SuOI5yvat/G0n2tdODXkcPDIQ1
	xH4Yt6eAESjMEmbITVjsZPBdH/B6PNGHtplOnTE7JWcNul5RU72SYLz4AGOJMeOZhxfX
	jpGNFvcSsFxFjwWWmPDDpgRp+XnIA359BNMb+6NxN+pP3LaJaWxjRdxgthKs3CboxKvG
	Gt7w==
X-Gm-Message-State: AG10YOS9W1nIZ/gNdg91QncAKxPMMAY02LqFegHxNGsO6xg1GB7Vs0XgsMjk9870z5d/bm53XRiJsrmtSvxsOg==
X-Received: by 10.50.33.81 with SMTP id p17mr7215588igi.75.1454570350589; Wed,
	03 Feb 2016 23:19:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Wed, 3 Feb 2016 23:18:41 -0800 (PST)
In-Reply-To: <SIXPR03MB06725C3D253D8E985C10B753D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<1454510985.3990.8.camel@open-rnd.pl>
	<SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<1036585921.17607.1454520572537.JavaMail.open-xchange@ox13.netart.com.pl>
	<SIXPR03MB06725C3D253D8E985C10B753D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Feb 2016 23:18:41 -0800
Message-ID: <CAMKF1so_i2iZJxv2fdV58XtYnDVODCzi8d1nFEEKqm=Z1wH4vA@mail.gmail.com>
To: shubham.kumar4@wipro.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Thu, 04 Feb 2016 07:19:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2016 at 10:43 PM,  <shubham.kumar4@wipro.com> wrote:
> Hi Maciej,
>
>
> I did "bitbake -r core-image-sato" and redirected the output to a file. F=
rom that I found that IMAGE_FEATURES is assigned in image.bblass. A few of =
the contents in the file were as follows:-
>
> # IMAGE_FEATURES may contain any available package group
> IMAGE_FEATURES ?=3D ""
> IMAGE_FEATURES[type] =3D "list"
> IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs empty-root=
-password allow-empty-password post-install-logging"
>
> I thought of modifying the last entry and made it as follows:-
>
> IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs"

thats not how you do it. you add it to local configuration metadata
e.g. in your conf/local.conf

you define it e.g.

EXTRA_IMAGE_FEATURES =3D "debug-tweaks"

>
> Then I rebuilt the images using "bitbake core-image-sato" and then wic to=
ol.But still same issue persists.The Galileo is booting , but not accepting=
 "root"  as username and again asking for password.
>
>
> .
> .
> .
> I also checked for IMAGE_ROOTFS in "image.bbclass" file and got the path =
to the rootfs as follows:-
> IMAGE_ROOTFS=3D"/home/yogesh/myYocto/poky/final_build/tmp/work/intel_quar=
k-poky-linux/core-image-sato/1.0-r0/rootfs"
>
> In etc/shadow, proper entry is present with ----  root:*:16834:0:99999:7:=
::
>
> Thanks for your co-operation, Maciej. Looking forward to reaolving this i=
ssue asap.
>
>
> Thanks,
> Shubham_K
>
>
>
> ________________________________________
> From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
> Sent: Wednesday, February 3, 2016 10:59 PM
> To: Shubham Kumar (Product Engineering Service); yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-intel]:Quark not accepting "root" username at =
login prompt
>
>> Dnia 3 luty 2016 o 15:55 shubham.kumar4@wipro.com napisa=C5=82(a):
>>
>>
>> In "final_build/conf/local.conf" , EXTRA_IMAGE_FEATURES =3D "debug-tweak=
s".
>>
>> So, yes "debug-tweaks" is present.
>>
>
> Try running bitbake -e <yourimagename> and check the value of
> IMAGE_FEATURES (and where it gets assigned).
>
> You may also want to check if /etc/shadow in the rootfs contains proper
> entry. It should look like this:
>
>        root:*:16834:0:99999:7:::
>
> When inspecting the output of bitbake -e, look for IMAGE_ROOTFS, this
> will point to the location of the rootfs for your image.
>
> --
> Maciej Borz=C4=99cki
> Senior Software Engineer at Open-RnD Sp. z o.o.
> www.open-rnd.pl, Facebook, Twitter
>
> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe zaw=
iera=C4=87 chronione prawem
> lub poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do =
wiadomo=C5=9Bci i
> u=C5=BCytku os=C3=B3b, do kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=
=9Bli wiadomo=C5=9B=C4=87 zosta=C5=82a
> otrzymana przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ani=
a do
> os=C3=B3b trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe
> zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o zaistnia=C5=82e=
j
> sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej. Dzi=C4=99kujemy.
>
> This message, including any attachments hereto, may contain privileged
> or confidential information and is sent solely for the attention and
> use of the intended addressee(s). If you are not an intended
> addressee, you may neither use this message nor copy or deliver it to
> anyone. In such case, you should immediately destroy this message and
> kindly notify the sender by reply email. Thank you.
> The information contained in this electronic message and any attachments =
to this message are intended for the exclusive use of the addressee(s) and =
may contain proprietary, confidential or privileged information. If you are=
 not the intended recipient, you should not disseminate, distribute or copy=
 this e-mail. Please notify the sender immediately and destroy all copies o=
f this message and any attachments. WARNING: Computer viruses can be transm=
itted via email. The recipient should check this email and any attachments =
for the presence of viruses. The company accepts no liability for any damag=
e caused by any virus transmitted by this email. www.wipro.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

