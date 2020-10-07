Subject: Re: Only index.html is cloned in private repo clone recipe #yocto
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 07 Oct 2020 01:42:59 -0700
References: <CAM9ZRVtfC7BBtSC0YoBX3VzM8RmYQZp1LDSp7FA5ZUmSAmE-OA@mail.gmail.com>
In-Reply-To: <CAM9ZRVtfC7BBtSC0YoBX3VzM8RmYQZp1LDSp7FA5ZUmSAmE-OA@mail.gmail.com>
Message-ID: <30730.1602060179317171509@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7ZCAMPTQAyupDcE9sjdN"

--7ZCAMPTQAyupDcE9sjdN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Thanks for the quick reply ,
Actually I was wrong about https, I changed it to http and added: SRCURL =
=3D " git://gitlab.tools.comp.local/comp/sense/sense_frontend" ( http://gi=
tlab.tools.comp.local/comp/sense/sense_frontend" )
instead of SRCURL =3D " http://gitlab.tools.comp.local/comp/sense/sense_fr=
ontend"

Now when I do_fetch:

############
ERROR: sense-web-1.0-r0 do_fetch:
Fetcher failure for URL: 'git://gitlab.tools. comp ( http://gitlab.tools.c=
omp.local/comp/sense/sense_frontend" ).local/ comp ( http://gitlab.tools.co=
mp.local/comp/sense/sense_frontend" ) /sense/sense_frontend;protocol=3Dhttp=
;branch=3Dmaster'.
Please set a valid SRCREV for url ['SRCREV_default_pn-sense-web', 'SRCREV_=
default', 'SRCREV_pn-sense-web', 'SRCREV']
(possible key names are git://gitlab.tools. comp ( http://gitlab.tools.com=
p.local/comp/sense/sense_frontend" ).local/ comp ( http://gitlab.tools.comp=
.local/comp/sense/sense_frontend" ) /sense/sense_frontend;protocol=3Dhttp;b=
ranch=3Dmaster, or use a ;rev=3DX URL parameter)
############

I'm trying to understand the issue for my Yocto knowledge.
Can you help me understand this or fix the issue ?

Thanks alot for the help.

--7ZCAMPTQAyupDcE9sjdN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />Thanks for the quick reply ,<br />Actually I was wrong about https=
, I changed it to http and added: SRCURL =3D "<a href=3D"http://gitlab.tool=
s.comp.local/comp/sense/sense_frontend&quot;" target=3D"_blank" rel=3D"noop=
ener">git://gitlab.tools.comp.local/comp/sense/sense_frontend"</a><br />ins=
tead of SRCURL =3D "<a href=3D"http://gitlab.tools.comp.local/comp/sense/se=
nse_frontend&quot;" target=3D"_blank" rel=3D"noopener">http://gitlab.tools.=
comp.local/comp/sense/sense_frontend"</a><br /><br />Now when I do_fetch:<b=
r /><br />############<br />ERROR: sense-web-1.0-r0 do_fetch: <br />Fetcher=
 failure for URL: 'git://gitlab.tools.<a href=3D"http://gitlab.tools.comp.l=
ocal/comp/sense/sense_frontend&quot;" target=3D"_blank" rel=3D"noopener">co=
mp</a>.local/<a href=3D"http://gitlab.tools.comp.local/comp/sense/sense_fro=
ntend&quot;" target=3D"_blank" rel=3D"noopener">comp</a>/sense/sense_fronte=
nd;protocol=3Dhttp;branch=3Dmaster'. <br />Please set a valid SRCREV for ur=
l ['SRCREV_default_pn-sense-web', 'SRCREV_default', 'SRCREV_pn-sense-web', =
'SRCREV'] <br />(possible key names are git://gitlab.tools.<a href=3D"http:=
//gitlab.tools.comp.local/comp/sense/sense_frontend&quot;" target=3D"_blank=
" rel=3D"noopener">comp</a>.local/<a href=3D"http://gitlab.tools.comp.local=
/comp/sense/sense_frontend&quot;" target=3D"_blank" rel=3D"noopener">comp</=
a>/sense/sense_frontend;protocol=3Dhttp;branch=3Dmaster, or use a ;rev=3DX =
URL parameter)<br />############<br /><br />I'm trying to understand the is=
sue for my Yocto knowledge.<br />Can you help me understand this or fix the=
 issue ?<br /><br />Thanks alot for the help.

--7ZCAMPTQAyupDcE9sjdN--
