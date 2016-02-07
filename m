Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25E69E00D6F; Sun,  7 Feb 2016 03:30:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC8DCE00B37
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2016 03:30:30 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 4033140A5B;
	Sun,  7 Feb 2016 06:30:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	dn7xx4rVZgVMUIeCPZHlB290p+A=; b=V9utqy+X56Lx3pCEbbFyu0wuaFZ7VvAh
	kM1elZScFuSUNUFBWiPdG7I5e+3WYoMouuNYQCLP4QcKSwfg0yaWRE11iBFYwfN+
	NxSQmwwLV/wMzfCtCJS5bcKhq8cxIpFIuiW5qCGE8APzytk0vLb9sjwnvVSambDG
	SOKZHd1rQ4w=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 3685040A5A;
	Sun,  7 Feb 2016 06:30:30 -0500 (EST)
Received: from [10.41.136.144] (unknown [79.153.217.219])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id C74B440A59;
	Sun,  7 Feb 2016 06:30:27 -0500 (EST)
Mime-Version: 1.0 (1.0)
From: Nathan Sowatskey <nathan@nathan.to>
X-Mailer: iPhone Mail (13D15)
In-Reply-To: <CANNuj8yYPBBZ1uqV60vCRqkhorkZpfwwt-M5BcqYD3D=c1AMkQ@mail.gmail.com>
Date: Sun, 7 Feb 2016 12:30:23 +0100
Message-Id: <550544CF-C395-44F4-A5A3-F38CB55262EE@nathan.to>
References: <CANNuj8z_WVtPWtf=addnrNLtWNOx6EPPN8ua920tHsvVS52MFw@mail.gmail.com>
	<FE742A86-BFF3-4756-8571-2FB0E5AB236F@nathan.to>
	<CANNuj8wK7W7Ns_YuKRfA_=8pqxNr=F-2sVuRberwjaQzvcksjg@mail.gmail.com>
	<6854FCC8-85C7-42C9-90F4-2D349FFA8115@nathan.to>
	<CANNuj8yYPBBZ1uqV60vCRqkhorkZpfwwt-M5BcqYD3D=c1AMkQ@mail.gmail.com>
To: Gilar Dwitresna <gilardwitresna@gmail.com>
X-Pobox-Relay-ID: 2FF544BC-CD8E-11E5-B8F5-79226BB36C07-96844961!pb-smtp0.pobox.com
Cc: yocto@yoctoproject.org
Subject: Re: [Qemu-discuss] how to install qemu KVM 1.4.0 release
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
X-List-Received-Date: Sun, 07 Feb 2016 11:30:37 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-93A7A72E-956F-4629-B349-E4D46191EDDE
Content-Transfer-Encoding: 7bit

--Apple-Mail-93A7A72E-956F-4629-B349-E4D46191EDDE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Gilar

What did you download and install into please? For example, did you download=
 an Ubuntu ISO and create a VM from that? If so, which one? Also, which hype=
rvisor are you using, if any, and what is your host please?

Regards

Nathan

> On 07 Feb 2016, at 12:19, Gilar Dwitresna <gilardwitresna@gmail.com> wrote=
:
>=20
> thank you very much for your reply and help..
>=20
> I have installed qemu/kvm 1.4.0 release from this tutorial:
>=20
> http://qemu-buch.de/de/index.php?title=3DQEMU-KVM-Buch/_QEMU%2BKVM_unter_L=
inux
>=20
>=20
> Then, I have install the following command:
> $sudo apt-get install build-essential gcc make wget
> $sudo apt-get install libdirectfb-dev libjpeg-dev
> $sudo apt-get install zlib1g-dev libsdl-gfx1.2-dev
> $sudo apt-get install gcc libsdl1.2-dev libasound2-dev=20
> $sudo apt-get install pkg-config libpci-dev
> $sudo apt-get install dh-autoreconf
> $sudo apt-get install checkinstall
> $sudo apt-get install libsasl2-dev libgnutls-dev
> $sudo apt-get install libjpeg8-dev libvdeplug2-dev
> $sudo apt-get install libcurl4-gnutls-dev
> $sudo apt-get install libbluetooth-dev bluez
> $sudo apt-get install libxen-dev
> $sudo apt-get install texi2html texinfo
> $sudo apt-get install sparse
> $sudo apt-get install libbrlapi-dev
> $sudo apt-get install libspice-protocol-dev libspice-server-dev
> $sudo apt-get install libiscsi-dev
>=20
> download the qemu-.1.4.0 source.
> $mkdir -p ~/source
> $cd ~/source
> $wget http://wiki.qemu-project.org/download/qemu-1.4.0.tar.bz2
> $tar xjvf qemu-1.4.0.tar.bz2
> $cd qemu-1.4.0
>=20
> $./configure --prefix=3D/usr --enable-spice \
>         --audio-card-list=3Dac97,es1370,sb16,adlib,gus,cs4231a \
>         --enable-trace-backend=3Dsimple
> $make
> $sudo checkinstall --fstrans=3Dno --pkgname=3Dqemu-self-compiled \
>         --pkgversion=3D1.3
> >> qemu-self-compiled
> >>
>=20
> $sudo make install
>=20
> the installation finished..
>=20
> then, I have following command from this website to installing VM on qemu/=
kvm 1.4.0:
> http://nairobi-embedded.org/01_qemu_intro.html
>=20
> =E2=80=A2Create a QEMU disk image
> There are a number of QEMU disk image formats. Commonly used formats inclu=
de qcow2 and raw. To create a disk image in these formats:
> $ qemu-img create -f qcow2 prestine-13.04-desktop-amd64-img.qcow2 10G
> $ qemu-img create -f raw prestine-13.04-desktop-amd64-img.raw 10G
>=20
> Install the distro in the disk image
> $ qemu-system-x86_64 -enable-kvm -smp 2 -m 1024 -localtime -hda prestine-1=
3.04-desktop-amd64-img.qcow2 -cdrom ubuntu-13.04-desktop-amd64.iso -boot d
>=20
> but, the problem is I can't install the VM manager for KVM like virt-manag=
er.
> when I try to install virt-manager, with command:
> #apt-get install virt-manager
>=20
> I have the error:
> The following packages have unmet dependencies:
>  virtinst : Depends: qemu-utils
> E: Unmet dependencies. Try 'apt-get -f install' with no packages (or speci=
fy a solution).
>=20
>=20
> then, when I run the virt-manager, I have error:
>=20
> Error talking to PackageKit: org.freedesktop.Packagekit.Modify.Failed: The=
 package system is broken - Check if you are using third party repositories.=
 If so disable them, since they are a common source of problems.
> Furthermore run the following command in a Terminal: apt-get install -f
>  The following packages have unmet dependencies:
> virtinst: Depends: python (>=3D 2.7.1-0ubuntu2) but 2.7.4-0ubuntu1 is inst=
alled
>           Depends: qemu-utils but it is not installed
>=20
>=20
>=20
> regards.
> gilar
>=20
>> On Sun, Feb 7, 2016 at 5:51 PM, Nathan Sowatskey <nathan@nathan.to> wrote=
:
>> Gilar
>>=20
>> I think that you have a minor typo below, where you say =E2=80=9C13.04=E2=
=80=9D in lieu of =E2=80=9C14.04=E2=80=9D.
>>=20
>> To help us help you, we need to be able to recreate what you have done al=
ready, ideally using CLI commands.
>>=20
>> The screenshot you sent shows that you are installing something, but not w=
hether there are any issues with that install, or, if there are issues, what=
 those issues might be.
>>=20
>> If you can reproduce your issue with CLI commands using software versions=
 and tools that we can all access to, then it will be easier for us to help y=
ou.
>>=20
>> As matters stand now, we cannot see what your issue is.
>>=20
>> Regards
>>=20
>> Nathan
>>=20
>>=20
>> > On 7 Feb 2016, at 11:40, Gilar Dwitresna <gilardwitresna@gmail.com> wro=
te:
>> >
>> > I have installed KVM package on my Ubuntu 14.04, and virt-manager for m=
anagement VM..
>> > but my undergraduate thesis must be work on qemu/kvm 1.4.0 release vers=
ion.
>> > then, I have installed Qemu/KVM 1.4.0 on my Ubuntu 13.04, but I can't c=
onnect the qemu/kvm 1.4.0 to the virt-manager/ other vm manager.
>> > can you give me  solutions?
>> >
>> > On Fri, Feb 5, 2016 at 10:02 PM, Nathan Sowatskey <nathan@nathan.to> wr=
ote:
>> > Gilar
>> >
>> > Please tell us what you have tried so far, and what has happened. Show C=
LI output if you can please.
>> >
>> > Many thanks
>> >
>> > Nathan
>> >
>> > > On 5 Feb 2016, at 10:16, Gilar Dwitresna <gilardwitresna@gmail.com> w=
rote:
>> > >
>> > > Dear,
>> > > My name is Gilar Dwitresna, from Telkom University, Indonesia.
>> > > i'm interested with live migration on qemu kvm 1.4.0 release, but i h=
ave a problems in the installation of qemu kvm 1.4.0.
>> > > can i get the tutorial of installing kvm qemu 1.4.0? and what version=
 of ubuntu that i can install qemu kvm1.4.0?
>> > > I intend to implement the live migration algorithm for my undergradua=
te thesis at Telkom University.
>> > > Thank you for your attention and help .
>> > >
>> > >
>> > > Best Regards,
>> > > Gilar Dwitresna
>> > > Telkom University
>> > > Indonesia
>> > >
>> >
>> >
>> > <qemu.JPG>
>=20

--Apple-Mail-93A7A72E-956F-4629-B349-E4D46191EDDE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><div>Thanks Gilar</div><div><br></div>=
<div>What did you download and install into please? For example, did you dow=
nload an Ubuntu ISO and create a VM from that? If so, which one? Also, which=
 hypervisor are you using, if any, and what is your host please?</div><div><=
br></div><div>Regards</div><div><br></div><div>Nathan</div></div><div><br>On=
 07 Feb 2016, at 12:19, Gilar Dwitresna &lt;<a href=3D"mailto:gilardwitresna=
@gmail.com">gilardwitresna@gmail.com</a>&gt; wrote:<br><br></div><blockquote=
 type=3D"cite"><div><div dir=3D"ltr"><div>thank you very much for your reply=
 and help..</div><div><br></div><div>I have installed qemu/kvm 1.4.0 release=
 from this tutorial:<br><br></div><div><a href=3D"http://qemu-buch.de/de/ind=
ex.php?title=3DQEMU-KVM-Buch/_QEMU%2BKVM_unter_Linux">http://qemu-buch.de/de=
/index.php?title=3DQEMU-KVM-Buch/_QEMU%2BKVM_unter_Linux</a></div><div><br><=
/div><div><br></div><div>Then, I have install the following command:</div><d=
iv>$sudo apt-get install build-essential gcc make wget<br>$sudo apt-get inst=
all libdirectfb-dev libjpeg-dev<br>$sudo apt-get install zlib1g-dev libsdl-g=
fx1.2-dev<br>$sudo apt-get install gcc libsdl1.2-dev libasound2-dev <br>$sud=
o apt-get install pkg-config libpci-dev<br>$sudo apt-get install dh-autoreco=
nf</div><div>$sudo apt-get install checkinstall</div><div>$sudo apt-get inst=
all libsasl2-dev libgnutls-dev<br>$sudo apt-get install libjpeg8-dev libvdep=
lug2-dev</div><div>$sudo apt-get install libcurl4-gnutls-dev<br>$sudo apt-ge=
t install libbluetooth-dev bluez<br>$sudo apt-get install libxen-dev<br>$sud=
o apt-get install texi2html texinfo<br>$sudo apt-get install sparse<br>$sudo=
 apt-get install libbrlapi-dev</div><div>$sudo apt-get install libspice-prot=
ocol-dev libspice-server-dev<br>$sudo apt-get install libiscsi-dev</div><div=
><br></div><div>download the qemu-.1.4.0 source.<br>$mkdir -p ~/source<br>$c=
d ~/source<br>$wget <a href=3D"http://wiki.qemu-project.org/download/qemu-1.=
4.0.tar.bz2">http://wiki.qemu-project.org/download/qemu-1.4.0.tar.bz2</a><br=
>$tar xjvf qemu-1.4.0.tar.bz2<br>$cd qemu-1.4.0</div><div><br></div><div>$./=
configure --prefix=3D/usr --enable-spice \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; --audio-card-list=3Dac97,es1370,sb16,adlib,gus,cs4231a \<br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-trace-backend=3Dsimple </di=
v><div>$make<br>$sudo checkinstall --fstrans=3Dno --pkgname=3Dqemu-self-comp=
iled \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --pkgversion=3D1.3<br>&=
gt;&gt; qemu-self-compiled<br>&gt;&gt; </div><div><br></div><div>$sudo make i=
nstall<br></div><div><br></div><div>the installation finished..<br><br></div=
><div>then, I have following command from this website to installing VM on q=
emu/kvm 1.4.0:</div><div><a href=3D"http://nairobi-embedded.org/01_qemu_intr=
o.html">http://nairobi-embedded.org/01_qemu_intro.html</a></div><div><br></d=
iv><div>=E2=80=A2Create a QEMU disk image</div><div>There are a number of QE=
MU disk image formats. Commonly used formats include qcow2 and raw. To creat=
e a disk image in these formats:<br>$ qemu-img create -f qcow2 prestine-13.0=
4-desktop-amd64-img.qcow2 10G<br>$ qemu-img create -f raw prestine-13.04-des=
ktop-amd64-img.raw 10G<br></div><div><br></div><div>Install the distro in th=
e disk image</div><div>$ qemu-system-x86_64 -enable-kvm -smp 2 -m 1024 -loca=
ltime -hda prestine-13.04-desktop-amd64-img.qcow2 -cdrom ubuntu-13.04-deskto=
p-amd64.iso -boot d</div><div><br></div><div>but, the problem is I can't ins=
tall the VM manager for KVM like virt-manager.<br>when I try to install virt=
-manager, with command:</div><div>#apt-get install virt-manager</div><div><b=
r></div><div>I have the error:</div><div>The following packages have unmet d=
ependencies:<br>&nbsp;virtinst : Depends: qemu-utils<br>E: Unmet dependencie=
s. Try 'apt-get -f install' with no packages (or specify a solution).</div><=
div><br></div><div><br></div><div>then, when I run the virt-manager, I have e=
rror:<br></div><div><br>Error talking to PackageKit: org.freedesktop.Package=
kit.Modify.Failed: The package system is broken - Check if you are using thi=
rd party repositories. If so disable them, since they are a common source of=
 problems.<br>Furthermore run the following command in a Terminal: apt-get i=
nstall -f<br>&nbsp;The following packages have unmet dependencies:</div><div=
>virtinst: Depends: python (&gt;=3D 2.7.1-0ubuntu2) but 2.7.4-0ubuntu1 is in=
stalled<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Depends: q=
emu-utils but it is not installed</div><div><br></div><div><br></div><div><b=
r></div><div>regards.</div><div>gilar<br></div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On Sun, Feb 7, 2016 at 5:51 PM, Nathan So=
watskey <span dir=3D"ltr">&lt;<a href=3D"mailto:nathan@nathan.to" target=3D"=
_blank">nathan@nathan.to</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">Gilar<br>
<br>
I think that you have a minor typo below, where you say =E2=80=9C13.04=E2=80=
=9D in lieu of =E2=80=9C14.04=E2=80=9D.<br>
<br>
To help us help you, we need to be able to recreate what you have done alrea=
dy, ideally using CLI commands.<br>
<br>
The screenshot you sent shows that you are installing something, but not whe=
ther there are any issues with that install, or, if there are issues, what t=
hose issues might be.<br>
<br>
If you can reproduce your issue with CLI commands using software versions an=
d tools that we can all access to, then it will be easier for us to help you=
.<br>
<br>
As matters stand now, we cannot see what your issue is.<br>
<br>
Regards<br>
<br>
Nathan<br>
<div><div class=3D"h5"><br>
<br>
&gt; On 7 Feb 2016, at 11:40, Gilar Dwitresna &lt;<a href=3D"mailto:gilardwi=
tresna@gmail.com">gilardwitresna@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I have installed KVM package on my Ubuntu 14.04, and virt-manager for m=
anagement VM..<br>
&gt; but my undergraduate thesis must be work on qemu/kvm 1.4.0 release vers=
ion.<br>
&gt; then, I have installed Qemu/KVM 1.4.0 on my Ubuntu 13.04, but I can't c=
onnect the qemu/kvm 1.4.0 to the virt-manager/ other vm manager.<br>
&gt; can you give me&nbsp; solutions?<br>
&gt;<br>
&gt; On Fri, Feb 5, 2016 at 10:02 PM, Nathan Sowatskey &lt;<a href=3D"mailto=
:nathan@nathan.to">nathan@nathan.to</a>&gt; wrote:<br>
&gt; Gilar<br>
&gt;<br>
&gt; Please tell us what you have tried so far, and what has happened. Show C=
LI output if you can please.<br>
&gt;<br>
&gt; Many thanks<br>
&gt;<br>
&gt; Nathan<br>
&gt;<br>
&gt; &gt; On 5 Feb 2016, at 10:16, Gilar Dwitresna &lt;<a href=3D"mailto:gil=
ardwitresna@gmail.com">gilardwitresna@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Dear,<br>
&gt; &gt; My name is Gilar Dwitresna, from Telkom University, Indonesia.<br>=

&gt; &gt; i'm interested with live migration on qemu kvm 1.4.0 release, but i=
 have a problems in the installation of qemu kvm 1.4.0.<br>
&gt; &gt; can i get the tutorial of installing kvm qemu 1.4.0? and what vers=
ion of ubuntu that i can install qemu kvm1.4.0?<br>
&gt; &gt; I intend to implement the live migration algorithm for my undergra=
duate thesis at Telkom University.<br>
&gt; &gt; Thank you for your attention and help .<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Best Regards,<br>
&gt; &gt; Gilar Dwitresna<br>
&gt; &gt; Telkom University<br>
&gt; &gt; Indonesia<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div>&gt; &lt;qemu.JPG&gt;<br>
<br>
</blockquote></div><br></div>
</div></blockquote></body></html>=

--Apple-Mail-93A7A72E-956F-4629-B349-E4D46191EDDE--
