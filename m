Return-Path: <jopoulin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BE23E00997; Sat, 14 May 2016 06:40:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jopoulin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D2F6E006B3
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 06:40:03 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id s184so15546345vkb.0
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 06:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=qVAMHC8s5exLMXHgLXnzsOzTBc7aSGq98uK4Qd/YqRY=;
	b=RNuY+2NqTMpcxRGIPgfYrx3BJPgceXMjNMLbtkKAgiDdNBLsueEUWldn1PiO5jD1py
	O7F4eq3nNnuCi0jpfA/rA8DnpcRMgpiMslbJIT1qEQGQSmg7I5MekKRa1KRM4l/C6QwV
	xqdLulKUAvJ9Ee1QOdkFtWe6jIJIuWXM1/dAI0Ix8nH4IPZPtNU5ar9CkjVmTDOAt93a
	Kxep1nlbTI7wvtz5D3bbu9hqh5vC1CcaziJe2eG4D12hzLIp/GymNW/qiKcXQZbTKOY9
	imCLEnNZN1ms2OEMKsd8kJM+rVknVrde1IplRdEktOVdl3FE1D8iG7fZ9MKCw/JHXPja
	o0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=qVAMHC8s5exLMXHgLXnzsOzTBc7aSGq98uK4Qd/YqRY=;
	b=bN/k104vmw4h4SigL4wvCiVjy5FTnEoIQCWQE96ol+MUqEFtl3zZMPdWbExYfiRkvP
	zsBAZRaw9NLJNA9glbgjYfSJeWAAM92Eu4QPGmu/Qiydv76J0Dxkj6guFaVl8LQDe3D6
	pafKvUV3eQKrJcH+7GDtpjC0SLkerMOjBwZzECNazey5tmPqEf+1i6aCIgCwQ+bl7JNp
	IpD15kD6opkiXv69lJcsc0M69LLy+oHw684B5myWuXzwmtJSgIL98oRHwHfuq6Zn0a3Z
	8x1gsEV6mmC5Wwh06Fi3Ro6O2okehBYxD2vAcZxtZTwqvmOiv+CI6l/Y8qsdsQfU9emt
	vUsA==
X-Gm-Message-State: AOPr4FXShIWaAPSH/xf7pACwm5zUItVHzgcfem015XuwrsB/P3LRAne04P4edf7EG7bhoeS2q7gZLtq8ERS6Gw==
MIME-Version: 1.0
X-Received: by 10.31.62.3 with SMTP id l3mr5268265vka.78.1463233202925; Sat,
	14 May 2016 06:40:02 -0700 (PDT)
Received: by 10.159.33.71 with HTTP; Sat, 14 May 2016 06:40:02 -0700 (PDT)
Date: Sat, 14 May 2016 09:40:02 -0400
Message-ID: <CAGMz-a4-tHC_gucKqGeDbP9x-sM_ZoPhUzzQrDbiF=uTdyk+jA@mail.gmail.com>
From: Jonathan Poulin <jopoulin@gmail.com>
To: yocto@yoctoproject.org
Subject: Error in spec file (bad %description of dev package)
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
X-List-Received-Date: Sat, 14 May 2016 13:40:07 -0000
Content-Type: multipart/alternative; boundary=001a11447b5e48b9890532cd87bc

--001a11447b5e48b9890532cd87bc
Content-Type: text/plain; charset=UTF-8

Hello,

I have a packaging problem with the new share lib recipe I try to make.
When I bitbake the recipe I get the correct package split :

# tree
.
|-- libtime64
|   `-- usr
|       `-- lib
|           |-- libtime64.so.1 -> /home/ ...
/libtime64/1.0.1-r0/image/usr/lib/libtime64.so.1.0.1
|           `-- libtime64.so.1.0.1
|-- libtime64-dbg
|   `-- usr
|       |-- lib
|       `-- src
|           `-- debug
|               `-- libtime64
|                   `-- 1.0.1-r0
|                       `-- libtime64-1.0.1
|                           |-- inc
|                           |   `-- time64.h
|                           `-- src
|                               `-- time64.c
|-- libtime64-dev
|   `-- usr
|       |-- include
|       |   |-- axt_2038.h
|       |   `-- time64.h
|       `-- lib
|           `-- libtime64.so -> /home/ ...
/libtime64/1.0.1-r0/image/usr/lib/libtime64.so.1
|-- libtime64-doc
|-- libtime64-locale
|-- libtime64-staticdev
`-- libtime64.shlibdeps


I include "libtime64" in IMAGE_INSTALL but only the main package and the
dbg package are produced and the main package contain the content of the
dev package.
- libtime64-1-1.0.1-r0.cortexa9hf_vfp_neon.rpm
- libtime64-dbg-1.0.1-r0.cortexa9hf_vfp_neon.rpm

I found an error in the spec file for the dev package, the %package and
%description are misnamed. Below an extract of the spec file:

******************************************
%package -n libtime64-1
Summary: Time64 library (support 2038 patch) - Development files
Group: devel
Requires: libtime64-1 = 1.0.1-r0
Suggests: libc6-dev
Provides: libtime64-dev

%description -n libtime64-1
Time64 library (support 2038 patch).  This package contains symbolic links,
header files, and related items necessary for software development.

...

%files -n libtime64-1
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/lib"
%dir "/usr/include"
"/usr/lib/libtime64.so"
"/usr/include/axt_2038.h"
"/usr/include/time64.h"

%files -n libtime64-1
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/lib"
"/usr/lib/libtime64.so.1.0.1"
"/usr/lib/libtime64.so.1"

******************************************

I use Yocto Dizzy on a ubuntu 14.04.

Someone already see this problem ? Any idea to solve it ?

thanks
Jonathan Poulin

--001a11447b5e48b9890532cd87bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br><br></div>I have a=
 packaging problem with the new share lib recipe I try to make. When I bitb=
ake the recipe I get the correct package split :<br><br># tree<br>.<br>|-- =
libtime64<br>|=C2=A0=C2=A0 `-- usr<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 `-- lib<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
-- libtime64.so.1 -&gt; /home/ ... /libtime64/1.0.1-r0/image/usr/lib/libtim=
e64.so.1.0.1<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 `-- libtime64.so.1.0.1<br>|-- libtime64-dbg<br>|=C2=A0=C2=A0 `-- usr<br=
>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |-- lib<br>|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 `-- src<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 `-- debug<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 `-- libtime64<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 `-- 1.0.1-r0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 `-- libtime64-1.0.1<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |-- inc<br>|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 `-- time64.h<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 `-- src<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 `-- time64.c<br>|-- libtime64-dev<br>|=C2=A0=C2=A0 `-- usr<br>|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |-- include<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 |-- axt_2038.h<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0 `-- time64.h<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
`-- lib<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 `-=
- libtime64.so -&gt; /home/ ... /libtime64/1.0.1-r0/image/usr/lib/libtime64=
.so.1<br>|-- libtime64-doc<br>|-- libtime64-locale<br>|-- libtime64-staticd=
ev<br>`-- libtime64.shlibdeps<br><br><br></div>I include &quot;libtime64&qu=
ot; in IMAGE_INSTALL but only the main package and the dbg package are prod=
uced and the main package contain the content of the dev package.<br>- libt=
ime64-1-1.0.1-r0.cortexa9hf_vfp_neon.rpm<br>- libtime64-dbg-1.0.1-r0.cortex=
a9hf_vfp_neon.rpm<br><br></div>I found an error in the spec file for the de=
v package, the %package and %description <span id=3D"result_box" class=3D""=
 lang=3D"en"><span>are</span> <span class=3D"">misnamed</span><span class=
=3D"">.</span></span> Below an extract of the spec file:<br><br>***********=
*******************************<br>%package -n libtime64-1<br>Summary: Time=
64 library (support 2038 patch) - Development files<br>Group: devel<br>Requ=
ires: libtime64-1 =3D 1.0.1-r0<br>Suggests: libc6-dev<br>Provides: libtime6=
4-dev<br><br>%description -n libtime64-1<br>Time64 library (support 2038 pa=
tch).=C2=A0 This package contains symbolic links,<br>header files, and rela=
ted items necessary for software development.<br><br>...<br><br>%files -n l=
ibtime64-1<br>%defattr(-,-,-,-)<br>%dir &quot;/usr&quot;<br>%dir &quot;/usr=
/lib&quot;<br>%dir &quot;/usr/include&quot;<br>&quot;/usr/lib/libtime64.so&=
quot;<br>&quot;/usr/include/axt_2038.h&quot;<br>&quot;/usr/include/time64.h=
&quot;<br><br>%files -n libtime64-1<br>%defattr(-,-,-,-)<br>%dir &quot;/usr=
&quot;<br>%dir &quot;/usr/lib&quot;<br>&quot;/usr/lib/libtime64.so.1.0.1&qu=
ot;<br>&quot;/usr/lib/libtime64.so.1&quot;<br><br>*************************=
*****************<br><br></div><div>I use Yocto Dizzy on a ubuntu 14.04.<br=
><br></div>Someone already see this problem ? Any idea to solve it ?<br><br=
></div>thanks<br></div>Jonathan Poulin<br></div>

--001a11447b5e48b9890532cd87bc--
