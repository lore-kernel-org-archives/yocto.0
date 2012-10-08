Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CB37E01275
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 00:42:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q987g35l003015
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Oct 2012 00:42:03 -0700 (PDT)
Received: from [128.224.162.203] (128.224.162.203) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.309.2;
	Mon, 8 Oct 2012 00:42:02 -0700
Message-ID: <507283C7.4060601@windriver.com>
Date: Mon, 8 Oct 2012 15:41:59 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nzXviQwG=S-5nAF9wF70tQ4PyrZNLTHFHODA5WWJfkCTw@mail.gmail.com>
In-Reply-To: <CANwz6nzXviQwG=S-5nAF9wF70tQ4PyrZNLTHFHODA5WWJfkCTw@mail.gmail.com>
X-Originating-IP: [128.224.162.203]
Cc: yocto@yoctoproject.org
Subject: Re: core-image-sato keyboard
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
X-List-Received-Date: Mon, 08 Oct 2012 07:42:05 -0000
Content-Type: multipart/alternative;
	boundary="------------040202030408050106020209"

--------------040202030408050106020209
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

What is your bootargs ?  We also encountered this issue long time ago. 
The following bootargs line would cause this problem:
setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2 
rootwait rootfstype=ext3 ro'

Try to change "console=tty0 console=ttyO2,115200n8" to 
"console=ttyO2,115200n8 console=tty0" .
Please refer the bug 1823 
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=1823).


Thanks,
Yi


On 2012?10?07? 03:20, Edward Vidal wrote:
> Hello,
> Just built core-image-sato for beagleboard xM C.
> I have a usb keyboard and mouse connected.  The Mouse works but not 
> the keyboard when Terminal is selected.  The virtual keyboard works okay.
> The following is what I see with dmesg.
> usb 1-2.2: new low-speed USB device number 4 using ehci-omap
> input: CHESEN USB Keyboard as 
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.0/input/input
> 0
> generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN 
> USB Keyboard] on usb-ehci-omap.0-2.2
> /input0
> input: CHESEN USB Keyboard as 
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input
> 1
> generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN 
> USB Keyboard] on usb-ehci-omap.0-2.2/i
> nput1
>
> The file /etc/formfactor/machconfig
> # Assume a USB mouse and touchscreen are connected
> HAVE_TOUCHSCREEN=0
> HAVE_KEYBOARD=1
> I chmod +x /etc/formfactor/config and /etc/formfactor/matchconfig
> Thanks in advance for any help
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------040202030408050106020209
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    What is your bootargs ?&nbsp; We also encountered this issue long time
    ago. The following bootargs line would cause this problem:<br>
    setenv bootargs 'console=tty0 console=ttyO2,115200n8
    root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro' <br>
    <br>
    Try to change "console=tty0 console=ttyO2,115200n8" to
    "console=ttyO2,115200n8 console=tty0" .<br>
    Please refer the bug 1823
    (<a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=1823">https://bugzilla.yoctoproject.org/show_bug.cgi?id=1823</a>).<br>
    <br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2012&#24180;10&#26376;07&#26085; 03:20, Edward Vidal
      wrote:<br>
    </div>
    <blockquote
cite="mid:CANwz6nzXviQwG=S-5nAF9wF70tQ4PyrZNLTHFHODA5WWJfkCTw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      Hello,<br>
      Just built core-image-sato for beagleboard xM C.<br>
      I have a usb keyboard and mouse connected.&nbsp; The Mouse works but
      not the keyboard when Terminal is selected.&nbsp; The virtual keyboard
      works okay.<br>
      The following is what I see with dmesg.<br>
      usb 1-2.2: new low-speed USB device number 4 using ehci-omap<br>
      input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.0/input/input<br>
      0<br>
      generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard
      [CHESEN USB Keyboard] on usb-ehci-omap.0-2.2<br>
      /input0<br>
      input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input<br>
      1<br>
      generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device
      [CHESEN USB Keyboard] on usb-ehci-omap.0-2.2/i<br>
      nput1<br>
      <br>
      The file /etc/formfactor/machconfig<br>
      # Assume a USB mouse and touchscreen are connected<br>
      HAVE_TOUCHSCREEN=0<br>
      HAVE_KEYBOARD=1<br>
      I chmod +x /etc/formfactor/config and /etc/formfactor/matchconfig<br>
      Thanks in advance for any help<br>
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040202030408050106020209--
