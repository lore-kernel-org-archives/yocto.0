Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF5834C80815
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 12:46:29 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Nov 2010 10:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,184,1288594800"; 
	d="p7s'?scan'208,217";a="347601277"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 11 Nov 2010 10:46:26 -0800
Received: from orsmsx001.amr.corp.intel.com ([10.22.226.42]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Thu, 11 Nov 2010 10:46:06 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: sachin kumar <sachinsomeone@gmail.com>
Date: Thu, 11 Nov 2010 10:46:05 -0800
Thread-Topic: [yocto] Problem in running poky-qemu
Thread-Index: AcuBvBecMHbnCoweTEmMaJHXEv4NwAAFFu8g
Message-ID: <B08D4353009C0E4FB5FE1A4D0041EBC4B20774@orsmsx001.amr.corp.intel.com>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>
	<AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>
In-Reply-To: <AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem in running poky-qemu
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
X-List-Received-Date: Thu, 11 Nov 2010 18:46:30 -0000
X-Groupsio-MsgNum: 258
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0000_01CB818D.A3E5CF70"

------=_NextPart_000_0000_01CB818D.A3E5CF70
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0001_01CB818D.A3E5CF70"

------=_NextPart_001_0001_01CB818D.A3E5CF70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Sachin,
 
under /opt/poky, can you do the following in exact sequence:
1. source environment-setup-ppc603e-poky-linux
2. poky-qemy qemuppc zImage-2.6.34.qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3
 
Thanks,
Jessica

  _____  

From: sachindhiman123@gmail.com [mailto:sachindhiman123@gmail.com] On Behalf
Of sachin kumar
Sent: Thursday, November 11, 2010 8:19 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem in running poky-qemu


Hello Jessica:

Thanks for your swift response, as per your suggestions i have downloaded
yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto website.
I have installed the same.
you can see now content of my /opt/poky folder as following

[sachin@sachinlinux yocto_tools]$ ls /opt/poky/
environment-setup-i586-poky-linux     site-config-i586-poky-linux
sysroots                 version-ppc603e-poky-linux
environment-setup-ppc603e-poky-linux  site-config-ppc603e-poky-linux
version-i586-poky-linux
[sachin@sachinlinux yocto_tools]$ 

But despite that i am getting same message

[sachin@sachinlinux yocto_tools]$ poky-qemu zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script
[sachin@sachinlinux yocto_tools]$ 


I do not which script this is referring.
Please help me.

Kind regards

Sachin 





On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica <jessica.zhang@intel.com>
wrote:


Hi Sachin,
 
First of all, if you want to run ppc, the toolchain you need to download is
yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.  After you install it
under /opt/poky, you should go under /opt/poky and source the
environment-setup-ppc* and try start qemu again...
 
Let us know if you still run into issues.
 
Thanks,
Jessica

  _____  

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of sachin kumar
Sent: Wednesday, November 10, 2010 6:09 PM
To: yocto@yoctoproject.org
Subject: [yocto] Problem in running poky-qemu


Dear All:

I am new to qemu, so please excuse me, i am asking basic question.

Actually i want to run linux image for ppc on qemu. 

My host machine is running Fedora13.

For that i have downloaded following from yocto project website.

Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2

Now toolchain was installed properly.

Now when i am running poky-qemu from command line it is giving following
message
============================================================================
=================
[root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3 
Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script

============================================================================
=================
I am blank about this message, which script they are referring.
Please help me for the same. 
This will be a great help for me as i am at critical phase of one of my
project.

Kind Regards
Sachin 








------=_NextPart_001_0001_01CB818D.A3E5CF70
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Dus-ascii" =
http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 8.00.6001.18939"></HEAD>
<BODY>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>Hi Sachin,</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>under /opt/poky, can you do the following in exact =

sequence:</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>1. source=20
environment-setup-ppc603e-poky-linux</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>2. poky-qemy qemuppc zImage-2.6.34.qemuppc-0.9.bin =

yocto-image-minimal-qemuppc-0.9.rootfs.ext3</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>Thanks,</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D906194418-11112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>Jessica</FONT></SPAN></DIV><BR>
<DIV dir=3Dltr lang=3Den-us class=3DOutlookMessageHeader align=3Dleft>
<HR tabIndex=3D-1>
<FONT size=3D2 face=3DTahoma><B>From:</B> sachindhiman123@gmail.com=20
[mailto:sachindhiman123@gmail.com] <B>On Behalf Of </B>sachin=20
kumar<BR><B>Sent:</B> Thursday, November 11, 2010 8:19 AM<BR><B>To:</B> =
Zhang,=20
Jessica<BR><B>Cc:</B> yocto@yoctoproject.org<BR><B>Subject:</B> Re: =
[yocto]=20
Problem in running poky-qemu<BR></FONT><BR></DIV>
<DIV></DIV>Hello Jessica:<BR><BR>Thanks for your swift response, as per =
your=20
suggestions i have downloaded=20
yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto=20
website.<BR>I have installed the same.<BR>you can see now content of my=20
/opt/poky folder as following<BR><BR>[sachin@sachinlinux yocto_tools]$ =
ls=20
/opt/poky/<BR>environment-setup-i586-poky-linux&nbsp;&nbsp;&nbsp;&nbsp;=20
site-config-i586-poky-linux&nbsp;&nbsp;&nbsp;&nbsp;=20
sysroots&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=20
version-ppc603e-poky-linux<BR>environment-setup-ppc603e-poky-linux&nbsp; =

site-config-ppc603e-poky-linux&nbsp;=20
version-i586-poky-linux<BR>[sachin@sachinlinux yocto_tools]$ <BR><BR>But =
despite=20
that i am getting same message<BR><BR>[sachin@sachinlinux yocto_tools]$=20
poky-qemu zImage-2.6.34-qemuppc-0.9.bin=20
yocto-image-minimal-qemuppc-0.9.rootfs.ext3<BR>Set MACHINE to =
[qemuppc-0] based=20
on kernel [zImage-2.6.34-qemuppc-0.9.bin]<BR>In order for this script to =

dynamically infer paths<BR>to kernels or filesystem images, you either=20
need<BR>bitbake in your PATH or to source poky-init-build-env<BR>before =
running=20
this script<BR>[sachin@sachinlinux yocto_tools]$ <BR><BR><BR>I do not =
which=20
script this is referring.<BR>Please help me.<BR><BR>Kind =
regards<BR><BR>Sachin=20
<BR><BR><BR><BR><BR>
<DIV class=3Dgmail_quote>On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica =
<SPAN=20
dir=3Dltr>&lt;<A=20
href=3D"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</A>&gt;</=
SPAN>=20
wrote:<BR>
<BLOCKQUOTE=20
style=3D"BORDER-LEFT: rgb(204,204,204) 1px solid; MARGIN: 0pt 0pt 0pt =
0.8ex; PADDING-LEFT: 1ex"=20
class=3Dgmail_quote>
  <DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2 =
face=3DArial>Hi=20
  Sachin,</FONT></SPAN></DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2=20
  face=3DArial></FONT></SPAN>&nbsp;</DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2 =
face=3DArial>First of=20
  all, if you want to run ppc, the toolchain you need to download is=20
  yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.&nbsp; After you =
install=20
  it under /opt/poky, you should go under /opt/poky and source the=20
  environment-setup-ppc* and try start qemu again...</FONT></SPAN></DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2=20
  face=3DArial></FONT></SPAN>&nbsp;</DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2 =
face=3DArial>Let us=20
  know if you still run into issues.</FONT></SPAN></DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2=20
  face=3DArial></FONT></SPAN>&nbsp;</DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2=20
  face=3DArial>Thanks,</FONT></SPAN></DIV>
  <DIV dir=3Dltr align=3Dleft><SPAN><FONT color=3D#0000ff size=3D2=20
  face=3DArial>Jessica</FONT></SPAN></DIV><BR>
  <DIV dir=3Dltr lang=3Den-us align=3Dleft>
  <HR>
  <FONT size=3D2 face=3DTahoma><B>From:</B> <A=20
  href=3D"mailto:yocto-bounces@yoctoproject.org"=20
  target=3D_blank>yocto-bounces@yoctoproject.org</A> [mailto:<A=20
  href=3D"mailto:yocto-bounces@yoctoproject.org"=20
  target=3D_blank>yocto-bounces@yoctoproject.org</A>] <B>On Behalf Of =
</B>sachin=20
  kumar<BR><B>Sent:</B> Wednesday, November 10, 2010 6:09 =
PM<BR><B>To:</B> <A=20
  href=3D"mailto:yocto@yoctoproject.org"=20
  target=3D_blank>yocto@yoctoproject.org</A><BR><B>Subject:</B> [yocto] =
Problem in=20
  running poky-qemu<BR></FONT><BR></DIV>
  <DIV>
  <DIV></DIV>
  <DIV class=3Dh5>
  <DIV></DIV>Dear All:<BR><BR>I am new to qemu, so please excuse me, i =
am asking=20
  basic question.<BR><BR>Actually i want to run linux image for ppc on =
qemu.=20
  <BR><BR>My host machine is running Fedora13.<BR><BR>For that i have =
downloaded=20
  following from yocto project website.<BR><BR>Disk Image:=20
  yocto-image-minimal-qemuppc-0.9.rootfs.ext3<BR>Kernel Image :=20
  zImage-2.6.34-qemuppc-0.9.bin<BR>Toolchain:=20
  yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2<BR><BR>Now toolchain =
was=20
  installed properly.<BR><BR>Now when i am running poky-qemu from =
command line=20
  it is giving following=20
  =
message<BR>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<BR>[ro=
ot@sachinlinux=20
  yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin=20
  yocto-image-minimal-qemuppc-0.9.rootfs.ext3 <BR>Set MACHINE to =
[qemuppc-0]=20
  based on kernel [zImage-2.6.34-qemuppc-0.9.bin]<BR>In order for this =
script to=20
  dynamically infer paths<BR>to kernels or filesystem images, you either =

  need<BR>bitbake in your PATH or to source =
poky-init-build-env<BR>before=20
  running this=20
  =
script<BR><BR>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<BR>=
I=20
  am blank about this message, which script they are =
referring.<BR>Please help=20
  me for the same. <BR>This will be a great help for me as i am at =
critical=20
  phase of one of my project.<BR><BR>Kind Regards<BR>Sachin=20
  =
<BR><BR><BR><BR><BR></DIV></DIV></DIV></BLOCKQUOTE></DIV><BR></BODY></HTM=
L>

------=_NextPart_001_0001_01CB818D.A3E5CF70--

------=_NextPart_000_0000_01CB818D.A3E5CF70
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEwMTExMTE4NDYwNVowIwYJKoZIhvcNAQkE
MRYEFBJBqP8wyZvQOofBMv487cqCYS/YMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEADxolU9F9FxDVI8b653+P
1F+1l7PLRI+oRnKPophVTbHtDDIbI+IsZ/2wm6iWlOz637I8KGeTXuym43tZM1Y4qAZzlNTH5FMj
7PqMyB9oPTPrgLX95PHgJazp3BWmEI/73T4cDYUoLWCzjBiv54rk7FEtzGLIl6NuptessOQKHvPN
b7R1AoWTNUKcIPgP8Rw7h9ShtC31eqlfc+ZnRkf0fnE1Mnqc5iygc46GOyOFGL5dmwM4bHgaFRBg
uEkUaBdbhaT6IngmwERCN3+bnZyzPMqTXBn0jC/Jka9plbDX+KFBqBeyric8lMbM8LETy5VtR4aB
gBpkfD8wTeX9gESPLwAAAAAAAA==

------=_NextPart_000_0000_01CB818D.A3E5CF70--
