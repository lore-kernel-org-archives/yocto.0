Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19514E006D2
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 07:25:43 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id 13so6361716iea.35
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 07:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type:content-transfer-encoding;
	bh=elkhW1A3yfZg09pQ7ZPISDdmb9PNBGWqO0ejxjpCHkU=;
	b=xYeNoqw5xjHUwQHSQVfdiqesAM204s42UDhBcH0Aza9BQfsUzTIh3+Pem99hs/oXg3
	Xuh6GnEtdgqYkVXy0M7DYWco5s5JTILqOtT9aOG/DQ80/rb5r1OW5tiahn5aqvDwfxAJ
	SDmjI5zjvz+4uAzjqzOu4scpQ27jH/uE3mXHDH34jwufMs+ajR1jGXErUTUmkFCS6YBY
	OKDKgi+iziFcy4iFUVgDCOYlXGsmEU/abJbTvEiAHqv2uAt0+HcgqhgNv6oazKWWEFOu
	+EOBP1w8jzsv18mQxVo18QpzJIQ/kXA8uRSfkYvAinJPSM6OW+mTALbzCYcRf9m4Hagp
	vTbg==
X-Received: by 10.50.197.161 with SMTP id iv1mr2402766igc.53.1358522742658;
	Fri, 18 Jan 2013 07:25:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.12.129 with HTTP; Fri, 18 Jan 2013 07:25:22 -0800 (PST)
In-Reply-To: <20130117091908.493c18fb@e6520eb>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
	<CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
	<19691651.cLZhLvd0Ni@helios>
	<CANge7vWH1tCjHsJOSa=JP86a3+APQk93ds1UwuYeUGzy4F02WQ@mail.gmail.com>
	<20130117091908.493c18fb@e6520eb>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 18 Jan 2013 10:25:22 -0500
Message-ID: <CANge7vXP6Cy4sxo-vXuPEyigd5ag=Jt2ixc_WhZv2QQ+UnnBxw@mail.gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>, yocto@yoctoproject.org, 
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Fri, 18 Jan 2013 15:25:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 17, 2013 at 3:19 AM, Eric B=E9nard <eric@eukrea.com> wrote:
> Hi Jon,
>
> "inherit qt4e" is enough, no need to add qt4-embedded to DEPENDS.
>

Thanks! This makes sense, as I see this dependency is established in
the first few lines of qt4e.bbclass.

>
> strange, demos and examples are packaged in ${QT_BASE_NAME}-demos and
> ${QT_BASE_NAME}-examples packages so if you find these directories on
> your target, that means you requested qt4-embedded-demos and
> qt4-embedded-examples to be installed in your image.
>
> Are you installing packagegroup-core-qt4e in your image like in
> qt4e-demo-image ? If yes, that's where you pull demos & examples.
>
> To get a minimal image, you could simply have :
> IMAGE_INSTALL +=3D "\
>         ${CORE_IMAGE_BASE_INSTALL} \
>         you_qt_app \
>         some qt4-embedded-fonts or qt4-embedded-plugin you may need
>         (check packagegroup-core-qt4e.bb for the exact names) \
>         "
> inherit core-image
>
> The Qt libraries your application is linked with will be automatically
> installed and you won't get extra unwanted packages in your image.
>
> Best regards,
> Eric

My IMAGE_INSTALL looks very similar to what you've shown there, which
I based upon what I saw in core-image-minimal. I see that I still have
a task-core-boot lying around, so I need to change that a
packagegroup-core-boot. (IIRC, packagegroup-core-boot PROVIDES
task-core-boot for the time being...)

IMAGE_INSTALL =3D "
  task-core-boot \
  my_qt_app \
  a_few_unrelated_recipes_that_don't_use_qt \
  ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
  ${CORE_IMAGE_EXTRA_INSTALL} \
"

I checked the package list on a running system (opkg list | grep -i
qt). Here's all the installed Qt packages...no qt4-embedded-examples
as far as I see.

libqtcoree4 - 4.8.3-r50.0
libqtdeclarativee4 - 4.8.3-r50.0
libqtguie4 - 4.8.3-r50.0
libqtnetworke4 - 4.8.3-r50.0
libqtscripte4 - 4.8.3-r50.0
libqtsqle4 - 4.8.3-r50.0

Seems strange to me...any thoughts?

Thank you for your time and help!
Jon

