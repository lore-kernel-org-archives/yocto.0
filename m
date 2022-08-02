Return-Path: <martin.leduc@luminator.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79474C00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 13:44:12 +0000 (UTC)
Subject: BBClass function and symbolic link (symlink) ... I throw in the towel
 #python #bitbake #kirkstone
To: yocto@lists.yoctoproject.org
From: "Martin Leduc" <martin.leduc@luminator.com>
X-Originating-Location: Drummondville, Quebec, CA (184.144.158.143)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Aug 2022 06:44:02 -0700
Message-ID: <oqsz.1659447842876164805.WW8H@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a1NZjzyNUARTCYkovBl2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 13:44:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57729

--a1NZjzyNUARTCYkovBl2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi team,

Well,=C2=A0I throw in the towel.=C2=A0 But it's looks like so simple .... f=
or me =F0=9F=A4=A3=F0=9F=A4=A3.

I've a function to replace the version file in /etc/version.=C2=A0 This fun=
ction is integrated into my mybase-image.bbclass, defined in my layer and I=
 add, in my core-image-minimal.bbappend recipe inherit mybase-image.bbclass=
.

In my bbclass, I call my function using

ROOTFS_POSTPROCESS_COMMAND +=3D " \
set_version_file ; \
"

My function is written like this
set_version_file () {
bbplain "set_version_file BEGIN"
mkdir -p ${IMAGE_ROOTFS} /etc/tmp/
echo ${PV} > ${IMAGE_ROOTFS} /etc/tmp/version
chmod 644 ${IMAGE_ROOTFS} /etc/tmp/version
rm ${IMAGE_ROOTFS} /etc/version
ln -sf /etc/tmp/version " ${IMAGE_ROOTFS} /etc/version"
}
Note: /etc/tmp is just for the purpose of this test

I mean, I don't try to do anything outstanding but the ln -sf line makes my=
 compilation crash BUT.... it works like a charm with Warrior but Kirkstone=
 rejects "ln -sf" command.

I'm definitely not the only one who adds symlinks to the recipes

I've also tried:

* lnr
* inherit relative_symlinks (don't have any impact but I've given it a try)=
,
* from the poky folder I've tried grep -r "ln" ./* | grep bbclass (to valid=
ate the syntax)
* Read many posts on this topic

I'm unable to find where is my issue.

Any ideas are welcome, even if it works like a charm on Warrior but not in =
Kirkstone.

BR,
Martin

--a1NZjzyNUARTCYkovBl2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi team,<br /><br />Well,&nbsp;I throw in the towel.&nbsp; But it's looks l=
ike so simple .... for me =F0=9F=A4=A3=F0=9F=A4=A3.<br /><br />I've a funct=
ion to replace the version file in /etc/version.&nbsp; This function is int=
egrated into my mybase-image.bbclass, defined in my layer and I add, in my =
core-image-minimal.bbappend recipe inherit mybase-image.bbclass.<br /><br /=
>In my bbclass, I call my function using&nbsp;<br /><br />
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #9cdcfe;">ROOTFS_POSTPROCESS_COMMAND</span> +=3D=
 <span style=3D"color: #ce9178;">" \</span></div>
<div><span style=3D"color: #ce9178;">&nbsp;</span><span style=3D"color: #ce=
9178;"> &nbsp; set_version_file ; \</span></div>
<div><span style=3D"color: #ce9178;">"</span></div>
</div>
<br />My function is written like this<br />
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #dcdcaa;">set_version_file</span>() {</div>
<div>&nbsp; &nbsp; bbplain <span style=3D"color: #ce9178;">"set_version_fil=
e BEGIN"</span></div>
<div>&nbsp; &nbsp; mkdir -p <span style=3D"color: #9cdcfe;">${IMAGE_ROOTFS}=
</span>/etc/tmp/</div>
<div>&nbsp; &nbsp; <span style=3D"color: #dcdcaa;">echo</span> <span style=
=3D"color: #9cdcfe;">${PV}</span> &gt; <span style=3D"color: #9cdcfe;">${IM=
AGE_ROOTFS}</span>/etc/tmp/version</div>
<div>&nbsp; &nbsp; chmod 644 <span style=3D"color: #9cdcfe;">${IMAGE_ROOTFS=
}</span>/etc/tmp/version</div>
<div>&nbsp; &nbsp; rm <span style=3D"color: #9cdcfe;">${IMAGE_ROOTFS}</span=
>/etc/version</div>
<div>&nbsp; &nbsp; ln -sf /etc/tmp/version <span style=3D"color: #ce9178;">=
"</span><span style=3D"color: #9cdcfe;">${IMAGE_ROOTFS}</span><span style=
=3D"color: #ce9178;">/etc/version"</span></div>
<div>}</div>
</div>
Note: /etc/tmp is just for the purpose of this test<br /><br />I mean, I do=
n't try to do anything outstanding but the ln -sf line makes my compilation=
 crash BUT.... it works like a charm with Warrior but Kirkstone rejects "ln=
 -sf" command.<br /><br />I'm definitely not the only one who adds symlinks=
 to the recipes<br /><br />I've also tried:<br />
<ul>
<li>lnr</li>
<li>inherit relative_symlinks (don't have any impact but I've given it a tr=
y),&nbsp;</li>
<li>from the poky folder I've tried grep -r "ln" ./* | grep bbclass (to val=
idate the syntax)</li>
<li>Read many posts on this topic</li>
</ul>
<br />I'm unable to find where is my issue.<br /><br />Any ideas are welcom=
e, even if it works like a charm on Warrior but not in Kirkstone.<br /><br =
/>BR,<br />Martin

--a1NZjzyNUARTCYkovBl2--

