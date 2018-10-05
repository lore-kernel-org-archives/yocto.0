Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7665FE006AF; Thu,  4 Oct 2018 20:49:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09519E0053F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 20:49:10 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id q8-v6so495155wmq.4
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 20:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tb3BUl1kagdUyh5ZaJw8uY4L4rosBYT0hvB1vN4Skdo=;
	b=dHyHqJjBixOq5FJxU+Hew3vlmdVRKkxp2a1eJu2oegZVCfcoqbU7+8p9lSkC5adYXC
	4F4KtuV1R817xITZe+POdXLrrp4LkERaynBfO+nujLSbbpT9p4+trRJgZQzArhMc6z9t
	9+h2aHBwr3mqUgCO72T/ri/d/zplkMpIy/Cbsi7169yMh2VAdbeF2b/6C3VtEq+s1iS8
	L182qW3iTY2Cb540kouH2wPGWNFO4/aLCrRT4mPe+JNX5iB0k+s4FsC+m/AqxbvlOyMY
	ZDsobZkzhHTeSKOSHw82EC5yHeWUOlWNy5CLnzxwvFgDPc8HAh3p6cTnP3LRwKXqwgpv
	H+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tb3BUl1kagdUyh5ZaJw8uY4L4rosBYT0hvB1vN4Skdo=;
	b=pz9DMIZGR7Xs4nVXqUaU/XR6p0vtaQuiBnwPf9DLm/VxnwGqVObMkzmQ0CeSW4aBmi
	NXghXKO/IQXOleoa4JIGbR/mKlGAZy15LVVJ4VUiRyAl/odnRb+iN8FOnBPuFiynKq3e
	2pInHqmM6wGON2xUh8XY+GG5WBeHINVOLosl06nMkEyq/arYrhnpWvSeIXvkmcWP6kBu
	gW/cphJQ/DRf4zjo57vufSbgqubWEL4Mgf10z1MpbjNWIMmbsEXfoAN/oKqHWneEVGSQ
	9a0woFJirVCewEUZ97qrwpoo/G+VTeDECwmNQdIcxkRh6Jta09CN0+rjylZ8Lr9vKeeR
	TJWg==
X-Gm-Message-State: ABuFfoiloVTR+Bxex9lSXFXF8gJHkkmYQtC7/T+SOVkF0jgRtbsx3E3i
	DdA0FssyB0/ICoBs7spFVPXZNOBYKcWJUcFtnm0=
X-Google-Smtp-Source: ACcGV63naGOlCEg9ICQ2w00e4/ceUN0kk7x6tXKCm4LeKWXwXvNjkp5y1yiRxkVcO7J+aKwVlE7Cm1o4zkyQUxs70Y4=
X-Received: by 2002:a1c:3a92:: with SMTP id
	h140-v6mr6178493wma.69.1538711349773; 
	Thu, 04 Oct 2018 20:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAE18oz8o-AKA5OBtV63odQx=gfMPa3MD=EU52BeU8Z2Zb26Ttw@mail.gmail.com>
	<000401d45bba$16c6d0c0$44547240$@uni-bremen.de>
	<CAE18oz9A=Zwxu9QMzmLugkf3jMvg2yxzSCV8PWbkF9UvgXPWZw@mail.gmail.com>
	<000c01d45c04$e16627a0$a43276e0$@uni-bremen.de>
	<CAE18oz806AhsxR2JFsLPj3hqnvr7MZoH3dWbgrWPBY3RatAGrA@mail.gmail.com>
In-Reply-To: <CAE18oz806AhsxR2JFsLPj3hqnvr7MZoH3dWbgrWPBY3RatAGrA@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Fri, 5 Oct 2018 10:48:33 +0700
Message-ID: <CAKYr3zwKLDho3-hfs4Zy1BqSR4mXKL86-hTt6w6H35F9p2Ja5g@mail.gmail.com>
To: brianz@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Installing Python app from source
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
X-List-Received-Date: Fri, 05 Oct 2018 03:49:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 5, 2018 at 12:48 AM Brian Zambrano <brianz@gmail.com> wrote:
>
> In a Python project with a setup.py file, you can actually do "pip instal=
l ." Of course you still need internet access for dependencies, which I hav=
e during the build.  This is similar to running "python setup.py install" i=
n the same directory.

curious where you found this innformatioon and what that recipe would
look like ?


>
> I've tried setting SRC_URI=3D"saunders_backend" along with "import setupt=
ools".  That seems to run "python setup.py install" during the build phase,=
 however I get an error that setup.py cannot be found.
>
> Also, my setup.py contains a section for scripts, which results on my scr=
ipt being placed into the a bin directory on the host when installed normal=
ly:
>
> scripts=3D['bin/server'],
>
> So, setup.py can do everything I need outside of bitbake/yocto...I just c=
an't figure out how to get it working during the bitbake build.
>
> On Thu, Oct 4, 2018 at 11:08 AM Shantanoo Desai <desai@uni-bremen.de> wro=
te:
>>
>> Hi Brian,
>>
>>
>>
>> It is confusing, I agree. But I think it is essential because I assume y=
our Target is not connected to the Internet. When you do pip install <packa=
ge> normally the package if fetched from the internet and then installed. I=
n this case your app is local so need to have those files first built nativ=
ely and then need to be sent to the appropriate folders for python to acces=
s them which I guess what setuptools does. Hence you set all the files in t=
he SRC_URI.
>>
>>
>>
>> Do_install_append is only when you have binaries which could be used as =
command line utilities.
>>
>>
>> (But I could also be completely wrong, not a Yocto guru here)
>>
>>
>>
>> Cheers
>>
>>
>>
>> Shan
>>
>>
>>
>> Von: Brian Zambrano <brianz@gmail.com>
>> Gesendet: Donnerstag, 4. Oktober 2018 18:33
>> An: desai@uni-bremen.de
>> Cc: yocto@yoctoproject.org
>> Betreff: Re: [yocto] Installing Python app from source
>>
>>
>>
>> Thanks very much for this Shan. I have that book and was working through=
 it yesterday, as a matter of fact.
>>
>>
>>
>> That part which is confusing to me in that recipe is that the SRC_URI po=
ints to every single file, there is a "inherit setuptools" line and also a =
do_install_append. I'm not sure how each of these are working together to g=
et the application installed. I believe that the "inherit setuptools" will =
automatically run "python setup.py install", but when then is the source co=
de manually copied over?
>>
>>
>>
>> BZ
>>
>>
>>
>> On Thu, Oct 4, 2018 at 2:13 AM Shantanoo Desai <desai@uni-bremen.de> wro=
te:
>>
>> Hi Brian,
>>
>>
>>
>> What you need in the .bb is a runtime-dependency. RDEPENDS_${PN} +=3D =
=E2=80=9C ${PYTHON_PN}-flask ${PYTHON_PN}-jinja ${PYTHON_PN}-markdown=E2=80=
=9D and so on. This will add these modules in the root-filesystem and will =
be available on the target.
>>
>>
>>
>> If you need some basic help with a python recipe, there is a git reposit=
ory YoctoCookbook https://github.com/yoctocookbook/meta-custom/tree/master/=
recipes-python/python-helloworld to get you some idea.
>>
>>
>>
>> Please not I am in no ways a Yocto expert on recipe creations but for th=
e past few weeks this is what I have been able to discover. Due to lack of =
examples on custom recipes in python this is the best I can help you with.
>>
>>
>>
>>
>>
>> Best Regards,
>>
>>
>>
>> Shan
>>
>>
>>
>>
>>
>>
>>
>> Von: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> Im =
Auftrag von Brian Zambrano
>> Gesendet: Donnerstag, 4. Oktober 2018 00:52
>> An: yocto@yoctoproject.org
>> Betreff: [yocto] Installing Python app from source
>>
>>
>>
>> I'm trying to install my own Python application from source, and having =
a hard time finding resources on how to accomplish it. I'm new to this ecos=
ystem and am probably missing something fundamental.
>>
>> My recipe is structured like this...and my build is configure such that =
it does actually find it.
>>
>> =E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend
>>
>> =E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb
>>
>> My application code which is for now just a "hello world" flask applicat=
ion, is in saunders_backend. The setup.py file in there works as expected w=
hen I use it in on my host machine.
>>
>> =E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend/
>> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin/
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 server
>> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in
>> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 requirements.txt
>> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 config.p=
y
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 __init__=
.py
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 models.p=
y
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 static/
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 template=
s/
>> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 views.py
>> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 setup.py
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend/
>> =E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb
>>
>>
>> I've been hacking on the .bb files to get it to install this into the re=
sulting image. I do have IMAGE_INSTALL_append =3D " firmware" in the top-le=
vel local.conf.
>>
>>
>>
>> My primary confusion is that I don't know what I should be using for the=
 python application. do_install, do_install_append? What should SRC_UIR be?=
 In effect is that I want the exact same behavior of "cd saunders_backend &=
& pip install ." My setup.py file has install_requires with a list of all d=
ependencies, which now is merely Flask.
>>
>>
>>
>> Pointers would be appreciated.
>>
>> BZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

