Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web09.11388.1607710907655295886
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 10:21:48 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=QM19FzP7;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: dingo@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id cd5d1de4
	for <yocto@lists.yoctoproject.org>;
	Fri, 11 Dec 2020 19:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=to
	:from:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=obsd; bh=2TGQXgFTH9OdIUJHWUsr2K5Rs
	nGY0/5DnsaJT65hwXA=; b=QM19FzP7WUSjMAXdm8ibYAm0xGekHJpZmDq8LE7Rz
	tPUbV/wIebMPkwrRtHIwLf65hiueaINgM7b18nvwu7zz+bp4TC0SoyAXx110MCHx
	a3Q6L17tIKke0yI5DqlB/UHQEuAjjhV+/jvQv14XokWLfPCZvnkxlYMi/aVCxVs3
	8Xbp1Hn0twQHxozGykNM6Qltf1jxK3gAJkIFOE97RyQHSZtqXrEXu8CDXVO4aoMT
	3lGs7d2fFUqqOwd3tWfE7ba6AAkEWA/Ck7SDiLp/0w1v1vOgcrb7/ykIBDBNauOZ
	z8SfEKCCOQ329fwNzStjdPxkcIeHREn6yAnLlvkJkLhZg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=to:from
	:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; q=dns; s=obsd; b=J5RRbVtWyeBECmE1S1i
	PlBktaHMUBEPMf5DS7GqSosZab7rcnwwBNskdvPCZ31IVfDuOuqq0V+wUtdFjJ3R
	9OWyP1cSd32r5CVybU/iO+c0vVPWcF7Gn6NnZ4faPn4AKoWy5mPaxc40Ix9bMncf
	ufdm+OZDydjEvgAk4+gNyNePVTm9Wpk0x0osQ5lOESmSOL6FXXR+4gJUJxLZfoL1
	SHi7NsYABRQ8XSCGU8XNjynalKnELxi/MoqWNibQ2eCo9fP5WcIfja//D1OQxre6
	S/hum1kjksXy+5Ywr/F6Qymq5Pg/mYqkxZdReaOTSA9FAdGFD99xlozTB7ujXrb6
	D3A==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 51ca2f2d (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=support@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Fri, 11 Dec 2020 19:21:44 +0100 (CET)
To: yocto@lists.yoctoproject.org
From: "Dingo" <dingo@optimcloud.com>
Subject: file /etc/ethertypes conflicts between netbase-1:6.2-r0.corei7_64 and ebtables-2.0.10+4-r4.corei7_64
Message-ID: <f02242ba-a5ac-a4bc-ce1d-16604306acd5@optimcloud.com>
Date: Sat, 12 Dec 2020 01:21:38 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

file /etc/ethertypes conflicts between attempted installs of 
netbase-1:6.2-r0.corei7_64 and ebtables-2.0.10+4-r4.corei7_64
commit ba069a5a3dae374744f68a57ab9e7869167beb2b
Author: Alexander Kanavin <alex.kanavin@gmail.com>
Date:   Fri Dec 4 21:07:14 2020 +0100
     netbase: upgrade 6.1 -> 6.2
     Not sure why this didn't inherit allarch, but now it does - only
     static data is installed.

     (From OE-Core rev: ae1880436b293449318655f5b0207d2a741052ba)

     Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
diff --git a/meta/recipes-core/netbase/netbase_6.1.bb 
b/meta/recipes-core/netbase/netbase_6.2.bb
similarity index 65%
rename from meta/recipes-core/netbase/netbase_6.1.bb
rename to meta/recipes-core/netbase/netbase_6.2.bb
index 33eca459d5..a54d2e7764 100644
--- a/meta/recipes-core/netbase/netbase_6.1.bb
+++ b/meta/recipes-core/netbase/netbase_6.2.bb
@@ -6,17 +6,18 @@ LICENSE = "GPLv2"
  LIC_FILES_CHKSUM = 
"file://debian/copyright;md5=3dd6192d306f582dee7687da3d8748ab"
  PE = "1"

-SRC_URI = "${DEBIAN_MIRROR}/main/n/${BPN}/${BPN}_${PV}~bpo10+1.tar.xz"
-S = "${WORKDIR}/${BPN}-${PV}~bpo10+1"
+SRC_URI = "${DEBIAN_MIRROR}/main/n/${BPN}/${BPN}_${PV}.tar.xz"

-SRC_URI[md5sum] = "4fa7517285b4045ac0dc8dbf6730dd7a"
-SRC_URI[sha256sum] = 
"4e9c3082dff8896cb6b6bea9bb2200d82fb0d7c8d8c8fc9b18704fe553316237"
+inherit allarch
+
+SRC_URI[sha256sum] = 
"309a24146a06347d654b261e9e07a82fab844b173674a42e223803dd8258541e"

  UPSTREAM_CHECK_URI = "${DEBIAN_MIRROR}/main/n/netbase/"
-do_install () {

-       install -d ${D}/${mandir}/man8 ${D}${sysconfdir}
+do_install () {
+       install -d ${D}${sysconfdir}
         install -m 0644 ${S}/etc/rpc ${D}${sysconfdir}/rpc
         install -m 0644 ${S}/etc/protocols ${D}${sysconfdir}/protocols
         install -m 0644 ${S}/etc/services ${D}${sysconfdir}/services
+       install -m 0644 ${S}/etc/ethertypes ${D}${sysconfdir}/ethertypes
  }

