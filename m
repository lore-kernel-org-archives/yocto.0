Subject: grubenv not being generated
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Capitola, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Oct 2020 15:33:44 -0700
Message-ID: <iBrw.1603838024536007513.6YEJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Yi9BWeYBElahnTXpiQb7"

--Yi9BWeYBElahnTXpiQb7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:

I am using grub as my bootloader, and enabling it via

EFI_PROVIDER =3D "grub-efi"

That all seems to work fine, except that grubenv is not being created anyw=
here.=C2=A0 I can run grub-editenv to create one on the target, but I need =
it built in.

Most of what I'm reading implies that it should be getting built.=C2=A0 I =
will say this, however, and that is that grub.cfg does not seem to referenc=
e the grubenv file which kind of makes sense since grubenv is not present.

I did find this thread, but it didn't really have any answers.
https://lists.yoctoproject.org/g/yocto/message/40612?p=3D,,,20,0,0,0::Crea=
ted,,grubenv,20,2,0,61333830

Wondering what I am missing.

Many Thanks
Howard

--Yi9BWeYBElahnTXpiQb7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:<br /><br />I am using grub as my bootloader, and enabling it via&nbsp;<=
br /><br />EFI_PROVIDER =3D "grub-efi"<br /><br />That all seems to work fi=
ne, except that grubenv is not being created anywhere.&nbsp; I can run grub=
-editenv to create one on the target, but I need it built in. <br /><br />M=
ost of what I'm reading implies that it should be getting built.&nbsp; I wi=
ll say this, however, and that is that grub.cfg does not seem to reference =
the grubenv file which kind of makes sense since grubenv is not present. <b=
r /><br />I did find this thread, but it didn't really have any answers.<br=
 /><a href=3D"https://lists.yoctoproject.org/g/yocto/message/40612?p=3D,,,2=
0,0,0,0::Created,,grubenv,20,2,0,61333830" target=3D"_blank" rel=3D"noopene=
r">https://lists.yoctoproject.org/g/yocto/message/40612?p=3D,,,20,0,0,0::Cr=
eated,,grubenv,20,2,0,61333830</a><br /><br />Wondering what I am missing.<=
br /><br />Many Thanks<br />Howard

--Yi9BWeYBElahnTXpiQb7--
