Return-Path: <lukas.boehm@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBDA7E00F9B; Mon,  5 Oct 2015 01:11:20 -0700 (PDT)
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
Received: from mailout01.ims-firmen.de (mailout01.ims-firmen.de
	[213.174.32.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C92E00A26
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2015 01:11:17 -0700 (PDT)
Received: from mailin01.ims-firmen.de ([192.168.1.141])
	by mailout01.ims-firmen.de with esmtp
	(envelope-from <lukas.boehm@iseg-hv.de>) id 1Zj0rb-0003hV-i7
	for yocto@yoctoproject.org; Mon, 05 Oct 2015 10:11:15 +0200
Received: from [217.235.24.210] (helo=[192.168.25.172])
	by mailin01.ims-firmen.de with esmtpa
	(envelope-from <lukas.boehm@iseg-hv.de>) id 1Zj0rb-0000bY-1Q
	for yocto@yoctoproject.org; Mon, 05 Oct 2015 10:11:15 +0200
To: yocto@yoctoproject.org
References: <560B8F1B.8030701@iseg-hv.de>
From: =?UTF-8?Q?Lukas_B=c3=b6hm?= <lukas.boehm@iseg-hv.de>
Organization: iseg Spezialelektronik GmbH
Message-ID: <561230A3.5030104@iseg-hv.de>
Date: Mon, 5 Oct 2015 10:11:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <560B8F1B.8030701@iseg-hv.de>
Subject: Re: busybox udhcpd service file
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
X-List-Received-Date: Mon, 05 Oct 2015 08:11:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Really no one any idea or hint? I could make it "dirty" but I would like to 
understand where the problem is.


Am 30.09.2015 um 09:28 schrieb Lukas Böhm:
> Hello,
>
> I want to use the busybox udhcpd server in conjunction with systemd. As there is
> no service file included in the recipe (v1.22.1) and no udhcpd.conf I made a
> bbappend to add this. Unfortunatelly the service file is not added to the final
> image but the conf-file.
> My busybox_%.bbappend looks as follows:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI += " \
>          file://udhcpd.conf \
>          file://udhcpd.service \
>      "
> SYSTEMD_PACKAGES += " \
>          ${PN}-udhcpd \
>      "
> SYSTEMD_SERVICE_${PN}-udhcpd = "udhcpd.service"
> FILES_${PN}-udhcpd += "${systemd_unitdir}/system/udhcpd.service
> ${sysconfdir}/udhcpd.conf"
>
> do_install_append () {
>    install -d ${D}${systemd_unitdir}/system
>    install -d ${D}${sysconfdir}
>    install -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
>    install -m 0644 ${WORKDIR}/udhcpd.service
> ${D}${systemd_unitdir}/system/udhcpd.service
> }
> -----------------------------
> The strange thing is, that the service file is installed to
> ${WORKDIR}/image/lib/systemd/system but not to the final image.
>
> Any hints how to make it will be highly appreciated.
> Thanks
>
> Lukas Böhm
>

-- 
Lukas Böhm                       fon:  ++49 351 26996-0
iseg Spezialelektronik GmbH      fax:  ++49 351 26996-21
Bautzner Landstr. 23             mail: lukas.boehm@iseg-hv.de
D-01454 Radeberg OT Rossendorf   web:  www.iseg-hv.de

Geschäftsführer/Managing Director:
     Dr. Frank Gleisberg, Dr. Joachim Pöthig
Registergericht/Lower District Court:
     Amtsgericht Dresden HRB 16250
Umsatzsteuer-Identnummer / VAT Id:
     DE 812 50 89 42

Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
Informationen. Wenn Sie nicht der richtige Adressat sind oder
diese E-Mail irrtümlich erhalten haben, informieren Sie bitte
sofort den Absender und vernichten Sie diese Mail.
Das unerlaubte Kopieren sowie die unbefugte Weitergabe
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged
information. If you are not the intended recipient
(or have received this e-mail in error) please notify the sender
immediately and destroy this e-mail. Any unauthorized copying,
disclosure or distribution of the material in this e-mail
is strictly forbidden.

