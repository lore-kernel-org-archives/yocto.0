Subject: Re: [meta-raspberrypi] Booting a Raspberry Pi 4 using PXE
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: GB (217.140.106.13)
X-Originating-Platform: Mac Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 May 2021 06:34:09 -0700
References: <c72280d9-2a35-4774-aa2e-25f48141479f@www.fastmail.com>
In-Reply-To: <c72280d9-2a35-4774-aa2e-25f48141479f@www.fastmail.com>
Message-ID: <28966.1620221649842149776@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rroPcsP0hesRzzHUa6DQ"

--rroPcsP0hesRzzHUa6DQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I don't know what exactly you mean by "whenever the Raspi is booting over t=
he network".
When a machine boots from network (i,e. using DHCP/BOOTP) then usually DHC=
P server points to, for example, a TFTP server where the kernel and initram=
fs should be obtained from and kernel parameters. So, you need to check you=
r DHCP/TFTP/etc servers configuration for kernel parameters.

--rroPcsP0hesRzzHUa6DQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I don't know what exactly you mean by "whenever the Raspi is booting over t=
he network". <br />When a machine boots from network (i,e. using DHCP/BOOTP=
) then usually DHCP server points to, for example, a TFTP server where the =
kernel and initramfs should be obtained from and kernel parameters. So, you=
 need to check your DHCP/TFTP/etc servers configuration for kernel paramete=
rs.

--rroPcsP0hesRzzHUa6DQ--
