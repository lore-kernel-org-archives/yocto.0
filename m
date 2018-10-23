Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 645EBE00901; Tue, 23 Oct 2018 06:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2950CE008D7
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 06:58:10 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id g9-v6so1835818wrq.4
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 06:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=i//IZCxRiyeKJroYvRXC7xG1mDJ9YC6XvVq6hBJ11sk=;
	b=KxYYZLfXow0BdzRrW+2zg/cRYOb34SBmNVfex3WOBjxbHdfJZygCvGiPXRDqsr2Bhl
	7jFYrhfk1LmufGZmrHDCH/EgySgRRAQUh+qkbkOurcc8ItUmitePWbkgzNJfsrSMgTAL
	xh+AJKEdRglGspVdr2zgnNWoT1xjGiQsuovr77mTQt1tQp1cksVW1h5we12ddE+C3Iit
	hYYvj/8wn9zmb1RR6a6nHN1t7N5IJ3HN295aacVJGScmCpTL9vaBq/PyVZO2w3oShRXC
	gBdDN2gfOLH3vvAQEZpWFuXXsbRTYoWOZ2x9UcNP0W4Agn/1gkk0iMZ0/1WIymmF9iNC
	/8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=i//IZCxRiyeKJroYvRXC7xG1mDJ9YC6XvVq6hBJ11sk=;
	b=PpY4XIDyhMyhljJLd8JhudPGfn7VusN73FHe4TUIagBuB/VPDvXM+KZF2RTFYffWVq
	JmNDGgkakvtk7InUfHZQIHgL2vxaxyQV6GYPQMm3oOPiJGEi9SIH8e62h3aiCD3MG3AO
	wqyKVaW5Wf6t5zd8AJYKGM+xdkt762Tu4mwcnnOM3qEQYhvkMh2RWsc7zoKA9zAhaVyW
	y7irAPP9wNqJklVpL/uzTrqeuEzsZzVJ0j4HzkTXJZxlae/F2BUXujvsLYkVHFjZfVSL
	x6JYBvW6ZrZpoavogEe8NjRmRccYArzrz4hcJqE/7tFnHCzoYYRVZ+sn4tMDPyS5CJv7
	Xhgw==
X-Gm-Message-State: AGRZ1gIpT1prml0ZIop0eUkQDzz4WcDTN8we4B0eO0rjcBk0nLdfCis4
	1pjIS2EgYYL09OuZ0VVppv4mqxbJwGsycaniCk4AGRFZ
X-Google-Smtp-Source: AJdET5cjXWwGCQB9Cl03EDqanaG6GbyAYtAnmT8Eq2W3ei4dSM9vRoDv2pxIbnvanABIyN53QEeitqtdlWCjB986dyk=
X-Received: by 2002:a5d:6b4f:: with SMTP id
	x15-v6mr21560623wrw.304.1540303089488; 
	Tue, 23 Oct 2018 06:58:09 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Tue, 23 Oct 2018 15:57:57 +0200
Message-ID: <CAKPYHZ5J=dnpZeBEkped2r+3xo3UzdwF-HRf8PbsAPM_qqRdxw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: ARM Cross Compiler SDK Toolchain
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
X-List-Received-Date: Tue, 23 Oct 2018 13:58:12 -0000
Content-Type: multipart/alternative; boundary="0000000000007ed9ad0578e5c252"

--0000000000007ed9ad0578e5c252
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yocto,

I am running Yocto 2.5 (Poky Sumo) on the host system CentOS 7.1 to build
images for the target system ARM cortexa8 with a Target_FPU configured to
hard.

I would like to use a Cross Compiler SDK Toolchain in order to build the
images, as the current toolchain fails with a few recipes during
compilation due to missing include files.

I tried building the toolchain using "bitbake meta-toolchain", but
unfortunately that failed as well at do_generate_content_debug. But also,
as far as I understand this command builds the SDK with compilers for the
host system and not for the target system.

I would like to use a pre-built SDK, if one is available for ARM cortex A8
architecture. I have looked all around and haven't found one.

Could some Yocto Experts point me in the right direction? How can go about
finding a Cross Compiler Toolchain in order to overcome the compilation
errors.

Thanks in advance for your help.
Regards,

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush

--0000000000007ed9ad0578e5c252
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif">Hi Yocto,</div><div class=3D"gmail_default" style=3D"font-family:geo=
rgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:geo=
rgia,serif">I am running Yocto 2.5 (Poky Sumo) on the host system CentOS 7.=
1 to build images for the target system ARM cortexa8 with a Target_FPU conf=
igured to hard.=C2=A0</div><div class=3D"gmail_default" style=3D"font-famil=
y:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:georgia,serif">I would like to use a Cross Compiler SDK Toolchain in orde=
r to build the images, as the current toolchain fails with a few recipes du=
ring compilation due to missing include files.</div><div class=3D"gmail_def=
ault" style=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:georgia,serif">I tried building the toolchain us=
ing &quot;bitbake meta-toolchain&quot;, but unfortunately that failed as we=
ll at do_generate_content_debug. But also, as far as I understand this comm=
and builds the SDK with compilers for the host system and not for the targe=
t system.</div><div class=3D"gmail_default" style=3D"font-family:georgia,se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:georgia,se=
rif">I would like to use a pre-built SDK, if one is available for ARM corte=
x A8 architecture. I have looked all around and haven&#39;t found one.</div=
><div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div=
><div class=3D"gmail_default" style=3D"font-family:georgia,serif">Could som=
e Yocto Experts point me=C2=A0in the right direction? How can go about find=
ing a Cross Compiler Toolchain in order to overcome the compilation errors.=
</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif">Than=
ks in advance for your help.=C2=A0</div><div class=3D"gmail_default" style=
=3D"font-family:georgia,serif">Regards,=C2=A0</div><div class=3D"gmail_defa=
ult" style=3D"font-family:georgia,serif"><br></div><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"georgia, serif" color=3D"#=
666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</font><=
div><font face=3D"georgia, serif" color=3D"#666666">Dhanush=C2=A0<br></font=
></div></div></div></div></div></div></div>

--0000000000007ed9ad0578e5c252--
