Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A5C9E00AE0; Wed, 19 Apr 2017 04:02:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5CB6E00AF8
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:02:04 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id a140so1928269ita.3
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JnlT3/FiGKlg0/48Oc4OSKsJPZ7Pn3OTVAqeQouDvoI=;
	b=sOFnJhIvVwJBrWYm+ekrjGLBLOe/tmVRI4KYPL4AArIv8AzhYc+JtMscN3AG1eBnSY
	2XMO2XcLluMx6LRspZ8bhievDlewexaUAKrz8XD8MXDV+2mTsQDBMHCfDW45WSLIKmxU
	Dj1mlcSA6M5U0gAod0KMrffEqxGmWg0f9foUCO/M3I8EBZIiCvIQIXncCwACzmaZH3ZM
	34MT9NAmFG/r+2Lx6lnlz1Nwq0r/QCQ2T73wVpGP5ZpRHl63zTpAf8xehQ0/t9WOgi+l
	1/tVeIFWQz+Y9VkpoiKIdqO9cUULMMcoMkRlZSvWrPM1I/nMN1J3hkMzUKm0n0wCR69h
	t2kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JnlT3/FiGKlg0/48Oc4OSKsJPZ7Pn3OTVAqeQouDvoI=;
	b=SlrUbdtDfJlm+oGjjYQgIjGvy+O0QRqUR22C7h0MQnfBCSNeD0cK0eWoUcywoJeE7z
	HwHXCr+vbmV5JVEw6OxglE6slXYBHyRxZEjVOu96Yf2vQzU0WFD4K4wxOlSZxYC+FOmA
	11esfg3gDPEQMWua/u9i6FpI1c4NMRZ8OpEUGIqAfEcNAlRqeMwJwPv9iAq/XSNegz2M
	MysXOo2imCLx3R0ocjj7OWjaErdMZwHyqSpd+p4j258GM8QJ0nF5lB4yFaG95TBKIcZI
	qTY4bSLKvWZm/1RpRK/HwegqbRA7DwmYXY9UPbihwSD5VhIa8mhYT2yiU8DISBH04BlH
	LRfw==
X-Gm-Message-State: AN3rC/5TDGvcItgDvGkuBUq9YnK1MVHNC8XIrpVXKiXkE8n+JCTuiPGv
	jtKnNTTrx7fK8odXbW1P5YvtTXBiHpHis5E=
X-Received: by 10.36.87.15 with SMTP id u15mr2322710ita.58.1492599723993; Wed,
	19 Apr 2017 04:02:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 19 Apr 2017 04:01:23 -0700 (PDT)
X-Originating-IP: [86.158.8.191]
In-Reply-To: <CALbNGRSM2Kt8g=0eut0s8K3WCoEd-utWP0Fu+gyDyd3_R1f_Ag@mail.gmail.com>
References: <20170418181322.14588-1-andrei@gherzan.ro>
	<CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
	<CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
	<CALbNGRSM2Kt8g=0eut0s8K3WCoEd-utWP0Fu+gyDyd3_R1f_Ag@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 19 Apr 2017 12:01:23 +0100
Message-ID: <CAK18fxF2WJ+adcfGtSZHEQz4BfNgJ=Cc3o8ALJcStuKv3D2gPA@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Wed, 19 Apr 2017 11:02:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 19, 2017 at 11:52 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Wed, Apr 19, 2017 at 12:41 PM, Andrei Gherzan <andrei@gherzan.ro> wrot=
e:
>> On Tue, Apr 18, 2017 at 7:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> On Tue, Apr 18, 2017 at 11:13 AM, Andrei Gherzan <andrei@gherzan.ro> wr=
ote:
>>>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>>>> ---
>>>>  recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
>>>>  recipes-core/udev/udev-rules-rpi/99-com.rules | 21
>>>
>>> perhaps a bbappend to udev-extraconf recipe is better ?
>>>
>>> +++++++++++++++++++++
>>>>  2 files changed, 33 insertions(+)
>>>>  create mode 100644 recipes-core/udev/udev-rules-rpi.bb
>>>>  create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules
>>>>
>>>> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/u=
dev-rules-rpi.bb
>>>> new file mode 100644
>>>> index 0000000..20443d3
>>>> --- /dev/null
>>>> +++ b/recipes-core/udev/udev-rules-rpi.bb
>>>> @@ -0,0 +1,12 @@
>>>> +DESCRIPTION =3D "udev rules for Raspberry Pi Boards"
>>>> +LICENSE =3D "MIT"
>>>> +LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9c=
fbcb788c80a0384361b4de20420"
>>>> +
>>>> +SRC_URI =3D " file://99-com.rules"
>>>> +
>>>> +S =3D "${WORKDIR}"
>>>> +
>>>> +do_install () {
>>>> +    install -d ${D}${sysconfdir}/udev/rules.d
>>>> +    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/ru=
les.d/
>>>> +}
>>>> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-c=
ore/udev/udev-rules-rpi/99-com.rules
>>>> new file mode 100644
>>>> index 0000000..6bf019b
>>>> --- /dev/null
>>>> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
>>>> @@ -0,0 +1,21 @@
>>>> +KERNEL=3D=3D"ttyAMA[01]", PROGRAM=3D"/bin/sh -c '\
>>>> +       ALIASES=3D/proc/device-tree/aliases; \
>>>> +       if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
>>>> +               echo 0;\
>>>> +       elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
>>>> +               echo 1; \
>>>> +       else \
>>>> +               exit 1; \
>>>> +       fi\
>>>> +'", SYMLINK+=3D"serial%c"
>>>> +
>>>> +KERNEL=3D=3D"ttyS0", PROGRAM=3D"/bin/sh -c '\
>>>> +       ALIASES=3D/proc/device-tree/aliases; \
>>>> +       if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
>>>> +               echo 0; \
>>>> +       elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
>>>> +               echo 1; \
>>>> +       else \
>>>> +               exit 1; \
>>>> +       fi \
>>>> +'", SYMLINK+=3D"serial%c"
>>>> --
>>>> 2.12.2
>>>>
>>
>> I was thinking about that but extraconf brings additional
>> functionality (ex automount) that might not be of interest. I
>> personally don't want that. What do you think?
>>
>> --
>> Andrei Gherzan
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

I don't see your comment. Could you resend?

--
Andrei Gherzan

