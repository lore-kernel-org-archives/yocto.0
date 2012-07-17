Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01D74E00282
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 09:12:38 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1163341pbb.35
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=9u+GYKVLoOPyQPO7xFoS2ilwa31vmdJh54phuli0UNU=;
	b=M/IOdBbGMEdjL6OqdQU6rY3v9VFiHOr672NCwGy5gMjblusCtdBi3RpNwCI2uS4Eq9
	VYRw/un5pVQEo7120PUsD1WgvKaGuox1rvn5KUCdfV8UyzCi3OCywdo+0a21tW0jJxGm
	0ermD9KLdUZrfk4ENnJsM6VqJPZjafL+LXFZnainsVEjDZuh104ePww2EcbdOtt6i3Vu
	dnRA46gWZeZNRVmrugSm7a7RY8NAEiFnbXvPm5TuhgqlrZcdZIwWR1VE5HAneTmvoNA5
	amSIj/A07QbWS35OYyHZelCcRStCvtZEqHSTj4a1eMAdtXVJzO21uGnTiO+rLgQso5j4
	RJcw==
Received: by 10.68.223.138 with SMTP id qu10mr59927pbc.50.1342541558651; Tue,
	17 Jul 2012 09:12:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.67.4.102 with HTTP; Tue, 17 Jul 2012 09:12:18 -0700 (PDT)
In-Reply-To: <1909558.65z9niKLNS@helios>
References: <CANge7vX-hAtgt50q+h8B=iVGLgEi6sTx4OsJ_o1QKBX_vvANng@mail.gmail.com>
	<1909558.65z9niKLNS@helios>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Tue, 17 Jul 2012 12:12:18 -0400
Message-ID: <CANge7vWPuv866jym9_cx=mMz40Ac38FSrVBVuUHvU+UHM_vT6A@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: do_configure() failure with my qt4-embedded_4.8.0.bbappend
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
X-List-Received-Date: Tue, 17 Jul 2012 16:12:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

>> QT_CONFIG_FLAGS := "-release -no-rpath -reduce-relocations -shared\
>>  -no-mmx -no-3dnow -no-sse -no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-avx\
>>  -no-glib -no-largefile -no-accessibility -no-openssl -no-gtkstyle
>> -no-exceptions\
>>  -no-xcursor -no-xinerama -no-phonon -no-phonon-backend -no-svg -no-webkit\
>>  -no-libmng -no-accessibility -no-qt3support -no-xmlpatterns\
>>  -no-audio-backend -no-gif -nomake examples -nomake demos
>> -no-javascript-jit\ -no-nis -no-cups -no-declarative-debug\
>>  -no-sql-db2 -no-sql-ibase -no-sql-mysql -no-sql-oci -no-sql-odbc\
>>  -no-sql-sqlite -no-sql-sqlite2 -no-sql-sqlite_symbian -no-sql-tds\
>>  -no-xkb -no-kbd-tty -no-kbd-qnx -no-mouse-linuxinput\
>>  -no-mouse-tslib -no-mouse-qnx -no-mouse-linuxtp\
>>  -qt-mouse-pc -qt-kbd-linuxinput\
>>  -qt-gfx-linuxfb -qt-gfx-multiscreen\
>>  -depths 8,16,24,32\
>>  -declarative -script"
>>
>> I see a lot of errors during qt4-embedded_4.8.0's do_configure, where
>> some auto-detection compilation tests are run, for features that aren't
>> relevant or that I've explicitly disabled. (e.g., sse3, PostgreSQL)
>>
>> Ultimately, this stage fails with:
>>  "XLib disabled. Basic XLib functionality test failed!"
>>
>> Could someone shed some light on this? I don't intend to use X11, so I'm
>> a bit confused as to why this induces a failure.
>
> Since you're providing your own value of QT_CONFIG_FLAGS I think you're
> missing -embedded $QT_ARCH and possibly -qtlibinfix ${QT_LIBINFIX} (see
> meta/recipes-qt/qt4/qt4-embedded.inc).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

Whoops! I most certainly did forget to put the -embedded flag back in after
pruning out that, -platform, -xplatform, -little-endian, etc. from my original
config script. That certainly explains a lot.

Thank you Paul!

- Jon

