Subject: network-manager #yocto #nmcli
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 Oct 2020 01:48:37 -0700
Message-ID: <QYDf.1603183717679989166.nHWa@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zL5uQqY9an14WBA01K85"

--zL5uQqY9an14WBA01K85
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

My board is a Barix Ipam400, and I'd like to add 4G conenction to it via a=
 USB and 4G Dongle. The dongle is a Huewei E3372 stick.
I'd spent some time with wvdial and usbmodeswitch with no success. Then I =
tried the stick in my laptop with network-manager, it was working like a ch=
arm
Then I've found this ( https://github.com/openembedded/meta-openembedded/t=
ree/master/meta-networking/recipes-connectivity/networkmanager/networkmanag=
er ) source, since the original recipe file would not compile.

Ive bitbaked network.manager loaded to the hardware however there is no nm=
cli and nmtoi included.

Do you have any idea how to proceed from here? There is no gui on the targ=
et hardware and I need both the eth0 and the 4G interface preferable set vi=
a command line.

--zL5uQqY9an14WBA01K85
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />My board is a Barix Ipam400, and I'd like to add 4G cone=
nction to it via a USB and 4G Dongle. The dongle is a Huewei E3372 stick.<b=
r />I'd spent some time with wvdial and usbmodeswitch with no success. Then=
 I tried the stick in my laptop with network-manager, it was working like a=
 charm<br />Then I've found <a title=3D"this" href=3D"https://github.com/op=
enembedded/meta-openembedded/tree/master/meta-networking/recipes-connectivi=
ty/networkmanager/networkmanager" target=3D"_blank" rel=3D"noopener">this</=
a> source, since the original recipe file would not compile.<br /><br />Ive=
 bitbaked network.manager loaded to the hardware however there is no nmcli =
and nmtoi included.<br /><br />Do you have any idea how to proceed from her=
e? There is no gui on the target hardware and I need both the eth0 and the =
4G interface preferable set via command line.

--zL5uQqY9an14WBA01K85--
