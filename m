Subject: Re: Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Mar 2020 06:41:57 -0700
References: <20200327130927.dwe5tooql4p4s2d4@qschulz>
In-Reply-To: <20200327130927.dwe5tooql4p4s2d4@qschulz>
Message-ID: <17939.1585316517056146913@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="T4YuAChr7xPleHzV85fi"

--T4YuAChr7xPleHzV85fi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
I have now read up on the exact meaning of PROVIDES and PACKAGES and I do =
understand your response.
It does sound like I am talking about PACKAGES since I did suspect PROVIDE=
S to work like that.
Well at least if PROVIDES would work like that, it would explain why my po=
stinstall did not work previously.

But I did use PROVIDES, which I now know is basically just a alias.

Here is the situation I had before and how I solved it:

Previous attempt:
*my_recipe.bb:*
...
PROVIDES +=3D "my_recipes_package"
RPROVIDES_${PN} +=3D "my_recipes_package"

pkg_postinst_ontarget_${PN} () {
#!/bin/sh
file=3D$D/home/root/test/test.txt
printf "hello world\n" > $file
}

*my_image.bb:*
IMAGE_INSTALL +=3D " my_recipes_package "

current solution:
*my_recipe.bb:*
...
pkg_postinst_ontarget_${PN} () {
#!/bin/sh
file=3D$D/home/root/test/test.txt
printf "hello world\n" > $file
}

*my_image.bb:*
IMAGE_INSTALL +=3D " my_recipe "

I can only guess that the postinst was only attached to the package called=
 "my_recipe" and not to its alias "my_recipes_package"?

Stefan

--T4YuAChr7xPleHzV85fi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,<br />I have now read up on the exact meaning of PROVIDES and PA=
CKAGES and I do understand your response.<br />It does sound like I am talk=
ing about PACKAGES since I did suspect PROVIDES to work like that.<br />Wel=
l at least if PROVIDES would work like that, it would explain why my postin=
stall did not work previously.<br /><br />But I did use PROVIDES, which I n=
ow know is basically just a alias.<br /><br />Here is the situation I had b=
efore and how I solved it:<br /><br />Previous attempt:<br />
<div style=3D"padding-left: 30px;"><strong>my_recipe.bb:</strong></div>
<div style=3D"padding-left: 60px;">...</div>
<div style=3D"padding-left: 60px;">PROVIDES +=3D "my_recipes_package"</div=
>
<div style=3D"padding-left: 60px;">RPROVIDES_${PN} +=3D "my_recipes_packag=
e"<br /><br /></div>
<div style=3D"padding-left: 60px;">pkg_postinst_ontarget_${PN} () {</div>
<div style=3D"padding-left: 90px;">#!/bin/sh</div>
<div style=3D"padding-left: 90px;">file=3D$D/home/root/test/test.txt</div>
<div style=3D"padding-left: 90px;">printf "hello world\n" &gt; $file</div>
<div style=3D"padding-left: 60px;">}</div>
<br />
<div style=3D"padding-left: 30px;"><strong>my_image.bb:</strong></div>
<div style=3D"padding-left: 60px;">IMAGE_INSTALL +=3D " my_recipes_package=
 "</div>
<br />current solution:<br />
<div style=3D"padding-left: 30px;"><strong>my_recipe.bb:</strong></div>
<div style=3D"padding-left: 60px;">...</div>
<div style=3D"padding-left: 60px;">pkg_postinst_ontarget_${PN} () {</div>
<div style=3D"padding-left: 90px;">#!/bin/sh</div>
<div style=3D"padding-left: 90px;">file=3D$D/home/root/test/test.txt</div>
<div style=3D"padding-left: 90px;">printf "hello world\n" &gt; $file</div>
<div style=3D"padding-left: 60px;">}<br /><br /></div>
<div style=3D"padding-left: 30px;"><strong>my_image.bb:</strong></div>
<div style=3D"padding-left: 60px;">IMAGE_INSTALL +=3D " my_recipe "</div>
<br />I can only guess that the postinst was only attached to the package =
called "my_recipe" and not to its alias "my_recipes_package"?<br /><br />St=
efan

--T4YuAChr7xPleHzV85fi--
