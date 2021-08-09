Subject: Re: Hello world recipe
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Rades, Gouvernorat de Ben Arous, TN (102.156.71.250)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Aug 2021 08:34:11 -0700
References: <T5Wf.1628522644867878284.bLzt@lists.yoctoproject.org>
In-Reply-To: <T5Wf.1628522644867878284.bLzt@lists.yoctoproject.org>
Message-ID: <27442.1628523251260693693@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gt73nnhsn6anYppErrok"

--gt73nnhsn6anYppErrok
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It is clear that the build system cannot find anything that is providing 'p=
ython-hello' recipe.

Which means it parsed all layers in bblayers.conf and it didn't find any py=
thon-hello_*.bb file (the _* is the version)

It is mentioned in the tutorial that you provided that the recipe should be=
 in meta-layer/recipes-custom/python-hello

So, you need to create that layer, follow:

bitbake-layers create-layer meta-custom
bitbake-layers add-layer meta-custom

Now, in that layer create folders: recipes-custom/python-hello, in that you=
 should have:

1. another folder: files in that you put python-hello.py
2. python-hello.bb

the content of all of that is in the tutorial .

--gt73nnhsn6anYppErrok
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It is clear that the build system cannot find anything that is providing 'p=
ython-hello' recipe.<br /><br />Which means it parsed all layers in bblayer=
s.conf and it didn't find any python-hello_*.bb file (the _* is the version=
)<br /><br />It is mentioned in the tutorial that you provided that the rec=
ipe should be in meta-layer/recipes-custom/python-hello<br /><br />So, you =
need to create that layer, follow:<br /><br />bitbake-layers create-layer m=
eta-custom<br />bitbake-layers add-layer meta-custom<br /><br />Now, in tha=
t layer create folders: recipes-custom/python-hello, in that you should hav=
e:<br /><br />1. another folder: files in that you put python-hello.py<br /=
>2. python-hello.bb<br /><br />the content of all of that is in the tutoria=
l .

--gt73nnhsn6anYppErrok--
