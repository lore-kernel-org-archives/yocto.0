Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B620DE011C5
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 08:15:29 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from [192.168.1.113] (cpe-76-95-170-232.socal.res.rr.com
	[76.95.170.232]) (authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q8MFFQFO032593
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 15:15:28 +0000
Message-ID: <505DD60E.6010907@annabooks.com>
Date: Sat, 22 Sep 2012 08:15:26 -0700
From: Sean Liming <sean.liming@annabooks.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nwmFNbsTxYh8xvNUysk6ozWS48rchUpOyUPGSXDNYodBA@mail.gmail.com>
In-Reply-To: <CANwz6nwmFNbsTxYh8xvNUysk6ozWS48rchUpOyUPGSXDNYodBA@mail.gmail.com>
X-CSC: 0
X-CHA: v=1.1 cv=Ez94Tw3ujgScwXs1pC+PmdLr+QYD70VLeGu7Cz1MAHQ= c=1 sm=1
	a=yjbP8ePMWcgA:10 a=DRpQnFnvsMEA:10 a=_DgR7O7FQkkA:10
	a=6XZH3zlyYmADzTbsPzlaoQ==:17 a=iGHA9ds3AAAA:8 a=zBv0WvqY93a4Cb1M1zQA:9
	a=wPNLvfGTeEIA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10
	a=6gP5uRWmYxwSCKdL:21
	a=tYop8ABZmCyj6ODT:21 a=pGLkceISAAAA:8 a=6NGyexyhU58Qu2zFlBQA:9
	a=_W_S_7VecoQA:10 a=wynLdFB7fA8RTU94XgkA:9 a=QEXdDO2ut3YA:10
	a=X_vOJ-OpxRCr9-hK:21 a=BQuhg5TVp2a0yTwT:21
	a=6XZH3zlyYmADzTbsPzlaoQ==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020204.505DD610.0070, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Subject: Re: beagleboard uEnv.txt file
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
X-List-Received-Date: Sat, 22 Sep 2012 15:15:30 -0000
X-Groupsio-MsgNum: 9592
Content-Type: multipart/mixed; boundary="------------090007050604040404060109"

--------------090007050604040404060109
Content-Type: multipart/alternative;
 boundary="------------000508060709040806090000"

--------------000508060709040806090000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/22/2012 07:08 AM, Edward Vidal wrote:
> Hello All,
> Does anyone have a working uEnv.txt file for the core-image-sato for 
> the beagleoard?
> Any help will be appreciated thanks in advance.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
Attached is one that worked for core-image-minimal.

Here are the contents:

bootfile=uImage
address_uimage=0x80300000

console=ttyO2,115200n8

mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
optargs=console=tty0

mmc_load_uimage=fatload mmc 0:1 ${address_uimage} ${bootfile}

mmcargs=setenv bootargs console=${console} ${optargs} root=${mmcroot} 
rootfstype=${mmcrootfstype}

loaduimage=run mmc_load_uimage; echo Booting from mmc ...; run mmcargs; 
bootm ${address_uimage}


-- 
Regards,

Sean D. Liming

Annabooks
Cell: 858-774-3176


--------------000508060709040806090000
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 09/22/2012 07:08 AM, Edward Vidal
      wrote:<br>
    </div>
    <blockquote
cite="mid:CANwz6nwmFNbsTxYh8xvNUysk6ozWS48rchUpOyUPGSXDNYodBA@mail.gmail.com"
      type="cite">Hello All,<br>
      Does anyone have a working uEnv.txt file for the core-image-sato
      for the beagleoard?<br>
      Any help will be appreciated thanks in advance.<br>
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
    Attached is one that worked for core-image-minimal.<br>
    <br>
    Here are the contents:<br>
    <br>
    bootfile=uImage<br>
    address_uimage=0x80300000<br>
    <br>
    console=ttyO2,115200n8<br>
    <br>
    mmcroot=/dev/mmcblk0p2 rw<br>
    mmcrootfstype=ext3 rootwait<br>
    optargs=console=tty0<br>
    <br>
    mmc_load_uimage=fatload mmc 0:1 ${address_uimage} ${bootfile}<br>
    <br>
    mmcargs=setenv bootargs console=${console} ${optargs}
    root=${mmcroot} rootfstype=${mmcrootfstype}<br>
    <br>
    loaduimage=run mmc_load_uimage; echo Booting from mmc ...; run
    mmcargs; bootm ${address_uimage}<br>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Regards,

Sean D. Liming

Annabooks
Cell: 858-774-3176</pre>
  </body>
</html>

--------------000508060709040806090000--

--------------090007050604040404060109
Content-Type: text/plain; charset=UTF-8;
 name="uEnv.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="uEnv.txt"

bootfile=uImage
address_uimage=0x80300000

console=ttyO2,115200n8

mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
optargs=console=tty0

mmc_load_uimage=fatload mmc 0:1 ${address_uimage} ${bootfile}

mmcargs=setenv bootargs console=${console} ${optargs} root=${mmcroot} rootfstype=${mmcrootfstype}

loaduimage=run mmc_load_uimage; echo Booting from mmc ...; run mmcargs; bootm ${address_uimage}


--------------090007050604040404060109--
