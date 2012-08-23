Return-Path: <hartmut.behrens@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B97AE0140A
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:41:03 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so1720101obb.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 05:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=X0ImKVfGQW7NV+XYR0nuvEscN/PXFv1bzlb+M+XcU3o=;
	b=qSHQtnC92H2DlnminTK/grDmcgHP3BbAFZosbc1BTvy2JVzG/BgS2T8P9fuSs4r0nF
	KMmjz8LG/AhzYGkfzB0KFETyaIFTSIRe48IKj3nwltOX+hb6fvCN/jxf+BRiYVIROB4E
	Q8pK8uo+j0H8i9Fks6xRJznBBrJkzmSmP7ZD2V1JCSpP6ZJRkICBkAsLbDgHORnHFlyx
	txCj5YQwcFlJ97KMzzcIeXoqUzzGPNwkI9VTFiuHl2sCDSg1mQYH93RqQ3hqzM3rRW5G
	ZZqLb4R6bl6P6iHpl6lsDyggL2R3+nvsT7iSZIK6WcZz39pVBMqHjoMUPS4hj78QMCem
	J7GQ==
MIME-Version: 1.0
Received: by 10.60.169.138 with SMTP id ae10mr956358oec.7.1345725658917; Thu,
	23 Aug 2012 05:40:58 -0700 (PDT)
Received: by 10.182.187.33 with HTTP; Thu, 23 Aug 2012 05:40:58 -0700 (PDT)
Date: Thu, 23 Aug 2012 14:40:58 +0200
Message-ID: <CA+69FtCf42+XyXFWg+QHL=qM1B3FoeXNXEkNbQ66TCWeOMbubw@mail.gmail.com>
From: Hartmut Behrens <hartmut.behrens@gmail.com>
To: yocto@yoctoproject.org
Subject: Changing PREFERRED_PROVIDER_virtual/kernel has no effect
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 12:41:03 -0000
Content-Type: multipart/alternative; boundary=bcaec54fae62dd697604c7ee2bb0

--bcaec54fae62dd697604c7ee2bb0
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I've successfully created an image for a Gumstix Overo using the BSP layer
available at https://github.com/squirly/meta-gumstix
The MACHINE variable is set to "overo" in the build/conf/local.conf file.

I then change the PREFERRED_PROVIDER_virtual/kernel variable in
meta-gumstix/conf/machine/overo.inc (which is included from overo.conf)
from the default "linux-omap3" to "linux-yocto-rt" and
set PREFERRED_PROVIDER_linux-yocto-rt to "3.4%".

Once this is done I execute bitbake -k core-image-minimal.

However, this does not result in the linux-yocto-rt kernel being built for
the new image. Instead, in the bitbake output I can see a warning informing
me that multiple providers for virtual/kernel are present
(linux-dummy,linux-omap3) and that I should set the PREFERRED_PROVIDER
variable to the required virtual/kernel.

Any ideas how to get linux-yocto-rt built instead of linux-omap3 ?

Hartmut

--bcaec54fae62dd697604c7ee2bb0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I&#39;ve=A0successfully=A0created an image for a Gum=
stix Overo using the BSP layer available at=A0<a href=3D"https://github.com=
/squirly/meta-gumstix">https://github.com/squirly/meta-gumstix</a></div><di=
v>The MACHINE variable is set to &quot;overo&quot; in the build/conf/local.=
conf file.</div>
<div><br></div><div>I then change the PREFERRED_PROVIDER_virtual/kernel var=
iable in meta-gumstix/conf/machine/overo.inc (which is included from overo.=
conf) from the default &quot;linux-omap3&quot; to &quot;linux-yocto-rt&quot=
; and set=A0PREFERRED_PROVIDER_linux-yocto-rt to &quot;3.4%&quot;.</div>
<div><br></div><div>Once this is done I execute bitbake -k core-image-minim=
al.=A0</div><div><br></div><div>However, this does not result in the linux-=
yocto-rt kernel being built for the new image. Instead, in=A0the bitbake ou=
tput I can see a warning informing me that multiple providers for virtual/k=
ernel are present (linux-dummy,linux-omap3) and that I should set the PREFE=
RRED_PROVIDER variable to the required virtual/kernel.</div>
<div><br></div><div>Any ideas how to get linux-yocto-rt built instead of li=
nux-omap3 ?</div><div><br></div><div>Hartmut</div><div><br></div><div><br><=
/div>

--bcaec54fae62dd697604c7ee2bb0--
