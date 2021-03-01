Subject: Re: npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json from remote location
To: yocto@lists.yoctoproject.org
From: "TRO" <thomas.roos@industronic.de>
X-Originating-Location: Würzburg, Bavaria, DE (212.63.82.130)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 01 Mar 2021 07:40:38 -0800
References: <o7rk.1614584305650397939.AzJs@lists.yoctoproject.org>
In-Reply-To: <o7rk.1614584305650397939.AzJs@lists.yoctoproject.org>
Message-ID: <29103.1614613238156296740@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hLHnUntCqy9l6gZTgH4P"

--hLHnUntCqy9l6gZTgH4P
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

i did this:
addtask getsw after do_fetch before do_compile

python do_getsw() {
import os
bb.debug("downloading shrinkwrap file")
os.system ("git archive --remote=3Dssh://git@gitXXX.git HEAD frontend/npm-=
shrinkwrap.json | tar -xO > /tmp/npm-shrinkwrap.json_dwnl")
src_uri_sw =3D {'npmsw:///tmp/npm-shrinkwrap.json_dwnl;dev=3DTrue'}

try:
fetcher =3D bb.fetch2.Fetch(src_uri_sw, d)
fetcher.download()
except bb.fetch2.BBFetchException as e:
bb.fatal(str(e))

try:
fetcher.unpack(d.getVar('WORKDIR'))
except bb.fetch2.BBFetchException as e:
bb.fatal(str(e))

bb.debug("src_uri: " + str(src_uri_sw))
}

--hLHnUntCqy9l6gZTgH4P
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

i did this:<br />addtask getsw after do_fetch before do_compile<br /><br />=
python do_getsw() {<br />&nbsp;&nbsp;&nbsp; import os<br />&nbsp;&nbsp;&nbs=
p; bb.debug("downloading shrinkwrap file")<br />&nbsp;&nbsp;&nbsp; os.syste=
m ("git archive --remote=3Dssh://git@gitXXX.git HEAD frontend/npm-shrinkwra=
p.json | tar -xO &gt; /tmp/npm-shrinkwrap.json_dwnl")<br />&nbsp;&nbsp;&nbs=
p; src_uri_sw =3D {'npmsw:///tmp/npm-shrinkwrap.json_dwnl;dev=3DTrue'}<br /=
>&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; fetcher =3D bb.fetch2.Fetch(src_uri_sw, d)<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fetcher.download()<br />&nbsp;&nbsp;=
&nbsp; except bb.fetch2.BBFetchException as e:<br />&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; bb.fatal(str(e))<br /><br />&nbsp;&nbsp;&nbsp; try:&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; fetcher.unpack(d.getVar('WORKDIR'))<br />&nbsp;&nbsp;&nbsp; ex=
cept bb.fetch2.BBFetchException as e:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; bb.fatal(str(e))<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp;&nbsp; b=
b.debug("src_uri: " + str(src_uri_sw))<br />}

--hLHnUntCqy9l6gZTgH4P--
