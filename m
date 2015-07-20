Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F36EE008DC; Mon, 20 Jul 2015 08:28:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0420E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:28:26 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8A92CF811DB; Mon, 20 Jul 2015 09:28:26 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1621DF811DA;
	Mon, 20 Jul 2015 09:28:26 -0600 (MDT)
Message-ID: <55AD13AC.3010802@mlbassoc.com>
Date: Mon, 20 Jul 2015 09:28:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: New/unfamiliar messages
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
X-List-Received-Date: Mon, 20 Jul 2015 15:28:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just updated my Poky/Yocto + RaspberryPi layers and fired off
a build of an image I built a few weeks ago.  Lo and behold, I
received a slew of messages I've not seen before, e.g.
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/file-native/5.22-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/elfutils-native/0.161-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/openssl-native/1.0.2a-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/xproto-native/1_7.0.27-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/perl-native/5.20.0-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/freetype-native/2.5.5-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/intltool-native/0.50.2-r0 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/qemu-native/2.3.0-r1 is not reachable, removing related manifests
   NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/dbus-native/1.8.16-r0 is not reachable, removing related manifests
       ... many more

What do these mean and should I be worried about seeing them?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

