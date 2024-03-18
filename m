Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A187C54E5D
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 18:06:06 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web10.50925.1710782240015901646
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Mar 2024 10:17:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U3XNSFEx;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: bratiranjan12@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6e69a77f41dso310967a34.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 10:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710782239; x=1711387039; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IS6dDvkXTgJ3F0wHXzp7QT0b6cyAtCI7GFgwfPH45H0=;
        b=U3XNSFExRlXIS8SDsDF4tu1++LL01PNQYCDALykk0ppDDfKUYXZQ7Sk47Gc5djeQsM
         kuztlNCLAr6niPWQiCD2KNg61Hht9o2pvK2cvVToQlJwYyG5MHPfWn8crSNBoLrRuYd2
         P4VKVPicDMzPozs9l0FJXsSTuhJLpJEGH5R19T7Djit5mXi4sNmOlI4lw9kRp8lYj+WK
         X1IpZYLOAFHt5GsgKj+b0JodMF8sfygg/2INh+KRBGWN4iPjZy3kbta6PSRLJSijhLTQ
         lwLW0RlTBxwLXZzN4LhwkonfqfmdpyhMXad7a4PIFJMJ/Xw4IJrswUKLuoL/0G2ygwH4
         8V2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710782239; x=1711387039;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IS6dDvkXTgJ3F0wHXzp7QT0b6cyAtCI7GFgwfPH45H0=;
        b=JLDGO1uw+/xkrGYTjw2Q/pjeq+weZ/JEb1t0wTVKbnqmglqUe2kiDY+3gKzH1rIOxJ
         77PeElKPHHBryH4oWtJBYxZji3WzvY18TRsBHz/u2EaNmJUIN0/RGwtN69UrMqINFvir
         hk7LgDokwQyU87N9xmZ+k08n6HMOOxtIIbVD+BJDRkqsYmqB/GPouFDPEtzcLSUUI25e
         Nrpph5Duvt3JVwlFW5/wetaVlMpy+qWZC2pDLww/q9NoHtad6hEGkfT/CscC8gu0aBew
         c5/ZjEvDgQt7FGsrCUg3npvNqaVZEDgwiZ0Uw3qeM6MuKNbwsY31YKLr3JtruACed0WX
         /l4Q==
X-Gm-Message-State: AOJu0YxJjgdR0MNON/COjhpgB4aq07t+EpLNeX4OyQdMX8noL18ccuZv
	6I3oyXj+fVf4KbjQPtLGdLAL0TXEx3rEIPWZpymaF8WyO+tF0iUbbbcmvaZBZ6xC9O9F4uvkg0k
	gvx/PKdwbcO19MH3E1mwGBWjKr6XyQNuc1Pk=
X-Google-Smtp-Source: AGHT+IFStlFj0m7R4IrGzfuye1YcTgxgmxnpy6KvolylKT8/XkMA/v5WlMB/h2cG0osvQwuIH3c+258PhWD78qBRExc=
X-Received: by 2002:a05:6870:4346:b0:21f:828:7a7c with SMTP id
 x6-20020a056870434600b0021f08287a7cmr309522oah.6.1710782238869; Mon, 18 Mar
 2024 10:17:18 -0700 (PDT)
MIME-Version: 1.0
From: "Bratiranjan Acharya" <bratiranjan12@gmail.com>
Date: Mon, 18 Mar 2024 22:47:07 +0530
Message-ID: <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
Subject: install-vs-shipped
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a2d4bb0613f287d3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 18:06:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62785

--000000000000a2d4bb0613f287d3
Content-Type: text/plain; charset="UTF-8"

Hi,
There is a library i want to use from the upstream named as easyloggingpp
the link is here https://github.com/abumq/easyloggingpp and following the
readme to generate the static library "libeasyloggingpp.a" i have written a
recipe for a particular tag.


*easyloggingpp.bb
<http://easyloggingpp.bb>----------------------------------*LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=a5579a1688435c42607edb4b751495bf"
#PACKAGE_ARCH = "${MACHINE_ARCH}"
SRC_URI = "git://
github.com/abumq/easyloggingpp.git;protocol=https;branch=master"
PV = "1.0+git${SRCPV}"
SRCREV = "v9.97.1"
S = "${WORKDIR}/git"
inherit cmake
EXTRA_OECMAKE = "-Dbuild_static_lib=ON"

*----------------------------------------------*"-Dbuild_static_lib=ON"
will generate the libeasylogging.a but i when i am executing this recipe i
am stucking with this error


*ERROR------------------------------------------------*ERROR:
easyloggingpp-1.0+gitAUTOINC+f1f6d98c4c-r0 do_package: QA Issue:
easyloggingpp: Files/directories were installed but not shipped in any
package:
  /usr/lib
  /usr/lib/libeasyloggingpp.a
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
easyloggingpp: 2 installed and not shipped files. [installed-vs-shipped]
ERROR: easyloggingpp-1.0+gitAUTOINC+f1f6d98c4c-r0 do_package: Fatal QA
errors were found, failing task.
ERROR: Logfile of failure stored in:
/local/home/acbratir/Workspace/build/tmp/work/armv8-2a-poky-linux/easyloggingpp/1.0+gitAUTOINC+f1f6d98c4c-r0/temp/log.do_package.8024
ERROR: Task
(/local/home/acbratir/Workspace/poky/../sources/meta-juju/recipes-support/easyloggingpp/easyloggingpp_9.97.1.bb:do_package)
failed with exit code '1'
*-------------------------------------------------------------*
I have tried many ways to slove this by using ${PN}-static dev first the
${PN}-dev as per the order. But i was unable to solve this and now i am
clueless to solve this.Kindly help!

*In the ${WORKDIR} these are the paths where the lib is generating*
-----------------------------------------------------------------------------------------
./build/libeasyloggingpp.a
./package/usr/lib/libeasyloggingpp.a
./image/usr/lib/libeasyloggingpp.a




*---------------------------------------------------------------------------Help
me to solve Thanks & RegardsBrati*

--000000000000a2d4bb0613f287d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>There is a library i want to use from the upstream =
named as easyloggingpp the link is here=C2=A0<a href=3D"https://github.com/=
abumq/easyloggingpp" target=3D"_blank">https://github.com/abumq/easylogging=
pp</a>=C2=A0and following=C2=A0the readme to generate the static library &q=
uot;libeasyloggingpp.a&quot; i have written a recipe for a particular tag.<=
br><b><a href=3D"http://easyloggingpp.bb" target=3D"_blank">easyloggingpp.b=
b</a><br>----------------------------------<br></b>LICENSE =3D &quot;MIT&qu=
ot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Da5579a1688435c42607e=
db4b751495bf&quot;<br>#PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br>SRC_=
URI =3D &quot;git://<a href=3D"http://github.com/abumq/easyloggingpp.git;pr=
otocol=3Dhttps;branch=3Dmaster" target=3D"_blank">github.com/abumq/easylogg=
ingpp.git;protocol=3Dhttps;branch=3Dmaster</a>&quot;<br>PV =3D &quot;1.0+gi=
t${SRCPV}&quot;<br>SRCREV =3D &quot;v9.97.1&quot;<br>S =3D &quot;${WORKDIR}=
/git&quot;<br>inherit cmake<br>EXTRA_OECMAKE =3D &quot;-Dbuild_static_lib=
=3DON&quot;<br><b>----------------------------------------------<br></b>&qu=
ot;-Dbuild_static_lib=3DON&quot; will generate the libeasylogging.a but i w=
hen i am executing this recipe i am stucking with this error=C2=A0<br><b>ER=
ROR<br>------------------------------------------------<br></b>ERROR: easyl=
oggingpp-1.0+gitAUTOINC+f1f6d98c4c-r0 do_package: QA Issue: easyloggingpp: =
Files/directories were installed but not shipped in any package:<br>=C2=A0 =
/usr/lib<br>=C2=A0 /usr/lib/libeasyloggingpp.a<br>Please set FILES such tha=
t these items are packaged. Alternatively if they are unneeded, avoid insta=
lling them or delete them within do_install.<br>easyloggingpp: 2 installed =
and not shipped files. [installed-vs-shipped]<br>ERROR: easyloggingpp-1.0+g=
itAUTOINC+f1f6d98c4c-r0 do_package: Fatal QA errors were found, failing tas=
k.<br>ERROR: Logfile of failure stored in: /local/home/acbratir/Workspace/b=
uild/tmp/work/armv8-2a-poky-linux/easyloggingpp/1.0+gitAUTOINC+f1f6d98c4c-r=
0/temp/log.do_package.8024<br>ERROR: Task (/local/home/acbratir/Workspace/p=
oky/../sources/meta-juju/recipes-support/easyloggingpp/easyloggingpp_9.97.1=
.bb:do_package) failed with exit code &#39;1&#39;<br><b>-------------------=
------------------------------------------</b><br>I have tried many ways to=
 slove this by using ${PN}-static dev first the ${PN}-dev as per the order.=
 But i was unable to solve this and now i am clueless to solve this.Kindly =
help!<br><b>In the ${WORKDIR} these are the paths where the lib is generati=
ng<br></b>-----------------------------------------------------------------=
------------------------<br>./build/libeasyloggingpp.a<br>./package/usr/lib=
/libeasyloggingpp.a<br>./image/usr/lib/libeasyloggingpp.a<br><b>-----------=
----------------------------------------------------------------<br>Help me=
 to solve=C2=A0<br><br>Thanks &amp; Regards<br>Brati</b></div>

--000000000000a2d4bb0613f287d3--

