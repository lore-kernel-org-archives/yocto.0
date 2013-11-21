Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D960EE00282
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 09:08:28 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dQS0B5mQwz4KK5n;
	Thu, 21 Nov 2013 18:08:26 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dQS0B5Xkfzbbfx;
	Thu, 21 Nov 2013 18:08:26 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 4oZal-6LRVzf; Thu, 21 Nov 2013 18:08:25 +0100 (CET)
X-Auth-Info: 9XJAtnoH9MoWgWykyBc0c8UkcrHuOJYOgQW1GBcGawk=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Thu, 21 Nov 2013 18:08:25 +0100 (CET)
Message-ID: <528E3E09.8010701@denx.de>
Date: Thu, 21 Nov 2013 18:08:25 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>, Stefano Babic <sbabic@denx.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <528DF846.9050306@denx.de>
	<91586D499ADFD74FBCFB8425266A5DE40153BB535322@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153BB535322@pluto.melinkcorp.local>
X-Enigmail-Version: 1.5.2
Subject: Re: Deploying Yocto build images
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
X-List-Received-Date: Thu, 21 Nov 2013 17:08:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Bryan,

On 21/11/2013 16:48, Bryan Evenson wrote:
> Stefano,
> 
> Looks interesting.  I have a question that I didn't see covered in
> the documentation (yet).

I know, this is my fault. Writing documentation is a task that is always
postponed ;-)

> I can see the benefit to having a single image firmware upgrade, but
> how does swupdate handle configuration differences?  I can see cases
> in which the majority of the software will be the same but there will
> be configuration file differences from device to device.  I like the
> idea of a single image upgrade, but not at the cost of wiping the
> device-specific configuration.

I explain how it was done in a real project. The scope was to have a
single image, containing update for multiple devices. Let's say this is
an update of version Y for a whole family of products, but each product
has its own parts (mostly kernel differs, but not only).

In that case, an external parser was used. The sw-description is written
as XML, with a syntax like this:

<?xml version="1.0" encoding="UTF-8"?>
<software version="1.0">
  <name>Update Image</name>
  <version>1.0.0</version>
   <description>Firmware for XXXXX Project</description>

   <images>
   <image device="firstdevice" version="0.9">
     <stream name="dev1-uImage" type="ubivol" volume="kernel" />
     <stream name="dev1.dtb" type="ubivol" volume="dtb" />
     <stream name="dev1-rootfs.ubifs" type="ubivol" volume="rootfs"/>
     <stream name="dev1-uboot-env" type="uboot" />
     <stream name="raw_vfat" type="raw" dest="/dev/mmcblk0p4" />
     <stream name="sdcard.lua" type="lua" />
   </image>

   <image device="seconddevice" version="0.9">
     <stream name="dev2.dtb" rev="0.9" type="dtb" />
     <stream name="dev2-uImage" rev="0.9" type="kernel" />
......

That is: there is a single description, that describes the components
for all devices. Each device must recognized where it is running - this
was done with a configuration file or reading directly from hardware
(GPIOs, SPI EPROM).

When the image is downloaded, the description is parsed and only the
significant parts are extracted - the rest is discarded.
Of course, the image can be significantly bigger - it contains the
software for many devices. In my real project, this was not an issue -
the scope was really to have a single image for a product family.

Note: this is only an example how the tool was used. But this shows also
that the syntax of the sw-description is open. I could also add the LUA
script/XML parser to the repository, it is at the moment not stored - I
have thought at it as a custom specific requirement.

Best regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

