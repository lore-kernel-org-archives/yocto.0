Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 680EDE00565
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2011 08:49:10 -0700 (PDT)
Received: from [192.168.0.58] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 5A18E22B70
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2011 16:11:56 +0100 (BST)
Message-ID: <4E78B5F6.5060706@communistcode.co.uk>
Date: Tue, 20 Sep 2011 16:49:10 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Beagleboard SPI
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
X-List-Received-Date: Tue, 20 Sep 2011 15:49:16 -0000
Content-Type: multipart/alternative;
	boundary="------------080703050406060405050803"

--------------080703050406060405050803
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

A quick shout out to see if anybody has any experience with setting up 
SPI on a BeagleBoard xM Rev C. I have applied patches as stated in the 
eLinux wiki to no avail. Patches are listed below:

I am running kernel 2.6.37 and u-boot 2011.06 and have applied the
following patches:

u-boot for pin muxing:
http://pastebin.archlinux.fr/434099 
<http://www.google.com/url?sa=D&q=http://pastebin.archlinux.fr/434099&usg=AFQjCNFRHAJ90b8iCdCTPiFhHQZDBdSK2g> 


kernel for spidev config and loading of the driver:
http://pastebin.archlinux.fr/434100 
<http://www.google.com/url?sa=D&q=http://pastebin.archlinux.fr/434100&usg=AFQjCNEd7TramfvbJWPN0AfrrgCg07lkIQ> 

http://pastebin.archlinux.fr/434101 
<http://www.google.com/url?sa=D&q=http://pastebin.archlinux.fr/434101&usg=AFQjCNHX768E4py5Y1_k1U0BwiSNQBQIBg>

SPI shows up in /sys but there is no node created in /dev.

If anyone can see any faults or have any suggestions I would love to 
hear them as i'm coming close to bald!

I also have a post listed on the BeagleBoard Google Board:
http://groups.google.com/group/beagleboard/browse_thread/thread/273a51d0ff91537d

Kind Regards,
Jack.



--------------080703050406060405050803
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    A quick shout out to see if anybody has any experience with setting
    up SPI on a BeagleBoard xM Rev C. I have applied patches as stated
    in the eLinux wiki to no avail. Patches are listed below:<br>
    <p>I am running kernel 2.6.37 and u-boot 2011.06 and have applied
      the
      <br>
      following patches:
      <br>
    </p>
    <p>u-boot for pin muxing:
      <br>
      <a target="_blank" rel="nofollow"
href="http://www.google.com/url?sa=D&amp;q=http://pastebin.archlinux.fr/434099&amp;usg=AFQjCNFRHAJ90b8iCdCTPiFhHQZDBdSK2g">http://pastebin.archlinux.fr/434099</a>
      <br>
    </p>
    <p>kernel for spidev config and loading of the driver:
      <br>
      <a target="_blank" rel="nofollow"
href="http://www.google.com/url?sa=D&amp;q=http://pastebin.archlinux.fr/434100&amp;usg=AFQjCNEd7TramfvbJWPN0AfrrgCg07lkIQ">http://pastebin.archlinux.fr/434100</a>
      <br>
      <a target="_blank" rel="nofollow"
href="http://www.google.com/url?sa=D&amp;q=http://pastebin.archlinux.fr/434101&amp;usg=AFQjCNHX768E4py5Y1_k1U0BwiSNQBQIBg">http://pastebin.archlinux.fr/434101</a><br>
    </p>
    <p>SPI shows up in /sys but there is no node created in /dev.<br>
    </p>
    If anyone can see any faults or have any suggestions I would love to
    hear them as i'm coming close to bald!<br>
    <br>
    I also have a post listed on the BeagleBoard Google Board:<br>
<a class="moz-txt-link-freetext" href="http://groups.google.com/group/beagleboard/browse_thread/thread/273a51d0ff91537d">http://groups.google.com/group/beagleboard/browse_thread/thread/273a51d0ff91537d</a><br>
    <br>
    Kind Regards,<br>
    Jack.<br>
    <br>
    <br>
  </body>
</html>

--------------080703050406060405050803--
