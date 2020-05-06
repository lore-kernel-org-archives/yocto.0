Subject: Autoupdate of versions in specific recipes #yocto
To: yocto@lists.yoctoproject.org
From: "Oliver Westermann" <oliver.westermann@cognex.com>
X-Originating-Location: Aachen, North Rhine-Westphalia, DE (5.199.241.18)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 May 2020 07:19:42 -0700
Message-ID: <pJCb.1588774782754186556.GQSZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4A5XyyxWwR71GdMKJgwU"

--4A5XyyxWwR71GdMKJgwU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,

Is there a feature in yocto, similar to ${AUTOREV}, which allows to check =
for updates and modify a recipe?

Background:
We've a setup which is build upon the yocto project. We've a base git proj=
ect containing various layers (like basic poky, bsp layers as well as our o=
wn layers with our own recipes). Another part of the yocto "superproject" a=
re some source repositorys containing the sourcecode of internal applicatio=
ns. We use the=C2=A0externalsrc class in the recipes (actually a derived cl=
ass) to build our application which works well.

One benefit of this technique is that we can use git to handle updating an=
d tracking the submodules: We can track a branch of our applications in the=
 .gitmodules file, we can use $ git submodule summary to summarize changes =
and so on. This covers the requirement that we can go back to commit xxxxxx=
x of the superproject and this one commit reflects the state of ALL used so=
ftware. There are drawbacks however: The sources are now handled out of yoc=
to's realms, so some features are limited and we need to check out all our =
applications, even if the target we're building doesn't even use that recip=
e.

The alternative we use in some, seldomly changed applications is to use "t=
he regular yocto flow", have a SRCREV in recipe and update that whenever ne=
eded. Drawback is that this is a manual process, so sb who needs to update =
two applications needs to replace the revision, collect changelogs from the=
 repos, create a commit containing the changelog, get that through a PR, ..=
.

My goal would be to set a flag in recipes where I would like updates and t=
han trigger "bitbake update-recipes". Bitbake would parse all recipes, chec=
k for the flag. If the flag is set, check=C2=A0SRC_URI (git url + branch), =
update SRCREV and in the end output a summary similar to git submodule summ=
ary (changed commits + changelog / git log --oneline). I feel a lot of the =
plumbing exists (eg from the fetcher supporting AUTOREV).

Does anyone know if something like this?

Best regards, Olli

--4A5XyyxWwR71GdMKJgwU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,<br /><br />Is there a feature in yocto, similar to ${AUTOREV}, which a=
llows to check for updates and modify a recipe?<br /><br />Background:<br /=
>We've a setup which is build upon the yocto project. We've a base git proj=
ect containing various layers (like basic poky, bsp layers as well as our o=
wn layers with our own recipes). Another part of the yocto "superproject" a=
re some source repositorys containing the sourcecode of internal applicatio=
ns. We use the&nbsp;externalsrc class in the recipes (actually a derived cl=
ass) to build our application which works well.&nbsp;<br /><br />One benefi=
t of this technique is that we can use git to handle updating and tracking =
the submodules: We can track a branch of our applications in the .gitmodule=
s file, we can use $ git submodule summary to summarize changes and so on. =
This covers the requirement that we can go back to commit xxxxxxx of the su=
perproject and this one commit reflects the state of ALL used software. The=
re are drawbacks however: The sources are now handled out of yocto's realms=
, so some features are limited and we need to check out all our application=
s, even if the target we're building doesn't even use that recipe.<br /><br=
 />The alternative we use in some, seldomly changed applications is to use =
"the regular yocto flow", have a SRCREV in recipe and update that whenever =
needed. Drawback is that this is a manual process, so sb who needs to updat=
e two applications needs to replace the revision, collect changelogs from t=
he repos, create a commit containing the changelog, get that through a PR, =
...<br /><br />My goal would be to set a flag in recipes where I would like=
 updates and than trigger "bitbake update-recipes". Bitbake would parse all=
 recipes, check for the flag. If the flag is set, check&nbsp;SRC_URI (git u=
rl + branch), update SRCREV and in the end output a summary similar to git =
submodule summary (changed commits + changelog / git log --oneline). I feel=
 a lot of the plumbing exists (eg from the fetcher supporting AUTOREV).<br =
/><br />Does anyone know if something like this?<br /><br />Best regards, O=
lli<br />

--4A5XyyxWwR71GdMKJgwU--
