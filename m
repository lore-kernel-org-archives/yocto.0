Subject: Re: #yocto systemd not able to start sshd after a reboot
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Sep 2020 10:09:00 -0700
References: <CAGAf8LxAjPEwNLYGdjbPDN7uCqdGfMNZH8ar6DZmshud9NH5SQ@mail.gmail.com>
In-Reply-To: <CAGAf8LxAjPEwNLYGdjbPDN7uCqdGfMNZH8ar6DZmshud9NH5SQ@mail.gmail.com>
Message-ID: <14779.1600708140146261109@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Oozywi0LkGqNytlAiPYe"

--Oozywi0LkGqNytlAiPYe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Seems strange to me too...I had been troubleshooting the sshd.service issue=
 for two days. There was no logs, nothing. I was just hitting the wall. I t=
ried a lot of combinations to get it to work but all failed.

The sshd.service was starting, if I manually did a systemctl start sshd.se=
rvice. But always failed at startup. At times it would start and then get a=
 signal 15 terminating and would close the daemon.

After not able to resolve the issue, I started checking all the other serv=
ices. Every other service was starting at bootup just fine except sshd.

Not finding anything else to troubleshoot. I happened to stumble upon the =
sshd.socket and the Conflicts part of it. Did a hit and trial and it worked=
. Technically I still am not sure as to why..

-=3DSrijan Nandi

--Oozywi0LkGqNytlAiPYe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Seems strange to me too...I had been troubleshooting the sshd.service issue=
 for two days. There was no logs, nothing. I was just hitting the wall. I t=
ried a lot of combinations to get it to work but all failed.<br /><br />The=
 sshd.service was starting, if I manually did a systemctl start sshd.servic=
e. But always failed at startup. At times it would start and then get a sig=
nal 15 terminating and would close the daemon.<br /><br />After not able to=
 resolve the issue, I started checking all the other services. Every other =
service was starting at bootup just fine except sshd.<br /><br />Not findin=
g anything else to troubleshoot. I happened to stumble upon the sshd.socket=
 and the Conflicts part of it. Did a hit and trial and it worked. Technical=
ly I still am not sure as to why..<br /><br />-=3DSrijan Nandi

--Oozywi0LkGqNytlAiPYe--
