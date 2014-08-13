Return-Path: <modemtec@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06524E007A0; Tue, 12 Aug 2014 23:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (modemtec[at]gmail.com)
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words
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
	*      [74.125.82.51 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CD06E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 23:47:32 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b13so10728267wgh.34
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 23:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=eumlllj2nKRJ7GnI2atADenFsoGr/aUvTqgSvd09Lgg=;
	b=ztwdhLENr4v2mbBgxz6F0/VDg5NKXePqZAiFGV1rIU5lj6bnPo+g81ymwVp44OlwoO
	wb+GtAlVyJ8UPSWXluhyKt77k8Lar3y4tJqeC97veGlGGSYQizoSX9Q6DSj7t+C++TbL
	oM1r511+E9ovLzCKGAgzP7uDqmofZrhVgi2Ji6DXYWDOD8yOhHKq2Mkd6xDgVKjkjevU
	mW6DL2Z3Dqq9BA4KFOxIwd6pCX8aOaYDp82ffpTghomayFy9G4XdtrMUJO3aDAAQuHoT
	5QtQxal9tG5H+2m9pPJnDIIfLKGqfOOsZ1YXrqmPHKpJnUu6GpGboRhLVu7GDX4IBgto
	GhTQ==
X-Received: by 10.180.211.71 with SMTP id na7mr31603117wic.14.1407912451662;
	Tue, 12 Aug 2014 23:47:31 -0700 (PDT)
Received: from [127.0.0.1] (ip-94-112-189-217.net.upcbroadband.cz.
	[94.112.189.217])
	by mx.google.com with ESMTPSA id k6sm2320796wjq.5.2014.08.12.23.47.30
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Aug 2014 23:47:30 -0700 (PDT)
Message-ID: <53EB0A16.5000300@gmail.com>
Date: Wed, 13 Aug 2014 08:47:50 +0200
From: =?windows-1252?Q?Le=9Aek_Franek?= <modemtec@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Antivirus: avast! (VPS 140812-3, 12.08.2014), Outbound message
X-Antivirus-Status: Clean
Subject: Bad package names - packagegroup-cross-canadian problem
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
X-List-Received-Date: Wed, 13 Aug 2014 06:47:38 -0000
Content-Type: multipart/alternative;
	boundary="------------070702040802010603080205"

--------------070702040802010603080205
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

I ran into an error during do_populate_sdk in meta-toolchain for machine 
socfpga_cyclone5:

ERROR: packagegroup-cross-canadian-socfpga_cyclone5 not found in the 
base feeds (i686-nativesdk noarch any all).

I found that bitbake wants packages which has before version string 1: 
for example: nativesdk-libopkg-staticdev-*1:*0.2.1-r0@i686_nativesdk. 
But I have only package without 1: in package folder: 
build-socfpga_cyclone5/tmp/deploy/rpm/i686_nativesdk/nativesdk-libopkg-stat=
icdev-0.2.1-r0.i686_nativesdk.rpm

If anyone knows how to make it working I would be very glad.

Thank you very much

Lesek Franek ModemTec s.r.o.

Build Configuration:
BB_VERSION            =3D "1.22.0"
BUILD_SYS             =3D "i686-linux"
NATIVELSBSTRING    =3D "LinuxMint-17"
TARGET_SYS            =3D "arm-poky-linux-gnueabi"
MACHINE                =3D "socfpga_cyclone5"
DISTRO                  =3D "poky"
DISTRO_VERSION      =3D "1.6.1"
TUNE_FEATURES       =3D "armv7a vfp neon"
TARGET_FPU            =3D "vfp-neon"
meta
meta-yocto
meta-yocto-bsp      =3D "daisy:810dd79720d607f1a31e73ff5f0862928fe06eb2"
meta-altera          =3D 
"angstrom-v2014.06-yocto1.6:cbf58fc9d7df88fcb6ec6db9aa109533bf180d5e"
meta-socfpga_altera =3D "master:1bd7bca0877adcced73acfb4c4522b02c9244917"
meta-modemtec       =3D "master:e7316808ddc034bc3dcdedc8c1e0d2ab5ce3af22"
meta-oe
meta-webserver      =3D "daisy:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
meta-qt5               =3D "daisy:0137274b13a568718e441f8f1c611a653db9f2f7"=



---
Tato zpr=E1va neobsahuje viry ani jin=FD =9Akodliv=FD k=F3d - avast! Antivi=
rus je aktivn=ED.
http://www.avast.com

--------------070702040802010603080205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
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
      <br>
      I found that bitbake wants packages which has before version
      string 1: for example: nativesdk-libopkg-staticdev-<b>1:</b>0.2.1-r0@i686_nativesdk.
      But I have only package without 1: in package folder:
build-socfpga_cyclone5/tmp/deploy/rpm/i686_nativesdk/nativesdk-libopkg-staticdev-0.2.1-r0.i686_nativesdk.rpm<br>
      <br>
      If anyone knows how to make it working I would be very glad.
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
        <div>BB_VERSION            = "1.22.0"</div>
        <div>BUILD_SYS             = "i686-linux"</div>
        <div>NATIVELSBSTRING    = "LinuxMint-17"</div>
        <div>TARGET_SYS            = "arm-poky-linux-gnueabi"</div>
        <div>MACHINE                = "socfpga_cyclone5"</div>
        <div>DISTRO                  = "poky"</div>
        <div>DISTRO_VERSION      = "1.6.1"</div>
        <div>TUNE_FEATURES       = "armv7a vfp neon"</div>
        <div>TARGET_FPU            = "vfp-neon"</div>
        <div>meta                     <br>
        </div>
        <div>meta-yocto            <br>
        </div>
        <div>meta-yocto-bsp      =
          "daisy:810dd79720d607f1a31e73ff5f0862928fe06eb2"</div>
        <div>meta-altera          =
          "angstrom-v2014.06-yocto1.6:cbf58fc9d7df88fcb6ec6db9aa109533bf180d5e"</div>
        <div>meta-socfpga_altera =
          "master:1bd7bca0877adcced73acfb4c4522b02c9244917"</div>
        <div>meta-modemtec       =
          "master:e7316808ddc034bc3dcdedc8c1e0d2ab5ce3af22"</div>
        <div>meta-oe                 <br>
        </div>
        <div>meta-webserver      =
          "daisy:dca466c074c9a35bc0133e7e0d65cca0731e2acf"</div>
        <div>meta-qt5               =
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

--------------070702040802010603080205--
