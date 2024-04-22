Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52047C4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 06:53:00 +0000 (UTC)
Subject: Re: [yocto] Http access token fetching with gitsm fetcher
To: "Janne Kiiskila" <janne.kiiskila@izumanetworks.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 21 Apr 2024 23:52:51 -0700
References: <DS0PR14MB6191FE636A1287711CE03096850D2@DS0PR14MB6191.namprd14.prod.outlook.com>
In-Reply-To: <DS0PR14MB6191FE636A1287711CE03096850D2@DS0PR14MB6191.namprd14.prod.outlook.com>
Message-ID: <28950.1713768771510530708@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="i1SG1qSiICfrK79UlpZb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 06:53:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62973

--i1SG1qSiICfrK79UlpZb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Janne,

On Fri, Apr 19, 2024 at 06:44 AM, Janne Kiiskila wrote:

>=20
>=20
>=20
> * SRC_URI =3D "git://${ COMPANY_GIT_REPO }/path/to/project.git;protocol=
=3Dhttps;
> *user=3Dtoken_name:${TOKEN}"*
> * The https+Token was working fine with Dunfell, now I have ported this
> recipe to kirkstone but it is not working and I get this error
> * fatal: could not read Password for 'https://git@COMPANY_GIT_REPO': No
> such device or address
>=20
>=20
>=20
>=20
> Finally, something I might be able to contribute with.
>=20
> * Do not put ever any credentials to any recipes. That=E2=80=99s not the =
right
> place for them and they will leak.
> * Credentials are a build machine configuration issue. You can use git
> redirects for this purpose.
>=20
>=20
> This type of thing is only required for private repositories typically,
> here is an example for a GitHub action
>=20
>=20
>=20
> https://github.com/PelionIoT/actions
>=20
>=20
>=20
> that does it. But, essentially it boils down to configuring git:
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> git config --global user.name "Your BOT"
>=20
>=20
>=20
> git config --global user.email your@email.com
>=20
>=20
>=20
> git config --global url. https://${{ inputs.github_token }}@github.com/ (
> https://$%7b%7b%20inputs.github_token%20%7d%7d@github.com/ ).insteadOf gi=
t@github.com:
>=20
>=20
>=20
>=20
> git config --global url. https://${{ inputs.github_token }}@github (
> https://$%7b%7b%20inputs.github_token%20%7d%7d@github ).insteadOf https:/=
/github
>=20
>=20
>=20
>=20
> I hope this helps.
>=20
>=20
>=20
>=20
>=20
>=20
>=20

thanks for your help, I will give it a try.

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
> Best Regards,
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> Janne Kiiskil=C3=A4
>=20
>=20
>=20

Regards,

Salahaldeen Altous

--i1SG1qSiICfrK79UlpZb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Janne,</p>
<p>&nbsp;</p>
<p>On Fri, Apr 19, 2024 at 06:44 AM, Janne Kiiskila wrote:</p>
<blockquote><!-- [if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!-- [if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
<div class=3D"WordSection1">
<div>
<ul type=3D"disc">
<li style=3D"mso-list: l2 level1 lfo2;"><span style=3D"font-size: 11.5pt; f=
ont-family: 'Arial',sans-serif; color: #1d1c1d; background: white;">SRC_URI=
 =3D "git://${</span>COMPANY_GIT_REPO<span style=3D"font-size: 11.5pt; font=
-family: 'Arial',sans-serif; color: #1d1c1d; background: white;">}/path/to/=
project.git;protocol=3Dhttps;<strong><span style=3D"font-family: 'Arial',sa=
ns-serif;">user=3Dtoken_name:${TOKEN}"</span></strong></span></li>
<li style=3D"mso-list: l2 level1 lfo2;">The https+Token was working fine wi=
th Dunfell, now I have ported this recipe to kirkstone but it is not workin=
g and I get this error</li>
<li style=3D"mso-list: l2 level1 lfo2;">fatal: could not read Password for =
'https://git@COMPANY_GIT_REPO': No such device or address</li>
</ul>
<p>&nbsp;<span lang=3D"EN-US">Finally, something I might be able to contrib=
ute with. </span></p>
<ol start=3D"1" type=3D"1">
<li style=3D"mso-list: l0 level1 lfo3;"><span lang=3D"EN-US" style=3D"font-=
size: 11.0pt;">Do not put ever any credentials to any recipes. That&rsquo;s=
 not the right place for them and they will leak.</span></li>
<li style=3D"mso-list: l0 level1 lfo3;"><span lang=3D"EN-US" style=3D"font-=
size: 11.0pt;">Credentials are a build machine configuration issue. You can=
 use git redirects for this purpose.</span></li>
</ol>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">This type of thing is only required for private repositories typic=
ally, here is an example for a GitHub action</span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;"><a href=3D"https://github.com/PelionIoT/actions">https://github.co=
m/PelionIoT/actions</a></span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">that does it. But, essentially it boils down to configuring git:</=
span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;</span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git config =
--global user.name "Your BOT"</span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git config =
--global user.email <a href=3D"mailto:your@email.com">your@email.com</a></s=
pan></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git config =
--global url.<a href=3D"https://$%7b%7b%20inputs.github_token%20%7d%7d@gith=
ub.com/">https://${{ inputs.github_token }}@github.com/</a>.insteadOf <a hr=
ef=3D"mailto:git@github.com:">git@github.com:</a></span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git config =
--global url.<a href=3D"https://$%7b%7b%20inputs.github_token%20%7d%7d@gith=
ub">https://${{ inputs.github_token }}@github</a>.insteadOf <a href=3D"http=
s://github">https://github</a></span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">I hope this helps.</span></p>
<p style=3D"margin-left: 18.0pt;">&nbsp;</p>
</div>
</div>
</blockquote>
<p>thanks for your help, I will give it a try.</p>
<blockquote>
<div class=3D"WordSection1">
<div>
<p style=3D"margin-left: 18.0pt;">&nbsp;</p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;</span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">Best Regards,</span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">&nbsp;</span></p>
<p style=3D"margin-left: 18.0pt;"><span lang=3D"EN-US" style=3D"font-size: =
11.0pt;">Janne Kiiskil&auml;</span></p>
</div>
</div>
</blockquote>
<p><br />Regards,</p>
<p>Salahaldeen Altous</p>

--i1SG1qSiICfrK79UlpZb--

