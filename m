Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D7DCE00283
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:44:10 -0700 (PDT)
Received: by lagz14 with SMTP id z14so374286lag.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:44:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=3GluWQO9vqbTyn+fzPEpFDHqNfj34chmDNafmmdxcB4=;
	b=bDGAVFstZFbcsB+dPu1u6iSijhO2+5DssbXsLDfFQDLLcZ+15SFGikQMPBFpwiZOQ4
	umHLDSUoO+CcNebzXDVfzw5tc5lGjC34oj6VDgf47PMJDd9mps3N9MBQ80A5j+T5g+vT
	ly+Q2Q4rAlcz2RwMtGlWHiAEpge6ZKlxJGeRigyo1Z665b/Yia9ClowyGSue8dmCYSAq
	vx+UHo/cvRlEfWMNoZM7n2kzQxZwRdYHF/R9nqkjtniwct64N3Gz0tMYyTFfYRkBmoFW
	SA9VuI29o0aN1uDoX1AwUSG/ylZqNDcXOpVN8MW+U86bMQfRBeIj9xLNcIirXpgdbA87
	z5pA==
Received: by 10.112.102.8 with SMTP id fk8mr11009170lbb.71.1343205849009; Wed,
	25 Jul 2012 01:44:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 01:43:47 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 10:43:47 +0200
Message-ID: <CANsUPaM2Vc4MsrjfXy4sgsM=5i3-UFpg=T3sdG43rP_cKQ-HbQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnFP4bVxu2yMjdszxbHIwXTZ8wbCw5EYUIJi7+75oAPS1FleidTViboMyAXj3OhzpVkp2eQ
Subject: Yocto .sdcard file missing after build
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
X-List-Received-Date: Wed, 25 Jul 2012 08:44:10 -0000
Content-Type: multipart/alternative; boundary=f46d0401730b7d8f1d04c5a37b8b

--f46d0401730b7d8f1d04c5a37b8b
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I built some images using the latest Yocto release (with Hob) on a Ubuntu
10.04 32 bit, but when the process finishes (with success) I can't find
.sdcard files into "*tmp/deploy/images*" folder.
Some time ago I built some other images using a Ubuntu 11.04 32 bit and
.sdcard files were created properly.
Could it be a problem of max file size in Ubuntu 10.04?
Another question...sdcard files that I built using Ubuntu 11.04 (32 bit)
were about 3 GByte, is there a way or configuration to reduce this size?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--f46d0401730b7d8f1d04c5a37b8b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I built some images using the latest Yocto release (=
with Hob) on a Ubuntu 10.04 32 bit, but when the process finishes (with suc=
cess) I can&#39;t find .sdcard files into &quot;<i>tmp/deploy/images</i>&qu=
ot; folder.</div>

<div>Some time ago I built some other images using=A0a Ubuntu 11.04 32 bit =
and .sdcard files were created properly.</div><div>Could it be a problem of=
 max file size in Ubuntu 10.04?</div><div>Another question...sdcard files t=
hat I built using=A0Ubuntu 11.04 (32 bit) were about 3 GByte, is there a wa=
y or configuration to reduce this size?</div>

<div><br></div><div>Thanks</div><div><br></div><div>Giovanni<br clear=3D"al=
l">
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
</div>

--f46d0401730b7d8f1d04c5a37b8b--
