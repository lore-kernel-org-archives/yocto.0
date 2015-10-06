Return-Path: <lukas.boehm@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 584F0E00DAB; Tue,  6 Oct 2015 05:57:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB8ACE007C9
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 05:57:25 -0700 (PDT)
Received: from mailin02.ims-firmen.de ([192.168.1.142])
	by mailout02.ims-firmen.de with esmtp
	(envelope-from <lukas.boehm@iseg-hv.de>)
	id 1ZjRo3-0005XP-l2; Tue, 06 Oct 2015 14:57:23 +0200
Received: from [217.235.26.198] (helo=[192.168.25.172])
	by mailin02.ims-firmen.de with esmtpa
	(envelope-from <lukas.boehm@iseg-hv.de>)
	id 1ZjRo2-0005YL-5W; Tue, 06 Oct 2015 14:57:23 +0200
To: "Daniel." <danielhilst@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <560B8F1B.8030701@iseg-hv.de>
	<CAMKF1srjUiR3c5jX9KxMhhO+eDz4E23=cGKh5fEr5KYSu+iDxw@mail.gmail.com>
	<CAF3SDA4Hw=m2xW8grLCwESq1ioWP=2mL9Fqagw0_NiNyH9kOzw@mail.gmail.com>
From: =?UTF-8?Q?Lukas_B=c3=b6hm?= <lukas.boehm@iseg-hv.de>
Organization: iseg Spezialelektronik GmbH
Message-ID: <5613C530.8070007@iseg-hv.de>
Date: Tue, 6 Oct 2015 14:57:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA4Hw=m2xW8grLCwESq1ioWP=2mL9Fqagw0_NiNyH9kOzw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 06 Oct 2015 12:57:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello and thanks for the answers!

Am 05.10.2015 um 19:10 schrieb Daniel.:
> I would suggest you to setup build history and look files installed by
> busybox package.
>
Ok, I did:  buildhistory/.../busybox/busybox-udhcpd/latest lists all the wished 
files:
PV = 1.22.1
PR = r32
RPROVIDES =
RDEPENDS =
RRECOMMENDS =
PKGSIZE = 325
FILES = /etc/init.d/busybox-udhcpd /lib/systemd/system/udhcpd.service 
/etc/udhcpd.conf /lib/systemd/system/udhcpd.service
FILELIST = /etc/udhcpd.conf /lib/systemd/system/udhcpd.service

> 2015-10-05 13:13 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>> On Wed, Sep 30, 2015 at 12:28 AM, Lukas Böhm <lukas.boehm@iseg-hv.de> wrote:
>>> Hello,
>>>
>>> I want to use the busybox udhcpd server in conjunction with systemd. As
>>> there is no service file included in the recipe (v1.22.1) and no udhcpd.conf
>>> I made a bbappend to add this. Unfortunatelly the service file is not added
>>> to the final image but the conf-file.
>>> My busybox_%.bbappend looks as follows:
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> SRC_URI += " \
>>>                  file://udhcpd.conf \
>>>                  file://udhcpd.service \
>>>          "
> I don't really understand what you said. The udhcpd.conf file was
> installed on image but not
> the udhcpd.service file? Is that right? Can you check if busybox
> already ships udhcpd.conf file?
>
Yes, you understand that right. But no, busybox does not ship with udhcpd.conf. 
At least not in my case with systemd distro feature.

>>> SYSTEMD_PACKAGES += " \
>>>                  ${PN}-udhcpd \
>>>          "
>>> SYSTEMD_SERVICE_${PN}-udhcpd = "udhcpd.service"
>>> FILES_${PN}-udhcpd += "${systemd_unitdir}/system/udhcpd.service
>>> ${sysconfdir}/udhcpd.conf"
>>>
>>> do_install_append () {
>>>    install -d ${D}${systemd_unitdir}/system
>>>    install -d ${D}${sysconfdir}
>>>    install -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
>>>    install -m 0644 ${WORKDIR}/udhcpd.service
>>> ${D}${systemd_unitdir}/system/udhcpd.service
>>> }
>>> -----------------------------
>>> The strange thing is, that the service file is installed to
>>> ${WORKDIR}/image/lib/systemd/system but not to the final image.
>>>
>>> Any hints how to make it will be highly appreciated.
>>
>> Did you inherit systemd ?
It is inherited in busybox.inc.
>>
>>
>>> Thanks
>>>
>>> Lukas Böhm
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> Cheers,
>

-- 
Lukas Böhm


