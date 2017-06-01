Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91E94E00B47; Thu,  1 Jun 2017 00:43:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F61E00ADD
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 00:43:47 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id D88D868A01C; Thu,  1 Jun 2017 08:43:45 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7B1F268A019;
	Thu,  1 Jun 2017 08:43:45 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 2959167403FE;
	Thu,  1 Jun 2017 09:43:45 +0200 (CEST)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
Date: Thu, 1 Jun 2017 09:43:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Why can't I install eudev-hwdb
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
X-List-Received-Date: Thu, 01 Jun 2017 07:43:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

In my local.conf, I have this (to save space in my embedded image):
   BAD_RECOMMENDATIONS = "udev-rules-imx eudev-hwdb"

Is there a different way I can trim these packages, e.g. leave them in for some images
and leave them out for others?

Also, today, I wanted to just test/try eudev-hwdb, so on my image I ran:
   # opkg update
   Downloading http://192.168.1.12/my-imx6ul-feeds/all/Packages.gz.
   Updated source 'poky_am-all'.
   Downloading http://192.168.1.12/my-imx6ul-feeds/cortexa7hf-neon/Packages.gz.
   Updated source 'poky_am-cortexa7hf-neon'.
   Downloading http://192.168.1.12/my-imx6ul-feeds/my_imx6ul/Packages.gz.
   Updated source 'poky_am-my_imx6ul'.

   # opkg install eudev-hwdb
   No packages installed or removed.

Note: I had rebuilt the package-index on my build machine for this target before trying this.
On the build machine, I see this (some fields trimmed):
$ ls -l tmp/deploy/ipk/cortexa7hf-neon/eudev*
   431904 May 25 07:09 tmp/deploy/ipk/cortexa7hf-neon/eudev_3.2.1-r0.11_cortexa7hf-neon.ipk
  1718910 May 25 07:09 tmp/deploy/ipk/cortexa7hf-neon/eudev-dbg_3.2.1-r0.11_cortexa7hf-neon.ipk
     5354 May 25 07:09 tmp/deploy/ipk/cortexa7hf-neon/eudev-dev_3.2.1-r0.11_cortexa7hf-neon.ipk
   947704 May 25 07:09 tmp/deploy/ipk/cortexa7hf-neon/eudev-hwdb_3.2.1-r0.11_cortexa7hf-neon.ipk

On my target, I get:
   # opkg list eudev*
   eudev - 3.2.1-r0.11 - eudev is a fork of systemd's udev
   eudev-dbg - 3.2.1-r0.11 - eudev is a fork of systemd's udev - Debugging files
   eudev-dev - 3.2.1-r0.11 - eudev is a fork of systemd's udev - Development files
   eudev-hwdb - 3.2.1-r0.11 - eudev is a fork of systemd's udev

However, even when I see the correct list of packages, I still
get the 'No packages installed' message :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

