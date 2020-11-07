Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.568.1604727769746196161
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Nov 2020 21:42:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iBV7PkHB;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id b18so3200341qkc.9
        for <yocto@lists.yoctoproject.org>; Fri, 06 Nov 2020 21:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bkGeMWeWQpGKrnoyyNClrK7BD5pAQdH0p5m/xkyhITY=;
        b=iBV7PkHBtJGscdjirIrMQjHzGw0qkyDT4pTKlnrmAXf+wh8URGH7ycTUGjIbYN9kk9
         mo4h84Jtxkrs/7I5GK24lOv8GgiRFFq9XyT+lV/lyC8USd+TtCHVkk84BuIzBYHMiG49
         RoldExb+4dlqVbpMTIvY+oqYn4vSux5LFRhioYe7C2ng6ua+o71LD+KpusjsgodI2KcH
         PJFxKeTuDLs/l+eFfRz/4alfxvhqreqU4AbT0xmm57b0yolexwUt7BuK4eTTrlMLLFM7
         Pm1IJVL6FCcplr7CP7/3zFvwiT0OcpF0A1oSDDJEJCmVBE1pgO9Mk5qYCWNuuzeqjhfB
         CVRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bkGeMWeWQpGKrnoyyNClrK7BD5pAQdH0p5m/xkyhITY=;
        b=XZeOpDhF4fkNDCrGSjYHyh4Ug1TR5/pTHavpbuF8P84pFtJp2IA6oQSXumS11zxljG
         i37ooUFYLF5stZOKot/3GiPtNSmrDVUGfF+WuQy/RUmFpESUxIc1Qm/xaadZjKGqIdey
         zzX4TORwaOaMViPdnI++VU1CAR1dbDYfnSl82tlimyTXSo0ZOcNNv0P7E5CzafLKwxI0
         dEzMb3w+VkDth39f+irLMPPsNUrI7+dJRXDZDzmm3s08uBOhU6GDt41c2KQm1N4HP06x
         etCsol+1DFQYtZLTmSoDKhA2xD0O72n3MfS/ypgVYX3HgWNSIgbiMsAN7/ffW4bEw1Or
         wn8g==
X-Gm-Message-State: AOAM533EETbHEPLTcbzyI3pXJT6HLKkc1+yAG3G7VzcNb7T9zITQozTf
	qK3kEUw8eZHp4G4wKGvyZ1egRLKyS4uJJxJJAsM=
X-Google-Smtp-Source: ABdhPJxplbRfs/JCtRP/YNfZnHQWVbXIH/ns894YMwra8t6n1/9CA1KH3nNwFuzeiuWqGc4dQAG+EvZ3VTjcTcc5hnM=
X-Received: by 2002:a37:6195:: with SMTP id v143mr4695446qkb.71.1604727768761;
 Fri, 06 Nov 2020 21:42:48 -0800 (PST)
MIME-Version: 1.0
References: <3rpq.1604716265989001199.J0NK@lists.yoctoproject.org>
In-Reply-To: <3rpq.1604716265989001199.J0NK@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 6 Nov 2020 21:42:22 -0800
Message-ID: <CAMKF1sqd4K_5B7P8QHSC83vCw7CLwsJhV3bYusuq_k8t+yGhgQ@mail.gmail.com>
Subject: Re: [yocto] Trying to compile hping3 from sources #devtool
To: Vaijayanthi <vaijayanthi@silver-peak.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

whats the name of your recipe ? secondly hping3 requires libtcl8.6.so
seems to be troublesome because its asking
for devel package not the original library, I wonder why, can you find
out the linker cmdline where ping3 is getting linked ?

On Fri, Nov 6, 2020 at 6:31 PM Vaijayanthi <vaijayanthi@silver-peak.com> wrote:
>
> Hi, I am using devtool add hping3 https://github.com/antirez/hping to add hping3 as part of our custom image. Here is my recipe:
>
> # Recipe created by recipetool
>
> # This is the basis of a recipe and may need further editing in order to be fully functional.
>
> # (Feel free to remove these comments when editing.)
>
>
>
> # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guesses - it is
>
> # your responsibility to verify that the values are complete and correct.
>
> #
>
> # The following license files were not able to be identified and are
>
> # represented as "Unknown" below, you will need to check them yourself:
>
> #   COPYING
>
> LICENSE = "GPLv2"
>
> LIC_FILES_CHKSUM = "file://COPYING;md5=3728a6c4c9630a9e796ad4b82dacd887"
>
>
>
> SRC_URI = "git://github.com/antirez/hping;protocol=https"
>
>
>
> # Modify these as desired
>
> PV = "1.0+git${SRCPV}"
>
> SRCREV = "3547c7691742c6eaa31f8402e0ccbb81387c1b99"
>
>
>
> S = "${WORKDIR}/git"
>
>
>
> #DEPENDS = "libpcap"
>
> RDEPENDS_${PN} += " libpcap tcl-lib tcl"
>
>
>
> # NOTE: no Makefile found, unable to determine what needs to be done
>
>
>
> do_configure () {
>
>     # Specify any needed configure commands here
>
>     CONFIGOSTYPE="LINUX" ./configure
>
> }
>
>
>
> do_compile () {
>
>     # Specify compilation commands here
>
>     make
>
> }
>
> do_install() {
>
>     #install -Dm755 ${B}/libpcap.so.0.8 ${D}${libdir}/libpcap.so.0.8
>
>     #ln -sf libpcap.so.0.8 ${D}${libdir}/libpcap.so
>
>     #install -Dm755 ${B}/libtcl8.6.so ${D}${libdir}/libtcl8.6.so
>
>     #ln -sf libtcl8.6.so ${D}${libdir}/libtcl8.6.so
>
>     install -m 0755 -d ${D}${sbindir} ${D}/${mandir} ${D}${docdir}/hping3
>
>     install -m 0755 hping3 ${D}/${sbindir}
>
>     install -m 0644 docs/hping3.8 ${D}/${mandir}
>
>     install -m 0644 docs/HPING2-HOWTO.txt docs/HPING2-IS-OPEN \
>
>         docs/MORE-FUN-WITH-IPID docs/SPOOFED_SCAN.txt \
>
>         docs/AS-BACKDOOR docs/APD.txt ${D}${docdir}/hping3
>
> }
>
>
>
> #INSANE_SKIP_${PN}-dev = "ldflags"
>
> #INSANE_SKIP_${PN} = "ldflags"
>
> #INSANE_SKIP_${PN} += "file-rdeps dev-deps"
>
>
> How do I add this to my custom bitbake layer? Also, make is complaining about
> ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hping3 contained in package hping3 requires libpcap.so.0.8()(64bit), but no providers found in RDEPENDS_hping3? [file-rdeps]
> ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hping3 contained in package hping3 requires libtcl8.6.so()(64bit), but no providers found in RDEPENDS_hping3? [file-rdeps]
> ERROR: hping3-1.0+git999-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.
>
> Please let me know what I should I do next to integrate this recipe with my custom meta layer and also, address the make failures.
>
>
>
> 
>
