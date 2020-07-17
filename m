Subject: Adding libgpiod to Yocto Warrior 4.19.35 image?
To: yocto@lists.yoctoproject.org
From: "Scott Whitney" <sdw@inea.com>
X-Originating-Location: Nashua, New Hampshire, US (24.63.67.55)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jul 2020 13:17:41 -0700
Message-ID: <DgWj.1595017061230733737.ILXN@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto Warrior 4.19.35 on a Variscite i.MX8M MINI SoM.  I need to =
be able to respond to some interrupt events on GPIO events from userspace.
I saw on kernel.org that the sysfs ABI is being deprecated, and the recomm=
endation is to use libgpiod. https://www.kernel.org/doc/html/latest/driver-=
api/gpio/using-gpio.html

I modified my local.conf file to add libgpiod to IMAGE_INSTALL_append:
IMAGE_INSTALL_append =3D " \
    tcf-agent \
    openssh-sftp-server \
    libgpiod \
    "
I then ran "bitbake fsl-image-qt5", and programmed the new image onto an S=
D card.  After booting, I can now see "/dev/gpiochip*" as expected.  Howeve=
r, gpiod.h does not appear to be installed to /usr/include nore any other d=
irectory.

Can someone explain what I need to do to correctly deploy libgpiod onto my=
 target?  Thanks!
