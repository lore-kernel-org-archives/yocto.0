Subject: Re: openssh_8.0p1 on zeus - sshd.service not starting #yocto
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jul 2020 08:53:18 -0700
References: <CAGAf8LwLB2zD8CHRTA3FxptWa94BDrN3AAO2XbGUQ+EOotZK1Q@mail.gmail.com>
In-Reply-To: <CAGAf8LwLB2zD8CHRTA3FxptWa94BDrN3AAO2XbGUQ+EOotZK1Q@mail.gmail.com>
Message-ID: <13583.1594914798470723766@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YhE1Dd4HXMWeeu9DsQhQ"

--YhE1Dd4HXMWeeu9DsQhQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Zoran,

I started the service and then ran journalctl -u sshd.service -r -n 10

This is what I see:

sshd.service Failed with result 'timeout'
sshd.service: start operation timed out. Terminating.

But if I run the /usr/sbin/sshd -f /etc/ssh/sshd_config, it starts fine.

Thanks,
-=3DSrijan Nandi

--YhE1Dd4HXMWeeu9DsQhQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Zoran,<br /><br />I started the service and then ran&nbsp;<span style=
=
=3D"white-space: pre-wrap;">journalctl -u sshd.service -r -n 10<br /><br /=
>This is what I see:<br /><br /></span>sshd.service Failed with result 'tim=
eout' <br />sshd.service: start operation timed out. Terminating.<br /><br =
/><span style=3D"white-space: pre-wrap;">But if I run the /usr/sbin/sshd -f=
 /etc/ssh/sshd_config, it starts fine.<br /><br />Thanks,<br />-=3DSrijan N=
andi</span>

--YhE1Dd4HXMWeeu9DsQhQ--
