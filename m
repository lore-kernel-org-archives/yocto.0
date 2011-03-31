Return-Path: <murilo.travaglia@phiinnovations.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 254164C804D9
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 14:56:21 -0500 (CDT)
Received: by gxk7 with SMTP id 7so1465287gxk.35
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 12:56:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.150.237.21 with SMTP id k21mr3055065ybh.237.1301601380657;
	Thu, 31 Mar 2011 12:56:20 -0700 (PDT)
Received: by 10.151.101.15 with HTTP; Thu, 31 Mar 2011 12:56:20 -0700 (PDT)
In-Reply-To: <AANLkTimd3rsfyCahO6rNJ_ziccFvxc6-GiME-vN-fJSa@mail.gmail.com>
References: <AANLkTimd3rsfyCahO6rNJ_ziccFvxc6-GiME-vN-fJSa@mail.gmail.com>
Date: Thu, 31 Mar 2011 16:56:20 -0300
Message-ID: <AANLkTim3UMmB=CpKYEW23KtgxxsqBFdkf6=RLxcFBFga@mail.gmail.com>
From: Murilo Travaglia <murilo.travaglia@phiinnovations.com>
To: yocto@yoctoproject.org
Subject: Re: Remote Debugging with Yocto Project Plugin
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
X-List-Received-Date: Thu, 31 Mar 2011 19:56:21 -0000
Content-Type: multipart/alternative; boundary=000e0cd2da1ceeec16049fccaf3a

--000e0cd2da1ceeec16049fccaf3a
Content-Type: text/plain; charset=ISO-8859-1

Aditional informations:

   If a get my agent built in my machine and put it on the qemu provided by
Poky, it works fine!
   If the agent in my custom linux I'm not able to use Shell under the TCF
connection.

It seems that my linux is missing something that is required by Yocto.
Because I use the same Eclipse IDE, the same project, the same agent the
only diference is the linux.

Thanks!



On Thu, Mar 31, 2011 at 12:35 PM, Murilo Travaglia <
murilo.travaglia@phiinnovations.com> wrote:

> Hi all,
>
> Hi I'm new in Yocto Project and I intent to study TCF Agent and port ir to
> diferents platforms. The first thing I'm doing is to simulate how does the
> Yocto Project works, especially the TCF Agent with the Eclipse Debug
> Framework.
>
> First at all I installed the Yocto Plugin in my eclipse, installed a
> toolchain (586), download a toolchain to 586, download a pre-built linux
> kernel and a filesystem (sato). So I'm able to run QEMU and use the
> features, remote file explorer, remote debug and use yocto tools.
>
> The second step I'm trying to do is to use the features of Yocto in my
> custom Linux. So I built a 586_linux and I'm running it in QEMU. I got the
> source code of eclipse_poky and TCF, aplied the patches of Yocto Project in
> TCF code and built (localy in my machine, because is the same architecture)
> the org.eclipse.tm.tcf.terminals.agent agent. Then I put the binary of the
> agent in my linux running in QEMU and started it. In Eclipse if the Yocto
> plugin installed I'm able to use Remote File System Explorer, I can see my
> home files, etc, can execute some yocto tools, but when I try to the debug
> an aplication in my remote target, I can't do it. I can see that the binary
> file is copied to the target (I also can execute it manually), but eclipse
> stay trying to debug (maybe trying to find the file) and then after a time a
> got an error. I also tryed to put the tcf-agent binary provided in the
> yocto-image-sato-qemux86-0.9.rootfs and I have the same behavior.
>
> Does anybody know why I'm having this issue? Why I can debug in remote
> target using the linux provided by poky-qemu and can't do this in my
> custom-linux?
>
> Thanks in advance!
>
>
> Best regards,
>
> --
> Murilo Marques Travaglia
> Phi Innovations
>
>
>
>


-- 
Murilo Marques Travaglia
Phi Innovations

--000e0cd2da1ceeec16049fccaf3a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Aditional informations:<br><br>=A0=A0 If a get my agent built in my machine=
 and put it on the qemu provided by Poky, it works fine!<br>=A0=A0 If the a=
gent in my custom linux I&#39;m not able to use Shell under the TCF connect=
ion.<br>
<br>It seems that my linux is missing something that is required by Yocto. =
Because I use the same Eclipse IDE, the same project, the same agent the on=
ly diference is the linux.<br><br>Thanks!<br><br><br><br><div class=3D"gmai=
l_quote">
On Thu, Mar 31, 2011 at 12:35 PM, Murilo Travaglia <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:murilo.travaglia@phiinnovations.com">murilo.travaglia@phiin=
novations.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204)=
; padding-left: 1ex;">
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
<font color=3D"#888888">
<br>-- <br>Murilo Marques Travaglia<br>Phi Innovations<br><br><br><br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br>Murilo Marques T=
ravaglia<br>Phi Innovations<br><br><br><br>

--000e0cd2da1ceeec16049fccaf3a--
