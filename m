Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A8CCE0070F; Mon, 11 Jan 2016 12:34:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F93FE0070F
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 12:34:18 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id f206so27951411wmf.2
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 12:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=tEcA5Roq7xDxurEaj1KHFrl5ay1sks7RtwZ1h5rKb/o=;
	b=JCQGzg93p1RlQR1YKbGxmKFEVfh6KcajLEX6cG+4HrebyM7MJv9XqJLKIvQcNbM/gr
	ZTVype9O2a4Xt9OlghDp+cjKRtENShex/rEWJ1pvK5SMHmKJSYHj2gCbNim27N3XJusm
	4fhVYJloXb41xA2+iRmW4gA6jr1aorFBKZ8bGHzEXViAjOPhBRNQvUQk6SPfGnQ2atBQ
	x0A+TPLyRLHWj78xQHPPRytD6oFWFOuLWA5jYXK/ZLcfPbjJU7Sn4sC8NYwEw8ZZiiW3
	CrdnQAhN9oDYaci+CIQtgMPq6Kne4mxyg5q253UlGzYV1SHohvaJa/D65j+bN/YN/rgv
	f1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=tEcA5Roq7xDxurEaj1KHFrl5ay1sks7RtwZ1h5rKb/o=;
	b=TMwptJSs08nqc0MLgjIfG4qfgHl1rxSpqk3HWX5VOVPluuLQcKY7e2JaoNJds93BEs
	QZ9BUDvW/XSHsa+67FIN8jDAZk0nTvGLCdNF7doTol+xdrD400/2aPf7s54+Tp1Nammb
	CtKzbiDfsnhMkKJp9GVKEuudpUf2XkafTqXEkaIo3E7af1WykhkFFMgQDnAjjV5mLGEf
	YhGmgWcQAb9M4DABvYDas/s7/xzzjhxWESJrqWS21tfnRan4SRL3UB79160InSmu6Ey8
	SOJ6nVz1myYevhsStin4IehGDrFXyZn1y61/R3+wXHd70FwBDyGDUZnQc8ExSA+gxJwV
	wnlw==
X-Gm-Message-State: ALoCoQnOh08njm/bAJ1OPmV7g4lCxD9pwK9m//vTANirspn6gF42qojKLa46nm46svadxZAnWWAxF4O6NbLe+FT5mgWEjLzmvg==
X-Received: by 10.194.200.106 with SMTP id jr10mr89484617wjc.100.1452544457954;
	Mon, 11 Jan 2016 12:34:17 -0800 (PST)
Received: from resin (dslb-178-007-064-118.178.007.pools.vodafone-ip.de.
	[178.7.64.118]) by smtp.gmail.com with ESMTPSA id
	w23sm14383416wmd.1.2016.01.11.12.34.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jan 2016 12:34:16 -0800 (PST)
Date: Mon, 11 Jan 2016 21:34:14 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: John Madieu <j.madieu@expemb.com>
Message-ID: <20160111203414.GB10203@resin>
References: <CAK18fxGB5uiXe7LigW3V9TEA2EJFQtsZTt-9yJ=rNwLzdzKY0w@mail.gmail.com>
	<1452527171-26371-1-git-send-email-j.madieu@expemb.com>
MIME-Version: 1.0
In-Reply-To: <1452527171-26371-1-git-send-email-j.madieu@expemb.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] qt5: fixed raspberrypi support
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
X-List-Received-Date: Mon, 11 Jan 2016 20:34:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 11, 2016 at 04:46:10PM +0100, John Madieu wrote:
> Because EGL properties were not defined properly, we always had the following error
>     make: *** [egl] Error 1
>     | EGL disabled.
>     |  The EGL functionality test failed; EGL is required by some QPA plugins to manage cont
>     |  You might need to modify the include and library search paths by editing QMAKE_INCDIR
>
> This bbappend definitively fix the bug
>
> Signed-off-by: John Madieu <j.madieu@expemb.com>
> ---
>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>
> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> new file mode 100644
> index 0000000..8b77bfa
> --- /dev/null
> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,29 @@
> +
> +do_configure_prepend_rpi() {
> +
> +	sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
> +    if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
> +        cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
> +QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
> +QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
> +EOF
> +
> +        if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
> +            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
> +EOF
> +        else
> +            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
> +EGLFS_PLATFORM_HOOKS_LIBS = -lbcm_host
> +EGLFS_PLATFORM_HOOKS_SOURCES = \$\$PWD/../devices/linux-rasp-pi-g++/qeglfshooks_pi.cpp
> +EOF
> +        fi
> +    fi
> +    cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
> +
> +
> +load(qt_config)
> +
> +EOF
> +}

qtbase fails at compile time:

| compiling .moc/moc_qeglplatformcursor_p.cpp
|
/home/andrei/work/yocto/build-rpi-master/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:
In member function 'virtual QRect
QGtkStyle::subControlRect(QStyle::ComplexControl, const QStyleOptionComplex*,
QStyle::SubControl, const QWidget*) const':
|
/home/andrei/work/yocto/build-rpi-master/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:24:
error: 'isInstanceOf' is not a member of 'QStyleHelper'
|              } else if (QStyleHelper::isInstanceOf(groupBox->styleObject,
QAccessible::Grouping)) {
|                         ^
|
/home/andrei/work/yocto/build-rpi-master/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:74:
error: 'QAccessible' has not been declared
|              } else if (QStyleHelper::isInstanceOf(groupBox->styleObject,
QAccessible::Grouping)) {
|                                                                           ^
| Makefile:53048: recipe for target '.obj/qgtkstyle.o' failed
| make[2]: *** [.obj/qgtkstyle.o] Error 1
| make[2]: *** Waiting for unfinished jobs....


How is this supposed to be tested?

--
Andrei Gherzan

