Subject: Iignore variable change in the complete recipe #python #yocto
To: yocto@lists.yoctoproject.org
From: rkthebest@gmail.com
X-Originating-Location: Graz, Styria, AT (192.102.17.1)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Feb 2021 06:00:26 -0800
Message-ID: <eTJT.1614002426248481375.4r0u@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jPWxOu4HCDGbrPPfsBdC"

--jPWxOu4HCDGbrPPfsBdC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

we are using a recipe to fetch binary from artifactory and package it in r=
ootfile system.
and this artifactory path can be dynamic so i am using linux system variab=
le to pass this information to the recipe by
d.getVar("SYSTEM_VAR",True)
and then using this variable in recipe to fetch binary from artifactory.

the problem is that when i change the "SYSTEM_VAR on linux machine then YO=
CTO complains "The metadata is not deterministic and this needs to be fixed=
"
because i am changing the variable without changing recipe, and the baseha=
sh value has changed.

what is the best way to solve the above problem?

--jPWxOu4HCDGbrPPfsBdC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />we are using a recipe to fetch binary from artifactory an=
d package it in rootfile system.<br />and this artifactory path can be dyna=
mic so i am using linux system variable to pass this information to the rec=
ipe by <br />d.getVar("SYSTEM_VAR",True)<br />and then using this variable =
in recipe to fetch binary from artifactory.<br /><br />the problem is that =
when i change the "SYSTEM_VAR on linux machine then YOCTO complains "The me=
tadata is not deterministic and this needs to be fixed"<br />because i am c=
hanging the variable without changing recipe, and the basehash value has ch=
anged.<br /><br />what is the best way to solve the above problem?

--jPWxOu4HCDGbrPPfsBdC--
