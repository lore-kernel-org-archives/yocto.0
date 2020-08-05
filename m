Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web11.4884.1596626065600018952
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 04:14:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:43852 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1k3HNH-000Ufp-H1
	for yocto@lists.yoctoproject.org; Wed, 05 Aug 2020 07:14:24 -0400
Received: from [66.129.241.14] ([66.129.241.14]) by crashcourse.ca (Horde
 Framework) with HTTPS; Wed, 05 Aug 2020 07:14:23 -0400
Date: Wed, 05 Aug 2020 07:14:23 -0400
Message-ID: <20200805071423.Horde.gFLTeIPgkH6Zz45SlgRXx8H@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: when is it appropriate to push recipe enhancements (eg., class-nativesdk) upstream?
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline

based on recipe from an existing (zeus-based) project, colleague asks
about a bbappend file, and whether it's appropriate that it be submitted
upstream as a patch -- this example involves "pciutils" recipe from
oe-core, but the question more generally covers any number of recipes.

this particular code base has the following pciutils_%.bbappend file:

=== start ===
PACKAGECONFIG_class-nativesdk = ""

DISABLE_STATIC_pn-nativesdk-pciutils = ""

# Need nativesdk-specific do_install due to ${sbindir} being set to usr/bin
do_install_class-nativesdk () {
         oe_runmake DESTDIR=${D} install install-lib

         oe_multilib_header pci/config.h
}

BBCLASSEXTEND += "nativesdk"
=== end ===

i'm looking at this for the first time and, sure, it appears to
extend the pciutils recipe for nativesdk. but if that's true, then
would it not make sense to submit that as a patch?

the current zeus "pciutils_3.6.2.bb" recipe doesn't extend the
recipe for nativesdk, so if this bbappend file actually correctly
does that, would it not make sense to contribute that enhancement
back?

in general, there appear to be numerous recipes in this code base
that do little more than extend the recipe for native and nativesdk
because the oe-core (or meta-oe) recipes don't do that.

am i thinking about this correctly? it seems that, if local bbappend
content fixes or enhances a recipe, it would make sense to push that
fix so as to not have to carry around the bbappend files.

thoughts? i'm not passing any judgment on the correctness of this
particular bbappend file, i'm more interested in the general
philosophy of pushing improvements to not have to keep carrying
them around in the local code base.

rday


