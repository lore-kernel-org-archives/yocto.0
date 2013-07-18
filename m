Return-Path: <maregt0@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2237DE014E4
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 12:44:59 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id fn20so2844357lab.14
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 12:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=JZyfrmAcbdAezLBUyVy80Im504i1+4MHNY+mHAnu5vY=;
	b=jpnYWAtOpTZsKJ0cFfJh8gtQ6QM7u22dAz3k5T+bkbqjREr9Skp9VIQjOH32mLYDRT
	7MCeaodw/TkNRqmEjct+stH54vS2N/tUc8eB7d56vO2u0IvnAqbZWEIwak2aSNYSrDSD
	ppsDt9MZh5AUW3Zyw8VKnLBH2eJ4ZLQxT/Y+mcpfKdZjV8riJD6zHZCbr994rFAsR7GU
	n6Is2vmhTJM0VP9dr26sIrdMaJE1qrelmf2quxkfun4f6xxg3Hka4JIq2Xzm2nok4lII
	sSAUaA0kgDE5BwuQChOeM+TGYM7jVjEewR3A+prZ8jF8XZ1Hcj0d2FLD1Q7Z8dEhdNyF
	JBig==
MIME-Version: 1.0
X-Received: by 10.112.29.17 with SMTP id f17mr6096636lbh.20.1374176697840;
	Thu, 18 Jul 2013 12:44:57 -0700 (PDT)
Received: by 10.114.70.50 with HTTP; Thu, 18 Jul 2013 12:44:57 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C5E95C@ORSMSX103.amr.corp.intel.com>
References: <CAC3ARNy1XTJ=fJCCGKRfRw_Jr0qePBVvOujWR3+Bo7sBKLw_Ag@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C5E95C@ORSMSX103.amr.corp.intel.com>
Date: Thu, 18 Jul 2013 21:44:57 +0200
Message-ID: <CAC3ARNwsOVywebvkTrzuHEErjqAa1O-e8Xhb4r2HNV2cPpakzQ@mail.gmail.com>
From: Matthias Van Gestel <maregt0@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, yocto@yoctoproject.org
Subject: Re: SDK generation
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
X-List-Received-Date: Thu, 18 Jul 2013 19:45:01 -0000
Content-Type: multipart/alternative; boundary=001a1133c690eef92d04e1ce71ab

--001a1133c690eef92d04e1ce71ab
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Well obviously I've found an other way, I've bitbaked meta-toolchain-qt
setup QtCreator using these 2 links:
http://labs.isee.biz/index.php/How_to_install_Qt_Creator +
https://community.freescale.com/thread/309578. Before I startup Qtcreator I
source the enviroment like found in link 1 but I had to comment out
"PYTHONHOME" and had to use python from my host machine (Ubuntu 13.04).
I've also had to add:

IMAGE_FEATURES +=3D "debug-tweaks ssh-server-openssh"

IMAGE_INSTALL +=3D "gdbserver openssh-sftp-server"


To enable the remote debugging capabilities of QtCreator for the target
(look at Tools -> Options -> Devices).


PS. This is meant for future reference for other people, though I have to
thank you for willing to help me out.


Thanks,

Matthias Van Gestel


2013/7/18 Zhang, Jessica <jessica.zhang@intel.com>

>  ** **
>
> Hi Matthias,****
>
> ** **
>
> As to the native cross tools, assuming you install your toolchain under
> /opt/poky/1.4.1, after sourcing the environment-setup file, and look into
> the file for CC variable, for example for my case is i586-poky-linux-gcc
> and it=92s under
> /opt/poky/1.4.1/sysroot/i686-pokysdk-linux/usr/bin/i586-poky-linux
> directory.****
>
> ** **
>
> For eclipse, it depends on what is your toolchain and sysroot setup, it=
=92ll
> source the environment-setup file under toolchain directory, then bring u=
p
> qemu in nfs mode base on your kernel bin file and the sysroot directory
> that extracted using your image=92s rootfs file.  So you can try from com=
mand
> line to see whether you can bring up qemu with the kernel bin file and
> sysroot directory, if so, eclipse should be able to, if not, then there=
=92s
> an issue on eclipse side.  If you can=92t bring up via command line, then
> there must be some setup/build issue on your end.****
>
> ** **
>
> Thanks,****
>
> Jessica****
>
> ** **
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Matthias Van Gestel
> *Sent:* Tuesday, July 16, 2013 7:24 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] SDK generation****
>
> ** **
>
> Hi I'm having some trouble generating a Qt(4) SDK that I can use on a hos=
t
> system. We generate our own image edna-image-minimal:****
>
> ** **
>
> PR=3D"2"****
>
> ####################################################################****
>
> # Copied from meta/recipes-core/images/core-image-minibal.bb****
>
> ####################################################################****
>
> DESCRIPTION =3D "A small image just capable of allowing a device to boot.=
"**
> **
>
> ** **
>
> IMAGE_INSTALL =3D "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}
> ${CORE_IMAGE_EXTRA_INSTALL}"****
>
> ** **
>
> IMAGE_LINGUAS =3D " "****
>
> ** **
>
> LICENSE =3D "MIT"****
>
> ** **
>
> inherit core-image****
>
> ** **
>
> # remove not needed ipkg informations****
>
> ROOTFS_POSTPROCESS_COMMAND +=3D "remove_packaging_data_files ; "****
>
> ####################################################################****
>
> # Copied from meta/recipes-graphics/images/core-image-x11.bb****
>
> ####################################################################****
>
> IMAGE_FEATURES +=3D "splash package-management x11-base xserver-xf86-conf=
ig"
> ****
>
> ####################################################################****
>
> # IMAGE_INSTALL +=3D "qtbase qtbase-tools qtbase-plugins" ****
>
> # qtbase-tools qtbase-plugins"****
>
> ** **
>
> IMAGE_FEATURES +=3D "qt4-pkgs"****
>
> IMAGE_INSTALL +=3D "mini-x-session"****
>
> TOOLCHAIN_HOST_TASK +=3D "nativesdk-qemu"
> ----------------------------------------------------------------------***=
*
>
> Now when I try to generate a SDK with the following command:
> MACHINE=3D"qemuarm" bitbake edna-image-minimal -c populate_sdk****
>
> The SDK script gets generated, I execute it and it extracts itself.****
>
> ** **
>
> Now I'd like to know where I can find the native tools to cross compile m=
y
> application, I have no qmake or cross-gcc.****
>
> ** **
>
> Another issue is about the eclipse adt plugin, I installed the plugin
> configured the sysroot path and the cross compiler path (it uses scripts
> from /opt/poky/1.4.1) and then in the Qemu part I picked the kernel
> generated in the build/tmp/deploy/images, but then it complains about a
> pseudo and asks about qemu-extract-sdk. So to cut the story short I'm stu=
ck
> at generating a decent cross sdk.****
>
> (I used the official
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#confi=
guring-the-eclipse-ide-juno
>  guide).****
>
> ** **
>
> How do I proceed, or are there other ways I can do to get a decent SDK
> working?****
>
> ** **
>
> ** **
>

--001a1133c690eef92d04e1ce71ab
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif">Well obviously=
 I&#39;ve found an other way, I&#39;ve bitbaked meta-toolchain-qt setup QtC=
reator using these 2 links:=A0<a href=3D"http://labs.isee.biz/index.php/How=
_to_install_Qt_Creator">http://labs.isee.biz/index.php/How_to_install_Qt_Cr=
eator</a>=A0+=A0<a href=3D"https://community.freescale.com/thread/309578">h=
ttps://community.freescale.com/thread/309578</a>. Before I startup Qtcreato=
r I source the enviroment like found in link 1 but I had to comment out &qu=
ot;PYTHONHOME&quot; and had to use python from my host machine (Ubuntu 13.0=
4). I&#39;ve also had to add:</font><div>
<font face=3D"arial, helvetica, sans-serif"><br></font><p class=3D"" style=
=3D"margin-bottom:0pt;margin-top:0pt"><font face=3D"arial, helvetica, sans-=
serif">IMAGE_FEATURES=A0+=3D=A0&quot;debug-tweaks=A0ssh-server-openssh&quot=
;</font></p><p class=3D"" style=3D"margin-bottom:0pt;margin-top:0pt">
<font face=3D"arial, helvetica, sans-serif">IMAGE_INSTALL=A0+=3D=A0&quot;gd=
bserver=A0openssh-sftp-server&quot;</font></p><p class=3D"" style=3D"margin=
-bottom:0pt;margin-top:0pt"><font face=3D"arial, helvetica, sans-serif"><br=
></font></p>
<p class=3D"" style=3D"margin-bottom:0pt;margin-top:0pt"><font face=3D"aria=
l, helvetica, sans-serif">To enable the remote debugging capabilities of Qt=
Creator for the target (look at Tools -&gt; Options -&gt; Devices).</font><=
/p>
<p class=3D"" style=3D"margin-bottom:0pt;margin-top:0pt"><font face=3D"aria=
l, helvetica, sans-serif"><br></font></p><p class=3D"" style=3D"margin-bott=
om:0pt;margin-top:0pt"><font face=3D"arial, helvetica, sans-serif">PS. This=
 is meant for future reference for other people, though I have to thank you=
 for willing to help me out.</font></p>
<p class=3D"" style=3D"margin-bottom:0pt;margin-top:0pt"><font face=3D"aria=
l, helvetica, sans-serif"><br></font></p><p class=3D"" style=3D"margin-bott=
om:0pt;margin-top:0pt"><font face=3D"arial, helvetica, sans-serif">Thanks,<=
/font></p>
<p class=3D"" style=3D"margin-bottom:0pt;margin-top:0pt"><font face=3D"aria=
l, helvetica, sans-serif">Matthias Van Gestel</font></p></div></div><div cl=
ass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2013/7/18 Zhang, Jes=
sica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" targe=
t=3D"_blank">jessica.zhang@intel.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Matthias,<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">As to the native cross to=
ols, assuming you install your toolchain under /opt/poky/1.4.1, after sourc=
ing the environment-setup file, and look into the file for
 CC variable, for example for my case is i586-poky-linux-gcc and it=92s und=
er /opt/poky/1.4.1/sysroot/i686-pokysdk-linux/usr/bin/i586-poky-linux direc=
tory.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">For eclipse, it depends o=
n what is your toolchain and sysroot setup, it=92ll source the environment-=
setup file under toolchain directory, then bring up qemu in
 nfs mode base on your kernel bin file and the sysroot directory that extra=
cted using your image=92s rootfs file.=A0 So you can try from command line =
to see whether you can bring up qemu with the kernel bin file and sysroot d=
irectory, if so, eclipse should be able
 to, if not, then there=92s an issue on eclipse side.=A0 If you can=92t bri=
ng up via command line, then there must be some setup/build issue on your e=
nd.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Matthias Van Gestel<br>
<b>Sent:</b> Tuesday, July 16, 2013 7:24 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] SDK generation<u></u><u></u></span></p><div><div cl=
ass=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi I&#39;m having some trouble generating a Qt(4) SD=
K that I can use on a host system. We generate our own image edna-image-min=
imal:<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">PR=3D&quot;2&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"># Copied from meta/recipes-core/images/<a href=3D"ht=
tp://core-image-minibal.bb" target=3D"_blank">core-image-minibal.bb</a><u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;A small image just capable of =
allowing a device to boot.&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${ROO=
TFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}&quot;<u></u><u></u></p=
>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_LINGUAS =3D &quot; &quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">LICENSE =3D &quot;MIT&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">inherit core-image<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"># remove not needed ipkg informations<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal">ROOTFS_POSTPROCESS_COMMAND +=3D &quot;remove_packagi=
ng_data_files ; &quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"># Copied from meta/recipes-graphics/images/<a href=
=3D"http://core-image-x11.bb" target=3D"_blank">core-image-x11.bb</a><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_FEATURES +=3D &quot;splash package-management =
x11-base xserver-xf86-config&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"># IMAGE_INSTALL +=3D &quot;qtbase qtbase-tools qtbas=
e-plugins&quot;=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"># qtbase-tools qtbase-plugins&quot;<u></u><u></u></p=
>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_FEATURES +=3D &quot;qt4-pkgs&quot;<u></u><u></=
u></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_INSTALL +=3D &quot;mini-x-session&quot;<u></u>=
<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TOOLCHAIN_HOST_TASK +=3D &quot;nativesdk-qemu&quot;<=
br>
----------------------------------------------------------------------<u></=
u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">Now when I try to generate a SDK with the following =
command: MACHINE=3D&quot;qemuarm&quot; bitbake edna-image-minimal -c popula=
te_sdk<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The SDK script gets generated, I execute it and it e=
xtracts itself.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Now I&#39;d like to know where I can find the native=
 tools to cross compile my application, I have no qmake or cross-gcc.<u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Another issue is about the eclipse adt plugin, I ins=
talled the plugin configured the sysroot path and the cross compiler path (=
it uses scripts from /opt/poky/1.4.1) and then in the Qemu part I picked th=
e kernel generated in the build/tmp/deploy/images,
 but then it complains about a pseudo and asks about qemu-extract-sdk. So t=
o cut the story short I&#39;m stuck at generating a decent cross sdk.<u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">(I used the official=A0<span style=3D"color:blue"><a=
 href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.htm=
l#configuring-the-eclipse-ide-juno" target=3D"_blank">http://www.yoctoproje=
ct.org/docs/current/dev-manual/dev-manual.html#configuring-the-eclipse-ide-=
juno</a>=A0</span><span style>guide).</span><u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">How do I proceed, or are there other ways I can do t=
o get a decent SDK working?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--001a1133c690eef92d04e1ce71ab--
