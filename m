Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Jan 2021 07:17:54 -0800
References: <27034.1610464435954411534@lists.yoctoproject.org>
In-Reply-To: <27034.1610464435954411534@lists.yoctoproject.org>
Message-ID: <30836.1610464674011917658@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Q0R8R7In3wjuMlI0JYl1"

--Q0R8R7In3wjuMlI0JYl1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If I make a symbolic link for modprobe, the message is the same like insmod=
: root@barix-ipam400:~# ln -s /lib/modules/4.10.0/extra/cdc-ncm.ko /lib/mod=
ules/4.10.0/ root@barix-ipam400:~# modprobe cdc_ncm.ko modprobe: can't load=
 module cdc_wdm (extra/cdc-wdm.ko): invalid module format
--
Zolee

--Q0R8R7In3wjuMlI0JYl1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If I make a symbolic link for modprobe, the message is the same like insmod=
:
<h6>root@barix-ipam400:~# ln -s /lib/modules/4.10.0/extra/cdc-ncm.ko /lib/=
modules/4.10.0/</h6>
<h6>root@barix-ipam400:~# modprobe cdc_ncm.ko</h6>
<h6>modprobe: can't load module cdc_wdm (extra/cdc-wdm.ko): invalid module=
 format</h6>
<br />-- <br />Zolee

--Q0R8R7In3wjuMlI0JYl1--
