Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f45.google.com (mail-bk0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF53FE014E2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 02:17:33 -0700 (PDT)
Received: by mail-bk0-f45.google.com with SMTP id j10so663864bkw.18
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 02:17:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=96zQ9ct9cIoaT+Gmebv+VvbYuHn3VQrf2iB86/Y8pLU=;
	b=P1POdQoBvTA2GfshE5QVIXoCJzz2pTZhnUMwE/Lwq96orZrln7TEwLeW4UBekS6KDQ
	M8m3IwE5RIK8pLMMi6G9dcxh+TY2Dae+GGAIV0sxUBsY/HZROW0jQf9p5pxqZM/ez7rl
	dQyWnCdeDFarqaPB1MdoAnKnSAzuf8vWqPSQGu70Fwc4/9lLU4PpwM9tCH8kwRAFPzUY
	cmBBbwfvaQobGggqtSaUA1lLGhEuNmSnnUEwXH6igZKOEpaEtOYavmAXjBeebdIIvpQv
	hQKrogfrndiKy3Dty9bKskqJFij7gDCn+T9dOZaBA7UelNEdjaIKB+74GrHqpEhnynch
	jucQ==
X-Received: by 10.204.185.70 with SMTP id cn6mr1923552bkb.100.1366190252450;
	Wed, 17 Apr 2013 02:17:32 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPS id da16sm1856809bkb.2.2013.04.17.02.17.30
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 02:17:31 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 11:17:26 +0200
Message-ID: <2569596.XjSoTCsBqP@fedora-fisso>
User-Agent: KMail/4.10.1 (Linux/3.8.4-102.fc17.x86_64; KDE/4.10.1; x86_64; ; )
In-Reply-To: <CAFMfyzKm+N1JDJZyu-BDFwU86d824hiP3HmaQsFQxxqLo9_YvA@mail.gmail.com>
References: <CAFMfyzKm+N1JDJZyu-BDFwU86d824hiP3HmaQsFQxxqLo9_YvA@mail.gmail.com>
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkIqKUhiBENSl3n9ZwdhW3g+m0+cU5M0t/0zIx/WnGw26PfSAzUXWy9ncV0b0rCTEovhJ6a
Subject: Re: Exporting variables and extending PATH for Embedded Java
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
X-List-Received-Date: Wed, 17 Apr 2013 09:17:35 -0000
Content-Type: multipart/alternative; boundary="nextPart2945945.xButedohGD"
Content-Transfer-Encoding: 7Bit

--nextPart2945945.xButedohGD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Environment variable should be defined in /etc/profile
In my build that file is managed by "base-files" recipe. So I wrote a c=
ustom recipe "base-files_3.0.14.bbappend" with only a row
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
in the "files" directory I put the "profile" file with the definition o=
f the environment variable.
In that way you should overwrite the original /etc/profile with your cu=
stom file...

In data mercoled=EC 17 aprile 2013 10:57:54, Satya Swaroop Damarla ha s=
critto:


Hi Guys,


I am planning to install embedded java runtime environment and it just =
needs the following steps
1. Creation of directory /usr/share/java
2. Copy the files to this directory
3. Creating a environment variable JAVA_HOME=3D/usr/share/java/ejre1.7.=
0_10/bin
4. Extending the variable PATH=3D$PATH:$JAVA_HOME


here is my recipe... The first and second parts are done but I am not a=
ble to figure out the 3rd and 4th steps.. Here is my recipe


DESCRIPTION =3D "Embedded Java from Oracle/Sun"


LICENSE_FLAGS =3D "oracle_java"
LICENSE =3D "Oracle_Binary_Code_License_Agreement"
LIC_FILES_CHKSUM =3D "\
        file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98=
f46ab6481d87c4d77e0e91a6dbc15f \
        file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D=
f5f3c0856f2ca27413b55b6ca50c897e \
        file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENS=
EREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
        "


SRC_URI =3D "file:///home/damarla/yocto/ejre-7u10-fcs-b18-linux-arm-vfp=
-client_headful-28_nov_2012.gz"


SRCREV ?=3D "${AUTOREV}"




SRC_URI[md5sum] =3D "8a6f08f39f916fcdbe0d741d550741ad"
SRC_URI[sha256sum] =3D "194a522bc27cf4746a0d8ca1e947b13832166ecd6f4f2fb=
af5ce1df2a7493d43"


inherit allarch


do_install () {
        install -d ${D}/usr/share/java/
        cp -r ejre1.7.0_10 ${D}/usr/share/java
}




Help is deeply appreciated!
Greets,
Satya



--nextPart2945945.xButedohGD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="iso-8859-1"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/=
REC-html40/strict.dtd">
<html><head><meta name=3D"qrichtext" content=3D"1" /><style type=3D"tex=
t/css">
p, li { white-space: pre-wrap; }
</style></head><body style=3D" font-family:'Sans Serif'; font-size:9pt;=
 font-weight:400; font-style:normal;">
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Env=
ironment variable should be defined in /etc/profile</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">In =
my build that file is managed by &quot;base-files&quot; recipe. So I wr=
ote a custom recipe &quot;base-files_3.0.14.bbappend&quot; with only a =
row</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">FIL=
ESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">in =
the &quot;files&quot; directory I put the &quot;profile&quot; file with=
 the definition of the environment variable.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">In =
that way you should overwrite the original /etc/profile with your custo=
m file...</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">In =
data mercoled=EC 17 aprile 2013 10:57:54, Satya Swaroop Damarla ha scri=
tto:<br /></p>
<p style=3D" margin-top:12px; margin-bottom:0px; margin-left:40px; marg=
in-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=
Hi Guys,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">I=
 am planning to install embedded java runtime environment and it just n=
eeds the following steps</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">1=
. Creation of directory /usr/share/java</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">2=
. Copy the files to this directory</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">3=
. Creating a environment variable JAVA_HOME=3D/usr/share/java/ejre1.7.0=
_10/bin</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">4=
. Extending the variable PATH=3D$PATH:$JAVA_HOME</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">h=
ere is my recipe... The first and second parts are done but I am not ab=
le to figure out the 3rd and 4th steps.. Here is my recipe</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">D=
ESCRIPTION =3D &quot;Embedded Java from Oracle/Sun&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">L=
ICENSE_FLAGS =3D &quot;oracle_java&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">L=
ICENSE =3D &quot;Oracle_Binary_Code_License_Agreement&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">L=
IC_FILES_CHKSUM =3D &quot;\</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=A0=
 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=
=3D98f46ab6481d87c4d77e0e91a6dbc15f \</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=A0=
 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;m=
d5=3Df5f3c0856f2ca27413b55b6ca50c897e \</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=A0=
 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYL=
ICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=A0=
 =A0 =A0 =A0 &quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">S=
RC_URI =3D &quot;file:///home/damarla/yocto/ejre-7u10-fcs-b18-linux-arm=
-vfp-client_headful-28_nov_2012.gz&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">S=
RCREV ?=3D &quot;${AUTOREV}&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">S=
RC_URI[md5sum] =3D &quot;8a6f08f39f916fcdbe0d741d550741ad&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">S=
RC_URI[sha256sum] =3D &quot;194a522bc27cf4746a0d8ca1e947b13832166ecd6f4=
f2fbaf5ce1df2a7493d43&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">i=
nherit allarch</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">d=
o_install () {</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=A0=
 =A0 =A0 =A0 install -d ${D}/usr/share/java/</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">=A0=
 =A0 =A0 =A0 cp -r ejre1.7.0_10 ${D}/usr/share/java</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">}=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><=
br /></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">H=
elp is deeply appreciated!</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">G=
reets,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:40px; margi=
n-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">S=
atya</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br=
 /><br /></p></body></html>

--nextPart2945945.xButedohGD--
