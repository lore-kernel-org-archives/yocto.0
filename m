Return-Path: <munoz0raul@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E06FE006B4
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 05:48:19 -0800 (PST)
Received: by mail-ie0-f172.google.com with SMTP id c13so891598ieb.3
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 05:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=B1T4nbZKaJgUAgyAuPp5i6hhCG1jZdUnxEDOzFH2i0o=;
	b=z+Z2+v//cEWDLxCnY5fxoRPpmT3xMa4d+JhJFVL0ePo1KJkn+ymTLcQqTazEqdcwW+
	AKhYaCeguprl/GSOgjynUZqcWBi6Z7gCRK4rkWLBVF3RqVAJjaE/8vZGfHNTqL529mbn
	QWpf2wQcB/wfBz11/L+yY9Pg8MsVtWCaVUBGx24HdnP0YljCkao+8iKymSaLqMOqdGBs
	oDPM33FiTXmNBqoE4e0ycV+/sDH42VlegvTm6K7inftrut+tlYxSmqyLJekzTcAGN6CW
	cCokba5OyxfPddA5UqQWqQWemj/yIYP1Hl4i2Vx7mOQ+X8VtoK8Bdyv+0t3Pn5IUi1CI
	THow==
MIME-Version: 1.0
Received: by 10.42.74.73 with SMTP id v9mr1977652icj.37.1355838498688; Tue, 18
	Dec 2012 05:48:18 -0800 (PST)
Received: by 10.64.147.40 with HTTP; Tue, 18 Dec 2012 05:48:18 -0800 (PST)
Date: Tue, 18 Dec 2012 11:48:18 -0200
Message-ID: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to use JRE (Java Runtime) in Yocto Projects
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
X-List-Received-Date: Tue, 18 Dec 2012 13:48:19 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e8490164e2804d120c011

--90e6ba6e8490164e2804d120c011
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello all,

I'm using yocto project to create a linux for a IMX28.

I currently insert these layers:

poky/meta
poky/meta-yocto
meta-fsl-arm
meta-openembedded/meta-oe

I want to use JRE (Java Runtime) like openJDK, and I saw that have some
existing layers that provide this features.

Specifically:

meta-java
meta-oracle-java

What is the easy way to use JAVA with yocto?

Thans for all help.

--=20
*Raul Rosetto Mu=F1oz*

--90e6ba6e8490164e2804d120c011
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><div><div>Hello all,</div><div><br></div><div>I&#39;m using yocto proj=
ect to create a linux for a IMX28.</div><div><br></div><div>I currently ins=
ert these layers:</div><div><br></div><div>poky/meta</div><div>poky/meta-yo=
cto</div>
<div>meta-fsl-arm</div><div>meta-openembedded/meta-oe</div><div><br></div><=
div>I want to use JRE (Java Runtime) like openJDK, and I saw that have some=
 existing layers that provide this features.</div><div><br></div><div>Speci=
fically:</div>
<div><br></div><div>meta-java</div><div>meta-oracle-java</div><div><br></di=
v><div>What is the easy way to use JAVA with yocto?</div><div><br></div><di=
v>Thans for all help.</div></div><div><br></div>-- <br><b>Raul Rosetto Mu=
=F1oz</b><br>

</div>

--90e6ba6e8490164e2804d120c011--
