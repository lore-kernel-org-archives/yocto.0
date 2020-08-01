Subject: Extracting files and creating directory tar.gz's from yocto created root filesystem #yocto
To: yocto@lists.yoctoproject.org
From: steve@echodyne.com
X-Originating-Location: Seattle, Washington, US (50.237.172.122)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 31 Jul 2020 17:31:29 -0700
Message-ID: <23gN.1596241889122206251.LUoC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="C6zZSTiP3bN0QFiKw3Dt"

--C6zZSTiP3bN0QFiKw3Dt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am successfully creating a root file-system for my project (roko version)=
. I am interested in performing modifications to the root file-system after=
 it has been constructed with a recipe.

I currently use a
ROOTFS_POSTUNINSTALL_COMMAND +=3D "my_command "
in one of my recipes to perform some of my modifications.

I would like to tar.gz a sub-directory of the root file-system and save it=
 to my build machine.

Any suggestions on how that could be performed?

Thanks

--C6zZSTiP3bN0QFiKw3Dt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am successfully creating a root file-system for my project (roko version)=
. I am interested in performing modifications to the root file-system after=
 it has been constructed with a recipe.<br /><br />I currently use a&nbsp;<=
br />&nbsp; ROOTFS_POSTUNINSTALL_COMMAND +=3D "my_command "<br />in one of =
my recipes to perform some of my modifications.<br /><br />I would like to =
tar.gz a sub-directory of the root file-system and save it to my build mach=
ine.<br /><br />Any suggestions on how that could be performed?<br /><br />=
Thanks

--C6zZSTiP3bN0QFiKw3Dt--
