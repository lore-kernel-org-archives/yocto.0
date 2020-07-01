Subject: #yocto
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.210.249)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 08:36:50 -0700
Message-ID: <TwWH.1593617810628852168.CTrX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xxMPhh6lElcCDSH7n1o5"

--xxMPhh6lElcCDSH7n1o5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
i am building an image for RPI4 but while building core-image-sato i am ge=
tting the following error
pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sato
Parsing recipes: 100% |###################################################=
###########################################################################=
########################################| Time: 0:01:56
Parsing of 2279 .bb files complete (0 cached, 2279 parsed). 3439 targets, =
196 skipped, 0 masked, 0 errors.
*ERROR: Nothing PROVIDES 'core-image-sato'*
*core-image-sato was skipped: 'hwcodecstools-debug' in IMAGE_FEATURES is n=
ot a valid image feature.* Valid features: allow-empty-password allow-root-=
login bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pkgs ecli=
pse-debug empty-root-password hwcodecs nfs-client nfs-server package-manage=
ment post-install-logging ptest-pkgs read-only-rootfs splash src-pkgs ssh-s=
erver-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs tools-deb=
ug tools-profile tools-sdk tools-testapps x11 x11-base x11-sato

later *i have removed the hwcodecstools-debug feature from core-image-sato=
.bb* then i got same above error for=C2=A0=C2=A0ssh-server-dropbeartools-de=
bug' likewise for all features (# IMAGE_FEATURES +=3D "splash package-manag=
ement x11-base x11-sato ssh-server-dropbear hwcodecs") from core-image-sato=
.bb

i am attaching detailed error message

ERROR: Nothing PROVIDES 'core-image-sato'
core-image-sato was skipped: 'hwcodecstools-debug' in IMAGE_FEATURES is no=
t a valid image feature. Valid features: allow-empty-password allow-root-lo=
gin bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pkgs eclips=
e-debug empty-root-password hwcodecs nfs-client nfs-server package-manageme=
nt post-install-logging ptest-pkgs read-only-rootfs splash src-pkgs ssh-ser=
ver-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs tools-debug=
 tools-profile tools-sdk tools-testapps x11 x11-base x11-sato

This is error message when i removed hwcodecstools-debug from 'core-image-=
sato
pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sato
Loading cache: 100% |#####################################################=
###########################################################################=
########################################| Time: 0:00:00
Loaded 3439 entries from dependency cache.
Parsing recipes: 100% |###################################################=
###########################################################################=
########################################| Time: 0:00:00
Parsing of 2279 .bb files complete (2274 cached, 5 parsed). 3439 targets, =
196 skipped, 0 masked, 0 errors.
ERROR: Nothing PROVIDES 'core-image-sato'
core-image-sato was skipped: 'package-managementtools-debug' in IMAGE_FEAT=
URES is not a valid image feature. Valid features: allow-empty-password all=
ow-root-login bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-p=
kgs eclipse-debug empty-root-password hwcodecs nfs-client nfs-server packag=
e-management post-install-logging ptest-pkgs read-only-rootfs splash src-pk=
gs ssh-server-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs t=
ools-debug tools-profile tools-sdk tools-testapps x11 x11-base x11-sato

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

This is error message when i removed=C2=A0 package-managementtools-debug' =
and=C2=A0=C2=A0x11-base x11-sato ssh-server-dropbear from 'core-image-sato
pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sato
Loading cache: 100% |#####################################################=
###########################################################################=
########################################| Time: 0:00:00
Loaded 3439 entries from dependency cache.
Parsing recipes: 100% |###################################################=
###########################################################################=
########################################| Time: 0:00:00
Parsing of 2279 .bb files complete (2274 cached, 5 parsed). 3439 targets, =
196 skipped, 0 mask 0 errors.
ERROR: Nothing PROVIDES 'core-image-sato'
core-image-sato was skipped: 'splashtools-debug' in IMAGE_FEATURES is not =
a valid image feature. Valid features: allow-empty-password allow-root-logi=
n bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pkgs eclipse-=
debug empty-root-password hwcodecs nfs-client nfs-server package-management=
 post-install-logging ptest-pkgs read-only-rootfs splash src-pkgs ssh-serve=
r-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs tools-debug t=
ools-profile tools-sdk tools-testapps x11 x11-base x11-sato

1) Now i have removed all the features from that .bb file why i am getting=
 these errors??

2) I have built the image without these configuration but after booting th=
e image its asking for password for connecting from ssh thought i have not =
set any packages
i have included following features in local.conf file of build dir

EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
ENABLE_UART =3D "1"
#EXTRA_IMAGE_FEATURES ?=3D "allow-empty-password allow-root-login"
CORE_IMAGE_EXTRA_INSTALL +=3D "git ruby bsdtar pseudo os-release lsb-relea=
se cmake"
DISTRO_FEATURES_append =3D "opengl python3-pip"
EXTRA_IMAGE_FEATURES_append +=3D "src-pkgs package-management ssh-server-d=
ropbear ssh-server-openssh stateless-rootfs "
PACKAGE_CLASSES =3D "package_deb"
IMAGE_INSTALL_append =3D " glibc-utils localedef unicode-ucd "
IMAGE_FEATURES_append =3D "tools-debug tools-sdk dev-pkgs"
CORE_IMAGE_EXTRA_INSTALL +=3D " kernel-modules bash e2fsprogs mtools parte=
d dosfstools mtd-utils-ubifs openssh"
IMAGE_INSTALL_append +=3D " dhcp-client dhcp-server python3-pip "
DISTRO ?=3D "Exaleap-arm-linux"

can someone help me to ressolve this issue???

--xxMPhh6lElcCDSH7n1o5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />i am building an image for RPI4 but while building core-image-sato=
 i am getting the following error<br />
<div>pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sa=
to</div>
<div>Parsing recipes: 100% |##############################################=
###########################################################################=
#############################################| Time: 0:01:56</div>
<div>Parsing of 2279 .bb files complete (0 cached, 2279 parsed). 3439 targ=
ets, 196 skipped, 0 masked, 0 errors.</div>
<div><strong>ERROR: Nothing PROVIDES 'core-image-sato'</strong></div>
<div><strong>core-image-sato was skipped: 'hwcodecstools-debug' in IMAGE_F=
EATURES is not a valid image feature.</strong> Valid features: allow-empty-=
password allow-root-login bash-completion-pkgs dbg-pkgs debug-tweaks dev-pk=
gs doc doc-pkgs eclipse-debug empty-root-password hwcodecs nfs-client nfs-s=
erver package-management post-install-logging ptest-pkgs read-only-rootfs s=
plash src-pkgs ssh-server-dropbear ssh-server-openssh stateless-rootfs stat=
icdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11 x11-base =
x11-sato</div>
<div><br />later <strong>i have removed the hwcodecstools-debug feature fr=
om core-image-sato.bb</strong> then i got same above error for&nbsp;&nbsp;s=
sh-server-dropbeartools-debug' likewise for all features (# IMAGE_FEATURES =
+=3D "splash package-management x11-base x11-sato ssh-server-dropbear hwcod=
ecs") from&nbsp;<span style=3D"font-weight: bold;">&nbsp;</span><span style=
=
=3D"font-weight: bold;">core-image-sato.bb&nbsp;<br /></span><br />i am at=
taching detailed error message<br /><br />
<div style=3D"line-height: 1.42857;"><span style=3D"font-weight: bold;">ER=
ROR: Nothing PROVIDES 'core-image-sato'</span></div>
<div style=3D"line-height: 1.42857;"><span style=3D"font-weight: bold;">co=
re-image-sato was skipped: 'hwcodecstools-debug' in IMAGE_FEATURES is not a=
 valid image feature.</span>&nbsp;Valid features: allow-empty-password allo=
w-root-login bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pk=
gs eclipse-debug empty-root-password hwcodecs nfs-client nfs-server package=
-management post-install-logging ptest-pkgs read-only-rootfs splash src-pkg=
s ssh-server-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs to=
ols-debug tools-profile tools-sdk tools-testapps x11 x11-base x11-sato<br /=
><br />This is error message when i removed&nbsp;&nbsp;<span style=3D"font-=
weight: bold;">hwcodecstools-debug from&nbsp;</span><span style=3D"font-wei=
ght: bold;">'core-image-sato</span><br />
<div style=3D"line-height: 1.42857;">pankaj@exaleap-Inspiron-3584:~/Oe-Ras=
pberrypi4$ bitbake core-image-sato</div>
<div style=3D"line-height: 1.42857;">Loading cache: 100% |################=
###########################################################################=
###########################################################################=
##| Time: 0:00:00</div>
<div style=3D"line-height: 1.42857;">Loaded 3439 entries from dependency c=
ache.</div>
<div style=3D"line-height: 1.42857;">Parsing recipes: 100% |##############=
###########################################################################=
###########################################################################=
##| Time: 0:00:00</div>
<div style=3D"line-height: 1.42857;">Parsing of 2279 .bb files complete (2=
274 cached, 5 parsed). 3439 targets, 196 skipped, 0 masked, 0 errors.</div>
<div style=3D"line-height: 1.42857;">ERROR: Nothing PROVIDES 'core-image-s=
ato'</div>
<div style=3D"line-height: 1.42857;">core-image-sato was skipped: 'package=
-managementtools-debug' in IMAGE_FEATURES is not a valid image feature. Val=
id features: allow-empty-password allow-root-login bash-completion-pkgs dbg=
-pkgs debug-tweaks dev-pkgs doc doc-pkgs eclipse-debug empty-root-password =
hwcodecs nfs-client nfs-server package-management post-install-logging ptes=
t-pkgs read-only-rootfs splash src-pkgs ssh-server-dropbear ssh-server-open=
ssh stateless-rootfs staticdev-pkgs tools-debug tools-profile tools-sdk too=
ls-testapps x11 x11-base x11-sato</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Summary: There was 1 ERROR message sh=
own, returning a non-zero exit code.<br /><br /></div>
<div>This is error message when i removed&nbsp; package-managementtools-de=
bug' and&nbsp;&nbsp;x11-base x11-sato ssh-server-dropbear<span style=3D"fon=
t-weight: bold;">&nbsp;from&nbsp;</span><span style=3D"font-weight: bold;">=
'core-image-sato</span></div>
<div>
<div>pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sa=
to</div>
<div>Loading cache: 100% |################################################=
###########################################################################=
#############################################| Time: 0:00:00</div>
<div>Loaded 3439 entries from dependency cache.</div>
<div>Parsing recipes: 100% |##############################################=
###########################################################################=
#############################################| Time: 0:00:00</div>
<div>Parsing of 2279 .bb files complete (2274 cached, 5 parsed). 3439 targ=
ets, 196 skipped, 0 mask 0 errors.</div>
<div>ERROR: Nothing PROVIDES 'core-image-sato'</div>
<div>core-image-sato was skipped: 'splashtools-debug' in IMAGE_FEATURES is=
 not a valid image feature. Valid features: allow-empty-password allow-root=
-login bash-completion-pkgs dbg-pkgs debug-tweaks dev-pkgs doc doc-pkgs ecl=
ipse-debug empty-root-password hwcodecs nfs-client nfs-server package-manag=
ement post-install-logging ptest-pkgs read-only-rootfs splash src-pkgs ssh-=
server-dropbear ssh-server-openssh stateless-rootfs staticdev-pkgs tools-de=
bug tools-profile tools-sdk tools-testapps x11 x11-base x11-sato</div>
</div>
<div><br />1) Now i have removed all the features from that .bb file why i=
 am getting these errors??<br /><br />2) I have built the image without the=
se configuration but after booting the image its asking for password for co=
nnecting from ssh thought i have not set any packages<br />i have included =
following features in local.conf file of build dir<br /><br />
<div>EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"</div>
<div>ENABLE_UART =3D "1"</div>
<div>#EXTRA_IMAGE_FEATURES ?=3D "allow-empty-password allow-root-login"</d=
iv>
<div>CORE_IMAGE_EXTRA_INSTALL +=3D "git ruby bsdtar pseudo os-release lsb-=
release cmake"</div>
<div>DISTRO_FEATURES_append =3D "opengl python3-pip"</div>
<div>EXTRA_IMAGE_FEATURES_append +=3D "src-pkgs package-management ssh-ser=
ver-dropbear ssh-server-openssh stateless-rootfs "</div>
<div>PACKAGE_CLASSES =3D "package_deb"</div>
<div>IMAGE_INSTALL_append =3D " glibc-utils localedef unicode-ucd "</div>
<div>IMAGE_FEATURES_append =3D "tools-debug tools-sdk dev-pkgs"</div>
<div>CORE_IMAGE_EXTRA_INSTALL +=3D " kernel-modules bash e2fsprogs mtools =
parted dosfstools mtd-utils-ubifs openssh"</div>
<div>IMAGE_INSTALL_append +=3D " dhcp-client dhcp-server python3-pip "</di=
v>
<div>DISTRO ?=3D "Exaleap-arm-linux"</div>
<div>&nbsp;</div>
can someone help me to ressolve this issue???</div>
</div>
</div>

--xxMPhh6lElcCDSH7n1o5--
