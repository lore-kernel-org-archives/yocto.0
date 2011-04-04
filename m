Return-Path: <murilo.travaglia@phiinnovations.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A45254C80050
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2011 12:24:51 -0500 (CDT)
Received: by ywo32 with SMTP id 32so2927410ywo.35
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2011 10:24:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.150.61.13 with SMTP id j13mr7643234yba.180.1301937890932; Mon,
	04 Apr 2011 10:24:50 -0700 (PDT)
Received: by 10.150.145.1 with HTTP; Mon, 4 Apr 2011 10:24:50 -0700 (PDT)
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659734A7EAF76@shsmsx501.ccr.corp.intel.com>
References: <AANLkTimd3rsfyCahO6rNJ_ziccFvxc6-GiME-vN-fJSa@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9552169843@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659734A7EAF76@shsmsx501.ccr.corp.intel.com>
Date: Mon, 4 Apr 2011 14:24:50 -0300
Message-ID: <BANLkTi=zCu6Th_0kBf-NuAPtBcD3dqHCBA@mail.gmail.com>
From: Murilo Travaglia <murilo.travaglia@phiinnovations.com>
To: "Ke, Liping" <liping.ke@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 04 Apr 2011 17:24:51 -0000
Content-Type: multipart/alternative; boundary=000e0cd58c30823a1a04a01b09a8

--000e0cd58c30823a1a04a01b09a8
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Exactly!

My problem was with the login process, I changed the prompt in the TCF
connection properties and now I'm able to use all the features.

Thanks for the help!

On Thu, Mar 31, 2011 at 9:45 PM, Ke, Liping <liping.ke@intel.com> wrote:

> Hi, Travaglia
>
>
>
>
>
> 1.       Our our java code and eclipse code is in TCF upstream community
> already (both Agent C code and java code part). Yet the community code is
> slightly different with our poky-TCF. TCF upstream disable login process,
> yet our local poky-TCF have login authentication.
>
> So if we use poky TCF, we must use poky TCF agent as well as Poky TCF jav=
a
> plugin.
>
> 2.       Make sure the login in Prompt (PS1) is what? For example, my
> ubuntu 10.04 is =93$=94, Qemu is =93#=94. Make sure the prompt in the TCF=
 connection
> Properties is correct. For qemu, it should be the default one =93#=94 .
>
> For poky-agent, login.Required is =93true=94 Pwd.Required is =93false=94.
>
> If TCF upstream, Login.Required =3D =93false=94, Pwd.Required =3D =93fals=
e=94
>
>
>
> We will try to modify this settings, trying to detect the prompt in later
> versions. And also, login service might be provided by TCF framework soon=
er
> or later in upstream.
>
>
>
>
>
> Thanks a lot for your info!
>
>
>
> criping
>
>
>
>
>
>
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Zhang, Jessica
> *Sent:* Friday, April 01, 2011 4:30 AM
> *To:* Murilo Travaglia; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Remote Debugging with Yocto Project Plugin
>
>
>
> Hi Travaglia,
>
>
>
> Based on our conversation on the IRC channel, it seems the TCF agent and
> your customized Linux distro may have some mismatch issue.  Did you follo=
w
> the steps in the readme file to build out your tcf agent and started in t=
he
> qemu instance?  The readme I'm mentioning here is do a git clone of
> git.pokylinux.org/eclipse-poky, under tcf there's the readme provided
> detailed steps of patching and build out the tcf agent and started it on =
the
> remote target.  Also, can you provide us the agent log file that may prov=
ide
> some further information for us to further debug the issue?
>
>
>
> Thanks,
>
> Jessica
>
>
> ------------------------------
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Murilo Travaglia
> *Sent:* Thursday, March 31, 2011 8:35 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Remote Debugging with Yocto Project Plugin
>
> Hi all,
>
> Hi I'm new in Yocto Project and I intent to study TCF Agent and port ir t=
o
> diferents platforms. The first thing I'm doing is to simulate how does th=
e
> Yocto Project works, especially the TCF Agent with the Eclipse Debug
> Framework.
>
> First at all I installed the Yocto Plugin in my eclipse, installed a
> toolchain (586), download a toolchain to 586, download a pre-built linux
> kernel and a filesystem (sato). So I'm able to run QEMU and use the
> features, remote file explorer, remote debug and use yocto tools.
>
> The second step I'm trying to do is to use the features of Yocto in my
> custom Linux. So I built a 586_linux and I'm running it in QEMU. I got th=
e
> source code of eclipse_poky and TCF, aplied the patches of Yocto Project =
in
> TCF code and built (localy in my machine, because is the same architectur=
e)
> the org.eclipse.tm.tcf.terminals.agent agent. Then I put the binary of th=
e
> agent in my linux running in QEMU and started it. In Eclipse if the Yocto
> plugin installed I'm able to use Remote File System Explorer, I can see m=
y
> home files, etc, can execute some yocto tools, but when I try to the debu=
g
> an aplication in my remote target, I can't do it. I can see that the bina=
ry
> file is copied to the target (I also can execute it manually), but eclips=
e
> stay trying to debug (maybe trying to find the file) and then after a tim=
e a
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


--=20
Murilo Marques Travaglia
Phi Innovations

--000e0cd58c30823a1a04a01b09a8
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Exactly!<br><br>My problem was with the login process, I changed the prompt=
 in the TCF connection properties and now I&#39;m able to use all the featu=
res.<br><br>Thanks for the help!<br><br><div class=3D"gmail_quote">On Thu, =
Mar 31, 2011 at 9:45 PM, Ke, Liping <span dir=3D"ltr">&lt;<a href=3D"http:/=
/liping.ke">liping.ke</a>@<a href=3D"http://intel.com">intel.com</a>&gt;</s=
pan> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div link=3D"blue=
" vlink=3D"purple" lang=3D"EN-US"><div><p class=3D"MsoNormal"><span style=
=3D"font-size: 11pt; color: rgb(31, 73, 125);">Hi, Travaglia</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size: 11pt; color: rgb(31, 73, 1=
25);">=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size: 11pt; =
color: rgb(31, 73, 125);">=A0</span></p><p><span style=3D"font-size: 11pt; =
color: rgb(31, 73, 125);"><span>1.<span style=3D"font: 7pt &quot;Times New =
Roman&quot;;">=A0=A0=A0=A0=A0=A0 </span></span></span><span style=3D"font-s=
ize: 11pt; color: rgb(31, 73, 125);">Our our java code and eclipse code is =
in TCF upstream community already (both Agent C code and java code part). Y=
et the community code is slightly different with our poky-TCF. TCF upstream=
 disable login process, yet our local poky-TCF have login authentication.</=
span></p>
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">So if we use p=
oky TCF, we must use poky TCF agent as well as Poky TCF java plugin.</span>=
</p><p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);"><span>2.<s=
pan style=3D"font: 7pt &quot;Times New Roman&quot;;">=A0=A0=A0=A0=A0=A0 </s=
pan></span></span><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);"=
>Make sure the login in Prompt (PS1) is what? For example, my ubuntu 10.04 =
is =93$=94, Qemu is =93#=94. Make sure the prompt in the TCF connection Pro=
perties is correct. For qemu, it should be the default one =93#=94 . </span=
></p>
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">For poky-agent=
, login.Required is =93true=94 Pwd.Required is =93false=94.</span></p><p><s=
pan style=3D"font-size: 11pt; color: rgb(31, 73, 125);">If TCF upstream, Lo=
gin.Required =3D =93false=94, Pwd.Required =3D =93false=94</span></p>
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">=A0</span></p>=
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">We will try to=
 modify this settings, trying to detect the prompt in later versions. And a=
lso, login service might be provided by TCF framework sooner or later in up=
stream.</span></p>
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">=A0</span></p>=
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">=A0</span></p>=
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">Thanks a lot f=
or your info!</span></p>
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">=A0</span></p>=
<p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">criping </span=
></p><p><span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">=A0</span=
></p><p>
<span style=3D"font-size: 11pt; color: rgb(31, 73, 125);">=A0</span></p><p =
class=3D"MsoNormal"><span style=3D"font-size: 11pt; color: rgb(31, 73, 125)=
;">=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size: 11pt; col=
or: rgb(31, 73, 125);">=A0</span></p>
<div style=3D"border-width: medium medium medium 1.5pt; border-style: none =
none none solid; border-color: -moz-use-text-color -moz-use-text-color -moz=
-use-text-color blue; padding: 0cm 0cm 0cm 4pt;"><div><div style=3D"border-=
width: 1pt medium medium; border-style: solid none none; border-color: rgb(=
181, 196, 223) -moz-use-text-color -moz-use-text-color; padding: 3pt 0cm 0c=
m;">
<p class=3D"MsoNormal"><b><span style=3D"font-size: 10pt;">From:</span></b>=
<span style=3D"font-size: 10pt;"> <a href=3D"mailto:yocto-bounces@yoctoproj=
ect.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a hr=
ef=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounce=
s@yoctoproject.org</a>] <b>On Behalf Of </b>Zhang, Jessica<br>
<b>Sent:</b> Friday, April 01, 2011 4:30 AM<br><b>To:</b> Murilo Travaglia;=
 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br><b>Subject:</b> Re: [yocto] Remote Debugging with Yocto Pro=
ject Plugin</span></p>
</div></div><div><div></div><div class=3D"h5"><p class=3D"MsoNormal">=A0</p=
><p class=3D"MsoNormal"><span style=3D"font-size: 10pt; color: blue;">Hi Tr=
avaglia,</span></p><p class=3D"MsoNormal">=A0</p><p class=3D"MsoNormal"><sp=
an style=3D"font-size: 10pt; color: blue;">Based on our conversation on the=
 IRC channel, it seems the TCF agent and your customized Linux distro may h=
ave some mismatch issue.=A0 Did you follow the steps in the readme file to =
build out your tcf agent and started in the qemu instance?=A0 The readme I&=
#39;m mentioning here is do a git clone of <a href=3D"http://git.pokylinux.=
org/eclipse-poky" target=3D"_blank">git.pokylinux.org/eclipse-poky</a>, und=
er tcf there&#39;s the readme provided detailed steps of patching and build=
 out the tcf agent and started it on the remote target.=A0 Also, can you pr=
ovide us the agent log file that may provide some further information for u=
s to further debug the issue?</span></p>
<p class=3D"MsoNormal">=A0</p><p class=3D"MsoNormal"><span style=3D"font-si=
ze: 10pt; color: blue;">Thanks,</span></p><p class=3D"MsoNormal"><span styl=
e=3D"font-size: 10pt; color: blue;">Jessica</span></p><p class=3D"MsoNormal=
">=A0</p><div class=3D"MsoNormal" style=3D"text-align: center;" align=3D"ce=
nter">
<hr size=3D"2" width=3D"100%" align=3D"center"></div><p class=3D"MsoNormal"=
 style=3D"margin-bottom: 12pt;"><b><span style=3D"font-size: 10pt;">From:</=
span></b><span style=3D"font-size: 10pt;"> <a href=3D"mailto:yocto-bounces@=
yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mai=
lto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yoc=
to-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Murilo Travaglia<br>
<b>Sent:</b> Thursday, March 31, 2011 8:35 AM<br><b>To:</b> <a href=3D"mail=
to:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>=
<b>Subject:</b> [yocto] Remote Debugging with Yocto Project Plugin</span></=
p>
<p class=3D"MsoNormal" style=3D"margin-bottom: 12pt;">Hi all,<br><br>Hi I&#=
39;m new in Yocto Project and I intent to study TCF Agent and port ir to di=
ferents platforms. The first thing I&#39;m doing is to simulate how does th=
e Yocto Project works, especially the TCF Agent with the Eclipse Debug Fram=
ework.<br>
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
<br>-- <br>Murilo Marques Travaglia<br>Phi Innovations<br><br><br></p></div=
></div></div></div></div></blockquote></div><br><br clear=3D"all"><br>-- <b=
r>Murilo Marques Travaglia<br>Phi Innovations<br><br><br><br>

--000e0cd58c30823a1a04a01b09a8--
