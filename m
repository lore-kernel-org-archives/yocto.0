Return-Path: <murilo.travaglia@phiinnovations.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1118D4C80ABA
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 10:35:07 -0500 (CDT)
Received: by gwj22 with SMTP id 22so1326834gwj.35
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 08:35:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.114.193 with SMTP id c41mr3888875yhh.226.1301585706596;
	Thu, 31 Mar 2011 08:35:06 -0700 (PDT)
Received: by 10.151.101.15 with HTTP; Thu, 31 Mar 2011 08:35:06 -0700 (PDT)
Date: Thu, 31 Mar 2011 12:35:06 -0300
Message-ID: <AANLkTimd3rsfyCahO6rNJ_ziccFvxc6-GiME-vN-fJSa@mail.gmail.com>
From: Murilo Travaglia <murilo.travaglia@phiinnovations.com>
To: yocto@yoctoproject.org
Subject: Remote Debugging with Yocto Project Plugin
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
X-List-Received-Date: Thu, 31 Mar 2011 15:35:07 -0000
Content-Type: multipart/alternative; boundary=20cf303b3fe7afb880049fc9090c

--20cf303b3fe7afb880049fc9090c
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

Hi I'm new in Yocto Project and I intent to study TCF Agent and port ir to
diferents platforms. The first thing I'm doing is to simulate how does the
Yocto Project works, especially the TCF Agent with the Eclipse Debug
Framework.

First at all I installed the Yocto Plugin in my eclipse, installed a
toolchain (586), download a toolchain to 586, download a pre-built linux
kernel and a filesystem (sato). So I'm able to run QEMU and use the
features, remote file explorer, remote debug and use yocto tools.

The second step I'm trying to do is to use the features of Yocto in my
custom Linux. So I built a 586_linux and I'm running it in QEMU. I got the
source code of eclipse_poky and TCF, aplied the patches of Yocto Project in
TCF code and built (localy in my machine, because is the same architecture)
the org.eclipse.tm.tcf.terminals.agent agent. Then I put the binary of the
agent in my linux running in QEMU and started it. In Eclipse if the Yocto
plugin installed I'm able to use Remote File System Explorer, I can see my
home files, etc, can execute some yocto tools, but when I try to the debug
an aplication in my remote target, I can't do it. I can see that the binary
file is copied to the target (I also can execute it manually), but eclipse
stay trying to debug (maybe trying to find the file) and then after a time a
got an error. I also tryed to put the tcf-agent binary provided in the
yocto-image-sato-qemux86-0.9.rootfs and I have the same behavior.

Does anybody know why I'm having this issue? Why I can debug in remote
target using the linux provided by poky-qemu and can't do this in my
custom-linux?

Thanks in advance!


Best regards,

-- 
Murilo Marques Travaglia
Phi Innovations

--20cf303b3fe7afb880049fc9090c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br>Hi I&#39;m new in Yocto Project and I intent to study TCF Ag=
ent and port ir to diferents platforms. The first thing I&#39;m doing is to=
 simulate how does the Yocto Project works, especially the TCF Agent with t=
he Eclipse Debug Framework.<br>
<br>First at all I installed the Yocto Plugin in my eclipse, installed a to=
olchain (586), download a toolchain to 586, download a pre-built linux kern=
el and a filesystem (sato). So I&#39;m able to run QEMU and use the feature=
s, remote file explorer, remote debug and use yocto tools.<br>
<br>The second step I&#39;m trying to do is to use the features of Yocto in=
 my custom Linux. So I built a 586_linux and I&#39;m running it in QEMU. I =
got the source code of eclipse_poky and TCF, aplied the patches of Yocto Pr=
oject in TCF code and built (localy in my machine, because is the same arch=
itecture) the org.eclipse.tm.tcf.terminals.agent agent. Then I put the bina=
ry of the agent in my linux running in QEMU and started it. In Eclipse if t=
he Yocto plugin installed I&#39;m able to use Remote File System Explorer, =
I can see my home files, etc, can execute some yocto tools, but when I try =
to the debug an aplication in my remote target, I can&#39;t do it. I can se=
e that the binary file is copied to the target (I also can execute it manua=
lly), but eclipse stay trying to debug (maybe trying to find the file) and =
then after a time a got an error. I also tryed to put the tcf-agent binary =
provided in the yocto-image-sato-qemux86-0.9.rootfs and I have the same beh=
avior.<br>
<br>Does anybody know why I&#39;m having this issue? Why I can debug in rem=
ote target using the linux provided by poky-qemu and can&#39;t do this in m=
y custom-linux?<br><br>Thanks in advance!<br><br><br>Best regards,<br clear=
=3D"all">
<br>-- <br>Murilo Marques Travaglia<br>Phi Innovations<br><br><br><br>

--20cf303b3fe7afb880049fc9090c--
