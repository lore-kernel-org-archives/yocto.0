Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBED2E00A0C; Thu, 31 May 2018 22:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B6D2E00A0C
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 22:46:24 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id e20-v6so28439951iof.4
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 22:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ey3NlZMlHbdrNlFKG8Lg+i/+/pzcE9/y/m0ICYEWP2U=;
	b=tQpjc3faCayklFK75I6NRrXcz5l8IW8INIsjjiddoHwAxJQFEZGbaSNrEHH6CRd2dV
	K6O4hGS1jOi3HLXs1dmVBgSFQGXBnPZtvLKkew4fbzfKwM5CorfC+OPDax38jrlx5eHF
	1ZC88iAaYSlrhgY+suDHMm8dmL7WyadGJq8r8GH+XgK69FtpVmWfFnKCnreZmrxGLSbp
	vQ/fdeEnZgG8sZhNojD80qUR4fXuNuEu3SbTarXINdhCbrCHYg++iyc8INLI0ccx67X7
	CBPVYoZ9kC3uhKEvnwrOyOJF2bHYgKSSM0Ok27T1uJcyt1lyW75BJ3aSOVy4ihBLzO2s
	KFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ey3NlZMlHbdrNlFKG8Lg+i/+/pzcE9/y/m0ICYEWP2U=;
	b=B7VQXvdtpR6nRH1H9FJabEY/k916Ge/aoFCUsSoWRgJjl+potMnZ0UlxHhYWum8dV5
	zQFYL/Nz5J5erN0gQe2BddRkAOB4drWmjQXWBr1AXvK6QSJ05nk3cpGm+mA0OAIdB5CK
	eTO/xF93nYxBAZlzH2S/y9IVc52vNff/fgwlzkih4ox6ZftSdG4diDM5r3CRrHIxW2hi
	+S23bjjH0j7zygNGzAmR6I3SWr1r2OTA082200bYeY3E71Lxq4hulnQYAZ6Poz2+Dj2A
	kaZCCVKR5Zl0Zl678ts/4NQLK9MoDbtlvvVoSSYXD5+K5k6TQgKTMEAjJ49i5tFF7enp
	K6CQ==
X-Gm-Message-State: ALKqPwe/BrHGbaIs1FjWhdTCpnw6qz9ueK4GuF2dMwFymL1E3lCHi49Q
	i7sBr6f/LFdbme1OqPW2Ae1GDpe2yddRy64Q5Nrb
X-Google-Smtp-Source: ADUXVKLsoYipWGX86qAlOz/eu43hwlWG13zVnZQwYs7Fsho9fUT5oXoC5ongNLT48ErsbZMZckb0Io89/HGe63enCsQ=
X-Received: by 2002:a6b:a14d:: with SMTP id
	k74-v6mr949064ioe.302.1527831983436; 
	Thu, 31 May 2018 22:46:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:7a4d:0:0:0:0:0 with HTTP; Thu, 31 May 2018 22:46:22
	-0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Fri, 1 Jun 2018 08:46:22 +0300
Message-ID: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Image specific configuration files
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
X-List-Received-Date: Fri, 01 Jun 2018 05:46:25 -0000
Content-Type: multipart/alternative; boundary="000000000000a63716056d8e1a4d"

--000000000000a63716056d8e1a4d
Content-Type: text/plain; charset="UTF-8"

Hi,

For the same MACHINE I create the following images:
- myimage-production
- myimage-rnd
- myimage-retail

The production one has production assisted tools for flashing peripheral
HW, testing vital HW components, writing some serial numbers, etc.

The rnd one has more packages than the retail one just to help rnd work and
debugging in device, but none of the rnd image extra packages.

The retail one has the final product image.

I'm using web and FTP servers. I would like for the rnd version of the
image to have a different nginx configuration to set the root directory to
a development folder, or set an alias.

Furthermore, I'll have different variant of the device where only the
device SW changes but the platform is identical. So I'll end up with
- myimage2-production
- myimage2-rnd
- myimage2-retail

I know how to make MACHINE based configuration. How could I do this in
my nginx.bbappend based on image name?

Thanks,
-Damien

--000000000000a63716056d8e1a4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>For the same MACHINE I create the f=
ollowing images:</div><div>- myimage-production</div><div>- myimage-rnd</di=
v><div>- myimage-retail</div><div><br></div><div>The production one has pro=
duction assisted tools for flashing peripheral HW, testing vital HW compone=
nts, writing some serial numbers, etc.</div><div><br></div><div>The rnd one=
 has more packages than the retail one just to help rnd work and debugging =
in device, but none of the rnd image extra packages.=C2=A0</div><div><br></=
div><div>The retail one has the final product image.</div><div><br></div><d=
iv>I&#39;m using web and FTP servers. I would like for the rnd version of t=
he image to have a different nginx configuration to set the root directory =
to a development folder,=C2=A0<span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline">or set an alias.</s=
pan></div><div><br></div><div>Furthermore, I&#39;ll have different variant =
of the device where only the device SW changes but the platform is identica=
l. So I&#39;ll end up with=C2=A0<br></div><div><div style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-col=
or:initial">- myimage2-production</div><div style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration-style:initial;text-decoration-color:initi=
al">- myimage2-rnd</div><div style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;text-decoration-style:initial;text-decoration-color:initial">- myimage2-=
retail</div><div><br></div><div>I know how to make MACHINE based configurat=
ion. How could I do this in my=C2=A0nginx.bbappend based on image name?<br>=
</div></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline"><br></span></div><div><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">Thanks,</span></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">-Damien<=
/span></div></div>

--000000000000a63716056d8e1a4d--
