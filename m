Subject: Re: SDKMACHINE and ppc64le issue with latest head?
To: yocto@lists.yoctoproject.org
From: "Andrew Geissler" <geissonator@gmail.com>
X-Originating-Location: Austin, Texas, US (45.18.127.186)
X-Originating-Platform: Mac Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 Jan 2021 08:40:35 -0800
References: <a5d20604428c2581ee69977d9c0221e2e5b2d01f.camel@linuxfoundation.org>
In-Reply-To: <a5d20604428c2581ee69977d9c0221e2e5b2d01f.camel@linuxfoundation.org>
Message-ID: <25512.1611938435690182276@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KJ0sW7cXQgEHCeV2fNq4"

--KJ0sW7cXQgEHCeV2fNq4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> What was SDKMACHINE set to before?

Hey Richard, thanks for the quick response.

We did not have it set. It looks like this recent commit is what changed t=
hings on us:

commit c74ec1dd7393b9dc7bec1a3ca2ed0a56fb18d8fb
Author: Ross Burton <ross@burtonini.com>
Date:=C2=A0=C2=A0 Tue Dec 22 17:23:14 2020 +0000

bitbake.conf: default SDKMACHINE to the build host architecture

Looks like I need to submit a patch to y'all to add a ppc64le.conf to conf=
/machine-sdk/?

--KJ0sW7cXQgEHCeV2fNq4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

&gt; <span id=3D"main">What was SDKMACHINE set to before?<br /><br />Hey Ri=
chard, thanks for the quick response. <br /><br />We did not have it set. I=
t looks like this recent commit is what changed things on us:<br /><br />co=
mmit c74ec1dd7393b9dc7bec1a3ca2ed0a56fb18d8fb<br />Author: Ross Burton &lt;=
ross@burtonini.com&gt;<br />Date:&nbsp;&nbsp; Tue Dec 22 17:23:14 2020 +000=
0<br /><br />&nbsp;&nbsp;&nbsp; bitbake.conf: default SDKMACHINE to the bui=
ld host architecture<br /><br /><br />Looks like I need to submit a patch t=
o y'all to add a ppc64le.conf to conf/machine-sdk/?<br /></span>

--KJ0sW7cXQgEHCeV2fNq4--
