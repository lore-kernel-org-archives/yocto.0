Return-Path: <modemtec@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEAB8E00814; Thu,  7 Aug 2014 05:49:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (modemtec[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-we0-f194.google.com (mail-we0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 351A0E0080A
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 05:49:37 -0700 (PDT)
Received: by mail-we0-f194.google.com with SMTP id u56so1895947wes.1
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 05:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=nDk0NuKiEiAMLJ7s1BeInf9tOmYFNxHgz+MxPhT/0X8=;
	b=Vy4PrJ9jilLwrOKaNK9Umw98mW7JRKGEapgTOWfYNJ4+HfE108yza50FuZHkXQ0kfE
	gmN/e1Xws0Rs9C8FGUZQvnht2oRUliz++jyEVh3/uOpS2qSPn5s6Vpt6ESuhrL+pyQNq
	aOo/y7k8CGIQodHkVUUAZtTqekQWSBV/x03WpOy1ko3/SS6wUKF1iwhA/wC3Sjdu3pUO
	4/Ug/xQxvuxmwe9dECXHmrsgQ9H+XupZp42XBXQbNOPqyWZM8CEUuFx07B6zZ0cPSnSv
	iW4MEpBKAoUJSCgX/+uSNkanMIyvZKWpQC5YUFXl0xn+eiHwboUqJr8b4e3iqmh/P1y+
	IGUg==
X-Received: by 10.194.192.201 with SMTP id hi9mr24676631wjc.28.1407415776701; 
	Thu, 07 Aug 2014 05:49:36 -0700 (PDT)
Received: from [127.0.0.1] (ip-94-112-189-217.net.upcbroadband.cz.
	[94.112.189.217]) by mx.google.com with ESMTPSA id
	fb12sm9707486wjc.43.2014.08.07.05.49.35 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Aug 2014 05:49:36 -0700 (PDT)
Message-ID: <53E375F1.2090905@gmail.com>
Date: Thu, 07 Aug 2014 14:49:53 +0200
From: =?UTF-8?B?TGXFoWVrIEZyYW5law==?= <modemtec@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Antivirus: avast! (VPS 140807-0, 07.08.2014), Outbound message
X-Antivirus-Status: Clean
Subject: Meta-toolchain do_populate_sdk packagegroup-cross-canadian-socfpga_cyclone5 problem
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
X-List-Received-Date: Thu, 07 Aug 2014 12:49:44 -0000
Content-Type: multipart/alternative;
	boundary="------------090607070605090504030705"

--------------090607070605090504030705
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

I ran into an error during do_populate_sdk in meta-toolchain for machine 
socfpga_cyclone5:

ERROR: packagegroup-cross-canadian-socfpga_cyclone5 not found in the 
base feeds (i686-nativesdk noarch any all).
List packages for example: 
binutils-cross-canadian-arm-2.24-r0@i686_nativesdk 
binutils-cross-canadian-arm-dbg-2.24-r0@i686_nativesdk etc
ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in: 
/modemtec/linux/yocto-daisy/build-socfpga_cyclone5/tmp/work/armv7a-vfp-neon=
-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.12635
ERROR: Task 7 
(/modemtec/linux/yocto-daisy/meta/recipes-core/meta/meta-toolchain.bb 
<http://meta-toolchain.bb>, do_populate_sdk) failed with exit code '1'

I tried to find an answer, but without success. I tried to compile 
nativesdk-packagegroup-sdk-host and it was already compiled.

I was able to compile u-boot, kernel, kernel modules, dtb, rootfs and 
everythink works quite well, but now I'm stuck with this and have no 
clue how to solve this. If anyone knows how to make it working I would 
be very glad.

Thank you very much

Lesek Franek ModemTec s.r.o.

Build Configuration:
BB_VERSION        =3D "1.22.0"
BUILD_SYS         =3D "i686-linux"
NATIVELSBSTRING   =3D "LinuxMint-17"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "socfpga_cyclone5"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.6.1"
TUNE_FEATURES     =3D "armv7a vfp neon"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    =3D "daisy:810dd79720d607f1a31e73ff5f0862928fe06eb2"
meta-altera       =3D 
"angstrom-v2014.06-yocto1.6:cbf58fc9d7df88fcb6ec6db9aa109533bf180d5e"
meta-socfpga_altera =3D "master:1bd7bca0877adcced73acfb4c4522b02c9244917"
meta-modemtec     =3D "master:e7316808ddc034bc3dcdedc8c1e0d2ab5ce3af22"
meta-oe
meta-webserver    =3D "daisy:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
meta-qt5          =3D "daisy:0137274b13a568718e441f8f1c611a653db9f2f7"


---
Tato zpr=C3=A1va neobsahuje viry ani jin=C3=BD =C5=A1kodliv=C3=BD k=C3=B3d =
- avast! Antivirus je aktivn=C3=AD.
http://www.avast.com

--------------090607070605090504030705
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div dir="ltr">
      <div>Hello,</div>
      <div><br>
      </div>
      <div>I ran into an error during do_populate_sdk in meta-toolchain
        for machine socfpga_cyclone5:<br>
      </div>
      <div><br>
      </div>
      <div>ERROR: packagegroup-cross-canadian-socfpga_cyclone5 not found
        in the base feeds (i686-nativesdk noarch any all).<br>
      </div>
      <div>List packages for example:
        binutils-cross-canadian-arm-2.24-r0@i686_nativesdk
        binutils-cross-canadian-arm-dbg-2.24-r0@i686_nativesdk etc</div>
      <div>
        <div>ERROR: Function failed: do_populate_sdk</div>
        <div>ERROR: Logfile of failure stored in:
/modemtec/linux/yocto-daisy/build-socfpga_cyclone5/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.12635</div>
        <div>ERROR: Task 7
          (/modemtec/linux/yocto-daisy/meta/recipes-core/meta/<a
            href="http://meta-toolchain.bb">meta-toolchain.bb</a>,
          do_populate_sdk) failed with exit code '1'</div>
      </div>
      <div><br>
      </div>
      <div>I tried to find an answer, but without success. I tried to
        compile nativesdk-packagegroup-sdk-host and it was already
        compiled.</div>
      <div><br>
      </div>
      <div>I was able to compile u-boot, kernel, kernel modules, dtb,
        rootfs and everythink works quite well, but now I'm stuck with
        this and have no clue how to solve this. If anyone knows how to
        make it working I would be very glad.</div>
      <div><br>
      </div>
      <div>Thank you very much</div>
      <div><br>
      </div>
      <div>Lesek Franek ModemTec s.r.o.</div>
      <div><br>
      </div>
      <div>
        <div>Build Configuration:</div>
        <div>BB_VERSION        = "1.22.0"</div>
        <div>BUILD_SYS         = "i686-linux"</div>
        <div>NATIVELSBSTRING   = "LinuxMint-17"</div>
        <div>TARGET_SYS        = "arm-poky-linux-gnueabi"</div>
        <div>MACHINE           = "socfpga_cyclone5"</div>
        <div>DISTRO            = "poky"</div>
        <div>DISTRO_VERSION    = "1.6.1"</div>
        <div>TUNE_FEATURES     = "armv7a vfp neon"</div>
        <div>TARGET_FPU        = "vfp-neon"</div>
        <div>meta              </div>
        <div>meta-yocto        </div>
        <div>meta-yocto-bsp    =
          "daisy:810dd79720d607f1a31e73ff5f0862928fe06eb2"</div>
        <div>meta-altera       =
          "angstrom-v2014.06-yocto1.6:cbf58fc9d7df88fcb6ec6db9aa109533bf180d5e"</div>
        <div>meta-socfpga_altera =
          "master:1bd7bca0877adcced73acfb4c4522b02c9244917"</div>
        <div>meta-modemtec     =
          "master:e7316808ddc034bc3dcdedc8c1e0d2ab5ce3af22"</div>
        <div>meta-oe           </div>
        <div>meta-webserver    =
          "daisy:dca466c074c9a35bc0133e7e0d65cca0731e2acf"</div>
        <div>meta-qt5          =
          "daisy:0137274b13a568718e441f8f1c611a653db9f2f7"</div>
      </div>
    </div>
  
<br /><br />
<hr style='border:none; color:#909090; background-color:#B0B0B0; height: 1px; width: 99%;' />
<table style='border-collapse:collapse;border:none;'>
	<tr>
		<td style='border:none;padding:0px 15px 0px 8px'>
			<a href="http://www.avast.com/">
				<img border=0 src="http://static.avast.com/emails/avast-mail-stamp.png" />
			</a>
		</td>
		<td>
			<p style='color:#3d4d5a; font-family:"Calibri","Verdana","Arial","Helvetica"; font-size:12pt;'>
				Tato zpráva neobsahuje viry ani jiný škodlivý kód -<a href="http://www.avast.com/">avast! Antivirus</a> je aktivní.
			</p>
		</td>
	</tr>
</table>
<br />
</body>
</html>

--------------090607070605090504030705--
