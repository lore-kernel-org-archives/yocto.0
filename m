Subject: Re: ttyS0 timeout but not using ttyS0 #yocto #systemd
To: yocto@lists.yoctoproject.org
From: "William Durocher" <wdurocher@it-link.ca>
X-Originating-Location: Montreal, Quebec, CA (173.231.104.26)
X-Originating-Platform: Linux Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Feb 2020 06:26:56 -0800
References: <16075.1580157424388586462@lists.yoctoproject.org>
In-Reply-To: <16075.1580157424388586462@lists.yoctoproject.org>
Message-ID: <8698.1580999216322383593@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ouf9gn41NNDgxJB4Nv9F"

--ouf9gn41NNDgxJB4Nv9F
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Got it figured out, Seems that the default values from meta/recipes-core/sy=
stemd/systemd-serialgetty.bb for SERIAL_CONSOLES in are being processed ins=
tead of the expansion in our layer. Even though SERIAL_CONSOLES is using SE=
RIAL_CONSOLE. Our solution is to declare SERIAL_CONSOLE and SERIAL_CONSOLES=
 in our machine config.

--ouf9gn41NNDgxJB4Nv9F
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Got it figured out, Seems that the default values from meta/recipes-core/sy=
stemd/systemd-serialgetty.bb for SERIAL_CONSOLES in are being processed ins=
tead of the expansion in our layer. Even though SERIAL_CONSOLES is using SE=
RIAL_CONSOLE. Our solution is to declare SERIAL_CONSOLE and SERIAL_CONSOLES=
 in our machine config.

--ouf9gn41NNDgxJB4Nv9F--
