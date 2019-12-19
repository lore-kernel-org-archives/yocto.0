Subject: SSTATE_MIRRORS with ssh/sftp fetchers #yocto
To: yocto@lists.yoctoproject.org
From: angeal1105@gmail.com
X-Originating-Location: Brussels, Brussels Capital, BE (194.78.71.210)
X-Originating-Platform: Linux Firefox 71
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Dec 2019 02:37:30 -0800
Message-ID: <OmzH.1576751850923597182.4rq4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wEWPQuKcM7hmzSOAjt8P"

--wEWPQuKcM7hmzSOAjt8P
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

Recently, I tried to use the SSTATE_MIRRORS variable to get back sstate ca=
che from a build machine shared amongst developers.
When I tried with the simple FILE fetcher, it worked great and resumed the=
 work where the build machine stopped.
But when I tried to replace it with SSH and/or SFTP fetchers (setup to con=
nect on my own machine), I had no errors or warnings, but the steps started=
 from scratch, ignoring the sstate cache mirror.

The thing is that we can't use unauthenticated HTTP/FTP fetchers for corpo=
rate security reasons.
SSH and SFTP are convenients as we use crops and mount ssh keys inside to =
authenticate ourselves on corporate git servers.

Environment:

I'm using Yocto 2.6 (Thud) and CROPS.
I've set up my machine as SSH/SFTP server, and I tried it manually, it wor=
ks: the connection is established (even in CROPS).

I defined the SSTATE_MIRRORS variable in the build/conf/local.conf file.
*Working* : SSTATE_MIRRORS =3D "file://.* file://{COMMON_PATH}/sstate-cach=
e/PATH"
*Not working* : SSTATE_MIRRORS =3D "file://.* ssh://user@my-machine-ip/{CO=
MMON_PATH}/sstate-cache/PATH"
*Not* *working* : SSTATE_MIRRORS =3D "file://.* sftp://user@my-machine-ip/=
{COMMON_PATH}/sstate-cache/PATH"

Do you have any idea on how to use these fetchers (or other SSH keys-based=
 secure fetcher) to share sstate cache ?

Don't hesitate to ask for more information/tests from me.
Regards,
Anthony

--wEWPQuKcM7hmzSOAjt8P
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,<br /><br />Recently, I tried to use the SSTATE_MIRRORS vari=
able to get back sstate cache from a build machine shared amongst developer=
s.<br />When I tried with the simple FILE fetcher, it worked great and resu=
med the work where the build machine stopped.<br />But when I tried to repl=
ace it with SSH and/or SFTP fetchers (setup to connect on my own machine), =
I had no errors or warnings, but the steps started from scratch, ignoring t=
he sstate cache mirror.<br /><br />The thing is that we can't use unauthent=
icated HTTP/FTP fetchers for corporate security reasons. <br />SSH and SFTP=
 are convenients as we use crops and mount ssh keys inside to authenticate =
ourselves on corporate git servers.<br /><br />Environment:<br /><br />I'm =
using Yocto 2.6 (Thud) and CROPS.<br />I've set up my machine as SSH/SFTP s=
erver, and I tried it manually, it works: the connection is established (ev=
en in CROPS).<br /><br />I defined the SSTATE_MIRRORS variable in the <em>b=
uild/conf/local.conf </em>file.<br /><strong>Working</strong>: &nbsp; &nbsp=
; &nbsp;&nbsp; <em>SSTATE_MIRRORS =3D "file://.* file://{COMMON_PATH}/sstat=
e-cache/PATH"</em><br /><strong>Not working</strong>:&nbsp; <em>SSTATE_MIRR=
ORS =3D "file://.* ssh://user@my-machine-ip/{COMMON_PATH}/sstate-cache/PATH=
"</em><br /><em><strong>Not</strong><strong>working</strong>:&nbsp; <em>SST=
ATE_MIRRORS =3D "file://.* sftp://user@my-machine-ip/{COMMON_PATH}/sstate-c=
ache/PATH"<br /><br /></em></em>Do you have any idea on how to use these fe=
tchers (or other SSH keys-based secure fetcher) to share sstate cache ?<br =
/><br />Don't hesitate to ask for more information/tests from me.<br />Rega=
rds,<br />Anthony</p>

--wEWPQuKcM7hmzSOAjt8P--
