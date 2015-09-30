Return-Path: <lukas.boehm@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5020DE00E58; Wed, 30 Sep 2015 00:45:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1027 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Sep 2015 00:45:40 PDT
Received: from mailout01.ims-firmen.de (mailout01.ims-firmen.de
	[213.174.32.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00CBBE0053A
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 00:45:40 -0700 (PDT)
Received: from mailin02.ims-firmen.de ([192.168.1.142])
	by mailout01.ims-firmen.de with esmtp
	(envelope-from <lukas.boehm@iseg-hv.de>) id 1ZhBoV-0001fd-iP
	for yocto@yoctoproject.org; Wed, 30 Sep 2015 09:28:31 +0200
Received: from [217.235.32.3] (helo=[192.168.25.172])
	by mailin02.ims-firmen.de with esmtpa
	(envelope-from <lukas.boehm@iseg-hv.de>) id 1ZhBoV-0002z9-50
	for yocto@yoctoproject.org; Wed, 30 Sep 2015 09:28:31 +0200
From: =?UTF-8?Q?Lukas_B=c3=b6hm?= <lukas.boehm@iseg-hv.de>
Organization: iseg Spezialelektronik GmbH
To: yocto@yoctoproject.org
Message-ID: <560B8F1B.8030701@iseg-hv.de>
Date: Wed, 30 Sep 2015 09:28:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: busybox udhcpd service file
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
X-List-Received-Date: Wed, 30 Sep 2015 07:45:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I want to use the busybox udhcpd server in conjunction with systemd. As there is 
no service file included in the recipe (v1.22.1) and no udhcpd.conf I made a 
bbappend to add this. Unfortunatelly the service file is not added to the final 
image but the conf-file.
My busybox_%.bbappend looks as follows:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += " \
		file://udhcpd.conf \
		file://udhcpd.service \
	"
SYSTEMD_PACKAGES += " \
		${PN}-udhcpd \
	"
SYSTEMD_SERVICE_${PN}-udhcpd = "udhcpd.service"
FILES_${PN}-udhcpd += "${systemd_unitdir}/system/udhcpd.service 
${sysconfdir}/udhcpd.conf"

do_install_append () {
   install -d ${D}${systemd_unitdir}/system
   install -d ${D}${sysconfdir}
   install -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
   install -m 0644 ${WORKDIR}/udhcpd.service 
${D}${systemd_unitdir}/system/udhcpd.service
}
-----------------------------
The strange thing is, that the service file is installed to 
${WORKDIR}/image/lib/systemd/system but not to the final image.

Any hints how to make it will be highly appreciated.
Thanks

Lukas Böhm


