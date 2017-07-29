Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FC43E00D6D; Fri, 28 Jul 2017 17:32:19 -0700 (PDT)
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
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17073E00D48
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 17:32:17 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id 33so103705803wrz.4
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 17:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kECYDxJusgmGxbdkt5gMKbdj/Pd63ZHl3AUxP6dqwYQ=;
	b=eQkgttzSfHgMGJu6QTd0A1d1yrDCp2VABHKdIx0RIFIfKWvdtBp/agMilzXGWoOO9r
	TpgssDPGbfoEjnuCZ1rQMx3FyUKiPGFyxBk9KnhqQMH5jDXoEXLT7cOCDbDI4TwQpmtp
	tPMSJwOime2pPP4etaAiFmgShZGd4UPhfErzYlfh6Y6I5xOvBHgfW0s4ho+dV0qBmBL0
	LxdEkU1LWLcoLwzjzcFaI6pUu35nD+cEhkkCeaRIpK7xlbqr7XK3wLAl5xrKUrNdyWjV
	1ilFR0NgOQUE+IJ44JtP0wAN0R1X+NoXHouu9FLNUfEZy58w48HYK0oRVWhJEcNw7ZF4
	Nt3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kECYDxJusgmGxbdkt5gMKbdj/Pd63ZHl3AUxP6dqwYQ=;
	b=IHDGECNNr1czlJ8JfWPLkUMmKc6x9Dhw/B23nb77q9eOwji5998ecvhNOs0KdhrNXc
	CzmVyVfLtPAYebYAubvN1nRCCSbv8QF9hcvMzDiO6qj953VB6qeaQNZpTZ+4yE1HNDNd
	RLVF/HrIuGh+j42xCWzVR68f1dUfykZCA0N3SFJFdHY8/EVtbpVpvEQYGGlHmKD+cWr8
	kWixLX1kGltL23AWW/JYEJ0WgC19dU1mz785yL51dSIf43+hFau6vQxkaQJlDg4Yd3fo
	bxFkzx+BZs0dDuZbN65hzkBd+xEHgnu+X1oOZvgzP/ym2RHJUjdEPZ0KIqBf4NOuG4p9
	f3Gw==
X-Gm-Message-State: AIVw1117Ow+aIlK2ZTr86lvid+yWr5luahIjc8Wz9IG7Gj1ml6IOIbGa
	/KQZreO5lvcq0bsV54sYSbSc1iA8Prba
X-Received: by 10.223.179.216 with SMTP id x24mr7307410wrd.7.1501288336873;
	Fri, 28 Jul 2017 17:32:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.175.16 with HTTP; Fri, 28 Jul 2017 17:32:16 -0700 (PDT)
In-Reply-To: <CAP3gWc8hoOW-gehwwfjvDH9NDyby2HSSzREWtSffwAo_t19JrQ@mail.gmail.com>
References: <CAP3gWc8hoOW-gehwwfjvDH9NDyby2HSSzREWtSffwAo_t19JrQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 28 Jul 2017 17:32:16 -0700
Message-ID: <CAJ86T=WceG6KAej8=ty7Ratz9Q-AN9TgNnNX4a_FMRUUaemvgg@mail.gmail.com>
To: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to have Poky automatically login at boot?
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
X-List-Received-Date: Sat, 29 Jul 2017 00:32:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 28, 2017 at 11:29 AM, Aaron Schwartz
<aaron.schwartz@logicsupply.com> wrote:
> Hello,
>
> I'm trying to have the busybox getty in Poky login as root automatically but
> I can't seem to get it working.

This may be a possible solution:

  https://git.linaro.org/openembedded/meta-linaro.git/tree/meta-linaro/recipes-linaro/auto-serial-console/auto-serial-console_0.1.bb

> So far I have a sysvinit-inittab_2.%.bbappend:
>>
>> PR := "${PR}.1"
>> SYSVINIT_ENABLED_GETTYS="1 2 3 4"
>> do_install() {
>>     install -d ${D}${sysconfdir}
>>     install -m 0644 ${WORKDIR}/inittab ${D}${sysconfdir}/inittab
>>     install -d ${D}${base_bindir}
>>     install -m 0755 ${WORKDIR}/start_getty ${D}${base_bindir}/start_getty
>>     set -x
>>     tmp="${SERIAL_CONSOLES}"
>>     for i in $tmp
>>     do
>> j=`echo ${i} | sed s/\;/\ /g`
>> l=`echo ${i} | sed -e 's/tty//' -e 's/^.*;//' -e 's/;.*//'`
>> label=`echo $l | sed 's/.*\(....\)/\1/'`
>> echo "$label:12345:respawn:${base_bindir}/start_getty ${j} vt102" >>
>> ${D}${sysconfdir}/inittab
>>     done
>>     if [ "${USE_VT}" = "1" ]; then
>>         cat <<EOF >>${D}${sysconfdir}/inittab
>> # ${base_sbindir}/getty invocations for the runlevels.
>> #
>> # The "id" field MUST be the same as the last
>> # characters of the device (after "tty").
>> #
>> # Format:
>> #  <id>:<runlevels>:<action>:<process>
>> #
>> EOF
>>         for n in ${SYSVINIT_ENABLED_GETTYS}
>>         do
>>             echo "$n:12345:respawn:${base_sbindir}/mingetty --autologin
>> root 38400 tty$n" >> ${D}${sysconfdir}/inittab
>>         done
>>         echo "" >> ${D}${sysconfdir}/inittab
>>     fi
>> }
>
>
> I have tried a number of flags with the default getty, including using a
> shell as login.  I tried adding mingetty to my image to see if that would
> work with it's "--autologin" flag, but I still got the busybox getty yelling
> at me about unrecognized flags.
>
> Is the best approach to adjust the ALTERNATIVE_PRIORITY for either the
> busybox getty or mingetty to have update-alternatives select mingetty, or is
> there an easier modification to my sysvinit-innittab bbappend above that
> will enable autologin?
>
> Thanks for the help!
> Aaron
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

