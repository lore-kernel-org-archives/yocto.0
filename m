Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35001E007D5; Mon, 30 Nov 2015 10:56:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 160B2E005B7
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 10:56:11 -0800 (PST)
Received: by wmww144 with SMTP id w144so142784820wmw.1
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 10:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=GChBKG3LtHoy0g2cUhpXtD4GjczbDaAdGTRgpAcIP98=;
	b=WXHPjDLkwWj/8uvsR5QBWi54bVOGoSvGZ2qucyKIw1vhDIT19rCjGzZfhWAuzqeAEO
	JbcyVLH1oa/AesOwXx0EXUa3UqOBw8zCh6P+Nsorx4bbfXyUosfFRQbaVJH2lYkvMNeW
	DXGes+n2fSWMyRQ3dZQv8G95ZGnXXgVibtBWtssY3ITyLCaxl7tL3ozPkFD7azwnoYJl
	aixivWy2xps0c/KkQy44DGFWG+2JDHG6fhYot6iZUizcnvpKMNrG4jLTUCYs3lMq/7wc
	+h3Uzt+LEmgwOmrecfutrW/+CpSSurgvVvW5T24jeswg3WFZww+FcpL8wZq+VXbf8mDg
	WVjw==
X-Received: by 10.194.237.230 with SMTP id vf6mr60542626wjc.135.1448909770391; 
	Mon, 30 Nov 2015 10:56:10 -0800 (PST)
Received: from [192.168.23.113]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101]) by smtp.googlemail.com with ESMTPSA id
	kc9sm14555066wjc.34.2015.11.30.10.56.09 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Nov 2015 10:56:09 -0800 (PST)
Message-ID: <565C9BC9.306@gmail.com>
Date: Mon, 30 Nov 2015 19:56:09 +0100
From: Christian Ege <k4230r6@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <56538201.1020802@intel.com>
In-Reply-To: <56538201.1020802@intel.com>
Subject: Re: RFC: Reference updater filesystem
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
X-List-Received-Date: Mon, 30 Nov 2015 18:56:13 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 23.11.2015 22:15, Mariano Lopez wrote:
> There has been interest in an image based software updater in Yocto
> Project. The proposed solution for a image based updater is to use
> Stefano Babic's software updater (http://sbabic.github.io/swupdate).
> This software do a binary copy, so it is needed to have at least two
> partitions, these partitions would be the rootfs and the maintenance
> partition. The rootfs it's the main partition used to boot during the
> normal device operation, on the other hand, the maintenance will be used
> to update the main partition.
> 
> To update the system, the user has to connect to device and boot in the
> maintenance partition; once in the maintenance partition the software
> updater will copy the new image in the rootfs partition. A final reboot
> into the rootfs it is necessary to complete the upgrade.
> 
> As mentioned before the the software will copy an image to the
> partition, so everything in that partition will be wiped out, including
> custom configurations. To avoid the loss of configuration I explore
> three different solutions:
> 1. Use a separate partition for the configuration.
>   a. The pro of this method is the partition is not touched during the
> update.
>   b. The con of this method is the configuration is not directly in
> rootfs (example: /etc).
> 
> 2. Do the backup during the update.
>   a. The pro is the configuration is directly in rootfs.
>   b. The con is If the update fail most likely the configuration would
> be lost.
> 
> 3. Have an OverlayFS for the rootfs or the partition that have the
> configuration.
>   a. The pro is the configuration is  "directly" in rootfs.
>   b. The con is there is need to provide a custom init to guarantee the
> Overlay is mounted before the boot process.
> 
> With the above information I'm proposing to use a separate partition for
> the configuration; this is because is more reliable and doesn't require
> big changes in the current architecture.
> 
> So, the idea is to have 4 partitions in the media:
> 1. boot. This is the usual boot partition
> 2. data. This will hold the configuration files. Not modified by updates.
> 3. maintenance. This partition will be used to update rootfs.
> 4. rootfs. Partition used for normal operation.
This is mostly what we have implemented for our O3D3xx 3D Camera at ifm.
We are using the swupdate tool developed by Stefano and sponsored
by ifm.

We have two flashes one small SPI NOR flash which is responsible for
booting and a larger NAND which contains the root filesystem.

Due to the restrictions to not have any buttons on the camera Stefano
implemented a boot counter which allows us to boot into swupdate from
the rootfs. Or if the rootfs is not able to boot we automatically boot
into swupdate mode itself.

To have the same ip address in both cases we have a small partition in
the SPI NOR which contains the network config and some stuff which must
retain during software update. The swupdate itself is implemented as a
kernel with an initramfs. We decided to have such an fallback to not
loose any camera during a field update. BTW this was a good decision and
we have a lot of good feedback on this feature.

Another option was the way how for example AVM Fritz.Box! implements the
update, they do download the image and install the image from the rootfs
during shutdown. But if someone removes power the box is bricked unless
you do some tftp magic. I guess swupdate is tunable to support this
usecase as-well.

Regards,
Christian

