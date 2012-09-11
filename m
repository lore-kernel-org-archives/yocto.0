Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D76E01370
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 05:55:55 -0700 (PDT)
Received: by lagr15 with SMTP id r15so315415lag.35
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 05:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KDrIOwA9JZUt/cOsB09tBfRoVvoVs40fxsVtG7ra1aw=;
	b=vqpiJ8BqzT1zenSFTDSOcCkY9saDpIvWnkX87Cqh1MXXMsbOP23j3IbvhUGCQ4r6bZ
	X4oZ9syJCa1zHs43bKMQVDoGVK+BEhyX7EB/sfzWqfi9IuGK4XM8BmI2fbAbpp9kPDGS
	0AkESKuqdsytRfjVP1DcpEMbhz2DBkzIqTYByyU++BIKlxs3XChsXLdTvTGn756lt8KI
	Zzel3C5LVLciE9xVL8LD82KSxen+lCxjCSmN2gjWFayxetkcwHnPpZU5y5sgLkyDeHRf
	LspECFBosdkLZxmK4vJkzV60eXalt3pEDmJO5UoBW6j3rRVqk61BGiNI09e8LlBqU9wT
	HAiw==
MIME-Version: 1.0
Received: by 10.112.27.232 with SMTP id w8mr6200027lbg.77.1347368152455; Tue,
	11 Sep 2012 05:55:52 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Tue, 11 Sep 2012 05:55:52 -0700 (PDT)
Date: Tue, 11 Sep 2012 09:55:52 -0300
Message-ID: <CANmViric_L-9eh-VLbC63RqH-2nU0VwRr+546MmtDh1QKOmL4Q@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: meta-fsl-arm@googlegroups.com, yocto@yoctoproject.org
Subject: imx28 u-boot without NAND command
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
X-List-Received-Date: Tue, 11 Sep 2012 12:55:56 -0000
Content-Type: multipart/alternative; boundary=bcaec554deda1bda8004c96c98d6

--bcaec554deda1bda8004c96c98d6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello All,

I need to use the command NAND in  the imx28 u-boot.

I did a patch that put the line "#define COMFIG_CMD_NAND" in the
"/include/configs/mx28evk.h" file, and if I look at
"/tmp/work/imx28evk-poky-linux-gnueabi/u-boot-v2012.04.01-r3/git/include/co=
nfigs/mx28evk.h"
I can see that the patch was sucessful.

My problem is that when I stop u-boot, u-boot tell me that nand command
don't exist.

Some one can help me to insert nand comand in u-boot?

Thanks For All Help.

--=20
*Raul Rosetto Mu=F1oz*

--bcaec554deda1bda8004c96c98d6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><div>Hello All,</div><div><br></div><div>I need to use the command NAN=
D in =A0the imx28 u-boot.</div><div><br></div><div>I did a patch that put t=
he line &quot;#define COMFIG_CMD_NAND&quot; in the &quot;/include/configs/m=
x28evk.h&quot; file, and if I look at &quot;/tmp/work/imx28evk-poky-linux-g=
nueabi/u-boot-v2012.04.01-r3/git/include/configs/mx28evk.h&quot; I can see =
that the patch was sucessful.</div>
<div><br></div><div>My problem is that when I stop u-boot, u-boot tell me t=
hat nand command don&#39;t exist.</div><div><br></div><div>Some one can hel=
p me to insert nand comand in u-boot?</div><div><br></div><div>Thanks For A=
ll Help.</div>
<div><br></div>-- <br><b>Raul Rosetto Mu=F1oz</b><br>
</div>

--bcaec554deda1bda8004c96c98d6--
