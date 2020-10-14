Subject: Pinging problem
To: yocto@lists.yoctoproject.org
From: "jchludzinski" <jchludzinski@vivaldi.net>
X-Originating-Location: Herndon, Virginia, US (104.129.194.86)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Oct 2020 12:56:25 -0700
Message-ID: <GqDD.1602705385322002102.L0e6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3gHiy8tCbDeCpo379w2h"

--3gHiy8tCbDeCpo379w2h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I just built and installed=C2=A0Linux "arria10 5.4.44-05635-gb810a419a2fa-d=
irty #2 SMP" onto my board. It recognized the Ethernet interface right out =
of the box and assigned a static IP address.

I have Ethernet on the board connected to my Linux (Fedora v32) laptop. Wh=
en I ping from the board to the laptop, the laptop receives the board's ARP=
 request for its MAC address. The laptop then attempts to respond by sendin=
g an ARP reply with its MAC address. Apparently the board is not receiving =
that reply.

I validated this pinging from the laptop. The laptop is sending the ARP re=
quest "Who has <board IP address>?" And there is no respond coming from the=
 board.

Any ideas on what might be happening?

--3gHiy8tCbDeCpo379w2h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I just built and installed&nbsp;Linux "arria10 5.4.44-05635-gb810a419a2fa-d=
irty #2 SMP" onto my board. It recognized the Ethernet interface right out =
of the box and assigned a static IP address.<br /><br />I have Ethernet on =
the board connected to my Linux (Fedora v32) laptop. When I ping from the b=
oard to the laptop, the laptop receives the board's ARP request for its MAC=
 address. The laptop then attempts to respond by sending an ARP reply with =
its MAC address. Apparently the board is not receiving that reply.&nbsp;<br=
 /><br />I validated this pinging from the laptop. The laptop is sending th=
e ARP request "Who has &lt;board IP address&gt;?" And there is no respond c=
oming from the board.<br /><br />Any ideas on what might be happening?

--3gHiy8tCbDeCpo379w2h--
