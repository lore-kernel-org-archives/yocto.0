Return-Path: <chriskot@quietwind.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C86FDE00D47; Sat, 20 Aug 2016 01:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00, HTML_FONT_FACE_BAD, 
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.89.23.142 listed in list.dnswl.org]
X-Greylist: delayed 396 seconds by postgrey-1.32 at yocto-www;
	Sat, 20 Aug 2016 01:34:16 PDT
Received: from gproxy4-pub.mail.unifiedlayer.com
	(gproxy4-pub.mail.unifiedlayer.com [69.89.23.142])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 79E9EE007B1
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 01:34:16 -0700 (PDT)
Received: (qmail 2286 invoked by uid 0); 20 Aug 2016 08:27:35 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy4.mail.unifiedlayer.com with SMTP; 20 Aug 2016 08:27:35 -0000
Received: from host288.hostmonster.com ([74.220.215.88]) by CMOut01 with 
	id ZLTT1t00P1v0fLi01LTW6C; Sat, 20 Aug 2016 02:27:34 -0600
X-Authority-Analysis: v=2.1 cv=FKmImYYs c=1 sm=1 tr=0
	a=ELBcn9xbBe8RKOfaP8USrg==:117 a=ELBcn9xbBe8RKOfaP8USrg==:17
	a=L9H7d07YOLsA:10 a=9cW_t1CCXrUA:10 a=s5jvgZ67dGcA:10 a=clz3kh7j980A:10
	a=elf5DX8K3HcA:10 a=7z1cN_iqozsA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=bBPkwenoCCrbGojT5eIA:9 a=QEXdDO2ut3YA:10 a=gGqrDZ-pKeX1utRhvs0A:9
	a=08FI0AyVIkROfgPA:21 a=_W_S_7VecoQA:10
Received: from 45-17-238-199.lightspeed.rcsntx.sbcglobal.net
	([45.17.238.199]:36656 helo=localhost.localdomain)
	by host288.hostmonster.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_2)
	(envelope-from <chriskot@quietwind.net>) id 1bb1cm-0004mi-MW
	for yocto@yoctoproject.org; Sat, 20 Aug 2016 02:27:28 -0600
To: yocto@yoctoproject.org
From: Chris Kottaridis <chriskot@quietwind.net>
Message-ID: <f13cdd53-4e5c-4fa0-54b5-6cf02971f494@quietwind.net>
Date: Sat, 20 Aug 2016 03:27:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
X-Identified-User: {2690:host288.hostmonster.com:quietwin:quietwind.net}
	{sentby:smtp auth 45.17.238.199 authed with
	chriskot@quietwind.net}
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - host288.hostmonster.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - quietwind.net
X-Source-IP: 45.17.238.199
X-Exim-ID: 1bb1cm-0004mi-MW
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 45-17-238-199.lightspeed.rcsntx.sbcglobal.net
	(localhost.localdomain) [45.17.238.199]:36656
X-Source-Auth: chriskot@quietwind.net
X-Email-Count: 0
X-Source-Cap: cXVpZXR3aW47cXVpZXR3aW47aG9zdDI4OC5ob3N0bW9uc3Rlci5jb20=
Subject: Accessing analog pins on BeagleBone Black
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
X-List-Received-Date: Sat, 20 Aug 2016 08:34:18 -0000
Content-Type: multipart/alternative;
	boundary="------------8B2AC8BF94F74D987301819A"

--------------8B2AC8BF94F74D987301819A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I followed the quick start guide, essentially
==========================
1. checked out krogoth

ran:
2. source oe-init-build-env

3. Changed config file to enable BEAGLEBONE

MACHINE ?= "beaglebone"

ran
4. $ bitbake core-image-sato

5. Found steps to build image on micro SD

Successfully booted from microSD and got login prompt on serial port and 
a graphical output on HDMI.

6. Tested control of LEDs
I was able to follow these steps to control the 4 LEDs on the board

Set LED = 53-56 and run this
echo $LED > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio$LED/direction

Then I can set each LED by writing a $VAL of either 1 or 0 turn turn on 
and off the LED:

echo $VAL > /sys/class/gpio/gpio$LED/value
==================================


All of this is great but I want access to the Analog to Digital pins to 
read an analog value on one of the pins.

The only instructions I can find claim I have to do the following to 
create the ain* devices

|echo cape-bone-iio > /sys/devices/bone_capemgr.*/slots|

But on my machine I don't have a /sys/devices/bone_capemgr directory.

So, I don't know if these steps apply to Yocto kernel or not, or if I 
need to enable a kernel config option that isn't enabled by default to 
get the bone_capemgr directory to appear.

How do I get access to the Analog to Digital pins on the BeagleBone 
Black board in Yocto ?

Any pointers appreciated.

Thanks
Chris Kottaridis


--------------8B2AC8BF94F74D987301819A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    I followed the quick start guide, essentially<br>
    ==========================<br>
    1. checked out krogoth<br>
    <br>
    ran:<br>
    2. source oe-init-build-env<br>
    <br>
    3. Changed config file to enable BEAGLEBONE<br>
    <br>
    MACHINE ?= "beaglebone"<br>
    <br>
    ran<br>
    4. $ bitbake core-image-sato<br>
    <br>
    5. Found steps to build image on micro SD<br>
    <br>
    Successfully booted from microSD and got login prompt on serial port
    and a graphical output on HDMI.<br>
    <br>
    6. Tested control of LEDs<br>
    I was able to follow these steps to control the 4 LEDs on the board<br>
    <br>
    Set LED = 53-56 and run this<br>
    echo $LED &gt; /sys/class/gpio/export<br>
    echo out &gt; /sys/class/gpio/gpio$LED/direction<br>
    <br>
    Then I can set each LED by writing a $VAL of either 1 or 0 turn turn
    on and off the LED:<br>
    <br>
    echo $VAL &gt; /sys/class/gpio/gpio$LED/value<br>
    ==================================<br>
    <br>
    <br>
    All of this is great but I want access to the Analog to Digital pins
    to read an analog value on one of the pins.<br>
    <br>
    The only instructions I can find claim I have to do the following to
    create the ain* devices<br>
    <br>
    <font color="#666666" face="'courier new', monospace" size="3"><span
        style="line-height:20px"><code>echo cape-bone-iio &gt;
          /sys/devices/bone_capemgr.*/slots</code></span></font><br>
    <br>
    But on my machine I don't have a /sys/devices/bone_capemgr
    directory.<br>
    <br>
    So, I don't know if these steps apply to Yocto kernel or not, or if
    I need to enable a kernel config option that isn't enabled by
    default to get the bone_capemgr directory to appear.<br>
    <br>
    How do I get access to the Analog to Digital pins on the BeagleBone
    Black board in Yocto ?<br>
    <br>
    Any pointers appreciated.<br>
    <br>
    Thanks<br>
    Chris Kottaridis<br>
    <br>
  </body>
</html>

--------------8B2AC8BF94F74D987301819A--
