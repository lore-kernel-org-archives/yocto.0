Subject: Using Poetry For Python Package #python
To: yocto@lists.yoctoproject.org
From: iwolosch@akamai.com
X-Originating-Location: Somerville, Massachusetts, US (130.44.181.251)
X-Originating-Platform: Mac Chrome 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Sep 2021 11:49:10 -0700
Message-ID: <9lCr.1631645350129723940.vwx9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k3vb6n6QISrLv5WBo8Cg"

--k3vb6n6QISrLv5WBo8Cg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a python package hosted in an internal git repo that is currently co=
nfigured to use Poetry and as such does not have a setup.py file. Yocto app=
ears to expect a setup.py file (via inherit distutils3). It seems my two op=
tions are to either remove Poetry and convert from pyproject.toml to setup.=
py or set up an internal pypi host that can serve a sdist file that would h=
ave a setup.py file. Are there any other options I'm missing?

Thanks!
-Ian

--k3vb6n6QISrLv5WBo8Cg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a python package hosted in an internal git repo that is currently co=
nfigured to use Poetry and as such does not have a setup.py file. Yocto app=
ears to expect a setup.py file (via inherit distutils3). It seems my two op=
tions are to either remove Poetry and convert from pyproject.toml to setup.=
py or set up an internal pypi host that can serve a sdist file that would h=
ave a setup.py file. Are there any other options I'm missing?<br /><br />Th=
anks!<br />-Ian

--k3vb6n6QISrLv5WBo8Cg--
