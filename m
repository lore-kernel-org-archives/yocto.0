Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D752BE00827; Sun, 11 Jan 2015 01:38:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E75AE00521
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 01:38:38 -0800 (PST)
Received: by mail-we0-f174.google.com with SMTP id k48so14503806wev.5
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 01:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MTZc4HwzS5Iq5XHjsLoNb806w2Ed2rWw4J75OO1SW/8=;
	b=w97N/K0zLp9e0a84K0Bz+kEhO6I/kIftJhQs+6fg+6pODz+EXTFXEDlERPDCAxJnB4
	B6BDwEGmJFYHmZKlI0YZ5AEuLi30yM05tK3BNiywx5+Zf0iX/4FjMjCF5TUUW2PCTZPS
	xO09TqZy1JdMPjtQin+pXnqhGQuRoni9QD0oIVXZl44qAjLvIOA9cMMn/IFu1VPisP/o
	wjOq2aUTC6w/xeq5sG5uL3/ojTyL5+WV/jfIe0bNnXf3VyS7ew1VmMniSdxFC5uGsAmU
	Yl7/S1Y/GpmCKiWefDCzeG16yOhAixHmbiYG3fUz+p7EH1KITJIdr3XsUe1rQoeMx1re
	iwgw==
X-Received: by 10.180.102.38 with SMTP id fl6mr9610510wib.53.1420969116729;
	Sun, 11 Jan 2015 01:38:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.179.137 with HTTP; Sun, 11 Jan 2015 01:38:16 -0800 (PST)
In-Reply-To: <A9D91BF5-E822-4E51-B5E7-61CB776F43FB@keylevel.com>
References: <CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com>
	<A9D91BF5-E822-4E51-B5E7-61CB776F43FB@keylevel.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Sun, 11 Jan 2015 10:38:16 +0100
Message-ID: <CAEfap_AK96iq9RMUJDE9UOVFZkdLbaRo0m64-Wj2rif-KOUHvg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
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
X-List-Received-Date: Sun, 11 Jan 2015 09:38:55 -0000
Content-Type: multipart/alternative; boundary=f46d044480f77086ca050c5d272d

--f46d044480f77086ca050c5d272d
Content-Type: text/plain; charset=UTF-8

Chris, Thanks for your hint. In my BIOS there is no way to set such a mode.
However, all of a sudden it had started to boot ok. It was after I reseted
the /dev/sda a couple of times. It is strange and I will try it with
another hardware. I know best how that sounds, when you hear: "i really did
nothing in between", but i really did nothing. I just reseted the disk 3-4
times installing the system from usb every time after reset like this:

1) plug-in usb and choose 'boot' option (boot is automatic, so no TAB
needed at startup)
2) after system booted up, clean target disk with
dd if=/dev/zero of=/dev/sda bs=4M
3) reboot, but this time use TAB to choose 'install' option from USB
4) installing.... (in my case SSD HDD /dev/sda)

5) optional step for me: parted /dev/sda set 1 boot on - as this is not set
by install.sh script

Interesting was that, there is no need to set boot partition for ISO image
in VBox to run fine, but hey! i adjusted initrd and DONE! I can test my
image now!


thank you and best regards
simon :-)

On Fri, Jan 9, 2015 at 9:52 PM, Chris Tapp <opensource@keylevel.com> wrote:

>
> On 9 Jan 2015, at 09:31, Simon Bolek <simon.bolek@googlemail.com> wrote:
>
> Hi,
>
> The following is the case:
> 1) atom-pc with ssd 80 GB hard drive(the only one, no optical, no usb,
> etc.) as a target device
> 2) core-image-sato bitbaked and moved to usb device successfully
> 3) usb 'install' to atom-pc successfull (so the install script says)
> 4) after removing the usb device, pressing enter the boot says NO BOOTABLE
> DEVICE
>
>
> I've seen this is the past with an eSata device. Changing the BIOS
> emulation mode for the device fixed it - I can't remember exactly what I
> had to do, but I think I needed to set it to "IDE" mode to get the install
> to work (it would then boot using either mode).
>
> WHY?
>
> At the same time, ISO image (generated at the same bitbake run) is working
> in virtual box like a charm. 'Install' was successfull and booting fine - i
> get GRUB menu with one 'Linux' entry as expected.
>
> On the Atom-pc this is not working. So something has to be missing. Maybe
> you will have a clue.
> Here are the details:
> The SSD HDD is /dev/sda  with the partition table:
> /dev/sda1 - boot
> /dev/sda2 - rootfs
> /dev/sda3 - swap
> there is no asterix at boot partition
>
> under /dev/sda1/grub there is grub.cfg with:
> menuentry "Linux" {
>    set root=(hd0,1)
>    linux /vmlinux root=/dev/sda2 rw
> }
>   - so first HDD, first/boot partition
>   - it points to /vmlinuz and /dev/sda2
> It looks fine for me.
> I already tried to dd if=/dev/zero of=/dev/sda bs=4M, and 'install' from
> usb again, but no luck.
> I already tried to put asterix on the boot partition, but than BOOT gets
> me to *grub rescue>*
>
> If you have any ideas, where to look for, please let me know.
>
> thank you and best regards
> simon :-)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>
>

--f46d044480f77086ca050c5d272d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Chris, Thanks for your hint. In my BIOS there is no w=
ay to set such a mode. <br></div><div>However, all of a sudden it had start=
ed to boot ok. It was after I reseted the /dev/sda a couple of times. It is=
 strange and I will try it with another hardware. I know best how that soun=
ds, when you hear: &quot;i really did nothing in between&quot;, but i reall=
y did nothing. I just reseted the disk 3-4 times installing the system from=
 usb every time after reset like this: <br><br></div><div>1) plug-in usb an=
d choose &#39;boot&#39; option (boot is automatic, so no TAB needed at star=
tup)<br></div><div>2) after system booted up, clean target disk with <br>dd=
 if=3D/dev/zero of=3D/dev/sda bs=3D4M<br></div><div>3) reboot, but this tim=
e use TAB to choose &#39;install&#39; option from USB<br></div><div>4) inst=
alling.... (in my case SSD HDD /dev/sda)<br></div><div><br>5) optional step=
 for me: parted /dev/sda set 1 boot on - as this is not set by install.sh s=
cript<br><br></div><div>Interesting was that, there is no need to set boot =
partition for ISO image in VBox to run fine, but hey! i adjusted initrd and=
 DONE! I can test my image now!<br></div><div><br></div><div><br></div><div=
>thank you and best regards<br></div><div>simon :-)<br><br></div><div><div =
class=3D"gmail_extra"><div class=3D"gmail_quote">On Fri, Jan 9, 2015 at 9:5=
2 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keyleve=
l.com" target=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><div>=
<span class=3D""><div>On 9 Jan 2015, at 09:31, Simon Bolek &lt;<a href=3D"m=
ailto:simon.bolek@googlemail.com" target=3D"_blank">simon.bolek@googlemail.=
com</a>&gt; wrote:</div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div=
>Hi, <br><br></div><div>The following is the case: <br></div><div>1) atom-p=
c with ssd 80 GB hard drive(the only one, no optical, no usb, etc.) as a ta=
rget device<br></div><div>2) core-image-sato bitbaked and moved to usb devi=
ce successfully<br></div><div>3) usb &#39;install&#39; to atom-pc successfu=
ll (so the install script says)<br></div><div>4) after removing the usb dev=
ice, pressing enter the boot says NO BOOTABLE DEVICE<br></div></div></block=
quote><div><br></div></span><div>I&#39;ve seen this is the past with an eSa=
ta device. Changing the BIOS emulation mode for the device fixed it - I can=
&#39;t remember exactly what I had to do, but I think I needed to set it to=
 &quot;IDE&quot; mode to get the install to work (it would then boot using =
either mode).</div><br><blockquote type=3D"cite"><span class=3D""><div dir=
=3D"ltr"><div>WHY?<br><br></div><div>At the same time, ISO image (generated=
 at the same bitbake run) is working in virtual box like a charm. &#39;Inst=
all&#39; was successfull and booting fine - i get GRUB menu with one &#39;L=
inux&#39; entry as expected.<br><br></div><div>On the Atom-pc this is not w=
orking. So something has to be missing. Maybe you will have a clue. <br></d=
iv><div>Here are the details:<br></div><div>The SSD HDD is /dev/sda=C2=A0 w=
ith the partition table: <br></div><div>/dev/sda1 - boot<br></div><div>/dev=
/sda2 - rootfs<br></div><div>/dev/sda3 - swap<br></div><div>there is no ast=
erix at boot partition<br></div><div><br></div><div>under /dev/sda1/grub th=
ere is grub.cfg with:<br></div><div>menuentry &quot;Linux&quot; {<br>=C2=A0=
=C2=A0 set root=3D(hd0,1)<br></div><div>=C2=A0=C2=A0 linux /vmlinux root=3D=
/dev/sda2 rw<br></div><div>}<br></div><div>=C2=A0 - so first HDD, first/boo=
t partition <br></div><div>=C2=A0 - it points to /vmlinuz and /dev/sda2 =C2=
=A0 <br></div><div>It looks fine for me.<br></div><div>I already tried to d=
d if=3D/dev/zero of=3D/dev/sda bs=3D4M, and &#39;install&#39; from usb agai=
n, but no luck.<br></div><div>I already tried to put asterix on the boot pa=
rtition, but than BOOT gets me to <i>grub rescue&gt;</i><br></div><div><br>=
If you have any ideas, where to look for, please let me know.<br></div><div=
><br></div>thank you and best regards<br>simon :-)<br></div></span>
-- <br>_______________________________________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><=
/blockquote></div><br><div>
<div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wra=
p:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;word-wrap:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;word-wrap:break-word"><div style=3D"color:rgb(0,0,0);le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;word-wrap:break-word"><span style=3D"bord=
er-collapse:separate;color:rgb(0,0,0);font-family:Helvetica;font-style:norm=
al;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height=
:normal;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;border-spacing:0px"><div style=3D"word-wrap:break-word"><div>--</div><=
div><br></div><div>Chris Tapp</div><div><a href=3D"mailto:opensource@keylev=
el.com" target=3D"_blank">opensource@keylevel.com</a></div><div><a href=3D"=
http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a></div><div><=
br></div><div>----</div><div>You can tell you&#39;re getting older when you=
r car insurance gets real cheap!</div></div></span></div></div></div></div>
</div>
<br></div></blockquote></div><br></div></div></div>

--f46d044480f77086ca050c5d272d--
