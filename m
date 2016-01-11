Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA43BE0088C; Mon, 11 Jan 2016 06:22:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.197 listed in list.dnswl.org]
Received: from mail-ig0-f197.google.com (mail-ig0-f197.google.com
	[209.85.213.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED94E00404
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 06:21:45 -0800 (PST)
Received: by mail-ig0-f197.google.com with SMTP id ik10so355226630igb.2
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 06:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=n5zcK92NVb4rcoYNMcOvlERA2IEPG1cU+gjUK3/0vkE=;
	b=j37hm9PWZQ0r0Do4d5BbaN5WhJdjx/G1v9jaRnA/QvMahg73kEIhJZMcY6EAjUfBAN
	07mleegCB93wKCvz52nxeyBeCtVhUwoUCcX9tuOza6fIsdV+HpMiGeeku4+aA+xuNkvG
	Rn/4NPhYCYJriFyBvrND3+O2xHXIOr0FMfPaFRRuxqTNoya5tXmxAr+SRgK6qRia/Fkf
	foHgHpyLG/vsTpJSROhU2fcAuxPzG67ixM7o7nP8tns96QPzr8wAnlMDqS+NkvCUPthx
	M8+SYaWujJp6fkvMNIYuIuoYfnUSQYHns5g+8+MLMCAhBD5+wm1EQRdyAOaK1irSMdiA
	ZQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=n5zcK92NVb4rcoYNMcOvlERA2IEPG1cU+gjUK3/0vkE=;
	b=gaLPForgDqw5yRidLW86p1Q5wvAX6tBWBNEK1CCbsnnwG68aB8jBVVaU4P3uiCcQXR
	KYqlMHQ2O/oNVZ1a9qzihpNefP/OPkaMa7rx1PgYjdoPv7enmX1nfkRBJMkpE3LJT/6E
	SHvJ4zbzLpNNEYVx0hk8YtJknWQTBcKmb4uuraFI5wWypOwvl+hcc0K6JneNY390IOYt
	E5gJcu3CJXZEFz07tCiiPFjkjPAFH/q6Y8qdXdR5XBEdOjnxsqpWzdvSNOlHIAf0LeMd
	a9Ln7eDre6gMyQ9XHMAXxFugXRDEPg0equ1/jGshXszNTSxcwuWB6rouzHAXM7h5M/uq
	3q8Q==
X-Gm-Message-State: ALoCoQkv2V8XFTYX2l8e7ARcr4MHhWqKA8VPiBur9KzW2u/22U2KBFl/6UEbAtmUfqoULG3BUgWtUiUX6VPCUmq9hWQ2XziRzQ==
MIME-Version: 1.0
X-Received: by 10.202.224.215 with SMTP id x206mr9305187oig.12.1452522105351; 
	Mon, 11 Jan 2016 06:21:45 -0800 (PST)
Received: by 10.202.46.19 with HTTP; Mon, 11 Jan 2016 06:21:45 -0800 (PST)
In-Reply-To: <CAK18fxG9EkNONhESoZsKtbY8DexAKNKTy6nWyAoLEejsQbRdVg@mail.gmail.com>
References: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
	<1452480913-15282-1-git-send-email-j.madieu@expemb.com>
	<1452480913-15282-3-git-send-email-j.madieu@expemb.com>
	<CAK18fxG9EkNONhESoZsKtbY8DexAKNKTy6nWyAoLEejsQbRdVg@mail.gmail.com>
Date: Mon, 11 Jan 2016 15:21:45 +0100
Message-ID: <CAJzgOf+useUh1kc6eKnP1bbCvALnH3M+tYdod3WbTM_9-rp=eQ@mail.gmail.com>
From: john madieu <j.madieu@expemb.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/4] qtbase bbappend: cleanned recipe
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
X-List-Received-Date: Mon, 11 Jan 2016 14:22:02 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jan 11, 2016 at 2:49 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> Hi John,
Hello Andrei
>
> On Mon, Jan 11, 2016 at 3:55 AM, John Madieu <j.madieu@expemb.com> wrote:
>>
>> Signed-off-by: John Madieu <j.madieu@expemb.com>
>> ---
>>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 11 +++--------
>>  1 file changed, 3 insertions(+), 8 deletions(-)
>>
>> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> index ac158a9..8b77bfa 100644
>> --- a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> @@ -1,12 +1,12 @@
>>
>
> I can't follow these patches. Can you squash them to include cleanups and so on and have clean patches sent? As well, can you send them tagged as v2 so I can easily see them?
Of course.
I will send you back all patches directly from the beginning, by
tagging them all v2

>
>>
>>  do_configure_prepend_rpi() {
>> -
>> +
>>         sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
>>      if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
>>          cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
>>  QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
>> -QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
>> -QMAKE_LIBS_EGL = -lEGL -lGLESv2
>> +QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>>  EOF
>>
>>          if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
>> @@ -27,8 +27,3 @@ load(qt_config)
>>
>>  EOF
>>  }
>> -
>> -
>> -
>> -
>> -
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

-- 

John MADIEU |  j.madieu@expemb.com

