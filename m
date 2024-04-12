Return-Path: <linusnilsson@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27550C4345F
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 16:14:55 +0000 (UTC)
Subject: Re: [yocto] Correct way for multiple recipes to install files in the same directory
To: "Linus Nilsson" <linusnilsson@hotmail.com>, yocto@lists.yoctoproject.org
From: "Linus Nilsson" <linusnilsson@hotmail.com>
X-Originating-Location: =?UTF-8?B?SGVsc2luZ2JvcmcsIFNrw6VuZSBDb3VudHksIFNF?= (83.226.1.118)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Apr 2024 09:14:45 -0700
References: <31389.1712902067429675400@lists.yoctoproject.org>
In-Reply-To: <31389.1712902067429675400@lists.yoctoproject.org>
Message-ID: <31389.1712938485279864761@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fUKFjvCtq6Wya9hZayqO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Apr 2024 16:14:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62925

--fUKFjvCtq6Wya9hZayqO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I found a solution and I'll try to break it down. There was the original pr=
oblem with the conflict between the recipes and then there were the problem=
 with the recipe not being aware of the existence of the user polkitd.

The solution for the first problem was to make sure that the permissions an=
d ownership set by my recipe 2 matches the one in recipe 1 exactly, hence:
>=20
>=20
> Changing in recipe 2 from
> chown -R user1:user1 ${D}/home/user1/.config/
> to
> chown -R user1:user1 ${D}/home/user1/
> actually seems to solve the problem with those particular recipes.

The solution to the second problem (disk-automount recipe bitbake error bec=
ause user polkitd is invalid) was to copy the creation of the user polkitd =
from the original polkit recipe into my recipe:
inherit useradd
USERADD_PACKAGES =3D "${PN}"
USERADD_PARAM:${PN} =3D "--system --no-create-home --user-group --home-dir =
${sysconfdir}/${BPN}-1 --shell /bin/nologin polkitd"

and then make sure that my disk-automount recipe matches the permissions an=
d ownerships set up by the polkit recipe as well:
do_install:append() {
#Fix up permissions on polkit rules.d to work with rpm4 constraints
chmod 700 ${D}/${datadir}/polkit-1/rules.d
chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d
chown polkitd:root ${D}/${datadir}/polkit-1/rules.d
chown polkitd:root ${D}/${sysconfdir}/polkit-1/rules.d
}

This is working but I can see some issues with copying code from one recipe=
 to another. If the original recipe changes, I will need to manually update=
 every one of my own recipes with the corresponding changes, which doesn't =
scale very well. Having this in mind I think that Markus Volk's post might =
be a nicer way to do things so I think I will consider his way of doing it =
in the future. I haven't worked with the classes yet but I can see how they=
 can be used to make things a lot easier in my case.

Big thanks and great appreciation to everyone who came up with suggestions,=
 they eventually led me towards a solution! :)

--fUKFjvCtq6Wya9hZayqO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I found a solution and I'll try to break it down. There was the original pr=
oblem with the conflict between the recipes and then there were the problem=
 with the recipe not being aware of the existence of the user polkitd.<br /=
><br />The solution for the first problem was to make sure that the permiss=
ions and ownership set by my recipe 2 matches the one in recipe 1 exactly, =
hence:
<blockquote>Changing in recipe 2 from<br />&nbsp;<span style=3D"color: #c72=
54e; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-s=
ize: 13.3333px; background-color: #f9f2f4;">chown -R user1:user1 ${D}/home/=
user1/.config/</span><br />to<br /><span style=3D"color: #c7254e; font-fami=
ly: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.3333px=
; background-color: #f9f2f4;">chown -R user1:user1 ${D}/home/user1/<br /></=
span>actually seems to solve the problem with those particular recipes.</bl=
ockquote>
<p>The solution to the second problem (disk-automount recipe bitbake error =
because user polkitd is invalid) was to copy the creation of the user polki=
td from the original polkit recipe into my recipe:<br /><code>
inherit useradd<br />
USERADD_PACKAGES =3D "${PN}"<br />
USERADD_PARAM:${PN} =3D "--system --no-create-home --user-group --home-dir =
${sysconfdir}/${BPN}-1 --shell /bin/nologin polkitd"
</code> <br /><br />and then make sure that my disk-automount recipe matche=
s the permissions and ownerships set up by the polkit recipe as well:<br />=
<code>do_install:append() {<br />&nbsp; #Fix up permissions on polkit rules=
.d to work with rpm4 constraints<br />&nbsp; chmod 700 ${D}/${datadir}/polk=
it-1/rules.d<br />&nbsp; chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d<br /=
>&nbsp; chown polkitd:root ${D}/${datadir}/polkit-1/rules.d<br />&nbsp; cho=
wn polkitd:root ${D}/${sysconfdir}/polkit-1/rules.d<br />}</code><br /><br =
/>This is working but I can see some issues with copying code from one reci=
pe to another. If the original recipe changes, I will need to manually upda=
te every one of my own recipes with the corresponding changes, which doesn'=
t scale very well. Having this in mind I think that Markus Volk's post migh=
t be a nicer way to do things so I think I will consider his way of doing i=
t in the future. I haven't worked with the classes yet but I can see how th=
ey can be used to make things a lot easier in my case.</p>
<p>Big thanks and great appreciation to everyone who came up with suggestio=
ns, they eventually led me towards a solution! :)</p>

--fUKFjvCtq6Wya9hZayqO--

