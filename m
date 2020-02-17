Subject: Creating a build system which can scale. #yocto
To: yocto@lists.yoctoproject.org
From: philip.lewis@domino-uk.com
X-Originating-Location: Huntingdon, England, GB (217.151.40.5)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 04:27:17 -0800
Message-ID: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jRR3PpzW6SvMVCpMzxM5"

--jRR3PpzW6SvMVCpMzxM5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking for some advice about the best way to implement a build enviro=
nment in the cloud for multiple=C2=A0dev teams which will scale as the numb=
er of dev teams grow.

Our devs are saying:

*What do we want?*

To scale our server-based build infrastructure, so that engineers can buil=
d branches using the same infrastructure that produces a releasable artefac=
t, before pushing it into develop. As much automation of this as possible i=
s desired..

*Blocker* : Can=E2=80=99t just scale current system=C2=A0=E2=80=93=C2=A0ca=
n=E2=80=99t keep throwing more hardware at it, particularly storage. The ma=
in contributor to storage requirements is using a local cache in each build=
 workspace and there will be one workspace for each branch, per Jenkins age=
nt: 3 teams x 10 branches per team x 70Gb per branch/workspace x number of =
build agents (let say 5) =3D 10Tb. As you can see this doesn=E2=80=99t scal=
e well as we add branches, teams or build agents. Most of this 10Tb is the =
caches in each workspace, where most of the contents of each individual cac=
he is identical.

*A possible=C2=A0solution:
*

Disclaimer/admission: I=E2=80=99ve not really researched/considered _ all =
_ =C2=A0possible=C2=A0solutions to the problem above, I just started search=
ing and reading and came up with/felt led towards =C2=A0this. I think there=
 is some value in spending some of the meeting exploring other options to s=
ee if anything=C2=A0sounds better (for a what definition of better?).

**

Something using the built-in cache mirror in Yocto=E2=80=93there are a few=
 ways it can do this, as it=E2=80=99s essentially a file share somewhere. h=
ttps://pelux.io/2017/06/19/How-to-create-a-shared-sstate-dir.html for an ex=
ample shows how to share it via NFS, but you can also use http or ftp.

Having a single cache largely solves the storage issue as there is only on=
e cache, so having solved that issue, it introduces a few more questions an=
d constraints:

* How do we manage the size of the cache?

There=E2=80=99s no built-in expiry mechanism I could find. This means we=
=E2=80=99d probably have to create something ourselves (parse access logs =
from the server hosting the cache and apply a garbage collector process).

* How/When do we update the cache?

All environments contributing to the cache need to be identical (that ansi=
ble playbook just grabs the latest of everything) to avoid subtle differenc=
es in the build artefacts depending on which environment populated the cach=
e.

* How much time will fetching the cache from a remote server add to the bu=
ild?

I think this is probably something we will have to just live with, but if =
it=E2=80=99s all in the cloud the network speed between VMs is fast.

This shared cache solution removes the per agent cost on storage, and also=
=
=C2=A0=E2=80=93=C2=A0a varying extent=C2=A0=E2=80=93=C2=A0the per branch c=
osts (assuming that you=E2=80=99re not working on something at the top/star=
t beginning of the dependency tree) =C2=A0from the equation above.

I=E2=80=99d love to see some other ideas as well as I worry I=E2=80=99m mi=
ssing something easier or more obvious=C2=A0=E2=80=93=C2=A0better.

Any thoughts?
Thanks
Phill

--jRR3PpzW6SvMVCpMzxM5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm looking for some advice about the best way to implement =
a build environment in the cloud for multiple&nbsp;dev teams which will sca=
le as the number of dev teams grow. <br /><br />Our devs are saying:<br /><=
br />
<p class=3D"xmsonormal"><strong>What do we want?</strong></p>
<p class=3D"xmsonormal">To scale our server-based build infrastructure, so=
 that engineers can build branches using the same infrastructure that produ=
ces a releasable artefact, before pushing it into develop. As much automati=
on of this as possible is desired..<br /><br /></p>
<p class=3D"xmsonormal"><strong>Blocker</strong>: Can&rsquo;t just scale c=
urrent system&nbsp;&ndash;&nbsp;can&rsquo;t keep throwing more hardware at =
it, particularly storage. The main contributor to storage requirements is u=
sing a local cache in each build workspace and there will be one workspace =
for each branch, per Jenkins agent: 3 teams x 10 branches per team x 70Gb p=
er branch/workspace x number of build agents (let say 5) =3D 10Tb. As you c=
an see this doesn&rsquo;t scale well as we add branches, teams or build age=
nts. Most of this 10Tb is the caches in each workspace, where most of the c=
ontents of each individual cache is identical.<br /><br /><strong> A possib=
le&nbsp;solution:<br /></strong></p>
<p class=3D"xmsonormal">Disclaimer/admission: I&rsquo;ve not really resear=
ched/considered _<em>all</em>_ &nbsp;possible&nbsp;solutions to the problem=
 above, I just started searching and reading and came up with/felt led towa=
rds &nbsp;this. I think there is some value in spending some of the meeting=
 exploring other options to see if anything&nbsp;sounds better (for a what =
definition of better?).</p>
<p class=3D"xmsonormal"><strong>&nbsp;</strong></p>
<p class=3D"xmsonormal">Something using the built-in cache mirror in Yocto=
&ndash;there are a few ways it can do this, as it&rsquo;s essentially a fil=
e share somewhere. <a href=3D"https://pelux.io/2017/06/19/How-to-create-a-s=
hared-sstate-dir.html">https://pelux.io/2017/06/19/How-to-create-a-shared-s=
state-dir.html</a> for an example shows how to share it via NFS, but you ca=
n also use http or ftp.</p>
<p class=3D"xmsonormal">Having a single cache largely solves the storage i=
ssue as there is only one cache, so having solved that issue, it introduces=
 a few more questions and constraints:</p>
<ol style=3D"margin-top: 0cm;" start=3D"1" type=3D"1">
<li class=3D"xmsolistparagraph" style=3D"margin-left: 0cm; mso-list: l0 le=
vel1 lfo1; tab-stops: list 36.0pt;">How do we manage the size of the cache?=
</li>
</ol>
<p class=3D"xmsolistparagraph">There&rsquo;s no built-in expiry mechanism =
I could find. This means we&rsquo;d probably have to create something ourse=
lves (parse access logs from the server hosting the cache and apply a garba=
ge collector process).</p>
<ol style=3D"margin-top: 0cm;" start=3D"2" type=3D"1">
<li class=3D"xmsolistparagraph" style=3D"margin-left: 0cm; mso-list: l1 le=
vel1 lfo2; tab-stops: list 36.0pt;">How/When do we update the cache?</li>
</ol>
<p class=3D"xmsolistparagraph">All environments contributing to the cache =
need to be identical (that ansible playbook just grabs the latest of everyt=
hing) to avoid subtle differences in the build artefacts depending on which=
 environment populated the cache.</p>
<ol style=3D"margin-top: 0cm;" start=3D"3" type=3D"1">
<li class=3D"xmsolistparagraph" style=3D"margin-left: 0cm; mso-list: l2 le=
vel1 lfo3; tab-stops: list 36.0pt;">How much time will fetching the cache f=
rom a remote server add to the build?</li>
</ol>
<p class=3D"xmsolistparagraph">I think this is probably something we will =
have to just live with, but if it&rsquo;s all in the cloud the network spee=
d between VMs is fast.</p>
<p class=3D"xmsonormal">This shared cache solution removes the per agent c=
ost on storage, and also&nbsp;&ndash;&nbsp;a varying extent&nbsp;&ndash;&nb=
sp;the per branch costs (assuming that you&rsquo;re not working on somethin=
g at the top/start beginning of the dependency tree) &nbsp;from the equatio=
n above.</p>
<p class=3D"xmsonormal">&nbsp;</p>
<p class=3D"xmsonormal">I&rsquo;d love to see some other ideas as well as =
I worry I&rsquo;m missing something easier or more obvious&nbsp;&ndash;&nbs=
p;better.<br /><br />Any thoughts?<br />Thanks<br />Phill</p>
<p class=3D"xmsonormal">&nbsp;</p>
<p class=3D"xmsonormal">&nbsp;</p>
<span id=3D"selectionBoundary_1581942134392_400752004809644" class=3D"rang=
ySelectionBoundary" style=3D"line-height: 0; display: none;"></span><span i=
d=3D"selectionBoundary_1581942110909_9007835832119429" class=3D"rangySelect=
ionBoundary" style=3D"line-height: 0; display: none;"></span>

--jRR3PpzW6SvMVCpMzxM5--
