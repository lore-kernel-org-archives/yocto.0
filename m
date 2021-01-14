Subject: Devtool eSDK remove package #devtool
To: yocto@lists.yoctoproject.org
From: "Gustavo Plaza" <gplaza@gmv.com>
X-Originating-Location: Valladolid, Castille and León, ES (62.42.16.68)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Jan 2021 08:10:29 -0800
Message-ID: <ntiB.1610640629136750062.kf3u@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2xSyCXFN85HEN3HIqQAh"

--2xSyCXFN85HEN3HIqQAh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I have generated and installed eSDK for Yocto sumo correctly.

I have two packages that provide the same headers, one of them is installe=
d by default in the eSDK and I would like to install the other one and remo=
ve the previous from the eSDK.

If I install the second package using the command "devtool sdk-install my-=
package2" I would like the first package to be removed from the sdk. Can I =
add any variable (similar to RREPLACES or RCONFLICTS ) to the "my-package1"=
 and "my-package2" recipes in order to remove one package when the other on=
e is installed?

I think devtool doesn't provide the opposite functionality to sdk-install,=
 isn't it? I think I could implement the funtionallity "sdk-remove" in the =
file sdk.py so that it would be possible to execute the task "do_cleanall" =
of any recipe. Is this ok ? Is there any reason behind the non-existence of=
 the functionality "sdk-remove" ?

Best regards.

--2xSyCXFN85HEN3HIqQAh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>I have generated and installed eSDK for Yocto sumo correctly.</div>
<div>&nbsp;</div>
<div>I have two packages that provide the same headers, one of them is ins=
talled by default in the eSDK and I would like to install the other one and=
 remove the previous from the eSDK.</div>
<div>&nbsp;</div>
<div>If I install the second package using the command "devtool sdk-instal=
l my-package2" I would like the first package to be removed from the sdk. C=
an I add any variable (similar to RREPLACES or RCONFLICTS ) to the "my-pack=
age1" and "my-package2" recipes in order to remove one package when the oth=
er one is installed?</div>
<div>&nbsp;</div>
<div>I think devtool doesn't provide the opposite functionality to sdk-ins=
tall, isn't it? I think I could implement the funtionallity "sdk-remove" in=
 the file sdk.py so that it would be possible to execute the task "do_clean=
all" of any recipe. Is this ok ? Is there any reason behind the non-existen=
ce of the functionality "sdk-remove" ?&nbsp;</div>
<div>&nbsp;</div>
<div>Best regards.</div>

--2xSyCXFN85HEN3HIqQAh--
