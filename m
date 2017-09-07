Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4BAEE00CC9; Thu,  7 Sep 2017 09:52:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D62E00CC6
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 09:52:07 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id d8so478439pgt.4
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 09:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=r26IDjMSqw5BmuhdWodFVKR9qt0irHQ/pokpM2f3Vfo=;
	b=bFg+sUw7bQ8Mq4i1fIxE8eRVDpUw/LGWIQZIa0cE3aoAzX6EKc9InYkAdg7oL4NOnn
	VHRb9vzuluulU8ghEOTg0LKVetp1Xt4f71KANf70en+pB6eAuG1odsD/Kr0T9PdTLqkH
	DrmVVmBtvEo9kf5f3EpbXohzSw1ahdUmTBahuZWzp5yS9MpVDWZN8K4CWsIvTjbIjz25
	64AFaOjkUiU+qWHsQoiwhizQ39lKpJtLA2Otyycdgfag4cqGjf+gHfOyVyBBKPG4YX79
	wXI9gNJ/j6TsJn9YDBW2fCH4A+Za3VE1tFd+Q+D3ZgYdQ40QkJPpEFcIeG2UHkCIBgDA
	jgjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=r26IDjMSqw5BmuhdWodFVKR9qt0irHQ/pokpM2f3Vfo=;
	b=Ff9tdOVO9S2yDLgFbmi8LVTan5v6YRqiqi74A6995vEQqUoJOlnWkkT8nIFewzSxRG
	fTTcLXc93wg5zrBZi08Al6rIa1nTEB0fEJKgU94hK9IqRXuw1x/OLW01tc+SRvaDj1Bw
	VeYWZmZbUt5FrYynd46IK2b5MU7h/xP5GiVUqVfgBX4FB1jbGQ+B4R40pZGezXl/O3a7
	ZU9iDy2EqhNkhnruPYTPOPaqRXzAUHzS0LZz4Vmth5i0ZCUQ+dXRV8tHk1F1BIcPQIJO
	W3klHCE/eXHkPEAmvSn2pQ2R3mxTRkSRmxKg86D7xA28Y5sdNxphUmHBryKOoFpOKAXB
	WZyg==
X-Gm-Message-State: AHPjjUhNJRviL/qwGVWi6nCvG5V75byONIVkHHdcw3mPfb2MaRc6doFJ
	g3sfE2DT2Em+9G8wkZf3MdIl9rHx2jM+9PhrkX4=
X-Google-Smtp-Source: ADKCNb4mGPbXLZJOp2mfZ687iMYctzYtl1V5/CmUHJ4e0A27eSgqXAzfwCaf+09JnRwoN9pPJzNJxDkOWmb/FeIADyM=
X-Received: by 10.84.177.129 with SMTP id x1mr3766163plb.161.1504803126755;
	Thu, 07 Sep 2017 09:52:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.189.8 with HTTP; Thu, 7 Sep 2017 09:51:36 -0700 (PDT)
In-Reply-To: <f8d14557-176c-f463-34cc-d93ef9cdb929@windriver.com>
References: <afce79fad80649ff88295ca3d41499ef@sakuraus.com>
	<CAJ86T=Uce45W_Thtuqv_CORNx7X6c1TD-Bg8O_DRyu65NLS6wQ@mail.gmail.com>
	<70ce682e4c584761b8bb5fad63f7d737@sakuraus.com>
	<f8d14557-176c-f463-34cc-d93ef9cdb929@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Sep 2017 09:51:36 -0700
Message-ID: <CAMKF1sqgjD6e7YGjpAvON8YxrxbLHFdeQxKpPnztEEoTiEK1-Q@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Working behind a Palo Alto firewall/proxy
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
X-List-Received-Date: Thu, 07 Sep 2017 16:52:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

you can try adding following to ~/.gitconfig

[http]
        sslverify =3D false

On Thu, Sep 7, 2017 at 9:31 AM, Mark Hatle <mark.hatle@windriver.com> wrote=
:
> I've had a customer with a similar problem.  The way they resolved it was=
 to
> download the certification from their proxy and add it to their system as=
 a
> known certificate.
>
> Sorry I don't have any more details then that, but maybe that can spark s=
omeone
> who knows the actual steps to be able to comment.
>
> --Mark
>
> On 9/7/17 11:28 AM, Greg Wilson-Lindberg wrote:
>> Hi Andre,
>>
>>
>> Here is the complete error output:
>>
>> ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Fetche=
r
>> failure: Fetch command export
>> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-9ReQWXYEk1"; expor=
t
>> SSH_AUTH_SOCK=3D"/run/user/1000/keyring-4PGABB/ssh"; export
>> PATH=3D"/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sys=
roots/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-rasp=
berrypi3/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Y=
octo-build-RPi3/sources/poky/scripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/=
build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi=
:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/rasp=
berrypi3/usr/bin/crossscripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-r=
aspberrypi3/tmp/sysroots/x86_64-linux/usr/sbin:/home/gwilson/Qt-5.9/Yocto-b=
uild-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin:/home/gwilso=
n/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/sbin=
:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_=
64-linux/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/scripts:/ho=
me/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/bitbake/bin:/home/gwilson/T=
EE:/home/gwilson/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbi=
n:/bin:/usr/games:/usr/local/games:/opt/microchip/xc32/v1.34/bin:/home/gwil=
son/RPi3/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin"=
;
>> export HOME=3D"/home/gwilson"; LANG=3DC git -c core.fsyncobjectfiles=3D0=
 clone --bare
>> --mirror http://codereview.qt-project.org/qt/qtdeviceutilities
>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downloads/gi=
t2/codereview.qt-project.org.qt.qtdeviceutilities
>> --progress failed with exit code 128, output:
>> Cloning into bare repository
>> '/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downloads/g=
it2/codereview.qt-project.org.qt.qtdeviceutilities'...
>> fatal: unable to access
>> 'https://codereview.qt-project.org/qt/qtdeviceutilities/': server certif=
icate
>> verification failed. CAfile:
>> /usr/share/ca-certificates/cert_Decryption-Certificate.pem CRLfile: none
>>
>> ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Fetche=
r
>> failure for URL:
>> 'git://codereview.qt-project.org/qt/qtdeviceutilities;nobranch=3D1;proto=
col=3Dhttp'.
>> Unable to fetch URL from any source.
>> ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Functi=
on
>> failed: base_do_fetch
>> ERROR: Logfile of failure stored in:
>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work/cortex=
a7hf-neon-vfpv4-poky-linux-gnueabi/qtdeviceutilities/5.9.1+gitAUTOINC+48fb7=
04e64-r0/temp/log.do_fetch.8128
>> ERROR: Task
>> (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-boot2qt/recipes-qt/q=
t5/qtdeviceutilities.bb:do_fetch)
>> failed with exit code '1'
>>
>> So it looks like:
>>
>> qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch
>>
>> is what's running.
>>
>>
>>
>> ------------------------------------------------------------------------=
--------
>> *From:* Andre McCurdy <armccurdy@gmail.com>
>> *Sent:* Wednesday, September 6, 2017 6:34:07 PM
>> *To:* Greg Wilson-Lindberg
>> *Cc:* yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Working behind a Palo Alto firewall/proxy
>>
>> On Wed, Sep 6, 2017 at 2:42 PM, Greg Wilson-Lindberg
>> <GWilson@sakuraus.com> wrote:
>>> Hi List,
>>>
>>> Does anybody have any experience trying to run Yocto behind a Palo Alto
>>> firewall. The Palo Alto firewall basically works as a Man in the Middle
>>> system, it hands out its own certificate to boxes behind it and then
>>> decrypts and re-encrypts traffic going through it. The Palo Alto box is
>>> supposed to act as a transparent Proxy.
>>>
>>> I'm getting an error that the 'server certificate verification failed' =
about
>>> an hour into a yocto build. The certificate that the Palo Alto box is
>>> sending to my system is self-signed so will fail if checked for a valid=
 root
>>> CA, and also is not from whatever site is being downloaded from.
>>
>> Which site is being downloaded from and at which point in the build
>> (ie which recipe and task) ?
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

