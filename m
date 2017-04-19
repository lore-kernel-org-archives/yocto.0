Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 419CBE00A38; Wed, 19 Apr 2017 03:52:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00D82E00A38
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 03:52:38 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id 110so1667564uas.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 03:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=a5v9kVEcfQ15tz9EP7jUNd/w49Hq9I1UPsrRpwTi38Q=;
	b=OwC+O1hm26v4rS+rZ0C9+TcxH19e1NslwhHOzNB/enje2BZfbL88E3gBkCqdjweYsM
	vWpCjd7GB6ou90y3dUUCqJrKZseQWAOduk3bTUR5hsXCRjZZ02iIWEpd/y+dQTBXoB+h
	IT0OIlyAgjihTXKS2Urj40bT+TvdSSGMweHyMSbALGH7Ug0hkj2SaCivT67Sr3u9mpZx
	fh7117rJxZScI8UERa5+69lm0ujXTqOLUJd/21dp7hlyBc+gzbkWjJEOfu3ZOIIraXBi
	ELuxoZ7IkacpxOh+FTrBsvxf8Xb/2JKLPCwHxC6sWRDU/q6Pj9+q24p9JBrVyYKJvl4F
	anGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=a5v9kVEcfQ15tz9EP7jUNd/w49Hq9I1UPsrRpwTi38Q=;
	b=PNUQV8MrzbpwdYwDNYubUDY8EwzOX6uM1rBQVNvLLhH+HXw3KExQ6oWnS5g7Zsmsgy
	41p/sT6+rhxxlcPZIDp7xZd4mumou6QXIe3f9QjGtGiGajWxnu8OngISKQT3g2VGQB7s
	kI4E4PIz+HbdL0W2YNyOLgp6HVF3M4+PUqTMTwmnkQ004hSy5HMkLNu+V0W+UcrIdqG8
	c6dGctCjaCZVOmkUat7aCBIgWbI6hg9pDOwk+5BMRcp2tuaUOLzoVgkZayQBTVQ30IL7
	8ij2ZZskgWr0vJb74QHAQG2WTOg8CErDbN0D/P9XpVx9MdSb31rvPcjRUkZ8iSRnFFLm
	vU0Q==
X-Gm-Message-State: AN3rC/5Nva68fzPVHWq5PdroyiQqmJ2pnFx6OOe+xS7IE/6nSPWHYVre
	L3dZBiuSExokib3+br6dA26FPAewkg==
X-Received: by 10.176.25.18 with SMTP id v18mr976015uag.81.1492599158044; Wed,
	19 Apr 2017 03:52:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Wed, 19 Apr 2017 03:52:37 -0700 (PDT)
In-Reply-To: <CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
References: <20170418181322.14588-1-andrei@gherzan.ro>
	<CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
	<CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 19 Apr 2017 12:52:37 +0200
Message-ID: <CALbNGRSM2Kt8g=0eut0s8K3WCoEd-utWP0Fu+gyDyd3_R1f_Ag@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Wed, 19 Apr 2017 10:52:42 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 12:41 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Apr 18, 2017 at 7:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Tue, Apr 18, 2017 at 11:13 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>>> ---
>>>  recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
>>>  recipes-core/udev/udev-rules-rpi/99-com.rules | 21
>>
>> perhaps a bbappend to udev-extraconf recipe is better ?
>>
>> +++++++++++++++++++++
>>>  2 files changed, 33 insertions(+)
>>>  create mode 100644 recipes-core/udev/udev-rules-rpi.bb
>>>  create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules
>>>
>>> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
>>> new file mode 100644
>>> index 0000000..20443d3
>>> --- /dev/null
>>> +++ b/recipes-core/udev/udev-rules-rpi.bb
>>> @@ -0,0 +1,12 @@
>>> +DESCRIPTION = "udev rules for Raspberry Pi Boards"
>>> +LICENSE = "MIT"
>>> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>>> +
>>> +SRC_URI = " file://99-com.rules"
>>> +
>>> +S = "${WORKDIR}"
>>> +
>>> +do_install () {
>>> +    install -d ${D}${sysconfdir}/udev/rules.d
>>> +    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
>>> +}
>>> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
>>> new file mode 100644
>>> index 0000000..6bf019b
>>> --- /dev/null
>>> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
>>> @@ -0,0 +1,21 @@
>>> +KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
>>> +       ALIASES=/proc/device-tree/aliases; \
>>> +       if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
>>> +               echo 0;\
>>> +       elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
>>> +               echo 1; \
>>> +       else \
>>> +               exit 1; \
>>> +       fi\
>>> +'", SYMLINK+="serial%c"
>>> +
>>> +KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
>>> +       ALIASES=/proc/device-tree/aliases; \
>>> +       if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
>>> +               echo 0; \
>>> +       elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
>>> +               echo 1; \
>>> +       else \
>>> +               exit 1; \
>>> +       fi \
>>> +'", SYMLINK+="serial%c"
>>> --
>>> 2.12.2
>>>
>
> I was thinking about that but extraconf brings additional
> functionality (ex automount) that might not be of interest. I
> personally don't want that. What do you think?
>
> --
> Andrei Gherzan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

