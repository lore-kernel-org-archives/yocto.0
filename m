Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC52E0049B
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 22:52:00 -0700 (PDT)
Received: by eabd1 with SMTP id d1so2579848eab.35
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 22:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=gr1JiBcOgio8w/kXzWSl3TxhKv7NKc2tYpDm3TwTWe8=;
	b=AVjnrX4XhEbyBbWD2gL84VvIfU7Br7eQqjbppETZAd47Wjd4bchy21Bf0fEZp9AtYm
	R61PC9p817rIBfh3PxUiJuklwB8lR8S6RoZEVUI0L016WGGkKj22y1oHkbVkOeb6AA9Z
	yHnjwFo0rCH61Xgrc/nsWS/rHRFbC3ZVh/oeL0FqHIyPTzaK4dJLwRYwj5Ku755GWl/E
	kSg85R0zH4lhVXk+/091eEmCa0F1FmTM3RnGXMWAsIvcIrO+QGmfVGd2zdqAtteJGUWO
	I3K9tNfb8fKWAS+ZjbvuduIlpM1JcJOBFu3N6MbXGJ4cmfhfXBLfwblbPB3Bf7XAAg74
	o8+Q==
Received: by 10.14.202.66 with SMTP id c42mr12150493eeo.35.1347861115308; Sun,
	16 Sep 2012 22:51:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Sun, 16 Sep 2012 22:51:25 -0700 (PDT)
In-Reply-To: <9CB6FE0E-90A1-4627-B2CD-3DAD8090EB9C@keylevel.com>
References: <9CB6FE0E-90A1-4627-B2CD-3DAD8090EB9C@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Sep 2012 22:51:25 -0700
Message-ID: <CAMKF1sowgdtLGO4a2NQ9+ioGJ4B7Gg-MysPu4_dFRWg8aeFuiA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Forcing link order for autotools recipe
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
X-List-Received-Date: Mon, 17 Sep 2012 05:52:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 15, 2012 at 4:59 PM, Chris Tapp <opensource@keylevel.com> wrote=
:
> I've got a recipe that uses autotools. It builds ok under Poky, but if I =
try to build it on my host (e.g. when developing) then it fails to build wi=
th lots of 'symbol not found' link errors related to libs that are on the s=
ystem and which are in the gcc lib search path.
>
> I've finally tracked this down to link order. The final command is of the=
 form:
>
> g++ -lGL -lcurl -o binary a.o b.o
>
> If I change this to:
>
> g++ -o binary a.o b.o -lGL -lcurl
>
> then it builds ok.
>
> Stranger still is the original form works fine on another system (older U=
buntu). The ld versions are different (2.21.53 on the one that fails, 2.20.=
1 on the one that works).
>
> Can I get autotools to always link the libraries last?

you did not mention the failing distro but what Ross mentioned could
be one reason
another reason could be that its using gold as default linker where
overlinking is not the default as it used to be. The linking behavior
is correct there you need to fix the application to specify the
libraries correctly.

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

