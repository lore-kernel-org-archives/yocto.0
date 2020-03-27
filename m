Subject: Re: Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Mar 2020 02:26:56 -0700
References: <CANNYZj9JKutRV2p93WD2p6i31M-jeUJubAaVc7ggms8e_jDpeA@mail.gmail.com>
In-Reply-To: <CANNYZj9JKutRV2p93WD2p6i31M-jeUJubAaVc7ggms8e_jDpeA@mail.gmail.com>
Message-ID: <17939.1585301216508919705@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N536TZewn1aE7E8V4fgm"

--N536TZewn1aE7E8V4fgm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using deb as my package class. What I am gathering from that run-posti=
nsts directory is that there is a systemd service that starts and executes =
the run-postinsts script.
That script looks for a directory /etc/deb-postinsts and executes all scri=
pts in there. Does that mean, that the mechanism used in the end is the pos=
t-install scripts of deb packages?
So basically the pkg_postinst_ontarget_${PN} function adds a postinstall s=
cript to the .deb package of the recipe it is in, correct?
That should mean that I can expect to see a script in /etc/deb-postinsts t=
hat contains my commands. I will verify that right away.

If these assumptions are correct, you have already greatly improved my und=
erstanding of this process. Thank you for that.

Stefan

--N536TZewn1aE7E8V4fgm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using deb as my package class. What I am gathering from that run-posti=
nsts directory is that there is a systemd service that starts and executes =
the run-postinsts script.<br />That script looks for a directory /etc/deb-p=
ostinsts and executes all scripts in there. Does that mean, that the mechan=
ism used in the end is the post-install scripts of deb packages?<br />So ba=
sically the <em>pkg_postinst_ontarget_${PN}</em> function adds a postinstal=
l script to the .deb package of the recipe it is in, correct?<br />That sho=
uld mean that I can expect to see a script in /etc/deb-postinsts that conta=
ins my commands. I will verify that right away.<br /><br />If these assumpt=
ions are correct, you have already greatly improved my understanding of thi=
s process. Thank you for that.<br /><br />Stefan

--N536TZewn1aE7E8V4fgm--
