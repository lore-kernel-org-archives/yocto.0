Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web11.7684.1630424879620376636
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 08:47:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linux.microsoft.com header.s=default header.b=k/nQBWEZ;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182, mailfrom: anbelski@linux.microsoft.com)
Received: from fringe.fritz.box (i59F7C321.versanet.de [89.247.195.33])
	by linux.microsoft.com (Postfix) with ESMTPSA id E2B4520B914E;
	Tue, 31 Aug 2021 08:47:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com E2B4520B914E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1630424878;
	bh=r04uBSRNUv6Ekt932lzUIsLq4icNFTbQ29tTdd/XTcA=;
	h=Subject:From:Reply-To:To:Cc:Date:From;
	b=k/nQBWEZHai5pPkRFSBNlzZxRorM1I4dqB3IGYA6OkUC7F91SyBsTf/bXz6cRNXW/
	 Lj9Waxour8zYF2V3CW4Q1Tdg8znHG2kJs1fn06QLeNIl90YggllfNuf8uuMdygwaT+
	 yezcaCfc/xqcerjtLIZzo9Ueqrd14txTZgbCtqDA=
Message-ID: <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
Subject: Binary compliance validation
From: "Anatol Belski" <anbelski@linux.microsoft.com>
Reply-To: anbelski@linux.microsoft.com
To: yocto@lists.yoctoproject.org
Cc: Karissa Sanchez <kasanchez519@gmail.com>
Date: Tue, 31 Aug 2021 17:45:55 +0200
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I'm writing to present an ABI compliance check mechanism for Poky
recently developed to help improve the product stability. It is still
an early work which however has already proven itself useful and thus
the time seems right to ask for the community view.

Binary compliance is an important metric, when a distrubition intends
to provide stability guarantees to consumers outside the monolithic
image build. For example, projects utilizing the SDK might not be in
sync with the image builds from even the same branch. Even in stable
branches where bugfixes, security patches or even non breaching
upgrades have to flow in as necessary, there's is currently no
verifiable mechainsm to ensure the binary compatibility long term.

The currently implemented validation is based on libabigail and as such
is focused on the ABI compliance. Libabigail is a tool developed by Red
Hat and is in use for Fedora and RHEL RPM builds. Some companies are
known to utilize libabigail to support the kernel maintanance (Linux
kernel for Android). The meta layer contains a bbclass extending the
buildhistory functionality with the ABI serialization and comparison.
One buildhistory version taken as a baseline would serve the comparison
with any follow up builds. The ABI changes detected are then reported.

The handling routines in Poky are currently attached to the install
task, which implies the baseline build needs to take place with the
sstate disabled. The follow up buids can use sstate and in that case
the postinstall routines will be invoked only if some change took place
and thus do_install has been called.

The implementation is made as a core Python module, which can be used
in a Yocto layer or imported in any other script. The layer is
available under:
https://github.com/clio-project/meta-binaryaudit

and the accompanying python module (which moves at some faster pace and
is synchronized into the layer) and a command line tool:
https://github.com/clio-project/python-binaryaudit

The layer is yet an early work and the impluementation doesn't exhaust
all the possible features of Poky and libabigail. However, it already
proves itself helpful and is used for some real products to esure the
ABI stability. Certainly the mechanisms and the integration can be
improved.

The future for this layer is open containing at least the topics below:

- Binary size auditing.
- Security auditing.

As a shorter term serviceableness, the ABI compliance validation
mechanism seems to be a useful tool in helping to keep promises on LTS,
but would most likely also help maintaining non LTS branches. It would
be great to receive any feedback, reviews and ideas in regard to meta-
binaryaudit.

Thanks!

Anatol 

