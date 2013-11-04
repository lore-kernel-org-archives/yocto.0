Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6F07E016DC
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:06:46 -0800 (PST)
Received: by mail-pb0-f47.google.com with SMTP id rq13so3340541pbb.34
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 10:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2nyQjSSSov10C3zvh5K4A+HEGA5FA9mX9VYLi19lP1k=;
	b=jM/9CL7+bKd+aFWnVhlKtmbpxbnYx+TYAAmKSZO6cc7pSsmMdQH+4zOav2utayGW94
	/sr8LNQzKk1Qnh+jI7ggdp49LnvcIiAxRLsfvrTxtqHxmlz+oR/DZy8xRsZXS8SUsDyF
	r4zgtgA68b87Zi6/JvOuxOY/UcEblPuCnxdGr0QX+NraIIxbaR5e0UjgrrwhQ5wIH6SB
	gTR9gZ9ZvH1VGFaaGaNt8D5b4H22W3r9chPsckfzKKAzXsz8oZBZ7AR6dKJSfiPvxWdq
	eC4sb0Rcgfdhe4QjmdXbPh2rUE8F55UH1XeIIvH7umP4SrseMqQgP6M+cYBywL8zA8LW
	MEnA==
MIME-Version: 1.0
X-Received: by 10.68.166.3 with SMTP id zc3mr18943857pbb.95.1383588012364;
	Mon, 04 Nov 2013 10:00:12 -0800 (PST)
Received: by 10.68.104.133 with HTTP; Mon, 4 Nov 2013 10:00:12 -0800 (PST)
Date: Mon, 4 Nov 2013 20:00:12 +0200
Message-ID: <CABwVrCoiyqVQKThmFJ8FDkwD3E7SWZy5Xx+GSHdZzZ3dCTQ3gQ@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: External toolchain busybox error
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
X-List-Received-Date: Mon, 04 Nov 2013 18:06:48 -0000
Content-Type: multipart/alternative; boundary=047d7bacb704fe258d04ea5daf03

--047d7bacb704fe258d04ea5daf03
Content-Type: text/plain; charset=ISO-8859-1

Hello guys,

I imported an external toolchain into yocto using meta-sourcery layer.
It build fine some userspace recipes and also the kernel but I git some
errors on busybox.

For the busybox the error is:
mips64-nlm-linux-ld
--sysroot=/home/alexandru/Downloads/yocto/poky/buildKernel/tmp/sysroots/xlpev
-m elf64btsmipn64  -r -o applets/built-in.o applets/applets.o
| mips64-nlm-linux-ld: unrecognised emulation mode: elf64btsmipn64
| Supported emulations: elf32btsmipn32 elf32ltsmipn32 elf32btsmip
elf32ltsmip elf64btsmip elf64btsmip_sym32 elf64ltsmip elf64ltsmip_sym32

Does this mean that the emulator is notr supported into yocto?
Is there a way to enable support for it?

It worked to call: mips64-nlm-linux-ld
--sysroot=/home/alexandru/Downloads/yocto/poky/buildKernel/tmp/sysroots/xlpev
-m elf64btsmip  -r -o applets/built-in.o applets/applets.o

which implies defining the emulator as being elf64btsmip but I am trying to
avoid it because it can imply multiple changes to recipes.

Also one assumption I have is maybe the binutils update can solve this
problem, but I do not think that "elf64btsmipn64" is standard.

Sorry for the wall of text.


Thanks for your help,
Alex

--047d7bacb704fe258d04ea5daf03
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hello guys,<br><br></di=
v>I imported an external toolchain into yocto using meta-sourcery layer.<br=
></div>It build fine some userspace recipes and also the kernel but I git s=
ome errors on busybox.<br>
<br></div>For the busybox the error is:<br>mips64-nlm-linux-ld --sysroot=3D=
/home/alexandru/Downloads/yocto/poky/buildKernel/tmp/sysroots/xlpev=A0 -m e=
lf64btsmipn64=A0 -r -o applets/built-in.o applets/applets.o<br>| mips64-nlm=
-linux-ld: unrecognised emulation mode: elf64btsmipn64<br>
| Supported emulations: elf32btsmipn32 elf32ltsmipn32 elf32btsmip elf32ltsm=
ip elf64btsmip elf64btsmip_sym32 elf64ltsmip elf64ltsmip_sym32 <br><br></di=
v>Does this mean that the emulator is notr supported into yocto?<br></div>
Is there a way to enable support for it?<br><br></div>It worked to call: mi=
ps64-nlm-linux-ld --sysroot=3D/home/alexandru/Downloads/yocto/poky/buildKer=
nel/tmp/sysroots/xlpev=A0 -m elf64btsmip=A0 -r -o applets/built-in.o applet=
s/applets.o<br>
<br></div><div>which implies defining the emulator as being elf64btsmip but=
 I am trying to avoid it because it can imply multiple changes to recipes.<=
br><br></div><div>Also one assumption I have is maybe the binutils update c=
an solve this problem, but I do not think that &quot;elf64btsmipn64&quot; i=
s standard.<br>
<br></div><div>Sorry for the wall of text.<br><br><br></div><div>Thanks for=
 your help,<br>Alex<br></div><div><div><div><div><div><div><br></div></div>=
</div></div></div></div></div>

--047d7bacb704fe258d04ea5daf03--
