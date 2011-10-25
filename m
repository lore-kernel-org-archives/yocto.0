Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0851EE00559
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 01:45:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BB28F16600DD; Tue, 25 Oct 2011 02:45:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 138AE16600B3;
	Tue, 25 Oct 2011 02:45:29 -0600 (MDT)
Message-ID: <4EA67729.3090109@mlbassoc.com>
Date: Tue, 25 Oct 2011 02:45:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <0E674E98-F46F-467D-B7F2-8066AA03A454@keylevel.com>
In-Reply-To: <0E674E98-F46F-467D-B7F2-8066AA03A454@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do I tell when a USB disk is ready?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Oct 2011 08:45:32 -0000
X-Groupsio-MsgNum: 3139
Content-Type: multipart/mixed; boundary="------------050906020001020107030405"

--------------050906020001020107030405
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-24 18:10, Chris Tapp wrote:
> I've got a minimal root file system that will be used to install a poky image from a USB stick.
>
> The init script this uses mounts sda1 (from where it's just booted), but sda1 isn't ready when it tries to do this - I can see the bus enumeration messages on the console after the
> mount fails.
>
> How can my script test to see when the device is ready?

You could try looking for /dev/sda1 in /proc/partitions like in
attached script.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050906020001020107030405
Content-Type: text/plain;
 name="wd"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="wd"

#! /bin/sh

while ! grep -q sdc1 /proc/partitions; do
      echo "... waiting for disk"
      sleep 1
done
echo "Disk /dev/sdc1 is ready"


--------------050906020001020107030405--
