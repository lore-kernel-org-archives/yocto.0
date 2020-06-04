Subject: Why and when we need to migrate to newer #yocto version?
To: yocto@lists.yoctoproject.org
From: requinham@gmail.com
X-Originating-Location: Paris, Île-de-France, FR (86.245.40.4)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jun 2020 01:18:43 -0700
Message-ID: <3jcy.1591258723749216280.cuB3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tW5lXNUiCA0YdprM0wwm"

--tW5lXNUiCA0YdprM0wwm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My question is about the #Yocto update and *maintenance strategy*. I have s=
everal projects for different boards and different versions of Yocto (1.7 2=
.0 2.2) which includes their BSP.

As an OS build system, especially GNU/Linux, I don't understand exactly wh=
en should we necessarily migrate to a new version?

In my understanding, the versions of the kernel, libraries and tools are i=
ndependent from Yocto version. If you need to migrate to a new version of t=
he Linux kernel, you have to modify/add the right recipe without worrying a=
bout the Yocto version.

Thus, the maintenance work -security, bugs, optimization- should relate to=
 the recipes and not to Yocto itself.

Updating Yocto may have sens for me when we need to use new bitbake featur=
e or new architecture but not to use new version of package. I think we sho=
uld keep in mind to manage a certain consistency and compatibility between =
the different versions of the recipes in order for example to use the right=
 version of the openssl library with the right version of Qt or even betwee=
n the right version of the kernel and drivers, etc.
Thanks,
Mohamed

--tW5lXNUiCA0YdprM0wwm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-se=
rif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear:=
 both; color: #242729;">My question is about the #Yocto update and <strong>=
maintenance strategy</strong>. I have several projects for different boards=
 and different versions of Yocto (1.7 2.0 2.2) which includes their BSP.</p=
>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">As an OS build system, especially GNU/Linux, I don=
't understand exactly when should we necessarily migrate to a new version?<=
/p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">In my understanding, the versions of the kernel, l=
ibraries and tools are independent from Yocto version. If you need to migra=
te to a new version of the Linux kernel, you have to modify/add the right r=
ecipe without worrying about the Yocto version.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Thus, the maintenance work -security, bugs, optimi=
zation- should relate to the recipes and not to Yocto itself.</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Updating Yocto may have sens for me when we need t=
o use new bitbake feature or new architecture but not to use new version of=
 package. I think we should keep in mind to manage a certain consistency an=
d compatibility between the different versions of the recipes in order for =
example to use the right version of the openssl library with the right vers=
ion of Qt or even between the right version of the kernel and drivers, etc.=
<br />Thanks,<br />Mohamed</p>

--tW5lXNUiCA0YdprM0wwm--
