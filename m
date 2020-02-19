Subject: Re: Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: yocto@lists.yoctoproject.org
From: "Pieter Smith" <smipi01@gmail.com>
X-Originating-Location: Eindhoven, North Brabant, NL (194.171.252.117)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 01:35:18 -0800
References: <CANNYZj8Muj3Rnf9VXfiRJqhdpOsJdFQKQdP2GscBNnmX4cUu9Q@mail.gmail.com>
In-Reply-To: <CANNYZj8Muj3Rnf9VXfiRJqhdpOsJdFQKQdP2GscBNnmX4cUu9Q@mail.gmail.com>
Message-ID: <23572.1582104918179404001@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oT73EKxsAYv2HMdQUBgK"

--oT73EKxsAYv2HMdQUBgK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

Based on your and=C2=A0Oliver Westermann's help, I came up with something =
that works for our project requirements:

My application bitbake file looks like this:

EXTERNALSRC =3D "${@os.path.abspath(os.path.join(os.path.dirname(d.getVar(=
'FILE')), '..', '..', 'src'))}"
inherit externalsrc

S =3D "${EXTERNALSRC}"
inherit cmake

externalsrc.bb expects EXTERNALSRC to contain an absolute path. We have a =
relocatable workspace based on a git tree with submodules, so I calculate t=
he absolute path of the source based on the bb file location. Our src direc=
tory is a cmake project, so I only have to convince cmake to use the EXTERN=
ALSRC location for an out-of-tree build in WORKDIR by setting S.

The workflow for our project developers then becomes:

bitbake -c cleansstate <application-name> && bitbake ...

I can hide this in a wrapper Makefile.

Am I missing anything?

Regards,
Pieter Smith

--oT73EKxsAYv2HMdQUBgK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,<br /><br />Based on your and&nbsp;Oliver Westermann's help, I=
 came up with something that works for our project requirements:<br /><br /=
>My application bitbake file looks like this:<br /><br />
<div>&nbsp; &nbsp; EXTERNALSRC =3D "${@os.path.abspath(os.path.join(os.pat=
h.dirname(d.getVar('FILE')), '..', '..', 'src'))}"</div>
<div>&nbsp; &nbsp; inherit externalsrc</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; S =3D "${EXTERNALSRC}"</div>
<div>&nbsp; &nbsp; inherit cmake<br /><br />externalsrc.bb expects EXTERNA=
LSRC to contain an absolute path. We have a relocatable workspace based on =
a git tree with submodules, so I calculate the absolute path of the source =
based on the bb file location. Our src directory is a cmake project, so I o=
nly have to convince cmake to use the EXTERNALSRC location for an out-of-tr=
ee build in WORKDIR by setting S.<br /><br />The workflow for our project d=
evelopers then becomes:<br /><br />&nbsp; &nbsp; bitbake -c cleansstate &lt=
;application-name&gt; &amp;&amp; bitbake ...<br /><br />I can hide this in =
a wrapper Makefile.<br /><br />Am I missing anything?<br /><br />Regards,<b=
r />Pieter Smith</div>

--oT73EKxsAYv2HMdQUBgK--
