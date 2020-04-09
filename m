Subject: Re: imx-boot do_compile failing with custom distro #yocto
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Apr 2020 03:58:10 -0700
References: <e184439e-230a-fa2e-27bb-c2e9c4c8ac4f@ibeeto.com>
In-Reply-To: <e184439e-230a-fa2e-27bb-c2e9c4c8ac4f@ibeeto.com>
Message-ID: <5897.1586429890891243132@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ajvw8pg4teaYwL3tCl3H"

--ajvw8pg4teaYwL3tCl3H
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,
I did some digging in imx-atf_1.0.bb and saw that it copies bl31-imx8mq.bi=
n to the imx-boot-tools folder in do_deploy().
In imx-boot_0.2.bb I can see that its do_compile is setup to run after imx=
-atf's do_deploy:

>=20
> do_compile[depends] +=3D " \
> virtual/bootloader:do_deploy \
> ${@' '.join('%s:do_deploy' % r for r in '${IMX_FIRMWARE}'.split() )} \
> imx-atf:do_deploy \
> ${IMX_M4_DEMOS} \
> ${@bb.utils.contains('COMBINED_FEATURES', 'optee',
> 'optee-os-imx:do_deploy', '', d)} \
> "
>=20

As I have learned that is exactly the mechanism used to instruct one recip=
e to only be executed *after* a specific step in another recipe.
I think that if that piece of code was not there, my problem would be exac=
tly what you described: imx-boot:do_compile executing after imx-atf:do_inst=
all but before imx-atf:do_deploy.

I followed your advice to build imx-atf on its own (which worked) and I th=
ink I know why my build failed:
I was not aware of imx-boot depending on imx-atf. While I was trying to ge=
t my new distro to work I at one point deleted the imx-boot-tools folder ma=
nually. I now realise that that is not a smart move.
Additionally I ran bitbake -c clean imx-boot. But not bitbake -c clean imx=
-atf , because I was not aware of it existing.
That likely led to imx-boot being rebuilt at next build, but imx-atf being=
 considered up-to-date by bitbake. So it didn't bother building it again.
But because I manually removed some of the files imx-atf would produce, an=
d upon which imx-boot depends, the build failed.

So in the end your explanations, hints and advice helped me understand mor=
e about how bitbake recipes interact with each other.
It would have probably been very difficult for you (or anyone) to spot my =
real problem since you could never have anticipated me just taking a shotgu=
n to the files in my deploy directory :D
Nevertheless I want to thank you for your help.

I consider this issue solved.

Stefan

--ajvw8pg4teaYwL3tCl3H
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,<br />I did some digging in <em>imx-atf_1.0.bb</em> and saw that =
it copies <em>bl31-imx8mq.bin</em> to the <em>imx-boot-tools</em> folder in=
 do_deploy().<br />In <em>imx-boot_0.2.bb</em> I can see that its do_compil=
e is setup to run after imx-atf's do_deploy:<br />
<blockquote>
<div>do_compile[depends] +=3D " \</div>
<div>&nbsp; &nbsp; virtual/bootloader:do_deploy \</div>
<div>&nbsp; &nbsp; ${@' '.join('%s:do_deploy' % r for r in '${IMX_FIRMWARE=
}'.split() )} \</div>
<div>&nbsp; &nbsp; imx-atf:do_deploy \</div>
<div>&nbsp; &nbsp; ${IMX_M4_DEMOS} \</div>
<div>&nbsp; &nbsp; ${@bb.utils.contains('COMBINED_FEATURES', 'optee', 'opt=
ee-os-imx:do_deploy', '', d)} \</div>
<div>"</div>
</blockquote>
<div>As I have learned that is exactly the mechanism used to instruct one =
recipe to only be executed <strong>after</strong> a specific step in anothe=
r recipe.<br />I think that if that piece of code was not there, my problem=
 would be exactly what you described: <em>imx-boot:do_compile</em> executin=
g after <em>imx-atf:do_install</em> but before <em>imx-atf:do_deploy</em>.<=
br /><br />I followed your advice to build imx-atf on its own (which worked=
) and I think I know why my build failed:<br />I was not aware of imx-boot =
depending on imx-atf. While I was trying to get my new distro to work I at =
one point deleted the imx-boot-tools folder manually. I now realise that th=
at is not a smart move.<br />Additionally I ran <em>bitbake -c clean imx-bo=
ot</em>. But not <em>bitbake -c clean imx-atf</em>, because I was not aware=
 of it existing.<br />That likely led to imx-boot being rebuilt at next bui=
ld, but imx-atf being considered up-to-date by bitbake. So it didn't bother=
 building it again.<br />But because I manually removed some of the files i=
mx-atf would produce, and upon which imx-boot depends, the build failed.<br=
 /><br />So in the end your explanations, hints and advice helped me unders=
tand more about how bitbake recipes interact with each other.<br />It would=
 have probably been very difficult for you (or anyone) to spot my real prob=
lem since you could never have anticipated me just taking a shotgun to the =
files in my deploy directory :D<br />Nevertheless I want to thank you for y=
our help.<br /><br />I consider this issue solved.<br /><br />Stefan</div>

--ajvw8pg4teaYwL3tCl3H--
