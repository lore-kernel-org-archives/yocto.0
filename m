Subject: Re: #yocto systemd not able to start sshd after a reboot
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 19 Sep 2020 06:12:30 -0700
References: <CAGAf8Ly1TKgL5JLo41Bi7MKp-TosaRCFr1NMa3DaL5HBMkX=Bg@mail.gmail.com>
In-Reply-To: <CAGAf8Ly1TKgL5JLo41Bi7MKp-TosaRCFr1NMa3DaL5HBMkX=Bg@mail.gmail.com>
Message-ID: <31646.1600521150609834192@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zpTA6z2EEQG6qalOLHVG"

--zpTA6z2EEQG6qalOLHVG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I finally got it to work!!!

There was a sshd.socket file in /lib/systemd/system which had the followin=
g line in it.

Conflicts=3Dsshd.service

I remove it and added the following two lines:

After=3Dnetwork.target
Before=3Dsshd.service

And that did the trick. Now sshd service starts on every boot.

Thanks,
-=3DSrijan Nandi

--zpTA6z2EEQG6qalOLHVG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I finally got it to work!!!<br /><br />There was a ss=
hd.socket file in /lib/systemd/system which had the following line in it.<b=
r /><br />Conflicts=3Dsshd.service<br /><br />I remove it and added the fol=
lowing two lines:<br /><br />After=3Dnetwork.target<br />Before=3Dsshd.serv=
ice<br /><br />And that did the trick. Now sshd service starts on every boo=
t.<br /><br />Thanks,<br />-=3DSrijan Nandi

--zpTA6z2EEQG6qalOLHVG--
