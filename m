Subject: #yocto eth0 stays down if enp1s0 is renamed in zeus
To: yocto@lists.yoctoproject.org
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
X-Originating-Location: Staufenberg, Lower Saxony, DE (5.10.161.194)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2020 09:30:39 -0800
Message-ID: <GTiD.1579282239948453641.bcOA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SrQEeCbif3cJlnFNxuhE"

--SrQEeCbif3cJlnFNxuhE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

moving from thud to zeus eth0 no longer goes up on boot.

The device has two ethernet ports eth0 and enp1s0. The image renames enp1s=
0 to eth1 which works fine in thud using:
# cat /etc/systemd/network/50-eth1.link
[Match]
Driver=3Digb
Path=3Dplatform-1ffc000.pcie-pci-0000:01:00.0

[Link]
Name=3Deth1

Additionally there are two config files to set eth0 to dhcp and eth1 to 19=
2.168.3.1. These i had to rename to precede the new default config file in =
zeus named /lib/systemd/network/80-wired.network
If i deactivate the link file both ethernet ports work just fine in zeus t=
oo. As soon as the link-file is active enp1s0 is renamed to eth1 and eth0 s=
tays down.
# networkctl list -a
IDX LINK TYPE=C2=A0 =C2=A0 =C2=A0OPERATIONAL SETUP
1 lo=C2=A0 =C2=A0loopback carrier=C2=A0 =C2=A0 =C2=A0pending
2 eth0 ether=C2=A0 =C2=A0 off=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pending
3 eth1 ether=C2=A0 =C2=A0 no-carrier=C2=A0 configured
4 sit0 sit=C2=A0 =C2=A0 =C2=A0 off=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pendin=
g

A cable is connected to eth0 and there is none on eth1. (It is possible to=
 bring eth0 up manually.)
I red something about IPv6 problems but enabling/disabling brought no chan=
ge.
The status of systemd-networkd is active (running)
The status of systemd-networkd-wait-online is Active: failed

Any help would be great. Thank you

Regards

hu

--SrQEeCbif3cJlnFNxuhE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />moving from thud to zeus eth0 no longer goes up on boot.<br =
/><br />The device has two ethernet ports eth0 and enp1s0. The image rename=
s enp1s0 to eth1 which works fine in thud using:<br />
<div># cat /etc/systemd/network/50-eth1.link</div>
<div>[Match]</div>
<div>Driver=3Digb</div>
<div>Path=3Dplatform-1ffc000.pcie-pci-0000:01:00.0</div>
<div>&nbsp;</div>
<div>[Link]</div>
<div>Name=3Deth1</div>
<div><br />Additionally there are two config files to set eth0 to dhcp and=
 eth1 to 192.168.3.1. These i had to rename to precede the new default conf=
ig file in zeus named /lib/systemd/network/80-wired.network<br />If i deact=
ivate the link file both ethernet ports work just fine in zeus too. As soon=
 as the link-file is active enp1s0 is renamed to eth1 and eth0 stays down.<=
br />
<div># networkctl list -a</div>
<div>IDX LINK TYPE&nbsp; &nbsp; &nbsp;OPERATIONAL SETUP</div>
<div>&nbsp; 1 lo&nbsp; &nbsp;loopback carrier&nbsp; &nbsp; &nbsp;pending</=
div>
<div>&nbsp; 2 eth0 ether&nbsp; &nbsp; off&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;pending</div>
<div>&nbsp; 3 eth1 ether&nbsp; &nbsp; no-carrier&nbsp; configured</div>
<div>&nbsp; 4 sit0 sit&nbsp; &nbsp; &nbsp; off&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;pending</div>
<div>&nbsp;</div>
<div>A cable is connected to eth0 and there is none on eth1. (It is possib=
le to bring eth0 up manually.)<br />I red something about IPv6 problems but=
 enabling/disabling brought no change.<br />The status of systemd-networkd =
is active (running)<br />The status of systemd-networkd-wait-online is Acti=
ve: failed<br /><br />Any help would be great. Thank you<br /><br />Regards=
<br /><br />hu<br /><br /></div>
</div>

--SrQEeCbif3cJlnFNxuhE--
