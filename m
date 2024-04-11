Return-Path: <linusnilsson@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87949CD128A
	for <webhook@archiver.kernel.org>; Thu, 11 Apr 2024 12:38:06 +0000 (UTC)
Subject: Re: [yocto] Correct way for multiple recipes to install files in the same directory
To: "Peter Marko" <peter.marko@siemens.com>, yocto@lists.yoctoproject.org
From: linusnilsson@hotmail.com
X-Originating-Location: Bromma, Stockholm County, SE (212.181.123.98)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Apr 2024 05:37:59 -0700
References: <AS1PR10MB5697DD3141937F7F5C9EC77CFD052@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697DD3141937F7F5C9EC77CFD052@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Message-ID: <28425.1712839079294002919@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NpW2joXXiRJbzG2zCwo5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 12:38:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62918

--NpW2joXXiRJbzG2zCwo5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Changing in recipe 2 from
chown -R user1:user1 ${D}/home/user1/.config/
to
chown -R user1:user1 ${D}/home/user1
actually seems to solve the problem with those particular recipes.

After getting a bit further in the bitbake process I now have the same prob=
lem with another recipe that wants to add custom files to /etc/polkit-1/rul=
es.d/ but this recipe doesn't contain any 'chown' statement so I can't appl=
y the same solution here.
file /etc/polkit-1/rules.d conflicts between attempted installs of disk-aut=
omount-0.1-r0.core2_64 and polkit-124-r0.core2_64

disk-automount-0.1 recipe contains:
do_install(){
install -d ${D}/${sysconfdir}/polkit-1/rules.d
install -m 0644 ${S}/00-mount-internal.rules ${D}/${sysconfdir}/polkit-1/ru=
les.d
}

polkit-124 recipe contains:
do_install:append() {
#Fix up permissions on polkit rules.d to work with rpm4 constraints
chmod 700 ${D}/${datadir}/polkit-1/rules.d
chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d
chown polkitd:root ${D}/${datadir}/polkit-1/rules.d
chown polkitd:root ${D}/${sysconfdir}/polkit-1/rules.d
}

Since polkit is maintained by yocto I want to avoid making changes to it bu=
t rather adapt my disk-automount recipe somehow since the problem probably =
is on my end.
IIRC install -d will set the permissions to 0755 unless otherwise specified=
 which might conflict with polkit's chmod 700 so I might try copying chmod =
700 ${D}/${sysconfdir}/polkit-1/rules.d to my disk-automount recipe.

--NpW2joXXiRJbzG2zCwo5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Changing in recipe 2 from<br /><span style=3D"color: #c7254e; font-family: =
Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.3333px; ba=
ckground-color: #f9f2f4;">chown -R user1:user1 ${D}/home/user1/.config/</sp=
an><br />to<br /><span style=3D"color: #c7254e; font-family: Menlo, Monaco,=
 Consolas, 'Courier New', monospace; font-size: 13.3333px; background-color=
: #f9f2f4;">chown -R user1:user1 ${D}/home/user1<br /></span>actually seems=
 to solve the problem with those particular recipes.<br /><br />After getti=
ng a bit further in the bitbake process I now have the same problem with an=
other recipe that wants to add custom files to /etc/polkit-1/rules.d/ but t=
his recipe doesn't contain any 'chown' statement so I can't apply the same =
solution here.<br /><code>file /etc/polkit-1/rules.d conflicts between atte=
mpted installs of disk-automount-0.1-r0.core2_64 and polkit-124-r0.core2_64=
</code><br /><br />disk-automount-0.1 recipe contains:<br /><code>do_instal=
l(){<br />&nbsp; install -d ${D}/${sysconfdir}/polkit-1/rules.d<br />&nbsp;=
 install -m 0644 ${S}/00-mount-internal.rules ${D}/${sysconfdir}/polkit-1/r=
ules.d<br />}</code><br /><br />polkit-124 recipe contains:<br /><code>do_i=
nstall:append() {<br />&nbsp; #Fix up permissions on polkit rules.d to work=
 with rpm4 constraints<br />&nbsp; chmod 700 ${D}/${datadir}/polkit-1/rules=
.d<br />&nbsp; chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d<br />&nbsp; ch=
own polkitd:root ${D}/${datadir}/polkit-1/rules.d<br />&nbsp; chown polkitd=
:root ${D}/${sysconfdir}/polkit-1/rules.d<br />}</code><br /><br />Since po=
lkit is maintained by yocto I want to avoid making changes to it but rather=
 adapt my disk-automount recipe somehow since the problem probably is on my=
 end.<br />IIRC <code>install -d</code> will set the permissions to 0755 un=
less otherwise specified which might conflict with polkit's chmod 700 so I =
might try copying <code>chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d</code=
> to my disk-automount recipe.

--NpW2joXXiRJbzG2zCwo5--

