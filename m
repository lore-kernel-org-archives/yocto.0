Return-Path: <martin@geanix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82A01E0113A; Tue, 26 Jun 2018 00:05:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 424 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Jun 2018 00:05:53 PDT
Received: from mail.hundeboll.net (mail.hundeboll.net [88.198.92.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0615CE01135
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 00:05:53 -0700 (PDT)
Received: from [10.0.0.161] (unknown [85.184.147.232])
	by mail.hundeboll.net (Postfix) with ESMTPSA id 8971D1C08BE;
	Tue, 26 Jun 2018 08:58:47 +0200 (CEST)
To: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>,
	Khem Raj <raj.khem@gmail.com>
References: <HE1P122MB0090894C688B6F014F3ABE50D6760@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
	<CAMKF1srp7ONCyBNnt3y72uG1dcfRe+tKeg5H_M09WD=5Je6DwQ@mail.gmail.com>
	<HE1P122MB0090C3849A14E569035E95CFD64A0@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin@geanix.com>
Message-ID: <3633b8b8-5c53-9b70-3287-d8c3f2760b30@geanix.com>
Date: Tue, 26 Jun 2018 08:59:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <HE1P122MB0090C3849A14E569035E95CFD64A0@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Rocko: how to remove python3 from target's rootfs
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
X-List-Received-Date: Tue, 26 Jun 2018 07:05:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Bejar,

On 2018-06-25 22:02, Bejar-Colonia, Carlos wrote:
> Looks like the dhcp dependency is explicit: dhcp->bind->python3
> recipes-connectivity/dhcp/dhcp.inc
> 	DEPENDS = "openssl bind"
> recipes-connectivity/bind/bind_9.10.5-P3.bb
> 	RDEPENDS_${PN} = "python3-core"
> 
> In the build area: dhcp/4.3.6-r0/packages-split/dhcp-client.shlibdeps
> 	dhcp-libs (>= 4.3.6)
> 	bind (>= 9.10.5-P3)
> 	glibc (>= 2.26)
> 
> Does it mean that python3 cannot be removed from target rootfs?
> 
> On the other hand, I see this file in rootfs: /usr/sbin/dnssec-checkds, which requires python3 (#! /usr/bin/python3).
> I believe this file gets installed from bind_9.10.5-P3.bb
> 
> do_install_append() {
>          sed -i -e '1s,#!.*python3,#! /usr/bin/python3,' ${D}${sbindir}/dnssec-coverage ${D}${sbindir}/dnssec-checkds
> }
> 
> How can I move this file to a different package?

I had the same issue a while back, and submitted this patch:
https://patchwork.openembedded.org/patch/148257/

Since then Armin incorporated my patch with his version upgrade here:
https://patchwork.openembedded.org/patch/151778/

If you maintain your own meta layer, you can either create a bbappend 
file to implement the package config feature, or you can simply add the 
updated version from Armin.

// Martin

> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Friday, June 22, 2018 11:33 AM
> To: Bejar-Colonia, Carlos <carlos.bejar-colonia@philips.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] Rocko: how to remove python3 from target's rootfs
> 
> On Fri, Jun 22, 2018 at 8:17 AM Bejar-Colonia, Carlos <carlos.bejar-colonia@philips.com> wrote:
>>
>> Hello Yocto Team,
>>
>>
>>
>> I’ve upgraded my Yocto system from Morty to Rocko and I’ve noticed
>> that python3 gets installed in the rootfs, which I don’t want (it
>> takes a lot disk space)
>>
>> I’ve noticed that when I add dhcp-client package to the rootfs (CORE_IMAGE_EXTRA_INSTALL += "dhcp-client"), python3 gets installed as well.
>>
>> However, with Morty, python3 does not get installed in the rootfs after adding dhcp-client pakage.
>>
>>
>>
>> Probably someone has already done this, but I was not able to figure it out. I tried: IMAGE_INSTALL_remove += "python3-core", didn’t help.
>>
>> Any hints on how to remove python3 from the target’s rootfs (without removing dhcp-client)?
> 
> when there are scripts in packages which requires a certain kind of interpreter e.g. perl. python. bash, sh etc. system can autodetect that if interpreter is specified in first line of script and add the appropriate runtime dependency, since this script otherwise will be useless on target.
> 
> I suspect build for dhcp is adding such a file into dhcp-client package which might be resulting in this implicit dep.
> 
> So please check it in the build area for dhcp especially under packages-split/dhcp-client
> 
> for any such scripts.
> 
> if there are any and you find that these scripts are not required for normal functioning of dhcp-client on target then move this script out into another package where it might be more appropriate, that can eliminate this rdep
>>
>>
>>
>> Thanks,
>>
>> Carlos
>>
>>
>>
>>
>>
>>
>> ________________________________
>> The information contained in this message may be confidential and legally protected under applicable law. The message is intended solely for the addressee(s). If you are not the intended recipient, you are hereby notified that any use, forwarding, dissemination, or reproduction of this message is strictly prohibited and may be unlawful. If you are not the intended recipient, please contact the sender by return e-mail and destroy all copies of the original message.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://emea01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
>> ts.yoctoproject.org%2Flistinfo%2Fyocto&data=02%7C01%7Ccarlos.bejar-col
>> onia%40philips.com%7C61df7be949544db87dd608d5d85573b8%7C1a407a2d76754d
>> 178692b3ac285306e4%7C0%7C0%7C636652783876282171&sdata=ufsRBgUTpR%2FkmX
>> nFCeMK0DbS27uX9L8z15Y0S3Z%2Bct0%3D&reserved=0

-- 
Kind regards,
Martin Hundebøll
Embedded Linux Consultant

+45 61 65 54 61
martin@geanix.com

Geanix IVS
DK39600706

