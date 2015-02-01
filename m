Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 548C4E0070B; Sun,  1 Feb 2015 07:53:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HEXHASH_WORD, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.165 listed in list.dnswl.org]
	*  3.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from BAY004-OMC3S27.hotmail.com (bay004-omc3s27.hotmail.com
	[65.54.190.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE3ACE00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 07:53:29 -0800 (PST)
Received: from BAY169-W136 ([65.54.190.187]) by BAY004-OMC3S27.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Sun, 1 Feb 2015 07:53:28 -0800
X-TMN: [COTutRoLChDlVIbqf4JMwo1c3ejJhbKp]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W1362E3C1DC8377B4CE66D2DAE3F0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 1 Feb 2015 10:53:28 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 01 Feb 2015 15:53:28.0393 (UTC)
	FILETIME=[3863C390:01D03E37]
Subject: Checksum failure encountered Java
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
X-List-Received-Date: Sun, 01 Feb 2015 15:53:38 -0000
Content-Type: multipart/alternative;
	boundary="_d32a9707-24c8-425e-b6a6-dedeca35af25_"

--_d32a9707-24c8-425e-b6a6-dedeca35af25_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I tried to move a build from NUC to Pandaboard and the core-image-sato work=
ed fine=2C well except the README.HARDWARE for arm didn't mention coping th=
e uImage to /boot. Figured that out easy enough.

But when I tried to add oracle-jse-jre that worked fine on NUC got the foll=
owing errors:

WARNING: Checksum failure encountered with download of http://download.orac=
le.com/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_h=
eadless-07_may_2014.tar.gz - will attempt other sources if available
WARNING: Renaming /work/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-clie=
nt_headless-07_may_2014.tar.gz to /work/downloads/ejre-7u60-fcs-b19-linux-a=
rm-vfp-hflt-client_headless-07_may_2014.tar.gz_bad-checksum_b72400960629e74=
03c4b579dada2a804
ERROR: Fetcher failure for URL: 'http://download.oracle.com/otn/java/ejre/7=
u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.ta=
r.gz'. Checksum mismatch!
File: '/work/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless=
-07_may_2014.tar.gz' has md5 checksum b72400960629e7403c4b579dada2a804 when=
 b9b8f598b0a7f49e4d221f16ba25c6c0 was expected
File: '/work/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless=
-07_may_2014.tar.gz' has sha256 checksum c4a64be693e0e27ca95ffe3036c56156e3=
d75e07f620fd913308eb03cdf86779 when ed061060011d88efe5563c2949c00993db85db1=
7ab94f18a78713007a2b90faf was expected
If this change is expected (e.g. you have upgraded to a new version without=
 updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] =3D "b72400960629e7403c4b579dada2a804"
SRC_URI[sha256sum] =3D "c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd91330=
8eb03cdf86779"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headle=
ss-07_may_2014.tar.gz'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /work/pandaboard/tmp/work/cortexa9t2hf=
-vfp-neon-poky-linux-gnueabi/oracle-jse-jre/1.7.0-u60r0/temp/log.do_fetch.3=
1677
ERROR: Task 231 (/home/jim/poky/meta-oracle-java/recipes-devtools/oracle-ja=
va/oracle-jse-jre_1.7.0.bb=2C do_fetch) failed with exit code '1'

Should I just change the checksum locally or what???

Jim A


 		 	   		  =

--_d32a9707-24c8-425e-b6a6-dedeca35af25_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>I tried to move a build from NUC=
 to Pandaboard and the core-image-sato worked fine=2C well except the READM=
E.HARDWARE for arm didn't mention coping the uImage to /boot. Figured that =
out easy enough.<br><br>But when I tried to add oracle-jse-jre that worked =
fine on NUC got the following errors:<br><br>WARNING: Checksum failure enco=
untered with download of http://download.oracle.com/otn/java/ejre/7u60-b19/=
ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz - w=
ill attempt other sources if available<br>WARNING: Renaming /work/downloads=
/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz to=
 /work/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_ma=
y_2014.tar.gz_bad-checksum_b72400960629e7403c4b579dada2a804<br>ERROR: Fetch=
er failure for URL: 'http://download.oracle.com/otn/java/ejre/7u60-b19/ejre=
-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz'. Check=
sum mismatch!<br>File: '/work/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hfl=
t-client_headless-07_may_2014.tar.gz' has md5 checksum b72400960629e7403c4b=
579dada2a804 when b9b8f598b0a7f49e4d221f16ba25c6c0 was expected<br>File: '/=
work/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_=
2014.tar.gz' has sha256 checksum c4a64be693e0e27ca95ffe3036c56156e3d75e07f6=
20fd913308eb03cdf86779 when ed061060011d88efe5563c2949c00993db85db17ab94f18=
a78713007a2b90faf was expected<br>If this change is expected (e.g. you have=
 upgraded to a new version without updating the checksums) then you can use=
 these lines within the recipe:<br>SRC_URI[md5sum] =3D "b72400960629e7403c4=
b579dada2a804"<br>SRC_URI[sha256sum] =3D "c4a64be693e0e27ca95ffe3036c56156e=
3d75e07f620fd913308eb03cdf86779"<br>Otherwise you should retry the download=
 and/or check with upstream to determine if the file has become corrupted o=
r otherwise unexpectedly modified.<br><br>ERROR: Function failed: Fetcher f=
ailure for URL: 'http://download.oracle.com/otn/java/ejre/7u60-b19/ejre-7u6=
0-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz'. Unable to=
 fetch URL from any source.<br>ERROR: Logfile of failure stored in: /work/p=
andaboard/tmp/work/cortexa9t2hf-vfp-neon-poky-linux-gnueabi/oracle-jse-jre/=
1.7.0-u60r0/temp/log.do_fetch.31677<br>ERROR: Task 231 (/home/jim/poky/meta=
-oracle-java/recipes-devtools/oracle-java/oracle-jse-jre_1.7.0.bb=2C do_fet=
ch) failed with exit code '1'<br><br>Should I just change the checksum loca=
lly or what???<br><br>Jim A<br><br><br> 		 	   		  </div></body>
</html>=

--_d32a9707-24c8-425e-b6a6-dedeca35af25_--
