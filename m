Return-Path: <oleg@elphel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3A02E00F58; Fri,  9 Mar 2018 11:02:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 2951 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Mar 2018 11:02:00 PST
Received: from ded3578.elphel.com (ded3578.elphel.com [104.247.75.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1105E00B1A
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 11:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=elphel.com; 
	s=default;
	h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:
	Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=LJyIw5BrkmjABNWZ2p4vb+wlp6oz/LUrXKSTR62TV9U=;
	b=VS3icZavyErWOdPPrWePbnkVmV
	VmbpESMIbugud8lWvkGJ47w1YuKlKuhkMrdfW7M1BqbXy9gFMXMc098gBo5Qeuj1kBMDr7yWQPtkM
	xVqU28busNtWOGvkWhNgu+NgwKkY30c66WbOrvTCiXfjiPE/qtCrXTVAUvwH1oqe695VOeK4GJEiK
	bKtR7mZqJ0mF9FdycBtLTsErVnG2Fv5WA6FbGX+TOLiJx/rlx7zWwG9Wu+Oqycb/SIKxV7biIDtBe
	IOFo1RnFkbTn0ilAWBQZICzZqbemPXoSLkJA/t24t5NE2+Y/OvuRp+hozCodrdjaI+gUxxsktHRqC
	C6WbrhlA==;
Received: from mail-lf0-f54.google.com ([209.85.215.54]:41369)
	by ded3578.elphel.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89_1)
	(envelope-from <oleg@elphel.com>) id 1euMVR-0001DB-1f
	for yocto@yoctoproject.org; Fri, 09 Mar 2018 10:12:48 -0800
Received: by mail-lf0-f54.google.com with SMTP id m69-v6so14380966lfe.8
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2018 10:12:36 -0800 (PST)
X-Gm-Message-State: APf1xPCwoDgqVHJWFNnQ14duJpkxaShJqW3mC5vzNFBhIf5KSi5Vq+1f
	jK6xzRR8nj4Sapq+zn2e9a3SXRvxGpedt/Zr7vM=
X-Google-Smtp-Source: AG47ELsut7ebFMxuUhhRWnfofWE+nENxdgS7KGBQ+GQXl5clc6X2RCMGvXSTrA9T9lfZF5U/nh2AiMwUi6lPIA5Izq8=
X-Received: by 10.46.84.5 with SMTP id i5mr21116140ljb.83.1520619155066; Fri,
	09 Mar 2018 10:12:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.50.8 with HTTP; Fri, 9 Mar 2018 10:12:34 -0800 (PST)
From: Oleg K Dzhimiev <oleg@elphel.com>
Date: Fri, 9 Mar 2018 11:12:34 -0700
X-Gmail-Original-Message-ID: <CALFEMKmVLBwir9WGcdye6HnHBDUCV-eqS6izJHmeOemUx6zOEw@mail.gmail.com>
Message-ID: <CALFEMKmVLBwir9WGcdye6HnHBDUCV-eqS6izJHmeOemUx6zOEw@mail.gmail.com>
To: yocto@yoctoproject.org
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - ded3578.elphel.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - elphel.com
X-Get-Message-Sender-Via: ded3578.elphel.com: authenticated_id:
	smtp5server@elphel.com
X-Authenticated-Sender: ded3578.elphel.com: smtp5server@elphel.com
X-Mailman-Approved-At: Sun, 11 Mar 2018 16:02:55 -0700
Subject: extending HOSTTOOLS
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
X-List-Received-Date: Fri, 09 Mar 2018 19:02:01 -0000
Content-Type: multipart/alternative; boundary="f403045fbf9a9396a80566febcac"

--f403045fbf9a9396a80566febcac
Content-Type: text/plain; charset="UTF-8"

Hello,

Poky 2.4.
I would like to add *ping* and *scp* to HOSTTOOLS from a class inherited by
a recipe. HOSTTOOLS is updated but the links will not appear in the
build/tmp/hosttools/
Is there any way to do this?

It's not fatal - as a workaround I added

> HOSTTOOLS+= "scp ping"

to my machine conf file.

More info:
There is a class file: elphel-scp.bbclass
<https://git.elphel.com/Elphel/meta-elphel393/blob/master/classes/elphel-scp.bbclass>
which
adds a task *do_target_scp *after *do_install.*
target_scp is supposed to scp an archived image to the target hardware and
unpack it over ssh:
* ssh-copy-id is already done for a pwd-less access
* do_install is extended to make an archive of the image/ contents - it's
run as fakeroot so the rights are good
* Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "elphel393"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4+snapshot-20180309"
TUNE_FEATURES        = "arm armv7a vfp neon cortexa9"

Thanks

Best regards,
Oleg Dzhimiev
Electronics Engineer
phone: +1 801 783 5555 x124
Elphel, Inc.

--f403045fbf9a9396a80566febcac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">Poky 2.4.</span></div><div>I would like to add <b>ping</b> and <b>scp<=
/b> to HOSTTOOLS from a class inherited by a recipe. HOSTTOOLS is updated b=
ut the links will not appear in the build/tmp/hosttools/</div><div>Is there=
 any way to do this?</div><div><br></div><div>It&#39;s not fatal - as a wor=
karound=C2=A0I added<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">HOSTTOOLS+=3D &quo=
t;scp ping&quot;</span></span></blockquote><div>to my machine conf file.</d=
iv><div><br></div><div>More info:=C2=A0<br></div><div>There is a class file=
:=C2=A0<a href=3D"https://git.elphel.com/Elphel/meta-elphel393/blob/master/=
classes/elphel-scp.bbclass">elphel-scp.bbclass</a>=C2=A0which adds a task <=
i>do_target_scp </i>after <i>do_install.</i></div><div>target_scp is suppos=
ed to scp an archived image to the target hardware and unpack it over ssh:=
=C2=A0</div><div>* ssh-copy-id is already done for a pwd-less access</div><=
div>* do_install is extended to make an archive of the image/ contents - it=
&#39;s run as fakeroot so the rights are good</div>* Build Configuration:<b=
r>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.37.0&quot;<br>B=
UILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&qu=
ot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;universal&quot;<br>TAR=
GET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi=
&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;elphel393&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.4+=
snapshot-20180309&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;arm armv7a vfp neon cortexa9&quot;<br><br>Thanks<div><span style=3D"font=
-family:monospace"><br></span></div><div class=3D"gmail_signature">Best reg=
ards,<br>Oleg Dzhimiev<br>Electronics Engineer<br>phone: +1 801 783 5555 x1=
24<br>Elphel, Inc.<br></div>
</div>

--f403045fbf9a9396a80566febcac--
