Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD550E00ADF; Wed, 19 Apr 2017 09:33:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C46E00B72
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:33:15 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id q125so5902615wmd.3
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=arprOBkb7OIdpRva5r6f+o6u+t35E8CmFOTjqc3VjG0=;
	b=Z5kL8QrmxGATWsMqOOFWrj0AOVerVV4JQMVAu25OE1/94aFquPbK4mpj1YfGdCJlSH
	h1JTrMfJgBgfr0ZFmpBMYlzhe+xhgIcLWgwyAjYVpXxxgjrYNgkNhCbnIFrXLhgRae5c
	QKGVilhlx9B13aw/ZGwkD0U4tLiyRry2RkQ6zVLb0//pKbOECtfYNddInQE/Jfm6yI1i
	ib/LhrQ7DdoSCb/QPT+DuX1o2rYR4Gw5PanBTWNPVEGvyEz2ANl3DHFOLlAwGewiQ2Vf
	G4D/PSZqMYd6GUnD7H8kwm9kOcq4ywLqdSvCSwN/5UpSkvjbL7QbtCRXfX8ZrkS2ued+
	lHnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=arprOBkb7OIdpRva5r6f+o6u+t35E8CmFOTjqc3VjG0=;
	b=kPSctWka/3UFB4ISWRWZdU2rR6JldKlIRPyGMNYheTTWC8Cqa53QwGUN0U39bI79ii
	+/6kMz/IQtvjWmYkRjJ+YrWK3svZ+qhFhmHMX0YtchURuUPGQe164v7Ma+6kxEZewUv8
	6EYa8WsTf0UjjUV14Jk9GoKrIFF6VyCQrSTgk6Pd2x76FxdigwHbHV9SJLH6sBqGN9k+
	2hDe0c5sa6sysUnt4xaTeqJ89l5AedkyqWorVPLFf8FksOq9zCIT7k+3GPv5SwBWNETA
	TmISpkrlSNrD6EQah0pxFNxh5aMIL/OpZdUUVxnOsLp/bOKIu0ltl602JgDxr9/poiRc
	l7IA==
X-Gm-Message-State: AN3rC/7H00iSEK09J1RLeC04HsxwjOb4x0jXfRQLIHn5vGBeTP51KD8W
	83NBaHsWP/a+vXbFaMcXnAzKavuhwA==
X-Received: by 10.28.87.70 with SMTP id l67mr17658590wmb.37.1492619594391;
	Wed, 19 Apr 2017 09:33:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Wed, 19 Apr 2017 09:32:43 -0700 (PDT)
In-Reply-To: <CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
References: <20170418181322.14588-1-andrei@gherzan.ro>
	<CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
	<CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Apr 2017 09:32:43 -0700
Message-ID: <CAMKF1srKkXmMs2bqxi6OnKqUyLTcU6TVLYsJFnm5u=f7XXpu2w@mail.gmail.com>
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
X-List-Received-Date: Wed, 19 Apr 2017 16:33:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 3:41 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
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

yeah that seems fine on second thought, since its quite pi specific
rule

> --
> Andrei Gherzan

