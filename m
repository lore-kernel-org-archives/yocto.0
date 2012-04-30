Return-Path: <daniel.toussaint@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67F5AE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 03:04:09 -0700 (PDT)
Received: by lbbgg13 with SMTP id gg13so2335262lbb.35
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 03:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=WciRxAJL/u+6iZ7TX7UKy2jAi0x9xcic77lYsEnhdWE=;
	b=S2yb3UvRwIZNUWEf0uwsfYIC1DK0ZMgOGaxMh1BJQFmCZzqnSct3aDR6oSTQOEABPe
	k0HGXMrPfiNEtOPpjGKrMxNCG9AH+gYcxhucK7U6JXYos3AvKPxYnErymXbsmwB/9HB8
	1zqL2apScMPgC0iouJso4LiTcXhW7vlbu/CEcxUYA0eIc7lqh3YFijF6N0fHRWMPGbMt
	KMS67R/Ke5m/5C0etwZxuypBMZ7QEdjqrgs2QysCFWewU8ziHuQZr4SsOTuf5Cy1LhQB
	mg0oxQRRLW5u3eGxMogVIhP/o+avPIjz72njWbhOrEtArfw6RFSKWkTd52Wbg4gZQarT
	EONw==
MIME-Version: 1.0
Received: by 10.152.132.166 with SMTP id ov6mr4700408lab.35.1335780248111;
	Mon, 30 Apr 2012 03:04:08 -0700 (PDT)
Sender: daniel.toussaint@gmail.com
Received: by 10.112.82.10 with HTTP; Mon, 30 Apr 2012 03:04:08 -0700 (PDT)
In-Reply-To: <20120429211959.3f12671b@eb-e6520>
References: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
	<20120429211959.3f12671b@eb-e6520>
Date: Mon, 30 Apr 2012 18:04:08 +0800
X-Google-Sender-Auth: Bc1L5eKXJ8T89CrD1rXNya-4vbo
Message-ID: <CADVYk4SjZfheURc8fkeqZZz-tcuUf1pAxnw6DPyQrM3Prbdbng@mail.gmail.com>
From: Daniel Toussaint <daniel@dmhome.net>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building a Qt4-x11 app.
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
X-List-Received-Date: Mon, 30 Apr 2012 10:04:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 30, 2012 at 3:19 AM, Eric B=E9nard <eric@eukrea.com> wrote:
> Le Sun, 29 Apr 2012 21:16:44 +0800,
> Daniel Toussaint <daniel@dmhome.net> a =E9crit :
>
>> I wish to run an application developed with QT in a Yocto filesystem.
>> The app should be linked against Qt4-X11 libs. What is the exact work
>> flow to get my app cross compiled on my x86_64 host ?
>> So far I have :
>> -> Build a complete core-image-sato with IPKG as a packaging system.
>> -> Build qt4-x11-free
>> -> Build qt4-tools-nativesdk
>>
>> Now, I got something called qmake2 in the build directory
>> (sysroot-x86_64) , but it complains about not finding the right qmake
>> specs.
>> I got the feeling I am doing something fundamentally wrong with my
>> setup, can anyone enlighten me ?
>>
> simply write a recipe for your app and let the build system build
> your application.
>
> The recipe can be quite simple if your app doesn't depends on other
> libs than qt4 :
>
> DESCRIPTION =3D "Application QT4-X11"
> SECTION =3D "Apps"
> LICENSE =3D "yourlicense"
> LIC_FILES_CHKSUM =3D "file://youlicense;md5=3Dyourmd5"
>
> inherit qt4x11
>
> SRC_URI =3D "file://application.tar.bz2"
> # or directly download it from a VCS
>
> # may be necessary :
> EXTRA_QMAKEVARS_PRE +=3D "PREFIX=3D/usr"
> EXTRA_OEMAKE +=3D "INSTALL_ROOT=3D${D}"
>
> do_install() {
> =A0 =A0 =A0 =A0oe_runmake install INSTALL_ROOT=3D${D}
> }
>
> Eric

Thanks a lot that worked great !

--=20
Gtalk: daniel.toussaint@gmail.com
Skype: supertoussi
Cell: +886-915-680-291

