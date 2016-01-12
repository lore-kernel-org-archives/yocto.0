Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39DADE00903; Mon, 11 Jan 2016 17:55:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f198.google.com (mail-ig0-f198.google.com
	[209.85.213.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A6EE0086B
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 17:55:15 -0800 (PST)
Received: by mail-ig0-f198.google.com with SMTP id mw1so380038108igb.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 17:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mIqsaqV8PKcaVX4rzHPKQJoKnl8ij310FtSzLIt6GVg=;
	b=waKqtAbNhXCM8fPEQw6y6W0qzeEhNj4wVmPlONhVfR2oqRmHmsAyWSS4UpwRVLuHFg
	o17ZvhOQYWbk+Hirg1W+IESakX6OiLxba7w5NWik3rt3+cxuANEmuENvdNDHACNkTisF
	+Oa/gZS0/Slq14iPcBy5ujLjst5Ad4zD517uiYQfvLLIWfALOjknGtIQDBCBaup+Jhlx
	S/4Ru2+0lzMck0adS+q0jsEQnanD8/nlHUXbYVMoA06rvtdZmxBoGaSRUflSMLE8mqka
	tJdsU8Y0e26x4jBuT2HtwCElBGRVuRhQL08Nnq2WlenN/gqIVEsR8RmKlZ2vw0LhFHH3
	ftSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=mIqsaqV8PKcaVX4rzHPKQJoKnl8ij310FtSzLIt6GVg=;
	b=DuAfXcqpvytUq4Y3cSZfBdEMO2nHNVQRxc2U54C/BCBYkS6D2B1XQh3LPnzPWG0qzA
	T3Oz0bU4KOSnQ3FfStE4BKNFSM5j+SQ4aR6HWW3WiHmEuLo6SmtQalmvPU81m8AexlOI
	uyNKChI7mYooWGBNB6u3WG1t7qfY+cnCOAColLS1vYwqpXA6TmbdxwwikO2/7PmDPqOk
	gaH8jIsQiLjBCOT7T7eeXqBHVQx4cqaDy7k1iFInGBql6LgLhMg3nlovhsEEoW8yk61j
	glLNBeYyI+NDaABGuMJI26BH5etMkcJ02ulZj/RLz/Aysy1er0l1jcUkQ2kFDK57WCT7
	SFqw==
X-Gm-Message-State: ALoCoQkGYzzwtkEsiHf+JFEGc+Y+LrFZAvLsPAj6XLyCCUrjXldTErtWNn3RW7mLjse7x6pUw6RsP0EAugy2yXKRo7UPO4olIg==
MIME-Version: 1.0
X-Received: by 10.182.148.39 with SMTP id tp7mr55565764obb.87.1452563714768;
	Mon, 11 Jan 2016 17:55:14 -0800 (PST)
Received: by 10.202.46.19 with HTTP; Mon, 11 Jan 2016 17:55:14 -0800 (PST)
In-Reply-To: <20160111203414.GB10203@resin>
References: <CAK18fxGB5uiXe7LigW3V9TEA2EJFQtsZTt-9yJ=rNwLzdzKY0w@mail.gmail.com>
	<1452527171-26371-1-git-send-email-j.madieu@expemb.com>
	<20160111203414.GB10203@resin>
Date: Tue, 12 Jan 2016 02:55:14 +0100
Message-ID: <CAJzgOf+jeDLnwB7Jg4UkA6+KX0JaUU0qRGB7m4zK2ppg2y_Lgg@mail.gmail.com>
From: john madieu <j.madieu@expemb.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 12 Jan 2016 01:55:19 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jan 11, 2016 at 9:34 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Mon, Jan 11, 2016 at 04:46:10PM +0100, John Madieu wrote:
>> Because EGL properties were not defined properly, we always had the following error
>>     make: *** [egl] Error 1
>>     | EGL disabled.
>>     |  The EGL functionality test failed; EGL is required by some QPA plugins to manage cont
>>     |  You might need to modify the include and library search paths by editing QMAKE_INCDIR
>>
>> This bbappend definitively fix the bug
>>
>> Signed-off-by: John Madieu <j.madieu@expemb.com>
>> ---
>>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 29 +++++++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>  create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> new file mode 100644
>> index 0000000..8b77bfa
>> --- /dev/null
>> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> @@ -0,0 +1,29 @@
>> +
>> +do_configure_prepend_rpi() {
>> +
>> +     sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
>> +    if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
>> +        cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
>> +QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
>> +QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>> +EOF
>> +
>> +        if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
>> +            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
>> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
>> +EOF
>> +        else
>> +            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
>> +EGLFS_PLATFORM_HOOKS_LIBS = -lbcm_host
>> +EGLFS_PLATFORM_HOOKS_SOURCES = \$\$PWD/../devices/linux-rasp-pi-g++/qeglfshooks_pi.cpp
>> +EOF
>> +        fi
>> +    fi
>> +    cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
>> +
>> +
>> +load(qt_config)
>> +
>> +EOF
>> +}
>

> qtbase fails at compile time:
Sorry for that

> | compiling .moc/moc_qeglplatformcursor_p.cpp
> |
> /home/andrei/work/yocto/build-rpi-master/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:
> In member function 'virtual QRect
> QGtkStyle::subControlRect(QStyle::ComplexControl, const QStyleOptionComplex*,
> QStyle::SubControl, const QWidget*) const':
> |
> /home/andrei/work/yocto/build-rpi-master/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:24:
> error: 'isInstanceOf' is not a member of 'QStyleHelper'
> |              } else if (QStyleHelper::isInstanceOf(groupBox->styleObject,
> QAccessible::Grouping)) {
> |                         ^
> |
> /home/andrei/work/yocto/build-rpi-master/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:74:
> error: 'QAccessible' has not been declared
> |              } else if (QStyleHelper::isInstanceOf(groupBox->styleObject,
> QAccessible::Grouping)) {
> |                                                                           ^
> | Makefile:53048: recipe for target '.obj/qgtkstyle.o' failed
> | make[2]: *** [.obj/qgtkstyle.o] Error 1
> | make[2]: *** Waiting for unfinished jobs....
>
>
> How is this supposed to be tested?

I finaly reproduced the same error.

I did not have it because during my compilation, I removed "x11"
from DISTRO_FEATURES. If you look at qtbase_git.bb, you can see that
some of PACKAGECONFIG_X11 features (gtkstyle) depend on "-accessibility" flag.

so I added that flags according to the presence or not of x11 in DISTRO_FEATURES
I thus made several test with or without x11, in DISTRO_FEATURES .
All succeeded.

The last patch will be plug and play. I'll tag it v3 and everything
should works fine now.
But before, I still have some test to do (with mixed distro_features).
I will pay more attention this time.


> --
> Andrei Gherzan
-- 
John MADIEU | j.madieu@expemb.com |

