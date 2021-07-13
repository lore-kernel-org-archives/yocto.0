Subject: Re: #yocto Preferred development workflow
To: yocto@lists.yoctoproject.org
From: ivin.lim@aei.com
X-Originating-Location: Central, Central and Western District, HK (113.28.90.2)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Jul 2021 21:36:00 -0700
References: <CAB=6tBSuPtobccea9_R9rXrgpZ_+dv966P-ihkVgDumK=-cVfA@mail.gmail.com>
In-Reply-To: <CAB=6tBSuPtobccea9_R9rXrgpZ_+dv966P-ihkVgDumK=-cVfA@mail.gmail.com>
Message-ID: <24631.1626150960225542116@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VEdOyGbMjoJO2YWQbyPV"

--VEdOyGbMjoJO2YWQbyPV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

sorry about that, right now the config files are placed in the files direct=
ory of the recipe which builds the module.

Sample snippets of the recipe concerning this config file, I removed the r=
est of lines.
SRC_URI =3D " \
file://config.json \
"

do_install_append() {
install -m 0644 ${WORKDIR}/config.json ${D}/etc/directory/
}

If I were to have the config files placed on a separate recipe, would that=
 mean making multiple of these recipes depending on the number of projects?
I did thought also of adding it in the image recipe but probably this woul=
dn't look well if more things get added.

Thanks

--VEdOyGbMjoJO2YWQbyPV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

sorry about that, right now the config files are placed in the files direct=
ory of the recipe which builds the module.&nbsp;<br /><br />Sample snippets=
 of the recipe concerning this config file, I removed the rest of lines.<br=
 />
<div><em>SRC_URI =3D " \</em></div>
<div><em><span style=3D"white-space: pre;"> </span>file://config.json \</e=
m></div>
<div><em>&nbsp; &nbsp; "</em><br /><br />
<div><em>do_install_append() {</em></div>
<div><em><span style=3D"white-space: pre;"> </span>install -m 0644 ${WORKD=
IR}/config.json ${D}/etc/directory/</em></div>
<div><em>}<br /><br /><br /></em>If I were to have the config files placed=
 on a separate recipe, would that mean making multiple of these recipes dep=
ending on the number of projects?&nbsp;<br />I did thought also of adding i=
t in the image recipe but probably this wouldn't look well if more things g=
et added.<br /><br /><br />Thanks<br /><br /></div>
</div>

--VEdOyGbMjoJO2YWQbyPV--
