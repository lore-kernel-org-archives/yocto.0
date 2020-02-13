Subject: Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: yocto@lists.yoctoproject.org
From: "Pieter Smith" <smipi01@gmail.com>
X-Originating-Location: Eindhoven, North Brabant, NL (194.171.252.117)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2020 08:29:26 -0800
Message-ID: <jcV0.1581611366748662864.JIcy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZL8iGUCfMPPFC8xU7vHw"

--ZL8iGUCfMPPFC8xU7vHw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am defining a meta-layer with our business logic (applications), one or t=
wo recipes and an image definition. I would like to maintain the C/C++ sour=
ces with this meta-layer in a single repository, because they are tightly c=
oupled from a lifecycle perspective.

Is there a way to always build the current state of the source-code from a=
 path relative to the recipe.bb file in a workflow friendly way? After scou=
ring the web and mailing lists for days, I have no satisfactory answer. Wit=
h=C2=A0OpenWRT, Buildroot 2 and ptxdist this was extremely simple to achiev=
e.

My requirements are:
* Treat the meta-layer, it's recipes and images as well as package source-=
code as a monolithic whole with a single lifecycle within a single git repo=
sitory,
* Have the current checked out state of git repository built whenever I ba=
ke an image,
* Not have things fall apart when I check-out in another location.
I do not mind having to do a commit before each build so that the state ca=
n be tracked, but having to push and edit the recipe with the new commit ID=
 so every change can be built deployed and tested is driving me nuts, espec=
ially since some changes are cross application, requiring an atomic update =
of both applications.

--ZL8iGUCfMPPFC8xU7vHw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am defining a meta-layer with our business logic (applications), one or t=
wo recipes and an image definition. I would like to maintain the C/C++ sour=
ces with this meta-layer in a single repository, because they are tightly c=
oupled from a lifecycle perspective.<br /><br />Is there a way to always bu=
ild the current state of the source-code from a path relative to the recipe=
.bb file in a workflow friendly way? After scouring the web and mailing lis=
ts for days, I have no satisfactory answer. With&nbsp;OpenWRT, Buildroot 2 =
and ptxdist this was extremely simple to achieve.<br /><br />My requirement=
s are:<br />
<ol>
<li>Treat the meta-layer, it's recipes and images as well as package sourc=
e-code as a monolithic whole with a single lifecycle within a single git re=
pository,</li>
<li>Have the current checked out state of git repository built whenever I =
bake an image,</li>
<li>Not have things fall apart when I check-out in another location.</li>
</ol>
I do not mind having to do a commit before each build so that the state ca=
n be tracked, but having to push and edit the recipe with the new commit ID=
 so every change can be built deployed and tested is driving me nuts, espec=
ially since some changes are cross application, requiring an atomic update =
of both applications.

--ZL8iGUCfMPPFC8xU7vHw--
