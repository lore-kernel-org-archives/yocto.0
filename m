Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED1C6C04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 09:21:22 +0000 (UTC)
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: "Chen Qi" <Qi.Chen@windriver.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 May 2024 02:21:20 -0700
References: <CO6PR11MB560278C97BA078A862F09B26EDE32@CO6PR11MB5602.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB560278C97BA078A862F09B26EDE32@CO6PR11MB5602.namprd11.prod.outlook.com>
Message-ID: <3449.1715678480890913883@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ff0DCj5MkLHWVBRtPLa7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 09:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63087

--ff0DCj5MkLHWVBRtPLa7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Qi,

On Tue, May 14, 2024 at 01:42 AM, Chen Qi wrote:

>=20
>=20
>=20
> How about using the following setting?
>=20
>=20
>=20
> RDEPENDS:${PN} +=3D =E2=80=9Csqlite3=E2=80=9D
>=20
>=20
>=20
>=20
>=20
>=20
>=20

I have added this (RDEPENDS_${PN} +=3D "sqlite3") to the recipe but I see t=
he same error!!

>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> Regards,
>=20
>=20
>=20
> Qi
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of* Alexander Kanavin
> *Sent:* Tuesday, May 14, 2024 4:34 PM
> *To:* Salahaldeen.Altous@leica-camera.com; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] requires libsqlite3.so()(64bit), but no providers
> found in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> Can you show the complete recipe?
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> Alex
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> On Tue 14. May 2024 at 9.56, Altous, Salahaldeen via lists.yoctoproject.o=
rg
> (
> https://urldefense.com/v3/__http:/lists.yoctoproject.org__;!!AjveYdw8EvQ!=
eO_pOhB66A-tCePBTH62mvBSO1pjmPHgKJU88d0uBTcaaIQxnpreuCx-LEC_L30IGEsV7gr_DrB=
3xVNkWeYVA1XOR2w$
> ) <Salahaldeen.Altous=3D leica-camera.com@lists.yoctoproject.org > wrote:
>=20
>=20
>=20
>>=20
>>=20
>> Hi All,
>>=20
>>=20
>>=20
>> I have one yocto recipe which is using libsqlite3, the compile task is O=
K
>> but I got this error with do_package_qa
>>=20
>>=20
>>=20
>> /usr/lib/libexample.so.0.2.3 contained in package example requires
>> libsqlite3.so()(64bit), but no providers found in RDEPENDS:example.?
>> [file-rdeps]
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> I have added this to the example recipe RDEPENDS but still the problem i=
s
>> not solved, any idea?
>>=20
>>=20
>>=20
>> DEPENDS +=3D " sqlite3"
>> RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)"
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> Regards,
>>=20
>>=20
>>=20
>> Salahaldeen
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>=20
>=20
>

--ff0DCj5MkLHWVBRtPLa7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Qi,</p>
<p>On Tue, May 14, 2024 at 01:42 AM, Chen Qi wrote:</p>
<blockquote><!-- [if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!-- [if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
<div class=3D"WordSection1">
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">How about using the following setting?</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">RDEPENDS:${PN} +=3D =E2=80=9Csqlite3=E2=80=9D</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
</div>
</blockquote>
I have added this (RDEPENDS_${PN} +=3D &#34;sqlite3&#34;) to the recipe but=
 I see the same error!!<br/>
<blockquote>
<div class=3D"WordSection1">
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">Regards,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">Qi</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>
<div style=3D"border: none; border-top: solid #E1E1E1 1.0pt; padding: 3.0pt=
 0in 0in 0in;">
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><span style=3D=
"font-size: 11.0pt; font-family: &#39;Calibri&#39;,sans-serif;">From:</span=
></strong><span style=3D"font-size: 11.0pt; font-family: &#39;Calibri&#39;,=
sans-serif;"> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org=
&gt; <strong>On Behalf Of </strong>Alexander Kanavin<br/><strong>Sent:</str=
ong> Tuesday, May 14, 2024 4:34 PM<br/><strong>To:</strong> Salahaldeen.Alt=
ous@leica-camera.com; yocto@lists.yoctoproject.org<br/><strong>Subject:</st=
rong> Re: [yocto] requires libsqlite3.so()(64bit), but no providers found i=
n RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto</span></p>
</div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Can you show the compl=
ete recipe?</p>
</div>
<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
</div>
<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Alex</p>
</div>
<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<div>
<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">On Tue 14. May 2024 at=
 9.56, Altous, Salahaldeen via <a href=3D"https://urldefense.com/v3/__http:=
/lists.yoctoproject.org__;!!AjveYdw8EvQ!eO_pOhB66A-tCePBTH62mvBSO1pjmPHgKJU=
88d0uBTcaaIQxnpreuCx-LEC_L30IGEsV7gr_DrB3xVNkWeYVA1XOR2w$"> lists.yoctoproj=
ect.org</a> &lt;Salahaldeen.Altous=3D<a href=3D"mailto:leica-camera.com@lis=
ts.yoctoproject.org">leica-camera.com@lists.yoctoproject.org</a>&gt; wrote:=
</p>
</div>
<blockquote style=3D"border: none; border-left: solid #CCCCCC 1.0pt; paddin=
g: 0in 0in 0in 6.0pt; margin-left: 4.8pt; margin-right: 0in;">
<p>Hi All,</p>
<p>I have one yocto recipe which is using libsqlite3, the compile task is O=
K but I got this error with do_package_qa</p>
<p>/usr/lib/libexample.so.0.2.3 contained in package example requires libsq=
lite3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps=
]</p>
<p>=C2=A0</p>
<p>I have added this to the example recipe RDEPENDS but still the problem i=
s not solved, any idea?</p>
<p>DEPENDS +=3D &#34; sqlite3&#34;<br/>RDEPENDS_${PN} +=3D &#34; libsqlite3=
.so()(64bit)&#34;</p>
<p>=C2=A0</p>
<p>Regards,</p>
<p>Salahaldeen</p>
<p class=3D"DefangedMsoNormal" style=3D"margin-bottom: 12.0pt;" style=3D"ma=
rgin:0px;"><br/><br/></p>
</blockquote>
</div>
</div>
</div>
</blockquote>

--ff0DCj5MkLHWVBRtPLa7--

