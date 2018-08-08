Return-Path: <jdhanasekarmca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB6A5E007D1; Wed,  8 Aug 2018 05:11:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdhanasekarmca[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E2EE003D7
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 05:11:07 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id l14-v6so1582143iob.7
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2018 05:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Kr5QudmXuOGs54K8mVAwpt90nJI/eNaKxYpFefoRWaY=;
	b=lor8hbYAhN5tVYALzIpLLxpOA8oiihCQeTHNTWBppiNwsBIdF3rg1m9cS5RWsGkyNO
	KnaZIAz+IWcdrKA1l/QIE0yoxiCFNM1EbC4vjtlNH2sPNoNB+GQFFLyPJs/nmriKxpCX
	a83osDvNEC7O297EY9QfKidwgfZcxlTJeYu8Do3qxmu0F5zgxB8qNwxVpGLHdFLOa7Uq
	+RazxCu7iboqZoz2/+sP1bDq8KfWeEPTff2BYl1EAoXHl3fSfey4/ElRQ0kAPAwewZfG
	ibiTo7yQIAnj/fB/1Uz1vHylLBvUFPceaVFB2MiKZn+tei7ZKBgSvWN0tMa4yq2omPJU
	9S6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Kr5QudmXuOGs54K8mVAwpt90nJI/eNaKxYpFefoRWaY=;
	b=ePiJNWyYyF7un9ZBAkJCwKCEnuQK4pW2AWBOFkFxMX9nOEy5V+7ZmZMmdR5j5EIYmb
	p5OJLm7Plocp8/WIuEmGrUP20taf0LH9SSAOx6znEEJ76LB1h6Qn6n1Yj2hvlcci3OOW
	bu9qbBN7TP3t8XBDKQmzDQshjuaVhE735mhJGnQtc4NAXm+4sgKaQ6PoP276f+b0zg4M
	Ywi5GgJMvLymxbg8K2+r92cY3z50HvvDvN3b8Ph13ID7Hg3lhJjBW1Akwj56AlWFpllh
	HYHDkThdjls9sAC98/oQKiKFd1RlZ+rRHxcw99R6gWKLDgjhPGzbPn+hkypTp0siee3F
	x9vg==
X-Gm-Message-State: AOUpUlGeOD7oL4HSH9mA/M1MpKaFPt9CgnyO3hKubzXMvioDqEYggxyl
	cGRq9siYI47ejhn9vOq2t1uCoaswgd6qc/4kfcO2i3QmlNQ=
X-Google-Smtp-Source: AA+uWPz+FMmbV8HBIQgJ/IuvI0U0We8rzEN06mawdiA6D8klBa99YJ3E8bsjhQwRaQbBkITVt41Gznsj5zIGxMc7Ld0=
X-Received: by 2002:a5e:c106:: with SMTP id
	v6-v6mr2016975iol.262.1533730266700; 
	Wed, 08 Aug 2018 05:11:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6952:0:0:0:0:0 with HTTP;
	Wed, 8 Aug 2018 05:11:06 -0700 (PDT)
From: Dhanasekar Jaganathan <jdhanasekarmca@gmail.com>
Date: Wed, 8 Aug 2018 17:41:06 +0530
Message-ID: <CAE4v+fQ83AHJc9Vg7d07Q87YX=X8oFn2N1hAZ9WH-3D3aFjDGQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Getting black screen for Install option
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
X-List-Received-Date: Wed, 08 Aug 2018 12:11:08 -0000
Content-Type: multipart/alternative; boundary="000000000000ba60d30572eb67ca"

--000000000000ba60d30572eb67ca
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have created yocot bootable USB live image by this command "* sudo dd
if=core-image-sato-intel-core2-32.hddimg of=/dev/sdb1"*
"

After power on my system, I have got three options,

1. boot
2. install
3. Reboot into firmware.


When I select "install" to install yocto on mSata, I am getting black
screen.
I am using com port serial console for video propose. My board has no
support for onboard or offboard VGA.

If you have solution for this issue, please provide me.

HW details:

Board : Intel Atom C200 CPU , Mohon Peak
BIOS: Coreboot + UEFI Payload.


Thanks,
Dhanasekar

--000000000000ba60d30572eb67ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I have created yocot=
 bootable USB live image by this command &quot;<b> sudo dd if=3Dcore-image-=
sato-intel-core2-32.hddimg of=3D/dev/sdb1&quot;</b><br>&quot; <br></div><di=
v><br></div><div>After power on my system, I have got three options,</div><=
div><br></div><div>1. boot</div><div>2. install</div><div>3. Reboot into fi=
rmware.</div><div><br></div><div><br></div><div>When I select &quot;install=
&quot; to install yocto on mSata, I am getting black screen. <br></div><div=
>I am using com port serial console for video propose. My board has no supp=
ort for onboard or offboard VGA. <br></div><div><br></div><div>If you have =
solution for this issue, please provide me. <br></div><div><br></div><div>H=
W details:</div><div><br></div><div>Board : Intel Atom C200 CPU , Mohon Pea=
k</div><div>BIOS: Coreboot + UEFI Payload.<br></div><div><br></div><div><br=
></div><div>Thanks,</div><div>Dhanasekar<br></div></div>

--000000000000ba60d30572eb67ca--
