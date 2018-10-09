Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31F7DE00971; Tue,  9 Oct 2018 14:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2A4CE00950
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2018 14:40:27 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id d4-v6so2430755lfa.3
	for <yocto@yoctoproject.org>; Tue, 09 Oct 2018 14:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3jST/LLxunGViFcCfSvo7aeLvE7hLyhDCmAPRrdfam0=;
	b=mo3OJx4uj4hmD2VnvR0zgISxT0CnpUrTzQNOgn8WvaTn1DOboqoyS2J29jtdsanVjo
	kGZR7uBt+eWc2pU/dvvvNeGdF+Sd/lb5R682cK3BMx//y+NuDOoYki6hZ2V15LAEDbZs
	g6GbTsS+YoZdnuGwagTJfYNqGzwhoVA4KRZpKvmWUdN/Nxxatw221qxxf9aM3EpbkNka
	N681A+pCpakusNOG5eTFQq2jLX0/IX51CLXQ1cV726KgXgi1lIGvbdm4knIVSuPiSYmf
	kFhsP6yaK0uMwD773odBuQfODCxyo+TiDP24rTv9c/z+aqFqzKFrsRD3h3NJKWkBFGOn
	VrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3jST/LLxunGViFcCfSvo7aeLvE7hLyhDCmAPRrdfam0=;
	b=obSVen+gdGeLFHeXStBTyDI70VjrbMB+dtGoQPuiEwQ02rXaIb5qmGY/NKdfmAHr3U
	YQZz1G4FGCozeZam7vXWNNS8OjNazzcUhPlZ8W1qIbehcNk+/R7c24jmgpb2VlozDO0x
	NsrG2q3lRvWxc5q/zeduc4i6oYY726NwFiaY7lMCQqbjmLoiPEuVbFJfZZWvSHFdeCgw
	3fQMazBeHhmDUni4ddgeGwddgq6xPa7+SEvT4d+ccDc678yMtboGtxKpv9oibgogcfbB
	/ZaEoMvqtc4nWN5DQLMhmcz1wAxjOEG31c00K881bH5V3SneUOEghSyaxKke/8KCophn
	Dg9Q==
X-Gm-Message-State: ABuFfohXvffJUHrTNdlpUshAGgzHGBPNP+vzziTQBcwhfhhK/fVBNdN7
	Ee40MnWW+o6k3im9y5CKAL+mNWCjiQqdM0heiavZkQ==
X-Google-Smtp-Source: ACcGV60wDkEr+lvaGaffkcRIpvC3WA7vBBEdqR7S8Hplf8lEekJRGjchDL3Owfh/N7Xw9nLjxo0yPkU4sHkCvsgGHtQ=
X-Received: by 2002:a19:eadb:: with SMTP id
	y88-v6mr16097982lfi.1.1539121225814; 
	Tue, 09 Oct 2018 14:40:25 -0700 (PDT)
MIME-Version: 1.0
From: A <aaron.biver@gmail.com>
Date: Tue, 9 Oct 2018 17:40:15 -0400
Message-ID: <CAMd7AX9wj=Xtbw2jQTzGOH0e3h0BBX7rCK4A+U9o8CwkDdi1Bw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 10 Oct 2018 01:48:05 -0700
Subject: Installing linux image with two separate flash partitions
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
X-List-Received-Date: Tue, 09 Oct 2018 21:40:28 -0000
Content-Type: multipart/alternative; boundary="000000000000ee5c2c0577d29558"

--000000000000ee5c2c0577d29558
Content-Type: text/plain; charset="UTF-8"

I'm currently using petalinux to build a image.ub that works fine for me so
far (petalinux hides many things from me, but is bitbake under the hood).

However, this image will get stored into a flash device which I intend to
configure with three partitions
1) uboot
2) linux
3) an extra jffs2 with data and executables from my linux recipes

I currently build this third partition manually with mkfs.jffs2, after my
bitbake recipe has completed.
However, since the openembedded framework is pretty nifty and extensible,
I'd like to be able to have this in a recipe.

So far, I've thought to store the things for partition #3 in a STAGING_*
area, and create a new recipe that will DEPEND on those other recipes.  The
new recipe will do a mkfs.jffs2 command in its do_compile().  Then I would
find that jffs file in the build subdirectories somewhere, and assemble it
into the larger image for insertion into the flash device.

However, a) I'm not sure if this is the best way do do this, and b) I have
a "DEPEND" statement, but the "do_stage()" function of the dependency still
doesn't appear to have been invoked.

All advice welcome.

-Aaron

--000000000000ee5c2c0577d29558
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>I&#39;m currently using petalinux to b=
uild a image.ub that works fine for me so far (petalinux hides many things =
from me, but is bitbake under the hood).</div><div><br></div><div>However, =
this image will get stored into a flash device which I intend to configure =
with three partitions</div><div>1) uboot</div><div>2) linux=C2=A0</div><div=
>3) an extra jffs2 with data and executables from my linux recipes=C2=A0</d=
iv><div><br></div><div>I currently build this third partition manually with=
 mkfs.jffs2, after my bitbake recipe has completed.=C2=A0=C2=A0</div><div>H=
owever, since the openembedded framework is pretty nifty and extensible, I&=
#39;d like to be able to have this in a recipe.</div><div><br></div><div>So=
 far, I&#39;ve thought to store the things for partition #3 in a STAGING_* =
area, and create a new recipe that will DEPEND on those other recipes.=C2=
=A0 The new recipe will do a mkfs.jffs2 command in its do_compile().=C2=A0 =
Then I would find that jffs file in the build subdirectories somewhere, and=
 assemble it into the larger image for insertion into the flash device.</di=
v><div><br></div><div>However, a) I&#39;m not sure if this is the best way =
do do this, and b) I have a &quot;DEPEND&quot; statement, but the &quot;do_=
stage()&quot; function of the dependency still doesn&#39;t appear to have b=
een invoked.</div><div><br></div><div>All advice welcome.</div><div><br></d=
iv><div>-Aaron</div><div><br></div><div>=C2=A0</div></div>

--000000000000ee5c2c0577d29558--
