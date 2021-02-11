Subject: [Meta-Java] Error while installing jamvm #yocto #dunfell
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Feb 2021 23:57:01 -0800
Message-ID: <sERl.1613030221024869452.vtvX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="E632SR1DMSoWJpv8w1za"

--E632SR1DMSoWJpv8w1za
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have download meta-java layer and added to the conf/bblayer.conf file, t=
hen added jamvm to conf/local.conf file and ran bitbake command, but I got =
this error as "Nothing RPROVIDES 'jamvm' (but /home/bl-docker/rity/src/poky=
/../meta-mediatek-bsp/recipes-core/images/mtk-image.bb RDEPENDS on or other=
wise requires it) jamvm was skipped: incompatible with machine i500-pumpkin=
 (not in COMPATIBLE_MACHINE)"

Recipe file path is under=C2=A0/src/meta-java/recipes-core/jamvm/jamvm_git=
.bb. Did I miss anything or does my target board has any compatibility issu=
e?

Thanks & Regards,
Vijay Rakesh

--E632SR1DMSoWJpv8w1za
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have download meta-java layer and added to the conf/bblaye=
r.conf file, then added jamvm to conf/local.conf file and ran bitbake comma=
nd, but I got this error as "Nothing RPROVIDES 'jamvm' (but /home/bl-docker=
/rity/src/poky/../meta-mediatek-bsp/recipes-core/images/mtk-image.bb RDEPEN=
DS on or otherwise requires it) jamvm was skipped: incompatible with machin=
e i500-pumpkin (not in COMPATIBLE_MACHINE)"<br /><br />Recipe file path is =
under&nbsp;/src/meta-java/recipes-core/jamvm/jamvm_git.bb. Did I miss anyth=
ing or does my target board has any compatibility issue?&nbsp;<br /><br />T=
hanks &amp; Regards,<br />Vijay Rakesh

--E632SR1DMSoWJpv8w1za--
