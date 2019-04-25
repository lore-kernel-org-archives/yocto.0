Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A79BE00CB9; Thu, 25 Apr 2019 02:40:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D85DCE00B1B
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 02:40:57 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id z6so1290170wmi.0
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 02:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gYhFqGJw5Ou7T/r8T61eL1+cwJWd3qBzwWG/I1GVwi8=;
	b=unPyiD9nydwb14uO3waTCwiCVWPe9b98rrbFWO8eN3elDpcluFzEfjq3UebguK9nia
	jdOpACsy7b4QqgITaEo2Qh7OLIL0Y/ByIRkrJX0dheUlCuDKl9mTteDK1/ArrlVV9L2u
	SyKGPKZNsoPkfcfd9e8QUwydmpsPVVepuWnEYzVNaJi1h6uP6f3aOjrfhh41qIAP5H+L
	4uo1Z+LZoQKBBa682WlHT1hazCj/63TmiDIpAz2eZ3RH8ef+BQ7dysJemKrR4L7Y2N1O
	CzYqT0K2BjUwYrhpCrjiXt30lO06DhNpxNbVJWVoezu5z4QYELfYc9WTFiyHV+bJOszi
	zs5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gYhFqGJw5Ou7T/r8T61eL1+cwJWd3qBzwWG/I1GVwi8=;
	b=o4HsNeT9/pF31GRhfDfaeLB/tmMxGTYpcrIWefnty3cMSYeDZFRlf8azsMxVepKuRv
	HAH8q7bMkh/mMXAoV5cycS90qDjkoHSydiMlSkatnOpHBWBVrd+lL90snRoCatjZzdX+
	MF4Fp3+suibLr7ZzfQEry/xTU19P55XatYmjpWm7LnbKqqerQ1jFQqotc5ELy2yRbPbm
	sBiVWFyVJgAP+wbVZjT0utvvUnErXKTmqO5TNeyXDg63fco6KDXCc+r7+zJ47Iap2Ug3
	HttZVHC20V4KUpwcAxIT8aEFo+mNzqm9HGoqoQPGoTKxAu4qMEIiRnGrx303obUAtAD4
	Wjeg==
X-Gm-Message-State: APjAAAXuslQpTHFJC+UGP/My+XGicjRnRHeTEKMJPxNaRNccbrCU1cVo
	NV27P7QNN1LRdAIyAvsNTzNFbucq7FjfL2qoqu4S2jgw+oy/
X-Google-Smtp-Source: APXvYqxy8CtPi6GecDIkDDMTA6bbrUvdQ87S/sh7SlbsBm7zH594EH+yO/8Zk6kOQulIucWZe8NjJwFldCUtKbgJitI=
X-Received: by 2002:a1c:f310:: with SMTP id q16mr2937469wmq.102.1556185256440; 
	Thu, 25 Apr 2019 02:40:56 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Thu, 25 Apr 2019 11:40:45 +0200
Message-ID: <CAK4Yt2kHbDxA0Z91kxGOjw10Tc4M3zEkmxeizV3+dLwdutGO3Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 29 Apr 2019 02:44:31 -0700
Subject: include own script - custon location
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
X-List-Received-Date: Thu, 25 Apr 2019 09:40:58 -0000
Content-Type: multipart/alternative; boundary="0000000000006a37c90587579db5"

--0000000000006a37c90587579db5
Content-Type: text/plain; charset="UTF-8"

Hi,

I'd like to include a javascript file in the target machine in a custom
location.
I got an warning while bitbake:
wavesurfer-1.0-r0 do_package: QA Issue: wavesurfer: Files/directories were
installed but not shipped in any package:
  /usr
  /usr/local
  /usr/local/www
  /usr/local/www/sys
  /usr/local/www/sys/js
  /usr/local/www/sys/js/wavesurfer.js
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
wavesurfer: 6 installed and not shipped files. [installed-vs-shipped]

Here is the bb file:

SUMMARY = "Waveform generator"
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

SRC_URI = "file://wavesurfer.js"

SRC_URI[md5sum] = "523052e51d8668b849abaa303404de3e"

FILESEXTRAPATHS_prepend := "${THISDIR}/file:"

S= "${WORKDIR}"

do_install() {
    install -d ${D}/usr/local/www/sys/js
    install -m 0644 wavesurfer.js ${D}/usr/local/www/sys/js
}


I guess something is wrong with the do-install function, I thought it would
put the file in the image, but it doesn't. Please help me out on this.

Thanks,

Zolee

--0000000000006a37c90587579db5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I&#39;d like to include a javascript file in the target machine i=
n a custom location.</div><div>I got an warning while bitbake:<br></div><di=
v>wavesurfer-1.0-r0 do_package: QA Issue: wavesurfer: Files/directories wer=
e installed but not shipped in any package:<br>=C2=A0 /usr<br>=C2=A0 /usr/l=
ocal<br>=C2=A0 /usr/local/www<br>=C2=A0 /usr/local/www/sys<br>=C2=A0 /usr/l=
ocal/www/sys/js<br>=C2=A0 /usr/local/www/sys/js/wavesurfer.js<br>Please set=
 FILES such that these items are packaged. Alternatively if they are unneed=
ed, avoid installing them or delete them within do_install.<br>wavesurfer: =
6 installed and not shipped files. [installed-vs-shipped]<br></div><div><br=
></div><div>Here is the bb file:<br></div><div><br></div><div>SUMMARY =3D &=
quot;Waveform generator&quot;<br>LICENSE =3D &quot;CLOSED&quot;<br>LIC_FILE=
S_CHKSUM =3D &quot;&quot;<br><br>SRC_URI =3D &quot;file://wavesurfer.js&quo=
t;<br><br>SRC_URI[md5sum] =3D &quot;523052e51d8668b849abaa303404de3e&quot;<=
br><br>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/file:&quot;<br><br>S=
=3D &quot;${WORKDIR}&quot;<br><br>do_install() {<br>=C2=A0=C2=A0=C2=A0 inst=
all -d ${D}<span style=3D"color:rgb(255,0,0)">/usr/local/www/sys/js</span><=
br>=C2=A0=C2=A0=C2=A0 install -m 0644 wavesurfer.js ${D}<span style=3D"colo=
r:rgb(255,0,0)">/usr/local/www/sys/js</span><br>}<br></div><div><br></div><=
div><br></div><div>I guess something is wrong with the do-install function,=
 I thought it would put the file in the image, but it doesn&#39;t. Please h=
elp me out on this.</div><div><br></div><div>Thanks,</div><div><br></div><d=
iv>Zolee<br></div></div></div></div>

--0000000000006a37c90587579db5--
