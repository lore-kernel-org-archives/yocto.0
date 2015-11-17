Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FF9E009C3; Tue, 17 Nov 2015 04:06:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A540E008D2
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 04:06:30 -0800 (PST)
Received: by pacej9 with SMTP id ej9so7529277pac.2
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 04:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=iYk2BuvDGb4sinz0/4HnDUcAK0c3CipbDDTHr9ZGTo0=;
	b=SI6Bamuh7PXPpFJHeSSiup85AmJSmVGTI+LU258u6GIyGVOwd+CjRY/Z2faNVgdisp
	xTW3zEk44+BSmw2k9fWKTKTEKzxRGDzSlq1M/tIIy31fH55J2DMdwY2FXBRwGj5VLXsR
	w1fiyQXiI5KhFh5ZsafOhoYRV8qkv55z/DRTyUwiYWhllmPe/NnIbh6lUWbZaxSvCZB8
	Ib4GELpXzrSyiddUAY2cNgUy9NsZxyFsu7q2mhDk7pvQv+MoswKC4e1DfmdVQOirpUMP
	3ruD91FyDLz9iM1eUVsmf+E69OSPPCGDdP5+tN6jzET5bp1qdLu5IsYEAzO/BNLVYG3k
	n82Q==
X-Received: by 10.68.194.227 with SMTP id hz3mr62827942pbc.105.1447761989897; 
	Tue, 17 Nov 2015 04:06:29 -0800 (PST)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	sy5sm31189313pac.5.2015.11.17.04.06.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Nov 2015 04:06:28 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <1447590685-8145-1-git-send-email-net147@gmail.com>
	<CAMKF1sqq0xS6qHSCHVZsn6wmTQEGUuegT31tVN6ppfNem+kXGA@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <564B183E.3000204@gmail.com>
Date: Tue, 17 Nov 2015 23:06:22 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqq0xS6qHSCHVZsn6wmTQEGUuegT31tVN6ppfNem+kXGA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v5] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Tue, 17 Nov 2015 12:06:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/11/2015 4:31 AM, Khem Raj wrote:
> On Sun, Nov 15, 2015 at 4:31 AM, Jonathan Liu <net147@gmail.com> wrote:
>> [Support #16]
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>   conf/machine/include/rpi-base.inc | 3 +++
>>   recipes-qt/qt5/qtbase_%.bbappend  | 8 ++++++++
>>   2 files changed, 11 insertions(+)
>>   create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
>> index e097702..b390705 100644
>> --- a/conf/machine/include/rpi-base.inc
>> +++ b/conf/machine/include/rpi-base.inc
>> @@ -48,3 +48,6 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
>>   SPLASH = "psplash-raspberrypi"
>>
>>   IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
>> +
>> +# Qt packages are machine specific due to RPi integration
>> +QT_PACKAGES_ARCH = "${MACHINE_ARCH}"
>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
>> new file mode 100644
>> index 0000000..7775e70
>> --- /dev/null
>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
>> @@ -0,0 +1,8 @@
>> +do_configure_prepend_rpi() {
>> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
>> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
> should this should be controlled based on a knob for userspace binary
> driver or open source kernel driver is used.
I am not sure whether the open source kernel driver is complete enough. 
Have you tested it? Do you have any patch to get it running with Qt?
>
>> +QMAKE_INCDIR_EGL = $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
>> +QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}
>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>> +EOF
>> +}
>> --
>> 2.6.2
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


