Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E8AE00AD5; Mon, 11 Mar 2019 12:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8538EE009A4
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 12:31:34 -0700 (PDT)
Received: by mail-it1-f177.google.com with SMTP id k193so537246ita.3
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 12:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=j+rJ0K8RTti3WFtWKdt5ixEGEPmR+spG9JWFnhBxcUg=;
	b=XAhX4/eKr7QfRraGUV/N5RxlGgNrc+4D2/4tIdKTz6WO9jsuYwzCEEQ+F1cGdwKPko
	TPfm/GoTb5R5o6C8H8F0tpn1V4S1RiQslPRSH4l53bx+Cz0uxcV/JVEhN52MCRs+Ry+s
	IpMq3ujJEq518p/1VSc1cmR5iWrRQv+rwe0Wq9naOczjMCgPtQSIZGJCRhnJ3mtk8KqE
	R8IWw2bFgsZqkSL33EYLQWNo3l7mtYf21TxFS6SMl5AFSUwLkgbLV7atyh+xsjJJChcD
	HtutiJ1BNNWTZhIN8ehr/cjEW/WXTUFE01ZbSAq3AKsugAWVbphgpnicWPr7fHnq+N0h
	rxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=j+rJ0K8RTti3WFtWKdt5ixEGEPmR+spG9JWFnhBxcUg=;
	b=SgvDjMc17g/wtjRp/kjHn23J2b4kfoar//lf7YtjwK4UrUYjVcgpX3iMz2Ng7NOn+w
	26hpe+UxIcn9+HEw6jD4V0W8zn4SGcA8PYhHtVkBJT3mKsT1YCypV2MI2XtWnIslx36R
	l7V4/tdqFczUP+sm5f3D3MxdgsbxsdKcJFsq50INhKF1TTTCaJLhhXWorEB2nwFl3Gi/
	T5KiNBIeyMhTCSF2ifumfOUkxIDfODgXvNR5O2XUwe32kT69CAV6++xpdWWdn9y1d40q
	WOyqhpO04xYaVm/E/M2FlR67GZ+LoVyyopOsKJQNGHzkIMuQFxx7ZD7L0LQJua3v17VF
	cmkw==
X-Gm-Message-State: APjAAAXoTQ7tXAXZFYddrmFM8OcNnO14BrFKECiUyg6rS2UyciXswyZA
	qIXZ1islETBZJdbU2OmX8uBVExG2Es8f/zF8WK8p3QqP
X-Google-Smtp-Source: APXvYqyq4iRNbri00GEwat+DxY/sfarVVZd/kajzLyROd31iogeZJUgr6QTyofVnBZmOVjtLJho/BRyqtmAFkpwGVQ4=
X-Received: by 2002:a24:70a:: with SMTP id f10mr275201itf.56.1552332693626;
	Mon, 11 Mar 2019 12:31:33 -0700 (PDT)
MIME-Version: 1.0
From: Emily S <easmith5555@gmail.com>
Date: Mon, 11 Mar 2019 14:31:24 -0500
Message-ID: <CAAV2bM2jFrH426UPxyKTk6whFry_J0VD_E5C-Gsi-CwYDL=wHQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: devtmpfs failing to mount
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
X-List-Received-Date: Mon, 11 Mar 2019 19:31:36 -0000
Content-Type: multipart/alternative; boundary="000000000000c6e5050583d69e9b"

--000000000000c6e5050583d69e9b
Content-Type: text/plain; charset="UTF-8"

Hi all -

I'm using Yocto version rocko with a custom layer to run on the Zynq+ SoC
on a custom board. When trying to boot I'm getting the following error in
the boot output:
[    4.205861] devtmpfs: error mounting -2

dmesg | tail shows a similar result:

[    4.127997] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature
incompatibilities
[    4.183737] EXT4-fs (mmcblk0p2): recovery complete
[    4.190840] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
mode. Opts: (null)
[    4.198870] VFS: Mounted root (ext4 filesystem) on device 179:2.
[    4.205861] devtmpfs: error mounting -2

Are there common reasons for this happening I should check? I'm having
trouble isolating a cause. The only change I made was including an
additional python library in one of my recipes, which I will try rolling
back next.
Any ideas are greatly appreciated!

Thanks,
Emily

--000000000000c6e5050583d69e9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"margin:0px;padding:0px;border:0px;font-varia=
nt-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;fon=
t-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-se=
rif,serif,EmojiFont;vertical-align:baseline;color:rgb(0,0,0)">Hi all -=C2=
=A0</div><div style=3D"margin:0px;padding:0px;border:0px;font-variant-numer=
ic:inherit;font-variant-east-asian:inherit;font-stretch:inherit;font-size:1=
2pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif,seri=
f,EmojiFont;vertical-align:baseline;color:rgb(0,0,0)"><br></div><div style=
=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-var=
iant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line-height:inh=
erit;font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertica=
l-align:baseline;color:rgb(0,0,0)">I&#39;m using Yocto version rocko with a=
 custom layer to run on the Zynq+ SoC on a custom board. When trying to boo=
t I&#39;m getting the following error in the boot output:=C2=A0</div><div s=
tyle=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font=
-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line-height=
:inherit;font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;ver=
tical-align:baseline;color:rgb(0,0,0)"><span style=3D"margin:0px;padding:0p=
x;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fo=
nt-stretch:inherit;font-size:inherit;line-height:inherit;vertical-align:bas=
eline;color:inherit">[ =C2=A0 =C2=A04.205861] devtmpfs: error mounting -2</=
span><br></div><div style=3D"margin:0px;padding:0px;border:0px;font-variant=
-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;font-=
size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont;vertical-align:baseline;color:rgb(0,0,0)"><span style=3D"=
margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;f=
ont-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inher=
it;vertical-align:baseline;color:inherit"><br></span></div><div style=3D"ma=
rgin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-e=
ast-asian:inherit;font-stretch:inherit;font-size:12pt;line-height:inherit;f=
ont-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertical-alig=
n:baseline;color:rgb(0,0,0)"><span style=3D"margin:0px;padding:0px;border:0=
px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch=
:inherit;font-size:inherit;line-height:inherit;vertical-align:baseline;colo=
r:inherit">dmesg | tail shows a similar result:=C2=A0</span></div><div styl=
e=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-va=
riant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line-height:in=
herit;font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertic=
al-align:baseline;color:rgb(0,0,0)"><br></div><div style=3D"margin:0px;padd=
ing:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inh=
erit;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Ca=
libri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertical-align:baseline;co=
lor:rgb(0,0,0)">[ =C2=A0 =C2=A04.127997] EXT4-fs (mmcblk0p2): couldn&#39;t =
mount as ext3 due to feature incompatibilities=C2=A0</div><div style=3D"mar=
gin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-ea=
st-asian:inherit;font-stretch:inherit;font-size:12pt;line-height:inherit;fo=
nt-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertical-align=
:baseline;color:rgb(0,0,0)">[ =C2=A0 =C2=A04.183737] EXT4-fs (mmcblk0p2): r=
ecovery complete=C2=A0</div><div style=3D"margin:0px;padding:0px;border:0px=
;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:=
inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvet=
ica,sans-serif,serif,EmojiFont;vertical-align:baseline;color:rgb(0,0,0)">[ =
=C2=A0 =C2=A04.190840] EXT4-fs (mmcblk0p2): mounted filesystem with ordered=
 data mode. Opts: (null)=C2=A0</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-=
stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Aria=
l,Helvetica,sans-serif,serif,EmojiFont;vertical-align:baseline;color:rgb(0,=
0,0)">[ =C2=A0 =C2=A04.198870] VFS: Mounted root (ext4 filesystem) on devic=
e 179:2.=C2=A0</div><div style=3D"margin:0px;padding:0px;border:0px;font-va=
riant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;=
font-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans=
-serif,serif,EmojiFont;vertical-align:baseline;color:rgb(0,0,0)">[ =C2=A0 =
=C2=A04.205861] devtmpfs: error mounting -2<br><br></div><div style=3D"marg=
in:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-eas=
t-asian:inherit;font-stretch:inherit;font-size:12pt;line-height:inherit;fon=
t-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertical-align:=
baseline;color:rgb(0,0,0)">Are there common reasons for this happening I sh=
ould check? I&#39;m having trouble isolating a cause. The only change I mad=
e was including an additional python library in one of my recipes, which I =
will try rolling back next.=C2=A0</div><div style=3D"margin:0px;padding:0px=
;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,A=
rial,Helvetica,sans-serif,serif,EmojiFont;vertical-align:baseline;color:rgb=
(0,0,0)">Any ideas are greatly appreciated!=C2=A0</div><div style=3D"margin=
:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;font-size:12pt;line-height:inherit;font-=
family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;vertical-align:ba=
seline;color:rgb(0,0,0)"><br></div><div style=3D"margin:0px;padding:0px;bor=
der:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-s=
tretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial=
,Helvetica,sans-serif,serif,EmojiFont;vertical-align:baseline;color:rgb(0,0=
,0)">Thanks,</div><div style=3D"margin:0px;padding:0px;border:0px;font-vari=
ant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;fo=
nt-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-s=
erif,serif,EmojiFont;vertical-align:baseline;color:rgb(0,0,0)">Emily</div><=
/div>

--000000000000c6e5050583d69e9b--
