Subject: Only index.html is cloned in private repo clone recipe #yocto
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Tunis, Gouvernorat de Tunis, TN (41.226.168.190)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 07 Oct 2020 01:29:34 -0700
Message-ID: <9pqx.1602059374076294998.H2RR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PeZLDnFUIxn2JLIC554f"

--PeZLDnFUIxn2JLIC554f
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have a private git repo which is in a local gitlab server.
Here is the local repo domain: http://gitlab.tools.comp.local/comp/sense/s=
ense_frontend
I already saved the git credentials (username and password) , and I create=
d this recipe:

LICENSE =3D "CLOSED"
SRCURL =3D "http://gitlab.tools.comp.local/ comp /sense/sense_frontend"
SRCBRANCH =3D "master"
SRCPROTO =3D "https"
# Define the source for this recipe
SRC_URI +=3D " ${ SRCURL} ;protocol=3D ${ SRCPROTO} ;branch=3D ${ SRCBRANC=
H} "
SRC_URI[md5sum] =3D "1becf51a6312d09f0c1c22120efd499c"
SRC_URI[sha256sum] =3D "142e3af77b6851b614d07012abce145ce2526b8d0d95e7a94c=
ff62f0e6432d26"

When I do do_fetch and do_unpack I only see the index.html file of the rep=
o is downloaded.
What is the problem ?
How can I solve this?

Thanks, Talel

--PeZLDnFUIxn2JLIC554f
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I have a private git repo which is in a local gitlab =
server.<br />Here is the local repo domain: <a href=3D"http://gitlab.tools.=
comp.local/comp/sense/sense_frontend" target=3D"_blank" rel=3D"noopener">ht=
tp://gitlab.tools.comp.local/comp/sense/sense_frontend</a><br />I already s=
aved the git credentials (username and password) , and I created this recip=
e:<br /><br /><span style=3D"color: #268bd2;">LICENSE</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span st=
yle=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"CLOSED"</s=
pan><br /><span style=3D"color: #268bd2;">SRCURL</span><span style=3D"color=
: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=
=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"http://gitla=
b.tools.comp.local/</span><span style=3D"color: #2aa198;"><span style=3D"co=
lor: #2aa198;">comp</span>/sense/sense_frontend"<br /></span>
<div><span style=3D"color: #268bd2;">SRCBRANCH</span><span style=3D"color:=
 #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D=
"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"master"</span></=
div>
<div><span style=3D"color: #268bd2;">SRCPROTO</span><span style=3D"color: =
#bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"https"</span></di=
v>
<div><span style=3D"color: #657b83; font-style: italic;"># Define the sour=
ce for this recipe</span></div>
<div><span style=3D"color: #268bd2;">SRC_URI</span><span style=3D"color: #=
bbbbbb;"> </span><span style=3D"color: #859900;">+=3D</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><span styl=
e=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">SRCURL}</spa=
n><span style=3D"color: #2aa198;">;protocol=3D</span><span style=3D"color: =
#859900;">${</span><span style=3D"color: #268bd2;">SRCPROTO}</span><span st=
yle=3D"color: #2aa198;">;branch=3D</span><span style=3D"color: #859900;">${=
</span><span style=3D"color: #268bd2;">SRCBRANCH}</span><span style=3D"colo=
r: #2aa198;">"</span></div>
<div><span style=3D"color: #268bd2;">SRC_URI[md5sum]</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span st=
yle=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"1becf51a63=
12d09f0c1c22120efd499c"</span></div>
<span style=3D"color: #268bd2;">SRC_URI[sha256sum]</span><span style=3D"co=
lor: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span styl=
e=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"142e3af77b68=
51b614d07012abce145ce2526b8d0d95e7a94cff62f0e6432d26"</span><span style=3D"=
color: #2aa198;"></span><br /><br />When I do do_fetch and do_unpack I only=
 see the index.html file of the repo is downloaded. <br />What is the probl=
em ?<br />How can I solve this?<br /><br />Thanks, Talel<br />

--PeZLDnFUIxn2JLIC554f--
