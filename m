Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10088E0070B; Sun,  1 Feb 2015 07:58:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC3S4.hotmail.com (bay004-omc3s4.hotmail.com
	[65.54.190.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB9BE00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 07:58:03 -0800 (PST)
Received: from BAY169-W85 ([65.54.190.188]) by BAY004-OMC3S4.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Sun, 1 Feb 2015 07:58:02 -0800
X-TMN: [yJeOFqhs3fZR0S36IkBG6TpL0rq3wvhy]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W8554ED0435BE93C2A8F54EAE3F0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 1 Feb 2015 10:58:02 -0500
Importance: Normal
In-Reply-To: <BAY169-W1362E3C1DC8377B4CE66D2DAE3F0@phx.gbl>
References: <BAY169-W1362E3C1DC8377B4CE66D2DAE3F0@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 01 Feb 2015 15:58:02.0919 (UTC)
	FILETIME=[DC051B70:01D03E37]
Subject: Re: Checksum failure encountered Java
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
X-List-Received-Date: Sun, 01 Feb 2015 15:58:09 -0000
Content-Type: multipart/alternative;
	boundary="_6585f085-d346-44e4-9a89-e23693c805a5_"

--_6585f085-d346-44e4-9a89-e23693c805a5_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

after I posted this issues=2C I tried to click on the link at the Oracle si=
te and there is something about accepting a License.  I have the LICENSE_FL=
AGS_WHITELIST +=3D "oracle_java" which worked on the NUC build.  I'm guessi=
ng that's not the issue.

Jim A


From: jfabernathy@outlook.com
To: yocto@yoctoproject.org
Date: Sun=2C 1 Feb 2015 10:53:28 -0500
Subject: [yocto] Checksum failure encountered Java

=0A=
=0A=
=0A=
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


 		 	   		  =0A=

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_6585f085-d346-44e4-9a89-e23693c805a5_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>after I posted this issues=2C I =
tried to click on the link at the Oracle site and there is something about =
accepting a License.&nbsp=3B I have the LICENSE_FLAGS_WHITELIST +=3D "oracl=
e_java" which worked on the NUC build.&nbsp=3B I'm guessing that's not the =
issue.<br><br>Jim A<br><br><br><div><hr id=3D"stopSpelling">From: jfabernat=
hy@outlook.com<br>To: yocto@yoctoproject.org<br>Date: Sun=2C 1 Feb 2015 10:=
53:28 -0500<br>Subject: [yocto] Checksum failure encountered Java<br><br>=
=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">I tried to move a build from NUC to Pandaboard and the cor=
e-image-sato worked fine=2C well except the README.HARDWARE for arm didn't =
mention coping the uImage to /boot. Figured that out easy enough.<br><br>Bu=
t when I tried to add oracle-jse-jre that worked fine on NUC got the follow=
ing errors:<br><br>WARNING: Checksum failure encountered with download of h=
ttp://download.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-ar=
m-vfp-hflt-client_headless-07_may_2014.tar.gz - will attempt other sources =
if available<br>WARNING: Renaming /work/downloads/ejre-7u60-fcs-b19-linux-a=
rm-vfp-hflt-client_headless-07_may_2014.tar.gz to /work/downloads/ejre-7u60=
-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_bad-checksum=
_b72400960629e7403c4b579dada2a804<br>ERROR: Fetcher failure for URL: 'http:=
//download.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vf=
p-hflt-client_headless-07_may_2014.tar.gz'. Checksum mismatch!<br>File: '/w=
ork/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2=
014.tar.gz' has md5 checksum b72400960629e7403c4b579dada2a804 when b9b8f598=
b0a7f49e4d221f16ba25c6c0 was expected<br>File: '/work/downloads/ejre-7u60-f=
cs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz' has sha256 ch=
ecksum c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd913308eb03cdf86779 whe=
n ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf was expe=
cted<br>If this change is expected (e.g. you have upgraded to a new version=
 without updating the checksums) then you can use these lines within the re=
cipe:<br>SRC_URI[md5sum] =3D "b72400960629e7403c4b579dada2a804"<br>SRC_URI[=
sha256sum] =3D "c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd913308eb03cdf=
86779"<br>Otherwise you should retry the download and/or check with upstrea=
m to determine if the file has become corrupted or otherwise unexpectedly m=
odified.<br><br>ERROR: Function failed: Fetcher failure for URL: 'http://do=
wnload.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hf=
lt-client_headless-07_may_2014.tar.gz'. Unable to fetch URL from any source=
.<br>ERROR: Logfile of failure stored in: /work/pandaboard/tmp/work/cortexa=
9t2hf-vfp-neon-poky-linux-gnueabi/oracle-jse-jre/1.7.0-u60r0/temp/log.do_fe=
tch.31677<br>ERROR: Task 231 (/home/jim/poky/meta-oracle-java/recipes-devto=
ols/oracle-java/oracle-jse-jre_1.7.0.bb=2C do_fetch) failed with exit code =
'1'<br><br>Should I just change the checksum locally or what???<br><br>Jim =
A<br><br><br> 		 	   		  </div>=0A=
<br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div> 		 	   		  </div></body=
>
</html>=

--_6585f085-d346-44e4-9a89-e23693c805a5_--
