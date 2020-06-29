Subject: How to enable direct IO of sg driver?
To: yocto@lists.yoctoproject.org
From: zackjtl@gmail.com
X-Originating-Location: Hsinchu, TW (125.227.176.110)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 28 Jun 2020 20:15:51 -0700
Message-ID: <Bfd2.1593400551587901318.aHv4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kqrtFQY5llLc8Jadxg8C"

--kqrtFQY5llLc8Jadxg8C
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using a Yocto image (a branch of 2.0 Jethro) on my wandboard (an ev-boa=
rd of an iMX6 SoC) and I would like to write a C code to access the USB sto=
rage device via sg driver.

Since I need to access the logical blocks of the storage directly instead =
of transferring through kernel buffer, I attempted to change the */proc/scs=
i/sg/allow_dio* flag (which is on the pseudo file system) introduced by the=
 document Linux Version 3 SCSI Generic Driver ( http://sg.danny.cz/sg/s_pac=
ket.html ) , but I can't find the folder */proc/scsi/sg* in the file system=
.

I think the *sg* module has been loaded on the running system because I ca=
n operate to the USB storage with the indirect method (but that's not appro=
priate to my demand).

Is there a alternate way to enable the direct IO or could make /proc/scsi/=
sg appears?

Sincerely

--kqrtFQY5llLc8Jadxg8C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-se=
rif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear:=
 both; color: #242729;">I'm using a Yocto image (a branch of 2.0 Jethro) on=
 my wandboard (an ev-board of an iMX6 SoC) and I would like to write a C co=
de to access the USB storage device via sg driver.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Since I need to access the logical blocks of the s=
torage directly instead of transferring through kernel buffer, I attempted =
to change the&nbsp;<em style=3D"margin: 0px; padding: 0px; border: 0px; fon=
t-variant: inherit; font-weight: inherit; font-stretch: inherit; line-heigh=
t: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inh=
erit;"><strong style=3D"margin: 0px; padding: 0px; border: 0px; font-style:=
 inherit; font-variant: inherit; font-stretch: inherit; line-height: inheri=
t; font-family: inherit; vertical-align: baseline; box-sizing: inherit;">/p=
roc/scsi/sg/allow_dio</strong></em>&nbsp;flag (which is on the pseudo file =
system) introduced by the document&nbsp;<a style=3D"margin: 0px; padding: 0=
px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: i=
nherit; font-stretch: inherit; line-height: inherit; font-family: inherit; =
vertical-align: baseline; box-sizing: inherit; text-decoration-line: underl=
ine; color: #061621; cursor: pointer;" href=3D"http://sg.danny.cz/sg/s_pack=
et.html" rel=3D"nofollow noreferrer">Linux Version 3 SCSI Generic Driver</a=
>, but I can't find the folder&nbsp;<em style=3D"margin: 0px; padding: 0px;=
 border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit;"><strong style=3D"margin: 0px; padding: 0px; border:=
 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit;">/proc/scsi/sg</strong></em>&nbsp;in the file system.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">I think the&nbsp;<em style=3D"margin: 0px; padding=
: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stret=
ch: inherit; line-height: inherit; font-family: inherit; vertical-align: ba=
seline; box-sizing: inherit;"><strong style=3D"margin: 0px; padding: 0px; b=
order: 0px; font-style: inherit; font-variant: inherit; font-stretch: inher=
it; line-height: inherit; font-family: inherit; vertical-align: baseline; b=
ox-sizing: inherit;">sg</strong></em>&nbsp;module has been loaded on the ru=
nning system because I can operate to the USB storage with the indirect met=
hod (but that's not appropriate to my demand).</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; vertical-align: baseline; box-sizing: inherit; clear: b=
oth;"><span style=3D"color: #242729; font-family: Arial, Helvetica Neue, He=
lvetica, sans-serif;"><span style=3D"font-size: 15px;">Is there a alternate=
 way to enable the direct IO or could make /proc/scsi/sg appears?</span></s=
pan><br /><br /><span style=3D"color: #242729; font-family: Arial, Helvetic=
a Neue, Helvetica, sans-serif;"><span style=3D"font-size: 15px;">Sincerely<=
/span></span></p>

--kqrtFQY5llLc8Jadxg8C--
