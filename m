Return-Path: <sudhangathan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74C39E004EB; Wed, 30 Apr 2014 00:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sudhangathan[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FBA3E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 00:40:56 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id x13so1472677qcv.15
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 00:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=k9RaJxBF/RWOF8Up1GfMPlaum8/yldeJ9VGO24U15w8=;
	b=LTtt6Vhvr0RV9vFy8uF4z05BUrJZV44gs2rW+wUrjl46jM9VYrLOet9Dynx289fQed
	gDYgRa8Jcl2naYat4JAqGVMIYHFjkU9V2v4k1INxSjvBj6w2xlDbiDoz2cF3gJHZQB9b
	S4E3DEf5MEMq0flshc2Xbyns+OxQZwIxc0ipCGTIhVBJH8SoeD28I3WaGVaddN5IRdzO
	HnZ/rG5STBX0A7AKsJO77KvT0fPB3fOejZ+2wMZEN018eELKW/Ef05QP6nI/PlD61PQP
	pCUbz1X+XGNL0vKlqxrCxK69Pd96f5E0xLemInMEDQfHMo53xmcToK1Yb1aNtZZx5P7S
	C2ow==
X-Received: by 10.224.30.70 with SMTP id t6mr3033490qac.30.1398843655345; Wed,
	30 Apr 2014 00:40:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.195.201 with HTTP; Wed, 30 Apr 2014 00:40:35 -0700 (PDT)
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Wed, 30 Apr 2014 13:10:35 +0530
Message-ID: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"General mailing list for gumstix users."
	<gumstix-users@lists.sourceforge.net>
Subject: Blacklisting drivers in poky or in yocto project
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
X-List-Received-Date: Wed, 30 Apr 2014 07:41:00 -0000
Content-Type: multipart/alternative; boundary=047d7bdca66a2c5e9304f83dab5a

--047d7bdca66a2c5e9304f83dab5a
Content-Type: text/plain; charset=UTF-8

Hi all,

I need to prevent my wifi drivers auto loading during boot time. How do we
do it in the Poky OS or in the Yocto project..?

I tried both the fedora way and debian way, neither worked.! this is as
given in this website..:
http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html


I'm using gumstix overo hardware..! Poky version 9.0.2, Yocto Project 1.4
Reference Distro, 1.4.2 overo.


---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------

--047d7bdca66a2c5e9304f83dab5a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>I need to prevent my wifi=
 drivers auto loading during boot time. How do we do it in the Poky OS or i=
n the Yocto project..?</div><div><br></div><div>I tried both the fedora way=
 and debian way, neither worked.! this is as given in this website..:</div>

<div><a href=3D"http://www.cyberciti.biz/tips/avoid-linux-kernel-module-dri=
ver-autoloading.html">http://www.cyberciti.biz/tips/avoid-linux-kernel-modu=
le-driver-autoloading.html</a>=C2=A0</div><div><br></div><div>I&#39;m using=
 gumstix overo hardware..! Poky version 9.0.2, Yocto Project 1.4 Reference =
Distro, 1.4.2 overo.</div>

<div><br></div><div><br></div><div><div>---------------------------------<b=
r>Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>-----------------------------=
----</div>
</div></div>

--047d7bdca66a2c5e9304f83dab5a--
