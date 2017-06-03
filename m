Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB088E00AC8; Sat,  3 Jun 2017 07:38:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D69AFE00460
	for <yocto@yoctoproject.org>; Sat,  3 Jun 2017 07:38:41 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id n195so46013000wmg.1
	for <yocto@yoctoproject.org>; Sat, 03 Jun 2017 07:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/XtzTxlzwtzhJDT5hw/6DQr5SXslNFIPTaFqm/IhFA0=;
	b=fI2QnjZ2OvnyTOlhIfnznpCC2Kd2fULY540eFlXPw846HR+/uFJAeMBSQsv3pi3FCT
	vYNmlz4ph01NJgKZlLTnnHy36AuJ/gKq/6+J0v5xvasi2P3Nw3AYRWXGiL+MZH/htLtl
	bNGuURe8rhunzuIJoqINwMlkFrnaxW6y1bc1xKqwmX86k+khEJp6AhgDbqpg8yzgDTwS
	Vy2AsS0BmfsrQnDxO53IIfmDrxYvtmKgfm7Ybm4imEM1I+2XHcPlpmKIyOwHAgnMU/m7
	QUpod5TbbFhuO07xQM2UmrCAvgzRjlosLRFzc9M6y4QK/j4kLRsKXT/f43zqc2Mhxeu1
	sBcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/XtzTxlzwtzhJDT5hw/6DQr5SXslNFIPTaFqm/IhFA0=;
	b=OXfpLoSDAlzXendNIGfeLeRRJ7YqTSwW45b9M0XdxOW2W8RTXNGcoi+1lqPX7Kgsfb
	uy1BrMqY3AgL88/YFcf23lFg79YZnjRks8IJ1svE/6dLVDjQOZXN32sKbB8I81SKsKlS
	wwaSjc4ooOTVMN2BEUqXJRrtDoRUQgbPJ+tq/NYeVgjXwVy0GOO5K0TsHHnNakhEkm8z
	8LbXybvvNOpbzmMdYr4kyz6De2A6kyxo1Jmtjf//2mBU+1anrARj2Fr8kRnHx20v8Bx2
	Ilo/G5Vd4ShdbdpmBRkm2OgAG6hLnRpjf/jRL71nqRVKPW3UunToMLTs8c5h4/+YMFnJ
	DmPA==
X-Gm-Message-State: AODbwcActqTH+4KdsIv6c3JcHllRHgB+fWNZZxrFQ0bSb5eFjsom71kH
	sJ4Q8DwvyThS43LU2colBT57LlAYhw==
X-Received: by 10.80.137.56 with SMTP id e53mr10004251ede.67.1496500720501;
	Sat, 03 Jun 2017 07:38:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Sat, 3 Jun 2017 07:38:10 -0700 (PDT)
In-Reply-To: <ogu9cd$n9o$1@blaine.gmane.org>
References: <ogstl6$5tv$1@blaine.gmane.org>
	<CAMKF1soAhvG-qdO9Axpuw4cNHuoCuPwfSJKm2L85WGe924LeRQ@mail.gmail.com>
	<ogu9cd$n9o$1@blaine.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 3 Jun 2017 07:38:10 -0700
Message-ID: <CAMKF1sqhe2TuZDSNQsBybTEWN5J1EQC6hgnAXPe2LM2mAPi1TA@mail.gmail.com>
To: Ferry Toth <ftoth@exalondelft.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libpam-systemd not built, but enabled in systemd PACKAGECONFIG
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
X-List-Received-Date: Sat, 03 Jun 2017 14:38:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jun 3, 2017 at 5:17 AM, Ferry Toth <ftoth@exalondelft.nl> wrote:
> Khem Raj wrote:
>
>> On Fri, Jun 2, 2017 at 4:51 PM, Ferry Toth
>> <ftoth@exalondelft.nl> wrote:
>>> That is when building systemd with morty.
>>>
>>> I have DISTRO_FEATURES pam set, but I find --disable-pam in the configure
>>> log.
>>>
>>> In fact only --enable-split-usr  --enable-xz and --enable-nls are set
>>> according to the log. None of these are set through PACKAGECONFIG.
>>>
>>> And everything that is set through PACKAGECONFIG is --disabled...
>>>
>>> It looks inverted..
>>>
>>> What am I doing wrong?
>>
>> Can you show output of
>>
>> bitbake -e systemd | grep -e "^DISTRO_FEATURES="
>
> DISTRO_FEATURES="systemd alsa argp bluetooth ext2 largefile usbgadget
> usbhost wifi xattr zeroconf pci pam ipv4 ipv6 libc-backtrace libc-big-macros
> libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt
>                         libc-crypt-ufc libc-db-aliases libc-envz
> libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse
>                 libc-getlogin libc-idn libc-inet-anl libc-libm libc-
> locales libc-locale-code
> libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
> libc-streams libc-sunrpc
> libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
> libc-posix-regexp-glibc
> libc-posix-wchar-io pulseaudio bluez5 gobject-introspection-data"
>
> But thanks for pointing this out, I had looked here before, but I had missed
> the following line (bitbake -e systemd | grep -e "PACKAGECONFIG="):
>
> # $PACKAGECONFIG_pn-systemd
> #   set /home/ferry/tmp/edison-intel/my/edison-morty/meta-intel-edison/meta-
> intel-edison-distro/conf/distro/poky-edison.conf:21
> #     "xz"
> PACKAGECONFIG_pn-systemd="xz"

hmm they probably meant to append and not override

>
> I appears I also had a line in my conf:
> PACKAGECONFIG_pn-systemd = "xz"
>
> This appears to overrule the distro features.
>

yes, thats the expected behavior for this assignment.

> The conf file is a remnant of:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-edison/tree/meta-intel-edison-distro/conf/distro/poky-edison.conf
>
> So it looks like meta-intel-edison-distro cn never have worked well.
>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

