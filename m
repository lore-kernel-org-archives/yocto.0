Return-Path: <prashanthg@vtitan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2798E00830; Fri, 24 Oct 2014 03:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [72.5.230.103 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 907 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Oct 2014 03:39:42 PDT
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04BDE0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 03:39:42 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1414146245700387.09252308979205;
	Fri, 24 Oct 2014 03:24:05 -0700 (PDT)
Date: Fri, 24 Oct 2014 15:54:05 +0530
From: prashanthg <prashanthg@vtitan.com>
To: <yocto@yoctoproject.org>
Message-ID: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Yocto Daisy - Beaglebone Black - core-image-minimal - Error: do_compile
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
X-List-Received-Date: Fri, 24 Oct 2014 10:39:46 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_172614_1058147135.1414146245652"

------=_Part_172614_1058147135.1414146245652
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Hi,

I have been facing issues with 'bitbake core-image-minimal' with Qt5 library added for BBB.

Error Log: http://pastebin.com/ADdyJnz8

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-13.10"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6.1"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU        = "vfp-neon"
meta              
meta-yocto        
meta-yocto-bsp    = "daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37"
meta-oe           = "daisy:518cd119a8724dbd485a5d5c5047de59e8fbd652"
meta-ti           = "daisy:80924d3bba59d6920217216c73af43fdd40d0152"
meta-qt5          = "daisy:c29c317e0f22202bfaa85329a580564bbc179089"

It would be great if you can help me solve this issue.

Thanks and Regards,
Prashanth


------=_Part_172614_1058147135.1414146245652
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'><br><font face=3D"verdana">Hi,<br><br>I have been facing issu=
es with 'bitbake core-image-minimal' with Qt5 library added for BBB.<br><br=
>Error Log: http://pastebin.com/ADdyJnz8<br><br>Build Configuration:<br>BB_=
VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.22.0"<br>BUILD_SYS=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "i686-linux"<br>NATIVE=
LSBSTRING&nbsp;&nbsp; =3D "Ubuntu-13.10"<br>TARGET_SYS&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueabi"<br>MACHINE&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "beaglebone"<br>DISTRO&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"=
<br>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "1.6.1"<br>TUNE_FEATURES&nbsp;&nbs=
p;&nbsp;&nbsp; =3D "armv7a vfp neon callconvention-hard cortexa8"<br>TARGET=
_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "vfp-neon"<br>meta&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b=
r>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>meta-yocto-bsp&n=
bsp;&nbsp;&nbsp; =3D "daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37"<br>me=
ta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "dais=
y:518cd119a8724dbd485a5d5c5047de59e8fbd652"<br>meta-ti&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "daisy:80924d3bba59d6920217216c=
73af43fdd40d0152"<br>meta-qt5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D "daisy:c29c317e0f22202bfaa85329a580564bbc179089"<br><br>It wou=
ld be great if you can help me solve this issue.<br><br>Thanks and Regards,=
<br>Prashanth<br></font></div></body></html>

------=_Part_172614_1058147135.1414146245652--
