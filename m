Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f195.google.com (mail-qc0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F5FDE00870
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 13:13:18 -0800 (PST)
Received: by mail-qc0-f195.google.com with SMTP id x13so1063217qcv.6
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 13:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=VVQ7yNAvgIFOH+h5EgwE2LFeSTOFqJXmt+YksOps3zY=;
	b=pgnBza3Hv1E2FVfTOSa9WNCm7hnEzIyuk6voReTjo1gockVggcqxyzTjLD48HBWI7t
	d4Rq8EqVCsPWjdaLSGVaRkksvUy2okEcBIjTGVa98HVoWGDJEvjPOTfY4RdyamgKi35L
	hZnxltDf3YFq2X06kB41VCi7Of6KwaFVFs1o8cyNXgoQj7heDHGZyhQXaJRbdLVafPZI
	He0rR7B/J78BGb2TzztyhUkuEUzMDrcTShppO2116KzWCT3p1ZgzHYVGYhqvJlsyKkPG
	KnIm+uuu/FLAHU6mekl/rIPlPYuL7xmqq4unzhjWTThdE2kvyEruqBW4MYv46aQQ6Nmc
	y4Kg==
MIME-Version: 1.0
X-Received: by 10.224.89.71 with SMTP id d7mr15246142qam.26.1390511597819;
	Thu, 23 Jan 2014 13:13:17 -0800 (PST)
Received: by 10.140.93.182 with HTTP; Thu, 23 Jan 2014 13:13:17 -0800 (PST)
In-Reply-To: <CANwz6nyzMND1u_TGMNBA3wNF-2h6SjM3JQgTf7tM=q10b7fMGw@mail.gmail.com>
References: <CANwz6nyzMND1u_TGMNBA3wNF-2h6SjM3JQgTf7tM=q10b7fMGw@mail.gmail.com>
Date: Thu, 23 Jan 2014 14:13:17 -0700
Message-ID: <CANwz6nys6XHQwB9DHUdgJyGuG5rinxdYqpG4y3DYgOhbqHbHDg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-topic meta-zynq
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
X-List-Received-Date: Thu, 23 Jan 2014 21:13:23 -0000
Content-Type: multipart/alternative; boundary=001a11c3e166d8371e04f0a9b5b8

--001a11c3e166d8371e04f0a9b5b8
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Edward Vidal <vidal.develone@gmail.com>
Date: Wed, Jan 22, 2014 at 9:37 AM
Subject: meta-topic meta-zynq
To: meta-xilinx@yoctoproject.org


Hello All
Not able to source or . in a bitbake receipe.  When source is used the
error is source not found.  When . is used the path is not set and xps can
not be found.
Could the be a ubuntu problem.  I just recently changed from Fedora19
x86_64 to precise1-Ubuntu SMP Wed Aug 14 16:19:23 UTC 2013 x86_64 x86_64
x86_64 GNU/Linux.

1.) MACHINE=zedboard bitbake virtual/kernel okay
2.) MACHINE=zedboard bitbake u-boot-zynq okay
3.) MACHINE=zedboard bitbake sd-bootscript okay
4.) MACHINE=zedboard bitbake fpga-image fails
I can manually do the following steps to obtain a fpga.bin file.
1.) cd
zynq_oe/build/tmp-eglibc/work/zedboard-oe-linux-gnueabi/fpga-image/5.AUTOINC-0a90b0d42e-r0/git/cf_adv7511_zed/
2.) . /opt/Xilinx/14.4/ISE_DS/settings64.sh
3.) xps -nw system.xmp
4.) run bits
5.) run exporttosdk
6.) python ../../fpga-bit-to-bin.py --flip implementation/system.bit
../../../5.AUTOINC-0a90b0d42e-r0/fpga.bin
Design name: system.ncd;HW_TIMEOUT=FALSE;UserID=0xFFFFFFFF
Partname 7z020clg484
Date 2014/01/22
Time 08:20:03
found binary data: 4045564
After deleting fpga-image from meta-zynq/receipes-core/images/my-image.bb
MACHINE=zedboard bitbake my-image okay
Thanks

--001a11c3e166d8371e04f0a9b5b8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">Edward Vidal</b> <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.devel=
one@gmail.com</a>&gt;</span><br>
Date: Wed, Jan 22, 2014 at 9:37 AM<br>Subject: meta-topic meta-zynq<br>To: =
<a href=3D"mailto:meta-xilinx@yoctoproject.org">meta-xilinx@yoctoproject.or=
g</a><br><br><br><div dir=3D"ltr"><div>Hello All<br>Not able to source or .=
 in a bitbake receipe.=A0 When source is used the error is source not found=
.=A0 When . is used the path is not set and xps can not be found. <br>
Could the be a ubuntu problem.=A0 I just recently changed from Fedora19 x86=
_64 to precise1-Ubuntu SMP Wed Aug 14 16:19:23 UTC 2013 x86_64 x86_64 x86_6=
4 GNU/Linux.<br>
<br>1.) MACHINE=3Dzedboard bitbake virtual/kernel okay<br>2.) MACHINE=3Dzed=
board bitbake u-boot-zynq okay<br>3.) MACHINE=3Dzedboard bitbake sd-bootscr=
ipt okay<br>4.) MACHINE=3Dzedboard bitbake fpga-image fails<br>I can manual=
ly do the following steps to obtain a fpga.bin file.<br>

1.) cd zynq_oe/build/tmp-eglibc/work/zedboard-oe-linux-gnueabi/fpga-image/5=
.AUTOINC-0a90b0d42e-r0/git/cf_adv7511_zed/<br>2.) . /opt/Xilinx/14.4/ISE_DS=
/settings64.sh<br>3.) xps -nw system.xmp<br>4.) run bits<br>5.) run exportt=
osdk<br>

6.) python ../../fpga-bit-to-bin.py --flip implementation/system.bit=A0 ../=
../../5.AUTOINC-0a90b0d42e-r0/fpga.bin<br>Design name: system.ncd;HW_TIMEOU=
T=3DFALSE;UserID=3D0xFFFFFFFF<br>Partname 7z020clg484<br>Date 2014/01/22<br=
>
Time 08:20:03<br>
found binary data: 4045564<br>After deleting fpga-image from meta-zynq/rece=
ipes-core/images/<a href=3D"http://my-image.bb" target=3D"_blank">my-image.=
bb</a><br>MACHINE=3Dzedboard bitbake my-image okay<br></div>Thanks<br></div=
>

</div><br></div>

--001a11c3e166d8371e04f0a9b5b8--
