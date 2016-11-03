Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E043E00B9E; Wed,  2 Nov 2016 19:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BFAAE00A90
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 19:58:08 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id w194so29097897vkw.2
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 19:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3i/9Qvz6UgsbcLN4FI7dHItjottKJtRdG31obEPr/mw=;
	b=jWkmZRK5rkTRy6uZzjkL/X3Cd82rHx3sPtuIl0rSskQtxzv25xvRMshv7MrS/h66KH
	x47rY2fAitKhslBtEre95hoUk4miTwYa0kmSYm4xkpXItTIYpCrJ6zQPtQydjEtb4SfZ
	F741n8Q0B0mvAIC8pUraiqWR5zB0HHMzTbOsnQnuCxyddHQr+utKs2FkXClA2kcV/hUT
	2TRPziRl5jgl9b+Prvr6NjEP744F3p+QhA2wrEr59htPQvg9juNhvAo9YoahuVoZky2T
	buiiesBrbmgrqs/h4MzJ58t6d/mrrvYKTCm/Y0hSgjFG3GMEchAL/niemuTa3oaukwIi
	SJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3i/9Qvz6UgsbcLN4FI7dHItjottKJtRdG31obEPr/mw=;
	b=UOON/1NOxQ6zPYMdixNeyqNhptaHvoqThqQkGqUM+tyOP85zdQcHZf+AUHkBtX6D8n
	UQn8yQBPkt0YjH1xWQdgmpAD+b5yHIlEQCk2d5dGt1cGnl4B0JAQE6xB3taVl1dSzp7o
	J+Dj2cQYbgCd1QAANFMqqaE75aGHHtH7gWvx9+1w4ZMNG7oyPrXUYIsYSGa8JtHiL5yU
	iUYgXQx0vKoPQOSB1qfMJWIZdV2EDk8QbRmnwAouE2y3rSX6kbvZepC5+ukHOVxZ4glG
	A4w/nD6aSyEF+iNiy0Tj3/crVPuVYSC8UL3GsnFk6spE8jKmDIw4bvYn5iUmXQNCbYLm
	DhEQ==
X-Gm-Message-State: ABUngvedM0kTPvyujglG1CgHXMoPWSgZkSPaSsaWBHYpX5Gbd8F7T9x9XiC2pJemtY/LXA3o6qvcN9yugAy0aQ==
X-Received: by 10.31.15.65 with SMTP id 62mr5119849vkp.93.1478141887967; Wed,
	02 Nov 2016 19:58:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Wed, 2 Nov 2016 19:57:37 -0700 (PDT)
In-Reply-To: <HE1PR01MB18836A737A5FA50A13C1A9E192A10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161027212610.33d285b0@nuc.betafive.co.uk>
	<20161027221841.69b62716@nuc.betafive.co.uk>
	<DB5PR01MB188012CEF43ADE751770A39D92AD0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<20161029221306.73a1ab9d@nuc.betafive.co.uk>
	<HE1PR01MB18836A737A5FA50A13C1A9E192A10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Nov 2016 19:57:37 -0700
Message-ID: <CAMKF1spd2=YUxrkip5XpxqLvrM60GtOon3rn43fQwY6520tGSA@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Thu, 03 Nov 2016 02:58:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Can you test this patch here


https://github.com/kraj/meta-raspberrypi/commit/73be88cec27bb3b9d52d7782bd8=
2c60395626abd.patch

and let me know if it fixes your issue ?


On Tue, Nov 1, 2016 at 11:51 AM, Karim ATIKI <karim_atiki@hotmail.com> wrot=
e:
> Hi Paul,
>
>
> Thanks for your feedback.
>
> Unfortunately I was suspecting such a problem.
>
>
> Regarding the config below, is it possible to install the
> "dispmanx"component to activate EGL ?
>
>
> What recipe provides dispmanx ?
>
>
> Karim
>
>
>
>
>
> ________________________________
> De : Paul Barker <paul@paulbarker.me.uk>
> Envoy=C3=A9 : samedi 29 octobre 2016 23:13
> =C3=80 : Karim ATIKI
> Cc : yocto
> Objet : Re: [yocto] [meta-raspberrypi3] Failed to build
> gstreamer1.0-plugins-bad with minimal configuration
>
> On Fri, 28 Oct 2016 05:56:07 +0000
> Karim ATIKI <karim_atiki@hotmail.com> wrote:
>
>> Hi Paul,
>>
>>
>> Thanks a lot for your feedback and analysis.
>>
>> I think it sohuld compile without X11 and Wayland as it's a very
>> common configuration
>>
>> for RaspberryPi being used with Qt5.x applications.
>>
>>
>> Do you think it's bug related to Gstreamer1.0 configuration ?
>>
>>
>>
>> Karim
>>
>
> The do_configure log for gstreamer1.0-plugins-bad does contain:
>
>         configure: WARNING: X or Wayland is required for OpenGL support
>
> configure.ac in gst-plugins-bad-1.8.3 contains:
>
>     dnl EGL
>     if test "x$HAVE_EGL" =3D "xno"; then
>       if test "x$HAVE_GL" =3D "xno"; then
>         AC_MSG_WARN([Building requires either EGL or GLX for OpenGL
> support])
>       fi
>     else
>       if test "x$NEED_EGL" !=3D "xno"; then
>         if test "x$HAVE_WINDOW_WAYLAND" =3D "xyes" -o "x$HAVE_WINDOW_X11"=
 =3D
> "xyes" -o "x$HAVE_WINDOW_DISPMANX" =3D "xyes"; then
>           GL_LIBS=3D"$GL_LIBS -lEGL $EGL_LIBS"
>           GL_CFLAGS=3D"$GL_CFLAGS $EGL_CFLAGS"
>           USE_EGL=3Dyes
>         fi
>       fi
>     fi
>     ;;
>
> In config.status EGL_LIBS contains "-lbcm_host -lvcos
> -lvchiq_arm", however GL_LIBS only contains "-lGLESv2". So I'd say
> EGL_LIBS is not being included in to GL_LIBS because
> HAVE_WINDOW_WAYLAND, HAVE_WINDOW_X11 and HAVE_WINDOW_DISPMAX are all
> false.
>
> GL_LIBS is used in gst-libs/gst/gl/Makefile.am so that's the variable
> the libraries should be listed in.
>
> I'd say that's an upstream issue - it really looks like it's demanding
> X or Wayland to be enabled for OpenGL to work. I'd suggest raising the
> issue upsteream.
>
> Thanks,
> Paul Barker
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

