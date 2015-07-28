Return-Path: <vandegriftlorin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5406E00A70; Tue, 28 Jul 2015 13:15:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vandegriftlorin[at]gmail.com)
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
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0A6E00A4C
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 13:15:03 -0700 (PDT)
Received: by wibud3 with SMTP id ud3so174732225wib.0
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 13:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ujXI72RgzNgVK3ib22ggsrQ+8XU8Qv0FdfRmXhQKYnI=;
	b=nR/VfEk8nc8AD7e6dVauz1KcA7pgplQ/v8obqWoVirfmvb2Ldji8W5Wq7ephvajmzy
	+29sNyiBqozgfWxcUFVP0yeUbbTxN0KsMNWOnWhgS3kPSTsGGABqDw4/FFpRS93Y1CFo
	2zS8J8ZcE0GhW6SVxoh6Zl0l702vVKGn1/MaStk3RscwDasoCJOmlkk2ChSax/wW3TTu
	57dKpL/rtYKXwTWypJR4EtS+PvtBNWkwzICfRjC90TGE9tVWg+BGP4aifuW+lXHJqm7Q
	RfhoSR7kLCJzyme7ONfaqrjW2kLwoQ5VVpog/tfv2KjwQ9c3O5eMmq6ToJBWfmddHskl
	92iQ==
MIME-Version: 1.0
X-Received: by 10.180.24.40 with SMTP id r8mr10608433wif.13.1438114502978;
	Tue, 28 Jul 2015 13:15:02 -0700 (PDT)
Received: by 10.27.46.17 with HTTP; Tue, 28 Jul 2015 13:15:02 -0700 (PDT)
Date: Tue, 28 Jul 2015 13:15:02 -0700
Message-ID: <CAOzegEM__yVwfp77TTQykv2N_et7MjKx+OJhQQ6q8v6Fc_0hAw@mail.gmail.com>
From: Lorin Vandegrift <vandegriftlorin@gmail.com>
To: yocto@yoctoproject.org
Subject: GRUB Problem Changing Timeout in CFG file
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
X-List-Received-Date: Tue, 28 Jul 2015 20:15:06 -0000
Content-Type: multipart/alternative; boundary=f46d043c805a18afc7051bf52098

--f46d043c805a18afc7051bf52098
Content-Type: text/plain; charset=UTF-8

Hi all,

What is the best way to set the timeout for the GRUB boot menu through
yocto? I know if you add the line 'set timeout="0"
to /yocto/poky/meta/recipes-bsp/grub/files/cfg, it will set the timeout to
zero, but how do you do that without modifying the meta layer? I want to do
the same thing but within my own layer. I have tried make a .bbappend file
to /meta/recipes-bsp/grub/grub-efi_2.00.bb to replace the SRC_URI with our
own modified "cfg" file, but no luck.

We are also using unetbootin to install the image onto the usb disk for
installation. Does this overwrite any grub configurations?

Thanks!

--f46d043c805a18afc7051bf52098
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>What is the best way to set the=
 timeout for the GRUB boot menu through yocto? I know if you add the line &=
#39;set timeout=3D&quot;0&quot; to=C2=A0/yocto/poky/meta/recipes-bsp/grub/f=
iles/cfg, it will set the timeout to zero, but how do you do that without m=
odifying the meta layer? I want to do the same thing but within my own laye=
r. I have tried make a .bbappend file to /meta/recipes-bsp/grub/<a href=3D"=
http://grub-efi_2.00.bb">grub-efi_2.00.bb</a> to replace the SRC_URI with o=
ur own modified &quot;cfg&quot; file, but no luck.</div><div><br></div><div=
>We are also using unetbootin to install the image onto the usb disk for in=
stallation. Does this overwrite any grub configurations?</div><div><br></di=
v><div>Thanks!</div></div>

--f46d043c805a18afc7051bf52098--
