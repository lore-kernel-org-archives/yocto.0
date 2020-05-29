Subject: error while adding meta-python,meta-gnone,meta-multimedia layer #linux #raspberrypi #yocto
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.84.77)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 May 2020 07:58:09 -0700
Message-ID: <wXZf.1590764289812996033.qGwE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XX573rexbkcFQ0H4du5i"

--XX573rexbkcFQ0H4du5i
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
when i am trying to add meta-python=C2=A0 from meta-openembedded i am gett=
ing following error i have kept meta-openembedded,meta-raspberrypi into sam=
e branch dunfell
/Raspberrypi4-yocto$ bitbake-layers add-layer /home/ritesh/source_meta/met=
a-openembedded/meta-python/
NOTE: Starting bitbake server...
Traceback (most recent call last):
File "/home/ritesh/Yocto_practice/poky/bitbake/bin/bitbake-layers", line 9=
5, in <module>
ret =3D main()
File "/home/ritesh/Yocto_practice/poky/bitbake/bin/bitbake-layers", line 6=
3, in main
tinfoil.prepare(True)
File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/tinfoil.py", line 41=
4, in prepare
self.run_command('parseConfiguration')
File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/tinfoil.py", line 47=
0, in run_command
raise TinfoilCommandFailed(result[1])
bb.tinfoil.TinfoilCommandFailed: Traceback (most recent call last):
File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/command.py", line 74=
, in runCommand
result =3D command_method(self, commandline)
File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/command.py", line 27=
5, in parseConfiguration
command.cooker.parseConfiguration()
File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/cooker.py", line 433=
, in parseConfiguration
self.handleCollections(self.data.getVar("BBFILE_COLLECTIONS"))
File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/cooker.py", line 122=
5, in handleCollections
raise CollectionError("Errors during parsing layer configuration")
bb.cooker.CollectionError: Errors during parsing layer configuration

this is bblayer.conf

[1:06 PM, 5/29/2020] =C2=B6=C2=A3: my=C2=A0 bblayer.conf is as following
[1:06 PM, 5/29/2020] =C2=B6=C2=A3: POKY_BBLAYERS_CONF_VERSION is increased=
 each time build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
/home/pankajjoshi/Yocto_practice/poky/meta \
/home/pankajjoshi/Yocto_practice/poky/meta-poky \
/home/pankajjoshi/Yocto_practice/poky/meta-yocto-bsp \
/home/pankajjoshi/source_meta/meta-raspberrypi \
/home/pankajjoshi/source_meta/meta-openembedded/meta-oe \
/home/pankajjoshi/source_meta/meta-openembedded/meta-filesystems \
/home/pankajjoshi/source_meta/meta-openembedded/meta-networking \
"

why i am getting an error while adding layer into??

--XX573rexbkcFQ0H4du5i
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />when i am trying to add meta-python&nbsp; from meta-openembedded i=
 am getting following error i have kept meta-openembedded,meta-raspberrypi =
into same branch dunfell<br />
<div>/Raspberrypi4-yocto$ bitbake-layers add-layer /home/ritesh/source_met=
a/meta-openembedded/meta-python/</div>
<div>NOTE: Starting bitbake server...</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/bin/bitbake-lay=
ers", line 95, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; ret =3D main()</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/bin/bitbake-lay=
ers", line 63, in main</div>
<div>&nbsp; &nbsp; tinfoil.prepare(True)</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/tinfoil.=
py", line 414, in prepare</div>
<div>&nbsp; &nbsp; self.run_command('parseConfiguration')</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/tinfoil.=
py", line 470, in run_command</div>
<div>&nbsp; &nbsp; raise TinfoilCommandFailed(result[1])</div>
<div>bb.tinfoil.TinfoilCommandFailed: Traceback (most recent call last):</=
div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/command.=
py", line 74, in runCommand</div>
<div>&nbsp; &nbsp; result =3D command_method(self, commandline)</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/command.=
py", line 275, in parseConfiguration</div>
<div>&nbsp; &nbsp; command.cooker.parseConfiguration()</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/cooker.p=
y", line 433, in parseConfiguration</div>
<div>&nbsp; &nbsp; self.handleCollections(self.data.getVar("BBFILE_COLLECT=
IONS"))</div>
<div>&nbsp; File "/home/ritesh/Yocto_practice/poky/bitbake/lib/bb/cooker.p=
y", line 1225, in handleCollections</div>
<div>&nbsp; &nbsp; raise CollectionError("Errors during parsing layer conf=
iguration")</div>
<div>bb.cooker.CollectionError: Errors during parsing layer configuration<=
br /><br />this is bblayer.conf<br /><br />
<div>[1:06 PM, 5/29/2020] &para;&pound;: my&nbsp; bblayer.conf is as follo=
wing</div>
<div>[1:06 PM, 5/29/2020] &para;&pound;: POKY_BBLAYERS_CONF_VERSION is inc=
reased each time build/conf/bblayers.conf</div>
<div># changes incompatibly</div>
<div>POKY_BBLAYERS_CONF_VERSION =3D "2"</div>
<div>&nbsp;</div>
<div>BBPATH =3D "${TOPDIR}"</div>
<div>BBFILES ?=3D ""</div>
<div>&nbsp;</div>
<div>BBLAYERS ?=3D " \</div>
<div>&nbsp; /home/pankajjoshi/Yocto_practice/poky/meta \</div>
<div>&nbsp; /home/pankajjoshi/Yocto_practice/poky/meta-poky \</div>
<div>&nbsp; /home/pankajjoshi/Yocto_practice/poky/meta-yocto-bsp \</div>
<div>&nbsp; /home/pankajjoshi/source_meta/meta-raspberrypi \</div>
<div>&nbsp; /home/pankajjoshi/source_meta/meta-openembedded/meta-oe \</div=
>
<div>&nbsp; /home/pankajjoshi/source_meta/meta-openembedded/meta-filesyste=
ms \</div>
<div>&nbsp; /home/pankajjoshi/source_meta/meta-openembedded/meta-networkin=
g \</div>
<div>&nbsp; "<br /><br />why i am getting an error while adding layer into=
??</div>
<br /><br /><br /><br /></div>

--XX573rexbkcFQ0H4du5i--
