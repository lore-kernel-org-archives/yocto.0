Return-Path: <jjosburn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9F6FE00C4E; Sat,  5 Aug 2017 16:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jjosburn[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0469]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CFBE00C46
	for <yocto@yoctoproject.org>; Sat,  5 Aug 2017 16:06:55 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id e124so41148103oig.2
	for <yocto@yoctoproject.org>; Sat, 05 Aug 2017 16:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=PbBG7qbCoAELO1pYWIZUB0DyFc6VAe05P7ckMCGAKew=;
	b=IX8kJHF0ChFvNccL1WBI2F1aFaPJEZkc0LNjY1B4hhFtk+3VIvA1xuVocSgyNzovGa
	T/3t+2I+KZNfJrqALCJA3i9egAporSPZQrQgZWnyUqwLK5lMf21J//EJZxNnSXw/Va1Q
	DbjVbhj7m76DbAIPbvw32WqGMh/JpIGlc9IXD0IU8U02S5wTkfQcVRPQaaN0jwnm5h4K
	jL2SoTFYzyJPZEmd3WxezfwbAQcfFyHiYAidIY5jCAAf6whPUSjeUmBM9LAQ+MavhmUc
	AnxiQLefZHGHFP9aBs27Rn1mQoS72FuG5J1EBl2QKQDiODlehGjoHkVtLJekciuuw1De
	GE+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=PbBG7qbCoAELO1pYWIZUB0DyFc6VAe05P7ckMCGAKew=;
	b=F9CxP2YDUHEkJSFxO5KtCtwuTYNZ3ISEfcEisKV0jzWbDsE7ff/8Rg575w6EEw38H0
	vla4eTPyXHiKpWspxMZHCqwNFbJiy4NDHvdHVXQ60/k2jvsl2sU064W6X/av/s9czmoM
	bG5vhgE083EkV7rLpFXKjW0vFoWcFvFmmCfc2XbQAZoh8JmQDabbZphetTyE1F3eiP4z
	rV6KwDyZVouf0kdlPb2fiTYyK/l4jrs8XPSSGZSmm9V+bjJ5UwxLS/YEQrkcqWeidRtB
	wTqWv7ATLv4Ydp4g4FarLiNq3dx16C3CweRoVExmMerBlRyMuSfizdM0trM0HfGivzT0
	iINA==
X-Gm-Message-State: AHYfb5hp0NFhV4iatAYiLXak66tcnU886+bw1bNbw7rEb76Y3HUX6Bhn
	swlx+sJp+TqC4VqeXrzYBfbTjJRnABG/
X-Received: by 10.202.208.206 with SMTP id j75mr4190768oiy.61.1501974414306;
	Sat, 05 Aug 2017 16:06:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.97.7 with HTTP; Sat, 5 Aug 2017 16:06:53 -0700 (PDT)
From: "blackthirt33n ." <jjosburn@gmail.com>
Date: Sat, 5 Aug 2017 18:06:53 -0500
Message-ID: <CA+z1-f9MmfRbnc-5zcXtEjjYhLGf6-ENW6nqAgOh46hvxLc44w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: how do you create a non-read only root file system when making a iso based project
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
X-List-Received-Date: Sat, 05 Aug 2017 23:06:55 -0000
Content-Type: multipart/alternative; boundary="001a113c31cc6d3463055609abf1"

--001a113c31cc6d3463055609abf1
Content-Type: text/plain; charset="UTF-8"

how do you create a non-read only root files system when make an iso based
project.
I had created an iso image by doing the following

bitbake core-image-minimal
wic create directdisk -e core-image-minimal
this created an iso that did boot using qemu

qemu-system-x86_64 -boot d -cdrom ./core-image-minimal-genericx86-64.iso -m
512

But, the root file system was read-only.
What steps would I need to take to make root filesystem that can be
written to?

James

--001a113c31cc6d3463055609abf1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">how do you create a non-read only root files system when m=
ake an iso based project.<div>I had created an iso image by doing the follo=
wing</div><div><span style=3D"background-color:transparent;font-family:SFMo=
no-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,Courier,monospace;col=
or:rgb(36,41,46)"><br></span></div><div><span style=3D"background-color:tra=
nsparent;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Me=
nlo,Courier,monospace;color:rgb(36,41,46)">bitbake core-image-minimal</span=
></div><div><span style=3D"background-color:transparent;font-family:SFMono-=
Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,Courier,monospace;color:=
rgb(36,41,46)">wic create directdisk -e core-image-minimal</span></div><div=
><span style=3D"background-color:transparent;font-family:SFMono-Regular,Con=
solas,&quot;Liberation Mono&quot;,Menlo,Courier,monospace;color:rgb(36,41,4=
6)">this created an iso that did boot using qemu</span></div><div><span sty=
le=3D"background-color:transparent;font-family:SFMono-Regular,Consolas,&quo=
t;Liberation Mono&quot;,Menlo,Courier,monospace;color:rgb(36,41,46)"><br></=
span></div><div><span style=3D"background-color:transparent"><font color=3D=
"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier=
, monospace">qemu-system-x86_64 -boot d -cdrom ./core-image-minimal-generic=
x86-64.iso -m 512</font><br></span></div><div><span style=3D"background-col=
or:transparent"><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, L=
iberation Mono, Menlo, Courier, monospace"><br></font></span></div><div><sp=
an style=3D"background-color:transparent"><font color=3D"#24292e" face=3D"S=
FMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace">But, t=
he root file system was read-only.</font></span></div><div><font color=3D"#=
24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, =
monospace">What steps would I need to take to make root filesystem that can=
 be<br>written to?</font></div><div><font color=3D"#24292e" face=3D"SFMono-=
Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><br></font><=
/div><div><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberat=
ion Mono, Menlo, Courier, monospace">James=C2=A0</font></div></div>

--001a113c31cc6d3463055609abf1--
