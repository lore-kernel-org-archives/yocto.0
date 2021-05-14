Subject: Automate updating of SRCREV
To: yocto@lists.yoctoproject.org
From: "Oliver Westermann" <oliver.westermann@cognex.com>
X-Originating-Location: Aachen, North Rhine-Westphalia, DE (93.159.253.219)
X-Originating-Platform: Windows Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 14 May 2021 07:58:02 -0700
Message-ID: <SU47.1621004282459757257.Ycpa@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WktZYLBUhcMIk6nDV4Yy"

--WktZYLBUhcMIk6nDV4Yy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,

maybe somebody already has something for this before I reinvent the wheel =
;-) We've several internal tools that mostly have their own CI and are refe=
renced in our yocto layers to be picked up by the nightly build. Usually we=
 manually update the SRCREV and add a `git log --oneline --no-decorate <old=
_rev>...<new_rev>` into the update commit. That way you can easily scroll o=
ver your eg kernel repo to figure out which commit went in when. But by now=
 we have more and more internal tools, all require regular updates so we wo=
uld like to add a little CI task to update our SRCREVs.

Is there an easy way to tell bitbake / devtool to change a variable like S=
RCREV? I played around with various combinations of devtool modify,=C2=A0up=
date-recipe and edit-recipe, but I could not get it to work as I expect.

My current goal for my script would be to use a flow roughly following thi=
s:

* Get the repo URL & branch from=C2=A0SRC_URI (eg by a bitbake -e <recipe>=
 and some grep magic)
* Do a shallow clone in a temp dir
* Get new HEAD commit for branch, compare with current
* create git log for commit message
* update REV in recipe
* commit

Looking forward to suggestions, Olli

--WktZYLBUhcMIk6nDV4Yy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,<br /><br />maybe somebody already has something for this before I rein=
vent the wheel ;-) We've several internal tools that mostly have their own =
CI and are referenced in our yocto layers to be picked up by the nightly bu=
ild. Usually we manually update the SRCREV and add a `git log --oneline --n=
o-decorate &lt;old_rev&gt;...&lt;new_rev&gt;` into the update commit. That =
way you can easily scroll over your eg kernel repo to figure out which comm=
it went in when. But by now we have more and more internal tools, all requi=
re regular updates so we would like to add a little CI task to update our S=
RCREVs.<br /><br />Is there an easy way to tell bitbake / devtool to change=
 a variable like SRCREV? I played around with various combinations of devto=
ol modify,&nbsp;update-recipe and edit-recipe, but I could not get it to wo=
rk as I expect.<br /><br />My current goal for my script would be to use a =
flow roughly following this:<br /><br />* Get the repo URL &amp; branch fro=
m&nbsp;SRC_URI (eg by a bitbake -e &lt;recipe&gt; and some grep magic)<br /=
>* Do a shallow clone in a temp dir<br />* Get new HEAD commit for branch, =
compare with current<br />* create git log for commit message<br />* update=
 REV in recipe<br />* commit<br /><br />Looking forward to suggestions, Oll=
i<br /><br /><br />

--WktZYLBUhcMIk6nDV4Yy--
