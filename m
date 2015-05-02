Return-Path: <abhishek.embsys@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C03E009A1; Fri,  1 May 2015 18:50:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abhishek.embsys[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06475E0098A
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 18:50:07 -0700 (PDT)
Received: by lbbqq2 with SMTP id qq2so74140895lbb.3
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 18:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=hxtKsQyjBy3iHHupGuW1OhX4fJjansVpNJkmx77drHk=;
	b=WU51qwC49/y6kI7ZLn5MZxXI4Wwl/+LtjEmHkW64/1/53c5f1JhbPZ+07bM6C8J9fw
	0fFUmmyPhOlZa3i34dLvbf3+sHoo4DcYAP0FbomFx4cql7vQ4eTYXTpF665bTy5V04Hw
	Ypl3NLToMADE4cG3HZ2tQ486g3ZICyOkLBZqTyKSM5Zf3vq7LFzpMZAhsqUI3ovQkKNv
	PG43VQv+JNc7nTZfmNYBYe47oYy50fUir5euJT3UJxpg+CJZTneCpJYnYCmZuQvb8ZTI
	qhfQV703OXmpqPnoLWuRy7RgnPI+KJMYzoGDa+6BnYAFNsnWmp4n286+PsNccs4YZJq9
	NG8g==
MIME-Version: 1.0
X-Received: by 10.152.203.162 with SMTP id kr2mr10444239lac.68.1430531405431; 
	Fri, 01 May 2015 18:50:05 -0700 (PDT)
Received: by 10.25.159.202 with HTTP; Fri, 1 May 2015 18:50:05 -0700 (PDT)
Date: Sat, 2 May 2015 07:20:05 +0530
Message-ID: <CAGj-b5+iiKiQ-mk3TGz_VD1z8+Ju1A5jXuwNichojH+FC0kOKQ@mail.gmail.com>
From: abhishek srivastava <abhishek.embsys@gmail.com>
To: yocto@yoctoproject.org
Subject: package build for raspberrypi for armel not armhf
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
X-List-Received-Date: Sat, 02 May 2015 01:50:09 -0000
Content-Type: multipart/alternative; boundary=001a1134632642c99a05150f8ce9

--001a1134632642c99a05150f8ce9
Content-Type: text/plain; charset=UTF-8

Hi all
I want to build armhf package for raspberrypi but bitbake is always giving
me armel packages.
I have made changes in
~/yocto/poky-dizzy-12.0.1/meta-raspberrypi/conf/raspberrypi file at
DEFAULTTUNE ?= "arm1176jzfshf"

I have also changes in
~/yocto/poky-dizzy-12.0.1/meta-raspberrypi/conf/machine/include/tiune-arm1176jzf.inc
file at DEFAULTTUNE ?= "arm1176jzfshf"

Under ~/yocto/build_dizzy/tmp/deploy/deb/raspberrypi, I see all .armel
packages. Why not armhf? please help to get me armhf packages in my image

Is there somewhere else I am supposed to changes to get armhf packages?

Please help

Thank you

Abhishek

--001a1134632642c99a05150f8ce9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi all<br></div>I want =
to build armhf package for raspberrypi but bitbake is always giving me arme=
l packages.<br></div>I have made changes in ~/yocto/poky-dizzy-12.0.1/meta-=
raspberrypi/conf/raspberrypi file at DEFAULTTUNE ?=3D &quot;arm1176jzfshf&q=
uot;<br></div><br>I have also changes in ~/yocto/poky-dizzy-12.0.1/meta-ras=
pberrypi/conf/machine/include/tiune-arm1176jzf.inc file at DEFAULTTUNE ?=3D=
 &quot;arm1176jzfshf&quot;<br><br></div><div>Under ~/yocto/build_dizzy/tmp/=
deploy/deb/raspberrypi, I see all .armel packages. Why not armhf? please he=
lp to get me armhf packages in my image<br></div><div><br></div>Is there so=
mewhere else I am supposed to changes to get armhf packages?<br><br></div>P=
lease help<br><br></div>Thank you<br><br></div>Abhishek<br><div><div><div><=
br></div></div></div></div>

--001a1134632642c99a05150f8ce9--
