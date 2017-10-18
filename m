Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 755D7E00D33; Wed, 18 Oct 2017 15:13:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marlon.smith10[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.172 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84EF4E00C96
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 15:13:52 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id a8so4980496pfc.0
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 15:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:mime-version;
	bh=/VEdking5uLsmKbCLfQqpSV+INWx4TNNsYX0+qsMwJg=;
	b=Mpam3ECh67R6d1AvIrveZW2uRnadIJmqCon0qltlbAZgUZnZaYBw5Kju9P1odyVR6i
	xt7IWpAPWM2FecnLug6/9suIE+iyldTCdXHc2Mn5EGbwM5YiAWQY5U7Ta8q7MqsCsJJI
	wY+ZQ6IAI4B4mVDPI1TbM1JuLK8h/SLJk8w7HgRhNb/puaQA0LboyAPhS4RrMb/xQSld
	r+Hnxxen/sK+6+7ViNlvMkXOx+1RpC/T4l5rELrM99jdweI3WkJ2AybwYhItO6RigeZm
	KNbBCy4QsQ8224HBtWnJ1Q6uokk1IKR42M0NTyaYbcvgDCfdTFffqO8ltMzzANK/Dv3r
	tzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:mime-version;
	bh=/VEdking5uLsmKbCLfQqpSV+INWx4TNNsYX0+qsMwJg=;
	b=rPvY3lACH+rkTIdYdOleDqZ0Au6r/O/ZoP3OserOlQ904nY4eIRwxRkAp3DFLlKjA/
	urWJqObh+p+L3Zw9Ex5d8mkIuC/kmaGMGMI06vHcZ+gKP9YVoff4lZ7E6F4WlH1zHjVQ
	YgDiJ44qY63Vi/fMZUV//Lgds7QO9kIAWSwMfHSj6RjDOMq/a3UDmJZIElz8NDiGQXAE
	pssbwb7mqCcdCLUZ2t37tRF7fsFuJTsgYf3FSsri9UpkAUf1bI+YdMDySxdpHDvZuxqI
	LgWIQ5PNY7IyGjah8UR/wDHe3XHGBZ9+uh/uSr8jrrcUcp9j1GRd08dKPm2PbTD8uA6c
	G24A==
X-Gm-Message-State: AMCzsaW8ACLJy+r8KWvyH+sZVWvj9pF5oiEYv6MaXYmLhNmbLzRpkRK+
	0DWLPcaqVdhdf7UlVG4hBtL2hg==
X-Google-Smtp-Source: AOwi7QAdu4RdtXQUR/RjnX9bMuGXjI2y39CD6PwFo4nGOLNrVHmSzpvYA/JAsfJIjELZUvFaHa4v3g==
X-Received: by 10.84.209.238 with SMTP id y101mr16409470plh.211.1508364831560; 
	Wed, 18 Oct 2017 15:13:51 -0700 (PDT)
Received: from [10.2.0.10] (S0106a84e3f53ec33.gv.shawcable.net.
	[184.66.238.184]) by smtp.gmail.com with ESMTPSA id
	m17sm23333844pfh.28.2017.10.18.15.13.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Oct 2017 15:13:50 -0700 (PDT)
Message-ID: <1508364829.4636.30.camel@gmail.com>
From: Marlon Smith <marlon.smith10@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Oct 2017 15:13:49 -0700
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Subject: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Wed, 18 Oct 2017 22:13:53 -0000
Content-Type: multipart/alternative; boundary="=-o6QIYvFEjFzLl9SLVeod"

--=-o6QIYvFEjFzLl9SLVeod
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi everyone,

I'm trying to build the Linux backports project to get updated wifi
drivers on an older kernel.  The problem is that when building
backports, it first builds several tools that need to be run natively
before cross-compiling the rest of the project.

I know how to write a bitbake recipe to compile natively, and how to
write one to build for the target, but I can't figure out how to
combine the two.  The backports project has steps for LTIB:

 %Build
 export PATH=$UNSPOOF_PATH
 
 make menuconfig prefix=%{_prefix} \
   CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
   ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
   KLIB_BUILD=${TOP}/rpm/BUILD/linux
 
 export PATH=$SPOOF_PATH
 
 make prefix=%{_prefix} \
   CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
   ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
   KLIB_BUILD=${TOP}/rpm/BUILD/linux

I believe what I need is an equivalent to the line export
PATH=$UNSPOOF_PATH but I can't find anything in the Yocto documentation
or mailing lists that would be equivalent to that.

Any help would be much appreciated!

Thanks

Marlon

--=-o6QIYvFEjFzLl9SLVeod
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>Hi everyone,</div><div><br></div><div>I'm try=
ing to build the Linux backports project to get updated wifi drivers on an =
older kernel. &nbsp;The problem is that when building backports, it first b=
uilds several tools that need to be run natively before cross-compiling the=
 rest of the project.</div><div><br></div><div>I know how to write a bitbak=
e recipe to compile natively, and how to write one to build for the target,=
 but I can't figure out how to combine the two. &nbsp;The backports project=
 has steps for LTIB:</div><div><br></div><div><pre> %Build
 export PATH=3D$UNSPOOF_PATH
=20
 make menuconfig prefix=3D%{_prefix} \
   CROSS_COMPILE=3D${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
   ARCH=3D$LINTARCH KLIB=3D${TOP}/rootfs/lib/modules/%{kversion} \
   KLIB_BUILD=3D${TOP}/rpm/BUILD/linux
=20
 export PATH=3D$SPOOF_PATH
=20
 make prefix=3D%{_prefix} \
   CROSS_COMPILE=3D${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
   ARCH=3D$LINTARCH KLIB=3D${TOP}/rootfs/lib/modules/%{kversion} \
   KLIB_BUILD=3D${TOP}/rpm/BUILD/linux</pre><pre><br></pre><pre><span style=
=3D"font-family: Cantarell; font-size: 15px; white-space: normal;">I believ=
e what I need is an equivalent to the line&nbsp;</span>export PATH=3D$UNSPO=
OF_PATH<span style=3D"font-family: Cantarell; font-size: 15px; white-space:=
 normal;">&nbsp;but I can't find anything in the Yocto documentation or mai=
ling lists that would be equivalent to that.</span></pre><pre><span style=
=3D"font-family: Cantarell; font-size: 15px; white-space: normal;"><br></sp=
an></pre><pre><span style=3D"font-family: Cantarell; font-size: 15px; white=
-space: normal;">Any help would be much appreciated!</span></pre><pre><span=
 style=3D"font-family: Cantarell; font-size: 15px; white-space: normal;"><b=
r></span></pre><pre><span style=3D"font-family: Cantarell; font-size: 15px;=
 white-space: normal;">Thanks</span></pre><pre><span style=3D"font-family: =
Cantarell; font-size: 15px; white-space: normal;"><br></span></pre><pre><sp=
an style=3D"font-family: Cantarell; font-size: 15px; white-space: normal;">=
Marlon</span></pre></div></body></html>

--=-o6QIYvFEjFzLl9SLVeod--
