Subject: [wic/filemap] wic takes the wrong filemap.py file
To: yocto@lists.yoctoproject.org
From: jonas.hoelscher@sennheiser.com
X-Originating-Location: Krefeld, North Rhine-Westphalia, DE (91.7.120.237)
X-Originating-Platform: Linux Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Jul 2021 02:41:43 -0700
Message-ID: <RSyn.1627292503510696693.u56a@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WiKySQCdY4XwW938Z75y"

--WiKySQCdY4XwW938Z75y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

i am running yocto (with IMX BSP gatesgarth-5.10.9-1.0.0) inside docker an=
d am getting the below issue which i though to be already fixed by https://=
patchwork.openembedded.org/patch/174423/.
File "/home/dev/my-yocto/build/tmp/work/imx8mn_bat_bs4_dev-poky-linux/my-i=
mage/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/bmaptools=
/Filemap.py", line 238, in _probe_seek_hole ##[error]#15 18105.0 raise Erro=
rNotSupp("the file-system does not support "SEEK_HOLE" and "SEEK_DATA" but =
only provides a stub implementation

Obviously the file "Filemap.py" getting used is the one downloaded via the=
 bmap-tools recipe. It does not contain the fix linked above.
./build/tmp/work/x86_64-linux/bmap-tools-native/3.5+gitAUTOINC+a17f0e3ff8-=
r0/sysroot-destdir/home/<...>/build/tmp/work/x86_64-linux/bmap-tools-native=
/3.5+gitAUTOINC+a17f0e3ff8-r0/recipe-sysroot-native/usr/lib/python3.8/site-=
packages/bmaptools/Filemap.py
Why does it not take the one from sources/poky/scripts/lib/wic/filemap.py =
which does have the desired fix ?

Any pointer / hint is appreciated.

Thanks and Regards,
Jonas

--WiKySQCdY4XwW938Z75y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi guys,<br /><br />i am running yocto (with IMX BSP gatesgarth-5.10.9-1=
.0.0) inside docker and am getting the below issue which i though to be alr=
eady fixed by&nbsp;<a href=3D"https://patchwork.openembedded.org/patch/1744=
23/" target=3D"_blank" rel=3D"noopener">https://patchwork.openembedded.org/=
patch/174423/</a>.<br /><span style=3D"color: #fa3d3d; white-space: pre-wra=
p;"> File "/home/dev/my-yocto/build/tmp/work/imx8mn_bat_bs4_dev-poky-linux/=
my-image/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/bmapt=
ools/Filemap.py", line 238, in _probe_seek_hole</span><span style=3D"color:=
 #fa3d3d; white-space: pre-wrap;">##[error]#15 18105.0 raise ErrorNotSupp("=
the file-system does not support </span><span style=3D"color: #fa3d3d; back=
ground-color: rgba(var(--palette-neutral-6,239, 239, 239),1); white-space: =
pre-wrap;">"SEEK_HOLE" and "SEEK_DATA" but only provides a stub implementat=
ion<br /><br /></span>Obviously the file "Filemap.py" getting used is the o=
ne downloaded via the bmap-tools recipe. It does not contain the fix linked=
 above.<br /><em>./build/tmp/work/x86_64-linux/bmap-tools-native/3.5+gitAUT=
OINC+a17f0e3ff8-r0/sysroot-destdir/home/&lt;...&gt;/build/tmp/work/x86_64-l=
inux/bmap-tools-native/3.5+gitAUTOINC+a17f0e3ff8-r0/recipe-sysroot-native/u=
sr/lib/python3.8/site-packages/bmaptools/Filemap.py</em><br />Why does it n=
ot take the one from <span style=3D"font-family: Menlo, Monaco, Consolas, '=
Courier New', monospace; font-size: 13px;">sources/poky/scripts/lib/wic/fil=
emap.py&nbsp;</span>&nbsp;which does have the desired fix ?<br /><br />Any =
pointer / hint is appreciated.<span style=3D"font-family: Menlo, Monaco, Co=
nsolas, 'Courier New', monospace; font-size: 13px;"><br /></span></p>
<p>Thanks and Regards,<br />Jonas</p>

--WiKySQCdY4XwW938Z75y--
