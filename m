Return-Path: <enrico.bonomi92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75448E00CBC; Wed,  9 May 2018 01:31:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (enrico.bonomi92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA421E009AC
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 01:31:06 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id e12-v6so41730461iob.8
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 01:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+iZwbC7uB+uRaBcrfxYo5fCc+jAHr/4DH4MS6mcGbk0=;
	b=mQpLn1bwi40eUzqc9jI2bORtBJPrSqSn63F8Pebew7oJrN/E3DcUFzS9Rwe4OyRhR2
	zLmT1/N1xQr2odg//Ly5jxozxFkDrgVaQxxue89BGZ7IJ62AG46zWBKNjl5boKV593K4
	qV5B7lerUs9Y/JIf3Kn4q+juTgUKV5bK08ZD8wyvguijS6ATuvwUy69T7n2iUHEldpQ2
	TxOFWi36AYjTRraQR+Q7ZGfyWodCnQ0lV2VdJy1AE1qhL9Al/4bRN6yWhOcsT2HPvlX6
	TQ5J1RiTtVHYRnVdGJlKAT/PTpgMy4TYPgsewzb1hX4SJNrPIwCjc118XfnqgVbeGRGt
	AwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+iZwbC7uB+uRaBcrfxYo5fCc+jAHr/4DH4MS6mcGbk0=;
	b=cbJUH2KT14t48Ug6xD4wdcCIEdAyc1VBrHb47s81nOA+Km9hf574cmhdAlAdUbnbuX
	bPFb1S61XzMeeUkDB52WTa7Hi6NIVYYeqjssiuuQ4GknprF5mBOxvw8Z2R+5miWKTdJ5
	5522vqmGH9fz9++FoWcyzM9zyGZ5qeIPrRXI8Av5DLndJ/Zq1Kyc8MfMaOsG5WbLQSZf
	lJYR4ZJiOE9P4UC12lbBkbGZFnKuWhfLJeqCMGvzE/K95+KsiikXqQEvtLvJ0BHl3k+W
	WzKFk9mDSMtVRhKHqmUh2Tn2iFPaA3xxwBuE/RAixfe9Nm+B63eZml74vtdnkB0liy5v
	38zw==
X-Gm-Message-State: ALQs6tDYmDwsvx30n8P0KmceDm5QLlMEwNA55/Qts2ICjA2B0WURiu7U
	+FIZ0CJxb8WOHi5MCODmu1kaxQcEn7OkAfxNwEMgng==
X-Google-Smtp-Source: AB8JxZpid3qiBvpllk3LajzH1+m+DMzR+Tl6SOZaezr9BT81vnQ8eT++nFJyGhmNJtuIKeuOeSgKzVFOcMOxwK0E9Ac=
X-Received: by 2002:a6b:1456:: with SMTP id
	83-v6mr46689661iou.218.1525854665619; 
	Wed, 09 May 2018 01:31:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.4.206 with HTTP; Wed, 9 May 2018 01:31:04 -0700 (PDT)
From: Enrico Bonomi <enrico.bonomi92@gmail.com>
Date: Wed, 9 May 2018 10:31:04 +0200
Message-ID: <CALmqtKYKV1WBH8yO2mOkLVGzPOX4amGt_DthGSF8FwT=HkEBbA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: System recovery
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
X-List-Received-Date: Wed, 09 May 2018 08:31:07 -0000
Content-Type: multipart/alternative; boundary="00000000000052bb6c056bc1b9f6"

--00000000000052bb6c056bc1b9f6
Content-Type: text/plain; charset="UTF-8"

Hi,

I work with Yocto Poky 1.7.3 on an imx6 dual lite SOM. I recently came
across a problem with a preexisting system. Infact in a couple of cases,
after about one year of work with no problems, file system results
corrupted and the machine can't work. So i decide to implement a recovery
system that can intervene in theese cases. An sd card is mounted on my
board, so i think that i can use it to act this process. Using gparted i
create a partition on sd card that can store my recovery file system.
This partition starts at block 1581056 (so 0x00182000), every block has a
size of 512 bytes and the file system size is 370262016 bytes (so
0x1611c000) that are 723168 blocks (so 0x000b08e0).
In the u-boot i do the following instructions:

nand erase.part rootfs
ubi part rootfs
ubi create rootfs
mmc dev 0
mmc read 12000000 0x00182000  0x000b08e0
ubi write 12000000 rootfs 0x1611c000
ubifsmount ubi0:rootfs

and this instruction results in the following errors:

UBIFS error (pid 0): ubifs_read_node: bad node type (0 but expected 6)
UBIFS error (pid 0): ubifs_read_node: bad node at LEB 0:0
UBIFS error (pid 0): ubifs_mount: Error reading superblock on volume
'ubi0:rootfs' errno=-22!

ubifsmount - mount UBIFS volume

Usage:
ubifsmount <volume-name>
   - mount 'volume-name' volume

the strange thing is that when i first program all new devices i use the
following instruction:

tftpboot prall

and prall is the compiled of a txt file which, when programming file system
use the same instructions, obviously except for

tftp 12000000 rootfs.ubifs

instead of my mmc instructions, and

ubi write 12000000 rootfs ${filesize}

but from what i understand the "filesize" variable is set from the tftp
instruction

Where do i fail?

Thanks

Enrico

--00000000000052bb6c056bc1b9f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I work with Yocto Poky 1.7.3 =
on an imx6 dual lite SOM. I recently came across a problem with a preexisti=
ng system. Infact in a couple of cases, after about one year of work with n=
o problems, file system results corrupted and the machine can&#39;t work. S=
o i decide to implement a recovery system that can intervene in theese case=
s. An sd card is mounted on my board, so i think that i can use it to act t=
his process. Using gparted i create a partition on sd card that can store m=
y recovery file system.=C2=A0</div><div>This partition starts at block 1581=
056 (so 0x00182000), every block has a size of 512 bytes and the file syste=
m size is 370262016 bytes (so 0x1611c000) that are 723168 blocks (so 0x000b=
08e0).</div><div>In the u-boot i do the following instructions:</div><div><=
br></div><div>nand erase.part rootfs<br></div><div><div>ubi part rootfs</di=
v><div>ubi create rootfs</div></div><div>mmc dev 0</div><div>mmc read 12000=
000 0x00182000=C2=A0

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">0x000b08e0</span>

</div><div>ubi write 12000000 rootfs

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">0x1611c000</span>

<br></div><div>ubifsmount ubi0:rootfs<br></div><div><br></div><div>and this=
 instruction results in the following errors:</div><div><br></div><div>

<span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:=
13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">UBIFS err=
or (pid 0): ubifs_read_node: bad node type (0 but expected 6)</span><br sty=
le=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;=
text-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-fami=
ly:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:left;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline">UBIFS error (pid 0): ubifs_read_node: bad node at LEB=
 0:0</span><br style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;f=
ont-size:13px;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:left;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorat=
ion-style:initial;text-decoration-color:initial"><span style=3D"color:rgb(3=
8,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline">UBIFS error (pid 0): ubifs_mount: E=
rror reading superblock on volume &#39;ubi0:rootfs&#39; errno=3D-22!</span>=
<br style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13=
px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;text-decoration-style:i=
nitial;text-decoration-color:initial"><br style=3D"color:rgb(38,50,56);font=
-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:left;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration-style:initial;text-decoration-color:initial"=
><span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size=
:13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">ubifsmou=
nt - mount UBIFS volume</span><br style=3D"color:rgb(38,50,56);font-family:=
Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;text-decoration-style:initial;text-decoration-color:initial"><br sty=
le=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;=
text-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-fami=
ly:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:left;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline">Usage:</span><br style=3D"color:rgb(38,50,56);font-fa=
mily:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:left;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration-style:initial;text-decoration-color:initial"><s=
pan style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13=
px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline">ubifsmount =
&lt;volume-name&gt;</span><br style=3D"color:rgb(38,50,56);font-family:Robo=
to,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;text-decoration-style:initial;text-decoration-color:initial"><span style=
=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0- mount=
 &#39;volume-name&#39; volume</span>

<br></div><div><br></div><div>the strange thing is that when i first progra=
m all new devices i use the following instruction:</div><div><br></div><div=
>tftpboot prall</div><div><br></div><div>and prall is the compiled of a txt=
 file which, when programming file system use the same instructions, obviou=
sly=C2=A0except for=C2=A0</div><div><br></div><div>tftp 12000000 rootfs.ubi=
fs</div><div><br></div><div>instead of my mmc instructions, and</div><div><=
br></div><div>

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">ubi write 12000000 rootfs ${filesize}</span><br><=
/div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline"><br></span></div><div><span style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;float:none;display=
:inline">but from what i understand the &quot;filesize&quot; variable is se=
t from the tftp instruction</span></div><div><br></div><div>Where do i fail=
?=C2=A0</div><div><br></div><div>Thanks=C2=A0</div><div><br></div><div>Enri=
co</div></div>

--00000000000052bb6c056bc1b9f6--
