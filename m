Return-Path: <coldnew.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C983E008CC; Mon,  2 Feb 2015 19:33:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (coldnew.tw[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C89FE008A6
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 19:33:55 -0800 (PST)
Received: by mail-pa0-f41.google.com with SMTP id kq14so90584889pab.0
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 19:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:references:to:cc:subject:date:in-reply-to:message-id
	:mime-version:content-type;
	bh=a+a+uRibHBv33+SEGF1QpZ8LUB8zsjz/zomKTRhHihU=;
	b=bt+YpnwWtHyxkVh9AKkAfRR+KguELj5KujHoO4+6ZFXJP3dsw42uLnQhPa3nXkaZGJ
	7aAvmWJd3Ive0i6rmM6il6aNw3GUWaiA3TAxV+ou1tI5/oAcUs3NZEueHDyJTfSVry7a
	ScibNSbxDZ1HbKD9Sl5VixaqJGX6spNodauKjETBRE0C8kEVvjV9xQE92tm/szNBCL2v
	Ja+6Q+/ynzYhZisltiaSDkMoXUU3FyMl7qxGJkWHhGqsIZdGNomCXyh24mx/mD9NWoJ1
	1jzltFyLLCRNNfMbT5hhR+OnX8me0b0R2xvkd0jUGN7bXSUSu8dC6djADqRbYPEoylPQ
	rSZg==
X-Received: by 10.68.129.67 with SMTP id nu3mr34178808pbb.152.1422934435691;
	Mon, 02 Feb 2015 19:33:55 -0800 (PST)
Received: from Rosia ([203.70.194.104])
	by mx.google.com with ESMTPSA id fg6sm497709pdb.24.2015.02.02.19.33.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Feb 2015 19:33:54 -0800 (PST)
From: coldnew.tw@gmail.com
X-Google-Original-From: Yen-Chin, Lee <coldnew.tw@gmail.com>
References: <1422340015-44159-1-git-send-email-coldnew.tw@gmail.com>
	<20150131003509.GA9471@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 03 Feb 2015 11:32:17 +0800
In-reply-to: <20150131003509.GA9471@gmail.com>
Message-ID: <m2wq3zy8gw.fsf@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [oe] [meta-raspberrypi][PATCH v2] qtbase: Add basic Qt5 building support
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
X-List-Received-Date: Tue, 03 Feb 2015 03:33:59 -0000
Content-Type: text/plain


Andrei Gherzan writes:

> Hello,
>
> On Tue, Jan 27, 2015 at 02:26:55PM +0800, Yen-Chin Lee wrote:
>> To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to
>> indicate device config.
>>
>> Signed-off-by: Yen-Chin Lee <coldnew.tw@gmail.com>
>> ---
>>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>  create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> new file mode 100644
>> index 0000000..384df9f
>> --- /dev/null
>> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> @@ -0,0 +1,7 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +
>> +QT_CONFIG_FLAGS_append_raspberrypi = " \
>> +    -device linux-rasp-pi-g++ \
>> +    -device-option CROSS_COMPILE=${TARGET_PREFIX} \
>> +    -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pthreads \
>> +"
>> --
>> 1.9.3 (Apple Git-50)
>>
>> --
>> _______________________________________________
>> Openembedded-devel mailing list
>> Openembedded-devel@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>
> First of all please send patches to meta-raspberrypi mailing list (yocto).
> Use README for additional information.
>
> For whatever reason I can't bake qtbase:
> pulse/pulseaudio.h: No such file or directory
> |  #include <pulse/pulseaudio.h>
> |                               ^
> | compilation terminated.
> | Makefile:206: recipe for target 'pulseaudio.o' failed
> | make: *** [pulseaudio.o] Error 1
> | PulseAudio disabled.
> | PulseAudio support cannot be enabled due to functionality tests!
>
> Any idea why? Didn't you encounter this issue?

Last time I build with qt5 is fine, I think it's due to meta-qt5
upstream recently add function to let user to select alsa/pulseaudio.

I'll re-test this and resend it.

--

