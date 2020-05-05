Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web12.6734.1588682161941723463
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 05:36:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:56486 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jVwno-00GVWk-Cy; Tue, 05 May 2020 08:36:00 -0400
Date: Tue, 5 May 2020 08:35:58 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: yocto@lists.yoctoproject.org
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] oddities(?) when appending to an override
In-Reply-To: <7678bbbeab464034e6e9248f3d05cab288f9bce8.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.2005050831460.11693@localhost.localdomain>
References: <alpine.LFD.2.21.2005041606030.7931@localhost.localdomain> <7678bbbeab464034e6e9248f3d05cab288f9bce8.camel@linuxfoundation.org>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Tue, 5 May 2020, Richard Purdie wrote:

> On Mon, 2020-05-04 at 16:28 -0400, Robert P. J. Day wrote:
> >   i bring this up because i've run across occasional examples of that
> > in the code base -- here's
> > meta-gnome/recipes-connectivity/libnma/libnma_1.8.28.bb:
> >
> >   EXTRA_OEMESON_mipsarchn32_append = " -Dvapi=false"
> >
> > is that deliberate, or is it just asking for trouble?
>
> I suspect its a mistake. If you want to create a list of the
> potentially incorrect entries we can review them.

  the only others i noticed were a pile of them in a single recipe
file in meta-openembedded:

meta-initramfs/recipes-kernel/kexec/kexec-tools-klibc_git.bb

COMMON_CFLAGS += "-O2 -I${STAGING_DIR_HOST}${libdir}/klibc/include -I${S}/purgatory/include"
CFLAGS_x86_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits32"
CFLAGS_x86-64_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits64"
CFLAGS_arm_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits32"
CFLAGS_aarch64_append = "${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits64"
CFLAGS_mips_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits32"
CFLAGS_mipsel_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits32"
CFLAGS_mips64_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits64"
CFLAGS_mips64el_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits64"
CFLAGS_powerpc_append = " ${COMMON_CFLAGS} -I${STAGING_DIR_HOST}${libdir}/klibc/include/bits32"

rday
