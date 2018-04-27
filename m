Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DBEBE0086B; Fri, 27 Apr 2018 14:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C7EE0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 14:34:32 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id i3so2061023uad.4
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 14:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TwO9FMtWIjbk81gUE5Lz4alh2lrcKa7cbwL29FlJa6I=;
	b=InCjS3ve1BTVtiQyOtggY1J38nE7K1jv5Tppt//luK4wPjC14raJ2rd+M6NoVhtDGU
	akbBbevxSeaNHtUdiBexVviVVTBuZ3acMLnX2Krl5tSbba274xbqvdfKOceI26N1Hxgo
	bADtztC6wvv5rjHv3/W+Fgn6oJHtLU60hGJI9gbOuwbnwxir/HBbqiNan8LWRZumgDbw
	DeqzSOPLJ2jW6PvFlbaKY9z1UR/qIvRcnqjMvb17qp8ACJ3p0p2cqHYHGLc8X/UD6Zaa
	nL53qQ70dnIcOSiOromo35VCIqlgTErGTweda2GWAVhIXHglobN8/9/0yvEboqW0QUhC
	WOMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TwO9FMtWIjbk81gUE5Lz4alh2lrcKa7cbwL29FlJa6I=;
	b=bz/fGkBaXz/MjCojqFAnKANcwguOM76yINS1P8E62rwmEyxPAylhzdJh06bAQoJVi8
	G8724JbAAIvC77CLuDrKTeka7OnCVs1n/8OCbgpXmJ6J55JoSLCAhz8DZVSO731bRx5+
	NPOFifpc38NKc6g8iMz48B4l02o6KxC8d7pCssNRrwvKb9KNf7G4gqKwtv12ywFMF/nC
	WK4cJJh4j2erjd7jfgei9DAM64f17q5w9Nfg2+EqH+F5/f4h7N7m5Kj14s6AV9LzuvSk
	+fAABcEggsS3AIdFaieTMxzsrvH8g4sUIplSqPXLFPvcrD7D+4u0hYTwH1pg+NqwFdPP
	tC3A==
X-Gm-Message-State: ALQs6tAEpbswKY9MxZ61YD8P0zEKpqDWEF+v+PwUU8/dNlcWhjQkmLAS
	AzJ8q1vf8cchxtmduHNjhv1nRQV37gOuhV/TuOI=
X-Google-Smtp-Source: AB8JxZpkUTm2hRMutt6zgQKUpdwVm0VQtAnlybCaF0BL6Ngzp5vCMGiS0hS0+Kgu3OnKiRh8I6ZbmN1G6ajT5a6fy3A=
X-Received: by 10.176.32.13 with SMTP id v13mr2888766uak.150.1524864871677;
	Fri, 27 Apr 2018 14:34:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Fri, 27 Apr 2018 14:34:31 -0700 (PDT)
In-Reply-To: <CA+FhBv87F=hTjo5R3kt1KiK4oghwxEgxBGh5NEAUdHFoLLjvbQ@mail.gmail.com>
References: <CA+FhBv87F=hTjo5R3kt1KiK4oghwxEgxBGh5NEAUdHFoLLjvbQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 27 Apr 2018 14:34:31 -0700
Message-ID: <CAJ86T=Ui20qYO0p_WFpZSjJAK6an2-i_bmhM+Oyp+avWbt5fiA@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: LINUX_VERSION issue in recipe
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
X-List-Received-Date: Fri, 27 Apr 2018 21:34:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 27, 2018 at 3:44 AM, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
> Hi,
>
> This must be a stupid basic question. I have the following recipe append:
>
> keymaps_1.0.bbappend
> -----------------------------------------------------------------------------
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI_append = " file://keymaps.service \
>                    file://keymap.sh \
> "
>
> do_install_append() {
>     install -d ${D}${sysconfdir}
>     ln -sf /usr/share/keymaps/i386/qwerty/fi.map.gz
> ${D}${sysconfdir}/keymap-${LINUX_VERSION}.map.gz
>
>     install -d ${D}${systemd_system_unitdir}
>     install -m 0644 ${WORKDIR}/keymaps.service ${D}${systemd_system_unitdir}
> }
>
> FILES_${PN} += " ${sysconfdir}/* \
>                  ${systemd_system_unitdir}/* \
> "
>
> inherit systemd
> SYSTEMD_SERVICE_${PN} = "${PN}.service"
> -----------------------------------------------------------------------------
>
> The LINUX_VERSION is not expanded and the final symlink name becomes
> /etc/keymap-.map.gz.
>
> What's correct way to get the linux version in the recipe files?

In general, there isn't a correct way to do that. The LINUX_VERSION
variable is defined within the kernel recipe and other recipes won't
have access to it.

A core concept in OE is that recipes build independently of each
other. In this case, since the keymaps recipe has no direct dependency
on the kernel, you should not expect the keymaps recipe to be rebuilt
(or affected in any way) when the kernel or kernel version changes.

The keymaps init script ( meta/recipes-bsp/keymaps/files/keymap.sh )
detects the kernel version dynamically at runtime. If you need a
kernel version specific symlink in your target rootfs, maybe you could
create it at runtime from your keymaps service file?

