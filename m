Subject: #yocto Using BBMASK or BBFILES with multiconfig
To: yocto@lists.yoctoproject.org
From: schadley@umich.edu
X-Originating-Location: Grand Rapids, Michigan, US (99.48.202.185)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Jun 2020 07:55:36 -0700
Message-ID: <JEJn.1593183336955846250.nd6b@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6JhMu4JKWrwXgNXD6sH4"

--6JhMu4JKWrwXgNXD6sH4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm working on a project using multiconfig, with Yocto version 2.6. I'd li=
ke to enable or disable an entire layer, depending on which multiconfig is =
selected. My initial thought is to use BBMASK, and mask out undesired layer=
s in a multiconfig conf file, but I'm having trouble getting this to work.

For example, I have layers meta-vm0 and meta-vm1, and multiconfigs vm0 and=
 vm1. I want to mask the files from meta-vm1 when the vm0 configuration is =
selected. So, I add to vm0.conf:
BBMASK =3D "meta-vm0/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend=
"
However, the file still is included in the build.

If I add the same line to layer.conf instead, the file gets masked correct=
ly. Is there some syntax I am missing that's different between layer.conf a=
nd multiconfig conf files? Also, is there a better way to accomplish this g=
oal - say by editing BBFILES directly in the multiconfig conf file?

Cheers,
Scott

--6JhMu4JKWrwXgNXD6sH4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi all,<br /><br />I'm working on a project using multiconfig, with Yoct=
o version 2.6. I'd like to enable or disable an entire layer, depending on =
which multiconfig is selected. My initial thought is to use BBMASK, and mas=
k out undesired layers in a multiconfig conf file, but I'm having trouble g=
etting this to work.<br /><br />For example, I have layers meta-vm0 and met=
a-vm1, and multiconfigs vm0 and vm1. I want to mask the files from meta-vm1=
 when the vm0 configuration is selected. So, I add to vm0.conf:<br /><span =
style=3D"font-family: courier_newregular, courier;">BBMASK =3D "meta-vm0/re=
cipes-core/init-ifupdown/init-ifupdown_1.0.bbappend"<span style=3D"font-fam=
ily: 'helvetica neue';"><br /><span style=3D"font-family: helvetica;">Howev=
er, the file still is included in the build.<br /><br /></span><span style=
=3D"font-family: helvetica;">If I add the same line to layer.conf instead,=
 the file gets masked correctly. Is there some syntax I am missing that's d=
ifferent between layer.conf and multiconfig conf files? Also, is there a be=
tter way to accomplish this goal - say by editing BBFILES directly in the m=
ulticonfig conf file?<br /><br />Cheers,<br />Scott</span></span></span></p=
>

--6JhMu4JKWrwXgNXD6sH4--
