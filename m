Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 019B5E00AF0; Tue, 11 Apr 2017 06:03:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99CB8E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 06:03:33 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 61EBE68A01A; Tue, 11 Apr 2017 14:03:31 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id CE25F68A01B;
	Tue, 11 Apr 2017 14:03:30 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 7EEF36740580;
	Tue, 11 Apr 2017 15:03:30 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <3ecd28da-465c-37e4-d40e-2cebb5587295@mlbassoc.com>
Date: Tue, 11 Apr 2017 15:03:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: opkg behavior
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
X-List-Received-Date: Tue, 11 Apr 2017 13:03:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm using opkg (IPK) packaging with my Yocto builds (using recent
master 633ad6c9f).  For the most part, this seems to work well,
but occasionally I'll rebuild a recipe along with the packaging
indexes on my build machine only to find that opkg doesn't want
to upgrade to the changes.  Here's an example:

* Update the package databases on the target board
   root@teton-p7621:~# opkg update
   Downloading http://192.168.1.12/teton-p7621-feeds/all/Packages.gz.
   Updated source 'poky_am-all'.
   Downloading http://192.168.1.12/teton-p7621-feeds/cortexa7hf-neon/Packages.gz.
   Updated source 'poky_am-cortexa7hf-neon'.
   Downloading http://192.168.1.12/teton-p7621-feeds/teton_p7621/Packages.gz.
   Updated source 'poky_am-teton_p7621'.

* Try to update the package I just rebuilt.  Normally, this does the right thing
   root@teton-p7621:~# opkg install production-tests
   No packages installed or removed.

* Odd, check the packaging
   root@teton-p7621:~# opkg list-installed | grep prod
   production-tests - 1.0-r0.74

* Force the install by removing the existing package, etc
   root@teton-p7621:~# opkg remove production-tests
   Removing production-tests (1.0) from root...
   root@teton-p7621:~# opkg install production-tests
   Installing production-tests (1.0) on root
   Downloading http://192.168.1.12/teton-p7621-feeds/teton_p7621/production-tests_1.0-r0.76_teton_p7621.ipk.
   Configuring production-tests.

So from this you can see that the package has been rebuilt (using
the PR server) and that I can indeed install the new version.  That
said, why did opkg not "upgrade" as expected.  Note: I often use
the 'opkg upgrade' command but I recently updated my Poky/Yocto
repository which caused nearly every package to be rebuilt and I
didn't want to have to download everything (none of which affected
my current program which is just a python script), so I chose the
'opkg install ...' method instead, which does seem to work sometimes.

Any ideas what I can look at or tweak to get this to work the way
I expect?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

