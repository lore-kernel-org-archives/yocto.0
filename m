Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B4A6E01885
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 15:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=UD9t1aTsFhn3hoQ6XssYXzqCS1v/YMy1gz+nQTH/2W8=; 
	b=fVSyTq7y6FwnjJjlqHa5LCbanDEJr3c7bQffsQThOuvoq6e4vsTF8BZw6SrtR7KgFxDxw9xD8a5vNrGRtyFQFFXTwua9w2s3qz8YPf37BxlVZbxP/mZHo5WdldnuI2HtDTa1bdIAn/bPQwsKMVCYfcALPUCFx9lxBlw0k99/syk=;
Received: from [109.224.129.17] (port=31136
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1VevvT-003Vv8-SH; Fri, 08 Nov 2013 23:57:20 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJGS5=FCOtjyx8wEgLLWAFWqCTRnZsbnywYBo9WB56-XEEyQ3g@mail.gmail.com>
Date: Fri, 8 Nov 2013 23:57:18 +0000
Message-Id: <F183F0C5-9359-48EE-BDE6-6F07BEAAA122@keylevel.com>
References: <CAJGS5=FCOtjyx8wEgLLWAFWqCTRnZsbnywYBo9WB56-XEEyQ3g@mail.gmail.com>
To: Bill Martin <billmartin544@gmail.com>
X-Mailer: Apple Mail (2.1283)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: Core-image-minimal-initramfs (Second ping)
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
X-List-Received-Date: Fri, 08 Nov 2013 23:57:23 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1CA72258-22FE-494E-82C1-02C35FBBB78D"

--Apple-Mail=_1CA72258-22FE-494E-82C1-02C35FBBB78D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Bill,

On 8 Nov 2013, at 23:13, Bill Martin wrote:

> Please refer to my question in Volume 8 issue 35. I am very desperate =
in wanting to use the initramfs in m yoctobuild for an embedded x86 =
target architecture. I am using Yocto Dylan 9.0.2 for crown bay.
>=20
> The root directory for my boot is in /dev/sda1
>=20
> After normal boot, the root directory is presumably at /dev/sda. Hence =
my grub has "root (hd0,0)"
>=20
> My grub 0.97 initrd command looks good
>=20
> My dmesg spits out information and stops at the line
>=20
> XT3-fs: mounted filesystem with ordered data
>=20
>=20
> And that's where it ends up. No panic.=20
>=20
> I noticed in meta/recipes-core/images the =
core-image-minimal-initramfs.bb has its IMAGE_ROOT size set to 8192. Is =
that too small?
>=20
> I found absolutely no help in the Yocto documentation on this =
initramfs stuff.=20

There's plenty of information else where on this as it's one of the =
'standard' ways of booting. The Yocto documentation focuses more on the =
Yocto-specific issues, though there are also some really good 'getting =
started' guides which go into much more detail.

http://en.wikipedia.org/wiki/Initramfs may be a good starting point.

> I found a CONFIG_INITRAMFS_SOURCE and read that this tells the kernel =
where the initramfs is. I am not sure if I need to set it. Again, no =
Yocto documentation on how to use one of its builds!!!!!

No, there should be no need for you to set this.

> I presume my grub stage 1 and stage 2 completed and by the time my =
dmesg command dumps out messages, init is running. In fact I did see a =
familiar message that is in the init file.

Do you mean you invoked the dmesg command or were you seeing kernel boot =
messages? These will be shown before init runs.

> I googled all day on what this problem could be. Unfortunately a =
variety of different causes. I don't know where to begin.
>=20
> I did see a question in May 2012 from a guy wanting to see if Yocto =
supports INITRAMFS. The responder was referring to Grub 2.0 and said in =
the kernel command initrd=3Dconfig-image-minimal<target>.cpio.gz =
/dev/ram0

I think that should be root=3D/dev/ram0 at the end.

> Is there someone out there, especially from Yocto, who at least tested =
the capability of Core-image-minimal-initramfs? And not on the simulator =
but in a real boot?

=46rom my experience, these things are all very well tested, especially =
at release time.

How did you install the image onto your target? Did you use the .hddimg =
file or something else?

Can you connect to the console on the system (e.g. serial)? You may need =
to enable it on the kernel command line with something like console=3Dtty0=
 console=3DttyS0,115200n8

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_1CA72258-22FE-494E-82C1-02C35FBBB78D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Bill,<div><br></div><div>On 8 Nov 2013, at 23:13, Bill Martin =
wrote:</div><div><div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">Please refer to my question in Volume 8 =
issue 35. I am very desperate in wanting to use the initramfs in m =
yoctobuild for an embedded x86 target architecture. I am using Yocto =
Dylan 9.0.2 for crown bay.<div>
<br></div><div>The root directory for my boot is in =
/dev/sda1</div><div><br></div><div>After normal boot, the root directory =
is presumably at /dev/sda. Hence my grub has "root =
(hd0,0)"<br><div><br></div><div>My grub 0.97 initrd command looks =
good<br>
<div><br></div><div>My dmesg spits out information and stops at the =
line</div><div><br></div><div><span =
style=3D"font-family:arial,sans-serif;font-size:13px">XT3-fs: mounted =
filesystem with ordered data</span><br></div><div>
<span =
style=3D"font-family:arial,sans-serif;font-size:13px"><br></span></div><di=
v><span =
style=3D"font-family:arial,sans-serif;font-size:13px"><br></span></div><di=
v><font face=3D"arial, sans-serif">And that's where it ends up. No =
panic.&nbsp;</font></div>
</div><div><font face=3D"arial, sans-serif"><br></font></div><div><font =
face=3D"arial, sans-serif">I noticed in meta/recipes-core/images the <a =
href=3D"http://core-image-minimal-initramfs.bb/">core-image-minimal-initra=
mfs.bb</a> has its IMAGE_ROOT size set to 8192. Is&nbsp;that too =
small?</font></div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font =
face=3D"arial, sans-serif">I found absolutely no help in the Yocto =
documentation on this initramfs =
stuff.&nbsp;</font></div></div></div></blockquote><div><br></div><div>Ther=
e's plenty of information else where on this as it's one of the =
'standard' ways of booting. The Yocto documentation focuses more on the =
Yocto-specific issues, though there are also some really good 'getting =
started' guides which go into much more =
detail.</div><div><br></div><div><a =
href=3D"http://en.wikipedia.org/wiki/Initramfs">http://en.wikipedia.org/wi=
ki/Initramfs</a> may be a good starting point.</div><br><blockquote =
type=3D"cite"><div dir=3D"ltr"><div><div><span class=3D"Apple-style-span" =
style=3D"font-family: arial, sans-serif; ">I found a =
CONFIG_INITRAMFS_SOURCE and read that this tells the kernel where the =
initramfs is. I am not sure if I need to set it. Again, no =
Yocto&nbsp;documentation on how to use one of its =
builds!!!!!</span></div></div></div></blockquote><div><br></div><div>No, =
there should be no need for you to set this.</div><br><blockquote =
type=3D"cite"><div dir=3D"ltr"><div>
<div><span class=3D"Apple-style-span" style=3D"font-family: arial, =
sans-serif; ">I presume my grub stage 1 and stage 2 completed and by the =
time my dmesg command dumps out messages, init is&nbsp;running. In fact =
I did see a familiar message that is in the init =
file.</span></div></div></div></blockquote><div><br></div><div>Do you =
mean you invoked the dmesg command or were you seeing kernel boot =
messages? These will be shown before init runs.</div><br><blockquote =
type=3D"cite"><div dir=3D"ltr"><div>
<div><span class=3D"Apple-style-span" style=3D"font-family: arial, =
sans-serif; ">I googled all day on what this problem could be. =
Unfortunately a variety of different causes. I don't know where to =
begin.</span></div>
</div><div><font face=3D"arial, sans-serif"><br></font></div><div><font =
face=3D"arial, sans-serif">I did see a question in May 2012 from a guy =
wanting to see if Yocto supports INITRAMFS. The responder was referring =
to Grub 2.0 and said in the kernel command =
initrd=3Dconfig-image-minimal&lt;target&gt;.cpio.gz =
/dev/ram0</font></div></div></blockquote><div><br></div><div>I think =
that should be root=3D/dev/ram0 at the end.</div><br><blockquote =
type=3D"cite"><div dir=3D"ltr">
<div><span class=3D"Apple-style-span" style=3D"font-family: arial, =
sans-serif; ">Is there someone out there, especially from Yocto, who at =
least tested the capability of Core-image-minimal-initramfs? And not on =
the simulator but in a real =
boot?</span></div></div></blockquote><div><br></div><div>=46rom my =
experience, these things are all very well tested, especially at release =
time.</div><br></div><div>How did you install the image onto your =
target? Did you use the .hddimg file or something =
else?</div><div><br></div><div>Can you connect to the console on the =
system (e.g. serial)? You may need to enable it on the kernel command =
line with something like&nbsp;<span class=3D"Apple-style-span" =
style=3D"font-family: monospace; white-space: pre; ">console=3Dtty0 =
console=3DttyS0,115200n8</span></div><div><br></div><div =
apple-content-edited=3D"true">
<div>Chris Tapp</div><div><br></div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
<br class=3D"Apple-interchange-newline">
</div>
<br></div></body></html>=

--Apple-Mail=_1CA72258-22FE-494E-82C1-02C35FBBB78D--
