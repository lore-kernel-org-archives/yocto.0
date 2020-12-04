Subject: Re: Using OVERRIDES to set variables from outside the recipe file
To: yocto@lists.yoctoproject.org
From: "Andrew Loader" <andrew.loader@nz.abb.com>
X-Originating-Location: Mount Waverley, Victoria, AU (103.111.183.64)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Dec 2020 19:23:43 -0800
References: <2238e5e2-428-1623-c722-e691106b179a@crashcourse.ca>
In-Reply-To: <2238e5e2-428-1623-c722-e691106b179a@crashcourse.ca>
Message-ID: <7992.1607052223864547151@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Xy4wjXwtPHm92Gr46pzR"

--Xy4wjXwtPHm92Gr46pzR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your help
In the example above which I only=C2=A0 used to communicate the problem, w=
ithout getting all complicated with details of my multiple projects, images=
 and petalinux.

The solution would be to set the following in the local.conf file or anoth=
er conf file or even a append file
OVERRIDES_append =3D ":os"

It was a good tip to use " bitbake -e my-recipe | grep -e "^OVERRIDES=3D""
to show the results of this settings

There is another example using overrides for DEPENDS here https://docs.yoc=
toproject.org/dev-manual/dev-manual-common-tasks.html?highlight=3Ddepends_o=
ne
Which does not explain were the "one" machine is added to the OVERRIDES va=
riable but the actual overrides mechanism seems clearly explained in both o=
f the example sections mentioned but where and how this is set could do wit=
h a better examples

Thanks
Andrew

--Xy4wjXwtPHm92Gr46pzR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your help<br />In the example above which I only&nbsp; used to c=
ommunicate the problem, without getting all complicated with details of my =
multiple projects, images and petalinux.<br />&nbsp;<br />The solution woul=
d be to set the following in the local.conf file or another conf file or ev=
en a append file<br />OVERRIDES_append =3D ":os"&nbsp;<br /><br />It was a =
good tip to use "<span style=3D"white-space: pre-wrap;">bitbake -e my-recip=
e | grep -e "^OVERRIDES=3D""</span><br /><span style=3D"white-space: pre-wr=
ap;">to show the results of this settings</span><br /><br /><span style=3D"=
white-space: pre-wrap;">There is another example using overrides for DEPEND=
S here </span><a style=3D"white-space: pre-wrap;" href=3D"https://docs.yoct=
oproject.org/dev-manual/dev-manual-common-tasks.html?highlight=3Ddepends_on=
e" target=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/dev-man=
ual/dev-manual-common-tasks.html?highlight=3Ddepends_one</a><br /><span sty=
le=3D"white-space: pre-wrap;">Which does not explain were the "one" machine=
 is added to the OVERRIDES variable but the actual overrides mechanism seem=
s clearly explained in both of the example sections mentioned but where and=
 how this is set could do with a better examples <br /><br />Thanks<br />An=
drew</span>

--Xy4wjXwtPHm92Gr46pzR--
