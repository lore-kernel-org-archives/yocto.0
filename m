Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.26748.1603045917506085310
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 11:31:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4FE4B38C090B
	for <yocto@yoctoproject.org>; Sun, 18 Oct 2020 11:31:57 -0700 (PDT)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:45090 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kUDTH-003FGR-QT
	for yocto@yoctoproject.org; Sun, 18 Oct 2020 14:31:56 -0400
Date: Sun, 18 Oct 2020 14:31:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: slightly weird use of PACKAGECONFIG in bbappend file?
Message-ID: <alpine.LFD.2.23.451.2010181418430.14910@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  currently updating lots of YP class notes, and writing a short
section on "coding style", and ran across the following oddity(?)
related to PACKAGECONFIG (all on master branches).

  i noticed in oe-core, qemu.inc:

  PACKAGECONFIG[spice] = "--enable-spice,--disable-spice,spice"

fair enough, that defines a setting for "spice" related to qemu.
however, for reasons that would make no sense to anyone but me, i
ended up at meta-cloud-services/meta-openstack/qemu_5.%.bbappend,
which conditionally requires qemu-openstack.inc, which contains:

/// start

PACKAGECONFIG[spice] = "--enable-spice,--disable-spice,spice,"
PACKAGECONFIG[libseccomp] = "--enable-seccomp,--disable-seccomp,libseccomp,libseccomp"

PACKAGECONFIG ?= "fdt virtfs libcap-ng"
PACKAGECONFIG_x86 ?= "fdt spice virtfs libcap-ng"
PACKAGECONFIG_x86-64 ?= "fdt spice virtfs libcap-ng"

PACKAGECONFIG_class-native = "fdt"
PACKAGECONFIG_class-nativesdk = "fdt"

/// end

  i have no problem with a recipe bbappend file selecting or
deselecting PACKAGECONFIG settings, but it looks just weird for a
bbappend file to define *new* PACKAGECONFIG settings -- that would
seem to be a property restricted to the base .bb recipe file for any
recipe.

  so in the above meta-openstack file, the line related to "spice" is
clearly redundant, but the line related to "libseccomp" just looks
weird as that should be defined in the qemu base recipe, no?

  or am i misunderstanding something again?

rday
