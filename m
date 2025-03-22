Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA06C36002
	for <webhook@archiver.kernel.org>; Sat, 22 Mar 2025 09:19:22 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.6320.1742635153000669957
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Mar 2025 02:19:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BBJxmisR;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ab771575040so759894966b.1
        for <yocto@lists.yoctoproject.org>; Sat, 22 Mar 2025 02:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742635151; x=1743239951; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9S5hi5ZctvqB6bZxsbGK7eDdtmrui2cuVhy/tlcqDLo=;
        b=BBJxmisRLd6y/j+mp83OMARR7ix5MMazgDSlc0uW0Qlk2wXRrVQV16fLxRkaI8GfuQ
         JVZHG7C7h7E3pWl1x9SOHM2ZyO0cYfUqhKQ9r8KWGBFBY+i9qP19IBqN2BG7FgxMHn3i
         Jd2D1ivG0F/du8/apXg08lwAbg3QLc6w5C53zIvAxNrGaaw72XPt/+0W7+EneIkthu/b
         0LOdKdnyDM+cBPFEMYo8qjS4jSzVhguCjt5e7cU+BzhJ2DdPMf+zd0BwgT4TzQY0w9TI
         G1YlA6lflZr5+FYzee4+OXCRnwU7KBNoxs5mWJatoLlgCoxddIdkKPBwrnjBo2ptXnoi
         VmhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742635151; x=1743239951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9S5hi5ZctvqB6bZxsbGK7eDdtmrui2cuVhy/tlcqDLo=;
        b=K2pBCKfXSakVyxYLWFS28tWNkHXkZoc/xJRnB7xR5MAt09ZTIKsnmtL24pHHF1FI96
         Mes/rcmPFyBbvlrxanHnjvud0E8VflqiBO8l/wt8kznKv5Gje23568B382NoLnoTIrx6
         0b+fFhAGh1/YaX1X7TUg/0QamMSvscP1pqapLQLjwV8P9vMKfYpV8h3iWA28KAPfDOeu
         NI4QfrC8nQbUJ5XD+t5WyQgUSw294o4uxTfYHmYN77anEr7b3GqLvKNeTiu+ycl1k73R
         IUcpsfC6cPLkvD5WgCXdBOY7hPkxLGaWkTVXtqC4Q8kOX91sjgFn6G02yM0wv5LAdTdK
         o0Yg==
X-Forwarded-Encrypted: i=1; AJvYcCVBwlWNegyUSJO0s28gRNJiIt4h59daH76lTo2wvSKm2FTf6hVZOsv0DaZiolhwH0LqO3NZlA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yxhx4hsCZYgcUqc6TLICWhuNJ5qrHh6vury+FOTX8zjBKdqxidO
	HfagTVOzJhR8CLIMF5XRR2tR5+41RytnZMUdG3mOVB9t0S6UG02F
X-Gm-Gg: ASbGncvAmwVE/gr8M2wNRDvC6TFacduqDM+V26SoDxqk0U0VFYJA+L4FkqfN7b/a881
	6SJpV3QpHTBOOxjTB8jL8PnEoDNil9NY7JbpZKT3iGU+u8BGsX7XhTG4OQWFx6Q6TK+nlCY+ozB
	5ycP/aDPsv86E9Xns7rz07PxkWdfy7JDHfXVd6+rThPev+5DjWWfSyytfkSOIu0Eg19iWKZQCf0
	D16ItFH7PvOvXasVH1pb0qMx3FTlsBh9HEaExCGmtfuQV/+7sK3UJqgB2Q0A5IvUqG/K1DXYFDM
	ndxfT8kbbh8Z6HUDnedGGCnsxThaV5kKOhp+kuDo0AEcYobIXPAT
X-Google-Smtp-Source: AGHT+IHFzbFTAKPC7LeDPoh6fByRvlZQlSskxVXhKYxkUCMCNaWsL39HuqHrqM7749UAimx590h88g==
X-Received: by 2002:a17:907:60d3:b0:abf:68b5:f78b with SMTP id a640c23a62f3a-ac3f03c1efemr510427166b.24.1742635150914;
        Sat, 22 Mar 2025 02:19:10 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef8d3d05sm311425166b.54.2025.03.22.02.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Mar 2025 02:19:10 -0700 (PDT)
Message-ID: <e233d006-78aa-48a6-89d9-617486592970@gmail.com>
Date: Sat, 22 Mar 2025 10:19:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Install zabbix-proxy
To: ndivecha@granitenet.com, yocto@lists.yoctoproject.org
References: <b8dbe5fa-663e-4039-9c17-d93d919aa09c@gmail.com>
 <22795.1742606774386014983@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <22795.1742606774386014983@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Mar 2025 09:19:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65007

I followed your description: I grabbed a clean Kirkstone env, copied
zabbix recipe from Scarthgap, and added your bbappend (without your
extra-extra-conf). I compiled it successfully after some modifications -
but the recipe seems to be configure zabbix in a way that it looks for
headers on the build machine, rather than the recipe sysroot.

1. I needed to add the following packages to DEPENDS: unixodbc,
net-snmp, libssh2 and libevent (this last one is mentioned in your logs
also)

2. In the bbappend I removed the "--with-sqlite3" part from EXTRA_OECONF
(it's also present in the main recipe)

3. In the main zabbix_6.2.7.bb recipe the EXTRA_OECONF[1] needs some
changes - this seems to be causing it to look for headers at the wrong
place. Change it to this (it's the same as the original, but appended
"=${STAGING_EXECPREFIXDIR}" to some of them, to specify the search
location):

EXTRA_OECONF = " \
   --enable-dependency-tracking \
   --enable-agent \
   --enable-ipv6 \
   --with-net-snmp \
   --with-ldap=${STAGING_EXECPREFIXDIR} \
   --with-unixodbc \
   --with-ssh2=${STAGING_EXECPREFIXDIR} \
   --with-sqlite3=${STAGING_EXECPREFIXDIR} \
   --with-zlib=${STAGING_EXECPREFIXDIR} \    
   --with-libpthread=${STAGING_EXECPREFIXDIR} \
   --with-libevent=${STAGING_EXECPREFIXDIR} \
   --with-libpcre=${STAGING_EXECPREFIXDIR} \
   --with-iconv=${STAGING_EXECPREFIXDIR} \
"

After these, I could compile it successfully. One last note: it's
possible that this STAGING_EXECPREFIX needs to be added to all the
"--with" arguments, in case they are also present on your machine. I
didn't look further once it succeeded to compile. (If you need your
extra-extra-conf with disabling ssh2, etc, of course you are free to add
them. This is mostly a demo-solution, rather than a canonical one.)

Hope this helps. If not, ping back.

[1]:
https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/zabbix/zabbix_6.2.7.bb?h=scarthgap#n47

On 22.03.25 02:26, Nitesh D via Lists.Yoctoproject.Org wrote:
> Hello there, 
>  
> So I have started my implementation but already running into an issue.
> My distro is based on `kirkstone` branch which has Zabbix version
> 5.4.12 and I need Zabbix-proxy version 6 and above. Next stable branch
> for me is `Scarthgap` and has the right version 6.2.7. I did override
> by copying
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/zabbix/zabbix_6.2.7.bb?h=scarthgap
> and I was able to compile as-is without any issues. 
>  
> But I only need "zabbix-proxy" with sqlite3, so I created
> "zabbix_%.bbappend" file with following:
>  
>
>     # Add required dependencies
>
>     DEPENDS += "sqlite3"
>
>     # Add proxy to the list of packages
>
>     PACKAGES += "${PN}-proxy"
>
>     # Define the files for the proxy package
>
>     FILES:${PN}-proxy = "\
>
>         ${sbindir}/zabbix_proxy \
>
>         ${sysconfdir}/zabbix/zabbix_proxy.conf \
>
>         ${systemd_system_unitdir}/zabbix-proxy.service \
>
>     "
>
>     # Add sqlite3 as a runtime dependency for the proxy
>
>     RDEPENDS:${PN}-proxy += "sqlite3"
>
>     # Configure systemd for the proxy
>
>     SYSTEMD_PACKAGES += "${PN}-proxy"
>
>     SYSTEMD_SERVICE:${PN}-proxy = "zabbix-proxy.service"
>
>     SYSTEMD_AUTO_ENABLE:${PN}-proxy = "enable"
>
>     # Add proxy configuration options
>
>     EXTRA_OECONF += " \
>
>         --enable-proxy \
>
>         --with-sqlite3 \
>
>     "
>
>     # Create proxy configuration file and systemd service
>
>     SRC_URI += "file://zabbix-proxy.service"
>
>     do_install:append() {
>
>         # Install zabbix proxy configuration file
>
>         install -d ${D}${sysconfdir}/zabbix
>
>         install -m 0644 ${S}/conf/zabbix_proxy.conf
>     ${D}${sysconfdir}/zabbix/
>
>      
>
>         # Install systemd service file for proxy
>
>         if
>     ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};
>     then
>
>             install -d ${D}${systemd_unitdir}/system
>
>             install -m 0644 ${WORKDIR}/zabbix-proxy.service
>     ${D}${systemd_unitdir}/system/
>
>             sed -i -e 's#@SBINDIR@#${sbindir}#g'
>     ${D}${systemd_unitdir}/system/zabbix-proxy.service
>
>         fi
>
>     }
>
>      
>
> But started to get errors:
>
>     | checking for SSH2 support... no
>
>     | configure: error: SSH2 library not found
>
>     | NOTE: The following config.log files may provide further
>     information.
>
>     | checking for odbc_config... no
>
>     | checking for SQLAllocHandle in -lodbc... no
>
>     | configure: error: unixODBC library not found
>
>     | NOTE: The following config.log files may provide further
>     information.
>
>     |checking for process shared libpthread support... no
>
>     | checking for libevent support... configure: error: Unable to use
>     libevent (libevent check failed)
>
>     | NOTE: The following config.log files may provide further
>     information.
>
> I started adding following to EXTRA_OECONF:
>
>     EXTRA_OECONF += " \
>
>         --enable-proxy \
>
>         --with-sqlite3 \
>
>         --without-unixodbc \
>
>         --without-ssh2 \
>
>     "
>
> But now I'm in dead water... Any thoughts or suggestion? 
>  
> Cheers, 

