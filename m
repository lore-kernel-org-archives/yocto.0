Subject: #yocto Preferred development workflow
To: yocto@lists.yoctoproject.org
From: ivin.lim@aei.com
X-Originating-Location: Central, Central and Western District, HK (113.28.90.2)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Jul 2021 20:40:40 -0700
Message-ID: <nspX.1626147640474271051.I1hn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uQCbtWfad2xGj4GNTUNm"

--uQCbtWfad2xGj4GNTUNm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm curious on a good approach when dealing with multiple projects

I've just started out=C2=A0 yocto and have already=C2=A0 created our own m=
eta-layer which contains our modules. Now these modules would sometimes hav=
e config files and this could vary when each project that we have would use=
 these recipes. I'm thinking of a way to control this. And I don't think ha=
ving one branch per project is a good style. Right now the best way I can t=
hink of is creating seperate "project layers" (ex. meta-project1, meta-proj=
ect2) and from there create those .bbappends which would point to the proje=
ct-specific conf files.

But I was wondering if there is a better way of handling it. Thanks.

Cheers.

--uQCbtWfad2xGj4GNTUNm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I'm curious on a good approach when dealing with mu=
ltiple projects<br /><br />I've just started out&nbsp; yocto and have alrea=
dy&nbsp; created our own meta-layer which contains our modules. Now these m=
odules would sometimes have config files and this could vary when each proj=
ect that we have would use these recipes. I'm thinking of a way to control =
this. And I don't think having one branch per project is a good style. Righ=
t now the best way I can think of is creating seperate "project layers" (ex=
. meta-project1, meta-project2) and from there create those .bbappends whic=
h would point to the project-specific conf files.&nbsp;<br /><br />But I wa=
s wondering if there is a better way of handling it. Thanks.<br /><br />Che=
ers.

--uQCbtWfad2xGj4GNTUNm--
