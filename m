Return-Path: <jonathan.austin@arm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 240CFE0073A; Fri,  9 May 2014 09:07:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.130.217.12 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 09:07:41 PDT
Received: from service88.mimecast.com (unknown [195.130.217.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C501E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 09:07:40 -0700 (PDT)
Received: from cam-owa1.Emea.Arm.com (fw-tnat.cambridge.arm.com
	[217.140.96.21]) by service87.mimecast.com;
	Fri, 09 May 2014 17:01:29 +0100
Received: from [10.2.202.46] ([10.1.255.212]) by cam-owa1.Emea.Arm.com with
	Microsoft SMTPSVC(6.0.3790.3959); Fri, 9 May 2014 17:01:36 +0100
Message-ID: <536CFBCF.6000609@arm.com>
Date: Fri, 09 May 2014 17:01:19 +0100
From: Jonathan Austin <jonathan.austin@arm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
X-OriginalArrivalTime: 09 May 2014 16:01:36.0178 (UTC)
	FILETIME=[F46CD920:01CF6B9F]
X-MC-Unique: 114050917012900801
Subject: nativesdk-cmake can't use a separate build dir, currently fails to build
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
X-List-Received-Date: Fri, 09 May 2014 16:07:44 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

I've discovered today that nativesdk-cmake fails to build by default.=20
The cmake and cmake-native targets still work.

The difference appears to be the metadata in:

meta/conf/distro/include/seperatebuilddir.inc

...which tells bitbake not to use a separate build dir for the latter=20
two targets, but doesn't make the exception for nativesdk-cmake

I got things working again with the following hack:

---8<-------
diff --git a/meta/conf/distro/include/seperatebuilddir.inc=20
b/meta/conf/distro/include/seperatebuilddir.inc
index 8f2ebfa..2ece812 100644
--- a/meta/conf/distro/include/seperatebuilddir.inc
+++ b/meta/conf/distro/include/seperatebuilddir.inc
@@ -473,7 +473,7 @@ B_pn-nativesdk-bigreqsproto =3D "${SEPB}"
  B_pn-nativesdk-bison =3D "${SEPB}"
  B_pn-nativesdk-bzip2 =3D "${SEPB}"
  B_pn-nativesdk-chrpath =3D "${SEPB}"
-B_pn-nativesdk-cmake =3D "${SEPB}"
+#B_pn-nativesdk-cmake =3D "${SEPB}"
  B_pn-nativesdk-curl =3D "${SEPB}"
  B_pn-nativesdk-db =3D "${SEPB}"
  B_pn-nativesdk-dbus =3D "${SEPB}"
----->8-------

I'm not really sure what the 'right' way to remove this is - the two=20
existing cmake targets are just commented out, but recent patches seem=20
to be simply removing targets.

Is this the appropriate fix? Does anyone know if there's a reason for=20
two out of three cmake targets to be commented but not the third? Did it=20
work once?

Any guidance one what the actual patch should look like is welcome!

Jonny


