Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74454E00BF4; Thu, 17 Mar 2016 02:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,URI_NOVOWEL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8183E00BEA
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 02:37:59 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id l68so218537862wml.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 02:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=b30QoiyI4siY4aiXMJ5rPb6z1B/eEV/V9F/UCXCe5Kc=;
	b=mAcnHfIbiYmaCGOw/2+rYklW5diPznKDw5GX+1GgqrOi4J3UBEy6UlZMc10l5XcrFj
	eBkUQbLECrsv2+LIwnHmO/cR3C25W76hKfLiR2y4qujuophAnspIFqJdIvlgaH70Siig
	4Jz2P9CnzLgKzUQw36oAQvEaxWHyZSxUXa7fUu/vnv8Ly4O9eHPl+7lOX0djUioNUcLJ
	moCLHHzpbhuweh7ZH53zIHhUO6fnXZ1Xpm0+SpKqvi3XQwHllTj0wNzrDIZAJDvo2fC6
	7WJLI5eufUylyAXWkSmejJbYl7f4pq6H51v8u2UfJ64uK/ywam7qTVqLyvsrRfPUiYai
	IgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=b30QoiyI4siY4aiXMJ5rPb6z1B/eEV/V9F/UCXCe5Kc=;
	b=UPB5AdmXFs4nGjTi5hDqiFUUR6EzKbx/VTgLvhaw2297FpYTpQja9ow90+8jfYL43F
	QcnLpGERe2hgr4SrAzFG31vEXIoUfMCGwkmQboNtkQdsz8ML9V47qHPhcTnDgxhszM/Z
	7k4MaqjMZtEi3AAKSagiMkoM+09QQP7nNxx/0ex6knzzMDOdwnRJ/dohr5VwIy4dHa2F
	b8Dd5gRLQWROxrrGYgKfELQ/R4gLVppgA1LGIMY9NNap+Q2mdE0diFAI63EJt/HXAkbe
	ENJpWxal+RlVXli+9yPGaXnvrBO9NPyIUZhn+lP1cJvGkOp33w1uYWM/Q+Brr3dfK7rr
	Tvfg==
X-Gm-Message-State: AD7BkJL8V+a/Ksa/dD42JFWg/AW/OZqaVrQ6179kmupxJ4exDZnJAZVCznYRU0vGkrwbZp3BE3zsjImHEYO+0g==
MIME-Version: 1.0
X-Received: by 10.28.49.3 with SMTP id x3mr9293149wmx.4.1458207478822; Thu, 17
	Mar 2016 02:37:58 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Thu, 17 Mar 2016 02:37:58 -0700 (PDT)
In-Reply-To: <AC14D1AE-9912-433D-BD90-A8519C28BA10@keylevel.com>
References: <AC14D1AE-9912-433D-BD90-A8519C28BA10@keylevel.com>
Date: Thu, 17 Mar 2016 02:37:58 -0700
Message-ID: <CAJ86T=VyELsdt2XJ+SV9ZX8fst91ZLBEyU6ucPRXiEWDU9P7Fg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Possible introspection failure in master
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
X-List-Received-Date: Thu, 17 Mar 2016 09:38:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 17, 2016 at 1:57 AM, Chris Tapp <opensource@keylevel.com> wrote=
:
> I=E2=80=99m trying to build gstreamer1.0-plugins-base_git.bb under master=
. Compilation is failing with:

The gstreamer _git recipes have not been updated to include the
gobject introspection patches which were applied to the 1.6.3 recipes.

Try disabling gobject introspection via DISTRO or MACHINE features, ie:

  MACHINE_FEATURES_BACKFILL_CONSIDERED_append =3D " gobject-introspection-d=
ata"

or

  DISTRO_FEATURES_BACKFILL_CONSIDERED_append =3D " gobject-introspection-da=
ta"


As an aside, I'm not sure that using DISTRO/MACHINE_FEATURES_BACKFILL
for gobject-introspection-data is entirely correct since gobject
introspection is not a feature which was previously enabled by
default:

  http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref=
-features-backfill

>
> | g-ir-scanner: link: ../../../libtool --mode=3Dlink --tag=3DCC x86_64-po=
ky-linux-gcc -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -=
-sysroot=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/sysroots/valleyisland=
-64 -o /media/SSD-Build/build-jethro-opty4-v2/tmp/work/corei7-64-poky-linux=
/gstreamer1.0-plugins-base/1.7.2+gitAUTOINC+97e108beba-r0/build/gst-libs/gs=
t/fft/tmp-introspectIeb9nD/GstFft-1.0 -export-dynamic -O2 -pipe -g -felimin=
ate-unused-debug-types -fdebug-prefix-map=3D/media/SSD-Build/build-jethro-o=
pty4-v2/tmp/work/corei7-64-poky-linux/gstreamer1.0-plugins-base/1.7.2+gitAU=
TOINC+97e108beba-r0/build=3D/usr/src/gstreamer1.0-plugins-base -fdebug-pref=
ix-map=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/work/corei7-64-poky-lin=
ux/gstreamer1.0-plugins-base/1.7.2+gitAUTOINC+97e108beba-r0/git=3D/usr/src/=
gstreamer1.0-plugins-base -fdebug-prefix-map=3D/media/SSD-Build/build-jethr=
o-opty4-v2/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/media/SSD-Bui=
ld/build-jethro-opty4-v2/tmp/sysroots/valleyisland-64=3D -Wl,-O1 -Wl,--hash=
-style=3Dgnu -Wl,--as-needed tmp-introspectIeb9nD/media/SSD-Build/build-jet=
hro-opty4-v2/tmp/work/corei7-64-poky-linux/gstreamer1.0-plugins-base/1.7.2+=
gitAUTOINC+97e108beba-r0/build/gst-libs/gst/fft/tmp-introspectIeb9nD/GstFft=
-1.0.o -L. libgstfft-1.0.la -lgio-2.0 -Wl,--export-dynamic -lgmodule-2.0 -p=
thread -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0
> | Caught exception: <type 'exceptions.OSError'> OSError(2, 'No such file =
or directory')
> | > /media/SSD-Build/build-jethro-opty4-v2/tmp/sysroots/x86_64-linux/usr/=
lib/python2.7/subprocess.py(1335)_execute_child()
> | -> raise child_exception
> | (Pdb)
>
> I=E2=80=99ve tried removing tmp/ and cleansstate but this didn=E2=80=99t =
help.
>
> I=E2=80=99m not sure what to try next. Any pointers?
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap=
!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

