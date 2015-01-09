Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3549EE00828; Fri,  9 Jan 2015 12:52:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A306BE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 12:52:35 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:13611
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1Y9gXj-001vGH-Py; Fri, 09 Jan 2015 20:52:30 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com>
Date: Fri, 9 Jan 2015 20:52:25 +0000
Message-Id: <A9D91BF5-E822-4E51-B5E7-61CB776F43FB@keylevel.com>
References: <CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: Atom-pc, usb installation - NO BOOTABLE DEVICE
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
X-List-Received-Date: Fri, 09 Jan 2015 20:52:41 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FB17BFA4-37DD-4CCF-BB85-0FC2EA30B75D"

--Apple-Mail=_FB17BFA4-37DD-4CCF-BB85-0FC2EA30B75D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On 9 Jan 2015, at 09:31, Simon Bolek <simon.bolek@googlemail.com> wrote:

> Hi,=20
>=20
> The following is the case:=20
> 1) atom-pc with ssd 80 GB hard drive(the only one, no optical, no usb, =
etc.) as a target device
> 2) core-image-sato bitbaked and moved to usb device successfully
> 3) usb 'install' to atom-pc successfull (so the install script says)
> 4) after removing the usb device, pressing enter the boot says NO =
BOOTABLE DEVICE

I've seen this is the past with an eSata device. Changing the BIOS =
emulation mode for the device fixed it - I can't remember exactly what I =
had to do, but I think I needed to set it to "IDE" mode to get the =
install to work (it would then boot using either mode).

> WHY?
>=20
> At the same time, ISO image (generated at the same bitbake run) is =
working in virtual box like a charm. 'Install' was successfull and =
booting fine - i get GRUB menu with one 'Linux' entry as expected.
>=20
> On the Atom-pc this is not working. So something has to be missing. =
Maybe you will have a clue.=20
> Here are the details:
> The SSD HDD is /dev/sda  with the partition table:=20
> /dev/sda1 - boot
> /dev/sda2 - rootfs
> /dev/sda3 - swap
> there is no asterix at boot partition
>=20
> under /dev/sda1/grub there is grub.cfg with:
> menuentry "Linux" {
>    set root=3D(hd0,1)
>    linux /vmlinux root=3D/dev/sda2 rw
> }
>   - so first HDD, first/boot partition=20
>   - it points to /vmlinuz and /dev/sda2  =20
> It looks fine for me.
> I already tried to dd if=3D/dev/zero of=3D/dev/sda bs=3D4M, and =
'install' from usb again, but no luck.
> I already tried to put asterix on the boot partition, but than BOOT =
gets me to grub rescue>
>=20
> If you have any ideas, where to look for, please let me know.
>=20
> thank you and best regards
> simon :-)
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_FB17BFA4-37DD-4CCF-BB85-0FC2EA30B75D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On 9 Jan 2015, at 09:31, Simon Bolek =
&lt;<a =
href=3D"mailto:simon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&=
gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr"><div>Hi, <br><br></div><div>The following =
is the case: <br></div><div>1) atom-pc with ssd 80 GB hard drive(the =
only one, no optical, no usb, etc.) as a target device<br></div><div>2) =
core-image-sato bitbaked and moved to usb device =
successfully<br></div><div>3) usb 'install' to atom-pc successfull (so =
the install script says)<br></div><div>4) after removing the usb device, =
pressing enter the boot says NO BOOTABLE =
DEVICE<br></div></div></blockquote><div><br></div><div>I've seen this is =
the past with an eSata device. Changing the BIOS emulation mode for the =
device fixed it - I can't remember exactly what I had to do, but I think =
I needed to set it to "IDE" mode to get the install to work (it would =
then boot using either mode).</div><br><blockquote type=3D"cite"><div =
dir=3D"ltr"><div>WHY?<br><br></div><div>At the same time, ISO image =
(generated at the same bitbake run) is working in virtual box like a =
charm. 'Install' was successfull and booting fine - i get GRUB menu with =
one 'Linux' entry as expected.<br><br></div><div>On the Atom-pc this is =
not working. So something has to be missing. Maybe you will have a clue. =
<br></div><div>Here are the details:<br></div><div>The SSD HDD is =
/dev/sda&nbsp; with the partition table: <br></div><div>/dev/sda1 - =
boot<br></div><div>/dev/sda2 - rootfs<br></div><div>/dev/sda3 - =
swap<br></div><div>there is no asterix at boot =
partition<br></div><div><br></div><div>under /dev/sda1/grub there is =
grub.cfg with:<br></div><div>menuentry "Linux" {<br>&nbsp;&nbsp; set =
root=3D(hd0,1)<br></div><div>&nbsp;&nbsp; linux /vmlinux root=3D/dev/sda2 =
rw<br></div><div>}<br></div><div>&nbsp; - so first HDD, first/boot =
partition <br></div><div>&nbsp; - it points to /vmlinuz and /dev/sda2 =
&nbsp; <br></div><div>It looks fine for me.<br></div><div>I already =
tried to dd if=3D/dev/zero of=3D/dev/sda bs=3D4M, and 'install' from usb =
again, but no luck.<br></div><div>I already tried to put asterix on the =
boot partition, but than BOOT gets me to <i>grub =
rescue&gt;</i><br></div><div><br>If you have any ideas, where to look =
for, please let me know.<br></div><div><br></div>thank you and best =
regards<br>simon :-)<br></div>
-- <br>_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br><div =
apple-content-edited=3D"true">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><div style=3D"color: rgb(0, 0, 0); letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
Helvetica; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: =
after-white-space;"><div>--</div><div><br></div><div>Chris =
Tapp</div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
<div>----</div><div>You can tell you're getting older when your car =
insurance gets real cheap!</div></div></span></div></div></div></div>
</div>
<br></body></html>=

--Apple-Mail=_FB17BFA4-37DD-4CCF-BB85-0FC2EA30B75D--
