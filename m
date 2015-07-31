Return-Path: <jfdavis@anuvainnovations.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A068E00B7B; Fri, 31 Jul 2015 11:34:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD014E00498
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 11:34:25 -0700 (PDT)
Received: by ykdv124 with SMTP id v124so25338840ykd.0
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 11:34:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=zuyVn3+Fe4RIvOaTLjHpRpRGNhkL3omI4Udt/sPiuUk=;
	b=WhU9yy+jRbHEIshPo5ErL2IircouXxePcfYOrWYAzDqMJytK+rKuqJTcdMQaVNOeVk
	aj8P0OWYsr1DmLzWdU3W+RqOF2tw0bARiAOxjEqxuv6ymuMyiBXR2FeY3rlnmX7262ct
	CCZPCbIQ1hDx1iygRRKuOSLpA3cGxidoStPnvXvjgcF9hFoLIz3H3kaIGcMzlbLliPll
	BAXP1DScrpBbZDsh5DUl7U++TH1m26Khxy5PvNx+KhBebBibv3XRy5dhv5vjoakkgTiW
	rK1nXy/tORiQkn0Bsx9PnZkhGfQo3pV3ur0aXh1amxhDJoEhoFQRXxQF4oWUnGC6kq14
	xiAA==
X-Gm-Message-State: ALoCoQkmI4SJBEGmBY/lAyb2yx5Srb0BTbHpa/qepKOZLXLpW8QjwGmwh7GgWZdFEl61lFowYcme
MIME-Version: 1.0
X-Received: by 10.170.52.67 with SMTP id 64mr4966644yku.81.1438367664130; Fri,
	31 Jul 2015 11:34:24 -0700 (PDT)
Received: by 10.37.44.137 with HTTP; Fri, 31 Jul 2015 11:34:24 -0700 (PDT)
In-Reply-To: <CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
References: <87vbd0xxhj.fsf@email.parenteses.org>
	<CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
Date: Fri, 31 Jul 2015 14:34:24 -0400
Message-ID: <CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
From: John Davis <jfdavis@anuvainnovations.com>
To: Mario Domenech Goulart <mario@ossystems.com.br>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java] oracle-jse-jre fetch issue
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
X-List-Received-Date: Fri, 31 Jul 2015 18:34:29 -0000
Content-Type: multipart/alternative; boundary=001a1139514ead812d051c3011e0

--001a1139514ead812d051c3011e0
Content-Type: text/plain; charset=UTF-8

fwiw, I am trying to fix it like so:

diff --git
a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
index bfa8011..13918d8 100644
---
a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
+++
b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
@@ -1,9 +1,16 @@
-PV_UPDATE = "60"
-BUILD_NUMBER = "19"
+#PV_UPDATE = "60"
+#BUILD_NUMBER = "19"
+PV_UPDATE = "75"
+BUILD_NUMBER = "13"

 require oracle-jse-ejre.inc

-SRC_URI = "
http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz
"
+#SRC_URI = "
http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz
"
+SRC_URI = "
http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz
"
+
+#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
+#SRC_URI[sha256sum] =
"ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
+
+SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
+SRC_URI[sha256sum] =
"29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"

-SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
davis@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git diff
diff --git
a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
index bfa8011..13918d8 100644
---
a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
+++
b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
@@ -1,9 +1,16 @@
-PV_UPDATE = "60"
-BUILD_NUMBER = "19"
+#PV_UPDATE = "60"
+#BUILD_NUMBER = "19"
+PV_UPDATE = "75"
+BUILD_NUMBER = "13"

 require oracle-jse-ejre.inc

-SRC_URI = "
http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz
"
+#SRC_URI = "
http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz
"
+SRC_URI = "
http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz
"
+
+#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
+#SRC_URI[sha256sum] =
"ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
+
+SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
+SRC_URI[sha256sum] =
"29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"

-SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
-SRC_URI[sha256sum] =
"ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index 9a1fdfe..4dc2fe9 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -8,10 +8,16 @@ DESCRIPTION = "This is the proprietary JRE from
Sun/Oracle, with the Hotspot JVM
  The JRE (Java Runtime Environment) is needed on a system to run Java\
  applications and applets"

-JDK_JRE = "ejre"
+#JDK_JRE = "ejre"
+JDK_JRE = "jdk"
 require oracle-jse.inc

 LIC_FILES_CHKSUM = "\
-
file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb
\
+
file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=0b204bd2921accd6ef4a02f9c0001823
\

file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb
\
        "
+
+#LIC_FILES_CHKSUM = "\
+#
file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb
\
+#
file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01
\
+#       "


--
John F. Davis
cell: 919 888 8358

On Fri, Jul 31, 2015 at 10:09 AM, John Davis <jfdavis@anuvainnovations.com>
wrote:

> I have the same error.  Im interested if you find a work around.
> On Jul 31, 2015 9:34 AM, "Mario Domenech Goulart" <mario@ossystems.com.br>
> wrote:
>
>> Hi,
>>
>> I started a build of oracle-jse-jre with an empty $DL_DIR and noticed
>> do_fetch fails due to checksum mismatch.
>>
>> The downloaded file
>>
>> (ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_bad-checksum_b72400960629e7403c4b579dada2a804)
>> is actually an HTML file which contains a page indicating a login
>> failure.
>>
>> Is this a known issue?
>>
>> Best wishes.
>> Mario
>> --
>> http://www.ossystems.com.br
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--001a1139514ead812d051c3011e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">fwiw, I am trying to fix it like so:<div><br></div><div><d=
iv>diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-c=
lient-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-h=
flt-client-headless.inc</div><div>index bfa8011..13918d8 100644</div><div>-=
-- a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headl=
ess.inc</div><div>+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vf=
p-hflt-client-headless.inc</div><div>@@ -1,9 +1,16 @@</div><div>-PV_UPDATE =
=3D &quot;60&quot;</div><div>-BUILD_NUMBER =3D &quot;19&quot;</div><div>+#P=
V_UPDATE =3D &quot;60&quot;</div><div>+#BUILD_NUMBER =3D &quot;19&quot;</di=
v><div>+PV_UPDATE =3D &quot;75&quot;</div><div>+BUILD_NUMBER =3D &quot;13&q=
uot;</div><div>=C2=A0</div><div>=C2=A0require oracle-jse-ejre.inc</div><div=
>=C2=A0</div><div>-SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/=
otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BU=
ILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz">http://d=
ownload.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${P=
V_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_20=
14.tar.gz</a>&quot;</div><div>+#SRC_URI =3D &quot;<a href=3D"http://downloa=
d.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDA=
TE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar=
.gz">http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBE=
R}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headl=
ess-07_may_2014.tar.gz</a>&quot;</div><div>+SRC_URI =3D &quot;<a href=3D"ht=
tp://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7=
u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz">http://download.oracle.com/otn/jav=
a/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt=
.tar.gz</a>&quot;</div><div>+</div><div>+#SRC_URI[md5sum] =3D &quot;b9b8f59=
8b0a7f49e4d221f16ba25c6c0&quot;</div><div>+#SRC_URI[sha256sum] =3D &quot;ed=
061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf&quot;</div><=
div>+</div><div>+SRC_URI[md5sum] =3D &quot;6958e36bdcc842121510fecf702dcf47=
&quot;</div><div>+SRC_URI[sha256sum] =3D &quot;29c53bac198ca3faf5ed370025a2=
a5564d43e05b92d91b6b5d2a8a503de10c01&quot;</div><div>=C2=A0</div><div>-SRC_=
URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221f16ba25c6c0&quot;</div><div>davi=
s@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git diff</di=
v><div>diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hf=
lt-client-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-v=
fp-hflt-client-headless.inc</div><div>index bfa8011..13918d8 100644</div><d=
iv>--- a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-h=
eadless.inc</div><div>+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-ar=
m-vfp-hflt-client-headless.inc</div><div>@@ -1,9 +1,16 @@</div><div>-PV_UPD=
ATE =3D &quot;60&quot;</div><div>-BUILD_NUMBER =3D &quot;19&quot;</div><div=
>+#PV_UPDATE =3D &quot;60&quot;</div><div>+#BUILD_NUMBER =3D &quot;19&quot;=
</div><div>+PV_UPDATE =3D &quot;75&quot;</div><div>+BUILD_NUMBER =3D &quot;=
13&quot;</div><div>=C2=A0</div><div>=C2=A0require oracle-jse-ejre.inc</div>=
<div>=C2=A0</div><div>-SRC_URI =3D &quot;<a href=3D"http://download.oracle.=
com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b=
${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz">http=
://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7=
u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_ma=
y_2014.tar.gz</a>&quot;</div><div>+#SRC_URI =3D &quot;<a href=3D"http://dow=
nload.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_=
UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014=
.tar.gz">http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_N=
UMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_h=
eadless-07_may_2014.tar.gz</a>&quot;</div><div>+SRC_URI =3D &quot;<a href=
=3D"http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}=
/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz">http://download.oracle.com/o=
tn/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vf=
p-hflt.tar.gz</a>&quot;</div><div>+</div><div>+#SRC_URI[md5sum] =3D &quot;b=
9b8f598b0a7f49e4d221f16ba25c6c0&quot;</div><div>+#SRC_URI[sha256sum] =3D &q=
uot;ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf&quot;<=
/div><div>+</div><div>+SRC_URI[md5sum] =3D &quot;6958e36bdcc842121510fecf70=
2dcf47&quot;</div><div>+SRC_URI[sha256sum] =3D &quot;29c53bac198ca3faf5ed37=
0025a2a5564d43e05b92d91b6b5d2a8a503de10c01&quot;</div><div>=C2=A0</div><div=
>-SRC_URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221f16ba25c6c0&quot;</div><di=
v>-SRC_URI[sha256sum] =3D &quot;ed061060011d88efe5563c2949c00993db85db17ab9=
4f18a78713007a2b90faf&quot;</div><div>diff --git a/recipes-devtools/oracle-=
java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc=
</div><div>index 9a1fdfe..4dc2fe9 100644</div><div>--- a/recipes-devtools/o=
racle-java/oracle-jse-ejre.inc</div><div>+++ b/recipes-devtools/oracle-java=
/oracle-jse-ejre.inc</div><div>@@ -8,10 +8,16 @@ DESCRIPTION =3D &quot;This=
 is the proprietary JRE from Sun/Oracle, with the Hotspot JVM</div><div>=C2=
=A0 The JRE (Java Runtime Environment) is needed on a system to run Java\</=
div><div>=C2=A0 applications and applets&quot;</div><div>=C2=A0</div><div>-=
JDK_JRE =3D &quot;ejre&quot;</div><div>+#JDK_JRE =3D &quot;ejre&quot;</div>=
<div>+JDK_JRE =3D &quot;jdk&quot;</div><div>=C2=A0require oracle-jse.inc</d=
iv><div>=C2=A0</div><div>=C2=A0LIC_FILES_CHKSUM =3D &quot;\</div><div>- =C2=
=A0 =C2=A0 =C2=A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;=
md5=3Dbe9fe5d47a7dcfb78f142f487afb34bb \</div><div>+ =C2=A0 =C2=A0 =C2=A0 f=
ile://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D0b204bd2921ac=
cd6ef4a02f9c0001823 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://${WORKDI=
R}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3Df3a388961=
d24b8b72d412a079a878cdb \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;</div=
><div>+</div><div>+#LIC_FILES_CHKSUM =3D &quot;\</div><div>+# =C2=A0 =C2=A0=
 =C2=A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9f=
e5d47a7dcfb78f142f487afb34bb \</div><div>+# =C2=A0 =C2=A0 =C2=A0 file://${W=
ORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3D29c5=
3bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01 \</div><div>+#=
 =C2=A0 =C2=A0 =C2=A0 &quot;</div></div><div><br></div></div><div class=3D"=
gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr">--</div><div dir=3D"ltr">John F. Davis<div>c=
ell: 919 888 8358</div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Jul 31, 2015 at 10:09 AM, John Davis=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jfdavis@anuvainnovations.com" targ=
et=3D"_blank">jfdavis@anuvainnovations.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><p dir=3D"ltr">I have the same error.=C2=A0 Im inte=
rested if you find a work around.</p><div class=3D"HOEnZb"><div class=3D"h5=
">
<div class=3D"gmail_quote">On Jul 31, 2015 9:34 AM, &quot;Mario Domenech Go=
ulart&quot; &lt;<a href=3D"mailto:mario@ossystems.com.br" target=3D"_blank"=
>mario@ossystems.com.br</a>&gt; wrote:<br type=3D"attribution"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Hi,<br>
<br>
I started a build of oracle-jse-jre with an empty $DL_DIR and noticed<br>
do_fetch fails due to checksum mismatch.<br>
<br>
The downloaded file<br>
(ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_ba=
d-checksum_b72400960629e7403c4b579dada2a804)<br>
is actually an HTML file which contains a page indicating a login<br>
failure.<br>
<br>
Is this a known issue?<br>
<br>
Best wishes.<br>
Mario<br>
--<br>
<a href=3D"http://www.ossystems.com.br" rel=3D"noreferrer" target=3D"_blank=
">http://www.ossystems.com.br</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</div></div></blockquote></div><br></div>

--001a1139514ead812d051c3011e0--
