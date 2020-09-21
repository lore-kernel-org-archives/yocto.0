Subject: Re: #yocto systemd not able to start sshd after a reboot
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Sep 2020 05:17:53 -0700
References: <CAGAf8LyoLx45em3it8yAaB7WqDJWZLuBBXvLFLvWRLD-4cFeaw@mail.gmail.com>
In-Reply-To: <CAGAf8LyoLx45em3it8yAaB7WqDJWZLuBBXvLFLvWRLD-4cFeaw@mail.gmail.com>
Message-ID: <13648.1600690673184412823@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ReTOgBZVwl2IVzRtsEqM"

--ReTOgBZVwl2IVzRtsEqM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Seems that some leftovers from System V still reside in YOCTO...
> Correct???
>=20

Not sure about that.

The problem I faced was because there was a sshd.socket that had the follo=
wing line in it. The sshd.socket comes with openssh.

Conflicts=3Dsshd.service

So I had two options. either to add the ExecStartPre=C2=A0in the sshd.serv=
ice file or to remove the Conflicts line in sshd.socket.

I choose to remove the Conflicts line and add the following in the sshd.so=
cket file.

After=3Dnetwork.target
Before=3Dsshd.service

Thanks and Regards,
-=3DSrijan Nandi

--ReTOgBZVwl2IVzRtsEqM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><em><span style=3D"font-weight: bold;">Seems that some leftover=
s from System V still reside in YOCTO... Correct???<br /></span></em></bloc=
kquote>
<p>Not sure about that.&nbsp;<br /><br />The problem I faced was because t=
here was a sshd.socket that had the following line in it. The sshd.socket c=
omes with openssh.&nbsp;<br /><br />Conflicts=3Dsshd.service<br /><br />So =
I had two options. either to add the ExecStartPre&nbsp;in the sshd.service =
file or to remove the Conflicts line in sshd.socket.&nbsp;</p>
<p>I choose to remove the Conflicts line and add the following in the sshd=
.socket file.<br /><br />After=3Dnetwork.target<br />Before=3Dsshd.service<=
br /><br />Thanks and Regards,<br />-=3DSrijan Nandi</p>

--ReTOgBZVwl2IVzRtsEqM--
