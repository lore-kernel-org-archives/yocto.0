Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web08.13862.1620914670566516385
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 07:04:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=dmbFXoM+;
 spf=pass (domain: gherzan.com, ip: 66.111.4.26, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id DAE275C00E4;
	Thu, 13 May 2021 10:04:29 -0400 (EDT)
Received: from imap4 ([10.202.2.54])
  by compute3.internal (MEProxy); Thu, 13 May 2021 10:04:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=hqwyveRs1RqdvMrCTfZ9/fLOLOvvMSt
	uu3OeG4YUUoY=; b=dmbFXoM+ZqNgOLoXrQHcKuUD1ySj/TRdZehJLBU5yuTF7MX
	pLxDGP48XTzKNX4BORGPJz53r4V9cPxDqqRJKtXcR7SmH/oGn7fzL9YcFtUCBYrR
	0OAs4PY97gMEoJfaCaK2JxYuPeX0kuJquUEkgvnB6STZN3iJgYVE80/H29UTvWl+
	I3PMOPc93sxmm0rRKzvabswn+At+cgmOIoT5hq8gtRq76DuauCV6ul3nd+yRV7qC
	wh/J9QUaXkAmbDXmmoisSLZs88h216+NAkqjf3gR0cKNAe8cMWzKONtunpMb6wET
	4eg81l2Nw/nWgmVTdNFqYsrMCVFLGlUa7ikNoCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=hqwyve
	Rs1RqdvMrCTfZ9/fLOLOvvMStuu3OeG4YUUoY=; b=ddeBXOp3UfDEekwJdPi2eF
	uC5kIxjDsL0w8yx4jzXfYyUNidMyXN8i8MY1H0QLrYmTvpjnqMD6mHSItKMknLs0
	omJXkjUXzW52/kOjwxQj29e8XPn4lMxrpUYWeYC6fPsSpEQH4GyD5iujuOM1DmEP
	Et024XCTBt0KvVKFA/83ZEbUBjzluiwulMmIryUkxDiB/AVKD1mp57T9/Q9+HTJj
	Hz87lc1ZvmehfWC3qiK2npcCCJfFO+liwxf9Yq6KnfhBhdpMC30XBZAvBo9C5t0L
	UzEOHjhsIGRKAkofe/sBNJoQZeSKmej8igCwbfwAvDIx6/8F2tBgwo+95DpJqBPw
	==
X-ME-Sender: <xms:7TGdYFqRcNiIuIMQ9VBUHuxV96nFHLhVkFQm7khkhwVIodunlYQZ6g>
    <xme:7TGdYHrbcp35E-Jz0h-zv0OQmY2rMAQrVj-xmRyocVSK_sRl-I0Xu_JS2guAildrO
    Lb5uyZ1kP8AmUyfzVM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdehgedgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsegrtd
    erreerreejnecuhfhrohhmpedftehnughrvghiucfihhgvrhiirghnfdcuoegrnhgurhgv
    ihesghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedvtdfgkeffueeife
    ekhfevveevhfehheejkeeuueejudefheffveehkeevgfelnecuffhomhgrihhnpeihohgt
    thhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:7TGdYCNn71LskKK42bAMQ1Vq1-8ifrsGMd0Ze9GT94edf8gUDOMjKw>
    <xmx:7TGdYA7IvxlILICLVrGp-m1_vMG23-KMQylNlQXSro93c75vFAs80w>
    <xmx:7TGdYE6GkBGB_4HY2dvO99-JvhsPAy91LwgIO2hPn401C2nz3Paonw>
    <xmx:7TGdYJVDhZDOIG7P9qvdH4QLdqQ0k0yUl07ujDG0ApRyWMylIdtkxQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4F62C160065; Thu, 13 May 2021 10:04:29 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <9134f81c-a2cb-44af-bb9a-048fe07d56bf@www.fastmail.com>
In-Reply-To: <167EA09AF0B5B758.23267@lists.yoctoproject.org>
References: <20210507100818.2819019-1-andrei@gherzan.com>
 <CAAnfSTuOwq=3edHv-7zNKeO9oCjf2VCKM3uiyAtB6KrVpnHpqQ@mail.gmail.com>
 <CAAnfSTsKteY1F4MUOuiY05_MUDhfq9=8E6Do960Je5zbEJgQeg@mail.gmail.com>
 <167EA09AF0B5B758.23267@lists.yoctoproject.org>
Date: Thu, 13 May 2021 15:04:04 +0100
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org, ross@burtonini.com
Subject: Re: [yocto] [meta-zephyr][PATCH 1/1] zephyr-qemuboot.bbclass: Fix runqemu dependency on qemu native sysroot
Content-Type: multipart/alternative;
 boundary=a4764dca297f457287652a1e87805fec

--a4764dca297f457287652a1e87805fec
Content-Type: text/plain

Hi Ross,

On Thu, 13 May 2021, at 13:37, Andrei Gherzan wrote:
> Hi,
> 
> On Thu, 13 May 2021, at 13:14, Ross Burton wrote:
> > Debugged, the patch is broken.
> > 
> > Using a little tool I have:
> > 
> > Task qemu-system-native-5.2.0-r0:do_addto_recipe_sysroot failed
> > Active tasks are:
> >  virglrenderer-native-0.9.1-r0:do_rm_work
> >  binutils-cross-arm-2.36.1-r0:do_patch
> >  qemu-system-native-5.2.0-r0:do_addto_recipe_sysroot
> >  qemu-system-native-5.2.0-r0:do_rm_work
> >  libepoxy-native-1.5.5-r0:do_rm_work
> >  gcc-source-11.1.0-11.1.0-r0:do_unpack
> > 
> > Note how qemu is simultaneously adding itself to the sysroot, whilst
> > rm_work is running and deleting the sysroot.
> > 
> > This patch isn't compatible with rm_work and should be reverted.
> > 
> 
> I'll look into it.


https://lists.yoctoproject.org/g/yocto/message/53508 should fix it.

-- 
Andrei Gherzan 
gpg: rsa4096/D4D94F67AD0E9640

--a4764dca297f457287652a1e87805fec
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi Ross,<br></d=
iv><div><br></div><div>On Thu, 13 May 2021, at 13:37, Andrei Gherzan wro=
te:<br></div><blockquote type=3D"cite" id=3D"qt" style=3D""><div>Hi,<br>=
</div><div><br></div><div>On Thu, 13 May 2021, at 13:14, Ross Burton wro=
te:<br></div><div>&gt; Debugged, the patch is broken.<br></div><div>&gt;=
&nbsp;<br></div><div>&gt; Using a little tool I have:<br></div><div>&gt;=
&nbsp;<br></div><div>&gt; Task qemu-system-native-5.2.0-r0:do_addto_reci=
pe_sysroot failed<br></div><div>&gt; Active tasks are:<br></div><div>&gt=
;&nbsp; virglrenderer-native-0.9.1-r0:do_rm_work<br></div><div>&gt;&nbsp=
; binutils-cross-arm-2.36.1-r0:do_patch<br></div><div>&gt;&nbsp; qemu-sy=
stem-native-5.2.0-r0:do_addto_recipe_sysroot<br></div><div>&gt;&nbsp; qe=
mu-system-native-5.2.0-r0:do_rm_work<br></div><div>&gt;&nbsp; libepoxy-n=
ative-1.5.5-r0:do_rm_work<br></div><div>&gt;&nbsp; gcc-source-11.1.0-11.=
1.0-r0:do_unpack<br></div><div>&gt;&nbsp;<br></div><div>&gt; Note how qe=
mu is simultaneously adding itself to the sysroot, whilst<br></div><div>=
&gt; rm_work is running and deleting the sysroot.<br></div><div>&gt;&nbs=
p;<br></div><div>&gt; This patch isn't compatible with rm_work and shoul=
d be reverted.<br></div><div>&gt;&nbsp;<br></div><div><br></div><div>I'l=
l look into it.<br></div></blockquote><div><br></div><div><br></div><div=
><a href=3D"https://lists.yoctoproject.org/g/yocto/message/53508">https:=
//lists.yoctoproject.org/g/yocto/message/53508</a> should fix it.<br></d=
iv><div><br></div><div><div id=3D"sig112942400"><div class=3D"signature"=
>--&nbsp;<br></div><div class=3D"signature">Andrei Gherzan&nbsp;<br></di=
v><div class=3D"signature">gpg: rsa4096/D4D94F67AD0E9640<br></div></div>=
</div><div><br></div></body></html>

--a4764dca297f457287652a1e87805fec--
