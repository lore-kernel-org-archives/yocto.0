Subject: #uboot Problem compiling u-boot with bitbake
To: yocto@lists.yoctoproject.org
From: ajellisuk@yahoo.co.uk
X-Originating-Location: Cambridge, England, GB (81.98.98.38)
X-Originating-Platform: Windows Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Dec 2020 16:08:46 -0800
Message-ID: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="R4tof3Ozcllks7BEx1CV"

--R4tof3Ozcllks7BEx1CV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from MSC tech=
nologies), but the compile process fails with the following output:

>=20
> ERROR: Unable to start bitbake server
> ERROR: Last 10 lines of server log for this session
> (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log):
> self.cooker =3D bb.cooker.BBCooker(self.configuration, self.featureset)
> File
> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooke=
r.py",
> line 197, in __init__
> self.initConfigurationData()
> File
> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooke=
r.py",
> line 356, in initConfigurationData
> self.databuilder.parseBaseConfiguration()
> File
> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooke=
rdata.py",
> line 317, in parseBaseConfiguration
> raise bb.BBHandledException
> bb.BBHandledException
> ERROR: The following required tools (as specified by HOSTTOOLS) appear t=
o
> be unavailable in PATH, please install them in order to proceed:
> test
>=20
> ERROR: bitbake u-boot-imx -c compile =E2=80=93f

I have had errors like this before, and have been to resolve by installing=
 the missing tools indicated. The problem that I've got here is that I'm no=
t sure what "test" is referring to. using, "sudo apt-get install test", doe=
sn't work.

Can someone please give me a hint as to what the problem is here.

Thanks in advance

Andrew

--R4tof3Ozcllks7BEx1CV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi<br /><br />I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus =
from MSC technologies), but the compile process fails with the following ou=
tput:<br />
<blockquote>ERROR: Unable to start bitbake server<br />ERROR: Last 10 line=
s of server log for this session (/home/user/msc-yocto-140/msc-ldk/build/10=
06/bitbake-cookerdaemon.log):<br />&nbsp;&nbsp;&nbsp; self.cooker =3D bb.co=
oker.BBCooker(self.configuration, self.featureset)<br />&nbsp; File "/home/=
user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", lin=
e 197, in __init__<br />&nbsp;&nbsp;&nbsp; self.initConfigurationData()<br =
/>&nbsp; File "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/l=
ib/bb/cooker.py", line 356, in initConfigurationData<br />&nbsp;&nbsp;&nbsp=
; self.databuilder.parseBaseConfiguration()<br />&nbsp; File "/home/user/ms=
c-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py", line 3=
17, in parseBaseConfiguration<br />&nbsp;&nbsp;&nbsp; raise bb.BBHandledExc=
eption<br />bb.BBHandledException<br />ERROR: The following required tools =
(as specified by HOSTTOOLS) appear to be unavailable in PATH, please instal=
l them in order to proceed:<br />&nbsp; test<br /><br />ERROR: bitbake u-bo=
ot-imx -c compile &ndash;f</blockquote>
I have had errors like this before, and have been to resolve by installing=
 the missing tools indicated. The problem that I've got here is that I'm no=
t sure what "test" is referring to. using, "sudo apt-get install test", doe=
sn't work.<br /><br />Can someone please give me a hint as to what the prob=
lem is here. <br /><br />Thanks in advance<br /><br />Andrew

--R4tof3Ozcllks7BEx1CV--
