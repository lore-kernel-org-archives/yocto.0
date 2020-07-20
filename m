Subject: Re: Offline Build #yocto
To: yocto@lists.yoctoproject.org
From: "Amrun Nisha.R" <amrunnishar@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (103.232.224.219)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 20 Jul 2020 11:14:58 -0700
References: <8d0258be3275bc76159bdd096d75c8c7984ff6d3.camel@linuxfoundation.org>
In-Reply-To: <8d0258be3275bc76159bdd096d75c8c7984ff6d3.camel@linuxfoundation.org>
Message-ID: <9865.1595268898261627258@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NyneKeTMNoC6i2kyT81v"

--NyneKeTMNoC6i2kyT81v
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have updated the DL_DIR to the current build directory's downloads folder=
 using sed command.

sed -i 's/DL_DIR=C2=A0?=3D "${BSPDIR}\/downloads/DL_DIR =3D "\/opt\/yocto_=
downloads/g' conf/local.conf in place of /opt/downloads, I have provided th=
e downloads location. It takes the newly provided downloads location. It wi=
ll do the do_fetch after identifying the source code packages from the down=
loads folder. In downloads, the source code for each package is there. Norm=
ally when we try to bitbake, it will execute as do_unpack, do_patch, do_con=
figure, do_compile, do_install, do_package and do_package_write in order. I=
 have tried to copy the buildstats from the old location build/tmp/buildsta=
ts tp new build location. It compiles the source code from the downloads by=
 do_compile but ends with the error with do_fetch error for ncurses package=
s. I don't know, where the compilation packages will be located.

--NyneKeTMNoC6i2kyT81v
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have updated the DL_DIR to the current build directory's downloads folder=
 using sed command.<br /><br />
<pre style=3D"font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liber=
ation Mono', 'Courier New', monospace; color: #000000; background-color: #f=
1f1f1; border-width: 0px 0px 0px 4px; border-top-style: initial; border-rig=
ht-style: initial; border-bottom-style: initial; padding: 1em 1em 1em 2rem;=
 font-size: 12.6667px; margin-bottom: 1rem; overflow-y: hidden; box-shadow:=
 rgba(0, 0, 0, 0.2) 0px 1px 2px; border-color: initial initial initial #045=
7a6;">sed -i 's/DL_DIR&nbsp;?=3D "${BSPDIR}\/downloads/DL_DIR =3D "\/opt\/y=
octo_downloads/g' conf/local.conf</pre>
&nbsp;in place of /opt/downloads, I have provided the downloads location. =
It takes the newly provided downloads location. It will do the do_fetch aft=
er identifying the source code packages from the downloads folder. In downl=
oads, the source code for each package is there. Normally when we try to bi=
tbake, it will execute as do_unpack, do_patch, do_configure, do_compile, do=
_install, do_package and do_package_write in order. I have tried to copy th=
e buildstats from the old location build/tmp/buildstats tp new build locati=
on. It compiles the source code from the downloads by do_compile but ends w=
ith the error with do_fetch error for ncurses packages. I don't know, where=
 the compilation packages will be located.

--NyneKeTMNoC6i2kyT81v--
