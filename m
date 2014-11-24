Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 782ECE00832; Mon, 24 Nov 2014 09:33:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CCCCE005B7
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 09:33:29 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 191C8F811F4; Mon, 24 Nov 2014 10:33:29 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5FA26F811F2;
	Mon, 24 Nov 2014 10:33:28 -0700 (MST)
Message-ID: <54736BEB.4090802@mlbassoc.com>
Date: Mon, 24 Nov 2014 10:33:31 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5473571B.9080702@mlbassoc.com>
	<1979121.RHhGhy9CBT@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1979121.RHhGhy9CBT@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: Missing firmware files
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
X-List-Received-Date: Mon, 24 Nov 2014 17:33:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-11-24 09:52, Paul Eggleton wrote:
> Hi Gary,
>
> On Monday 24 November 2014 09:04:43 Gary Thomas wrote:
>> I have a .bbappend which I use to add some non-public firmware
>> files to linux-firmware.  This set up used to work, but today
>> I'm getting only empty packages.  Here's my .bbappend fragment
>>
>>
>> #--------------------------------------------------------------------------
>> ------------- # Wi2Wi (based on Marvell SDIO 86xx devices
>>     #
>>     LICENSE_${PN}-wi2wi = "Firmware:LICENCE.Wi2Wi_firmware.txt"
>>     PROVIDES += " linux-firmware-wi2wi "
>>     SRC_URI += " \
>> 	http://www.not-public.com/Wi2Wi-firmware.tgz;name=Wi2Wi-firmware \
>>     "
>>     SRC_URI[Wi2Wi-firmware.md5sum] = "2b400aee75e7522eb7f9a299aaa6d023"
>>     SRC_URI[Wi2Wi-firmware.sha256sum] =
>> "33b08d06169074e3d680df20f057580bbc5aa3aaa07e8ba3744c9318d0cbba5d"
>>
>>     do_install_append() {
>>           cd ${S}
>> 	install -d  ${D}/lib/firmware/
>> 	# Wi2Wi via libertas
>> 	install -m 0666 ${WORKDIR}/sd8688.bin ${D}/lib/firmware
>> 	install -m 0666 ${WORKDIR}/sd8688_helper.bin ${D}/lib/firmware
>> 	install -m 0666 ${WORKDIR}/LICENCE.Wi2Wi_firmware.txt ${D}/lib/firmware/
>>     }
>>
>>     PACKAGES += "${PN}-wi2wi"
>>     FILES_${PN}-wi2wi = "/lib/firmware/sd86*.bin
>> /lib/firmware/LICENCE.Wi2Wi_firmware.txt" RPROVIDES_${PN}-wi2wi =
>> "${PN}-wi2wi"
>>
>> The desired files do end up in my install image, but not in the
>> split package linux-firmware-wi2wi
>>
>> Any ideas what I'm missing in the packaging that is ending up with
>> empty packages?
>
> I'd recommend using PACKAGES =+ rather than PACKAGES += so that your package
> picks up the files first. I'll bet another package is snagging the files before
> yours as things are at the moment.

That cracked it, thanks.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

