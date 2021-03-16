Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web10.1141.1615920233307295576
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 11:43:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:56136 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lMEfW-00HAOm-64; Tue, 16 Mar 2021 14:43:50 -0400
Date: Tue, 16 Mar 2021 14:43:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: jchludzinski@vivaldi.net
cc: Josef Holzmayr <jester@theyoctojester.info>, 
    Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
    akuster <akuster808@gmail.com>, Yocto <yocto@lists.yoctoproject.org>, 
    "jchludzinski via lists.yoctoproject.org" <jchludzinski=vivaldi.net@lists.yoctoproject.org>
Subject: Re: [yocto] Building test code?
In-Reply-To: <baac6e467b320e2678f9ee7f668b287b@vivaldi.net>
Message-ID: <902ab76c-de1-3e5b-2bef-3b5ed093b093@crashcourse.ca>
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net> <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com> <247c426e3db4a7f031aad842303134f1@vivaldi.net> <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
 <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com> <166CDA589776C94C.8652@lists.yoctoproject.org> <166CDD724205027D.27789@lists.yoctoproject.org> <baac6e467b320e2678f9ee7f668b287b@vivaldi.net>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-171389226-1615920230=:9985"

--8323328-171389226-1615920230=:9985
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 16 Mar 2021, jchludzinski via lists.yoctoproject.org wrote:

> I tried to build spidev-test using the bitbake recipe: 
>
> spidev-test.bb
>  
> I set:
> ARCH=arm
> BBPATH
> CROSS_COMPILER=arm-linux-gnueabihf-
> PATH
>
> ... and then tried to build spidev-test:
>
> $ bitbake -b spidev-test.bb
> WARNING: Buildfile specified, dependencies will not be handled. If this is not what you want, do not use -b / --buildfile.
> Loading cache: 100% |################################################################| Time: 0:00:00
> Loaded 1433 entries from dependency cache.
>
> Build Configuration:
> BB_VERSION           = "1.49.2"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "fedora-33"
> TARGET_SYS           = "x86_64-oe-linux"
> MACHINE              = "qemux86-64"
> DISTRO               = "nodistro"
> DISTRO_VERSION       = "nodistro.0"
> TUNE_FEATURES        = "m64 core2"
> TARGET_FPU           = ""
> meta                 = "master:fa1e1fbc082e82e41ccfeae58af97fe048c9aac7"
>
> Initialising tasks: 100% |###########################################################| Time: 0:00:00
> Sstate summary: Wanted 6 Local 0 Network 0 Missed 6 Current 0 (0% match, 0% complete)
> NOTE: Executing Tasks
> WARNING: spidev-test-1.0-r0 do_populate_lic: Could not copy license file /home/fedora/openembedded-core/meta/files/common-lic
> enses/GPL-2.0 to /home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/spidev-test/1.0-r0/license-destdir/s
> pidev-test/GPL-2.0: [Errno 2] No such file or directory: '/home/fedora/openembedded-core/meta/files/common-licenses/GPL-2.0'
> ERROR: spidev-test-1.0-r0 do_populate_lic: QA Issue: spidev-test: LIC_FILES_CHKSUM points to an invalid file: /home/fedora/op
> enembedded-core/meta/files/common-licenses/GPL-2.0 [license-checksum]
> ERROR: spidev-test-1.0-r0 do_populate_lic: Fatal QA errors found, failing task.
> ERROR: Logfile of failure stored in: /home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/spidev-test/1.0-
> r0/temp/log.do_populate_lic.281153
> ERROR: Task (/home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb:do_populate_lic) failed wi
> th exit code '1'
> NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb:do_populate_lic
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> What's this about licences?

  in current OE, there is no "GPL-2.0" license file, there is
"GPL-2.0-only" and "GPL-2.0-or-later" and a bunch of others, so i
think you need to pick one of those.

rday

--8323328-171389226-1615920230=:9985--
