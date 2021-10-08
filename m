Return-Path: <mrkozmic@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF793C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 15:52:49 +0000 (UTC)
Subject: LINUX_VERSION_EXTENSION has no effect #yocto #kernel #dunfell
To: yocto@lists.yoctoproject.org
From: mrkozmic@hotmail.com
X-Originating-Location: Gjerdrum, Viken, NO (195.1.154.154)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Oct 2021 08:52:48 -0700
Message-ID: <laYy.1633708368952635911.w8hA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0i9UmkXAAjs15VZHejyT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 15:52:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55003

--0i9UmkXAAjs15VZHejyT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have defined LINUX_VERSION_EXTENSION in my kernel recipe.

I have no CONFIG_LOCALVERSION or CONFIG_LOCALVERSION_AUTO defined in my *de=
fconfig*

After i run bitbake -c kernel_configme <my kernel recipe> I can see in my *=
.config* file:

CONFIG_LOCALVERSION=3D""
# CONFIG_LOCALVERSION_AUTO is not set

and at the very end:

CONFIG_LOCALVERSION=3D"<my extention>"
So far so good.

Then I execute bitbake -c configure <my kernel recipe>
and the . *config* file is changed. Now there is:
CONFIG_LOCALVERSION=3D""
CONFIG_LOCALVERSION_AUTO=3Dy
and there is no trace of CONFIG_LOCALVERSION=3D"<my extention>"

Yocto: dunfell
Kernel 5.4.70

--0i9UmkXAAjs15VZHejyT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I have defined <span style=3D"font-family: courier_newregular, courier;"=
>LINUX_VERSION_EXTENSION</span> in my kernel recipe.</p>
<p>I have no <span style=3D"font-family: courier_newregular, courier;">CONF=
IG_LOCALVERSION</span> or&nbsp;<span style=3D"font-family: courier_newregul=
ar, courier;">CONFIG_LOCALVERSION_AUTO</span> defined in my <strong>defconf=
ig</strong><br /><br />After i run <span style=3D"font-family: courier_newr=
egular, courier;">bitbake -c kernel_configme &lt;my kernel recipe&gt;</span=
> I can see in my <strong>.config</strong> file:</p>
<p><span style=3D"font-family: courier_newregular, courier;">CONFIG_LOCALVE=
RSION=3D""<br /></span><span style=3D"font-family: courier_newregular, cour=
ier;"># CONFIG_LOCALVERSION_AUTO is not set</span></p>
<div>and at the very end:</div>
<p><span style=3D"font-family: courier_newregular, courier;">CONFIG_LOCALVE=
RSION=3D"&lt;my extention&gt;"<br /><span style=3D"font-family: helvetica;"=
>So far so good. <br /><br />Then I execute&nbsp;&nbsp;</span></span><span =
style=3D"font-family: courier_newregular, courier;">bitbake -c configure &l=
t;my kernel recipe&gt;<br /><span style=3D"font-family: helvetica;">and the=
 .<strong>config</strong>&nbsp;file is changed. Now there is:<br /></span><=
/span><span style=3D"font-family: courier_newregular, courier;">CONFIG_LOCA=
LVERSION=3D""<br /></span><span style=3D"font-family: courier_newregular, c=
ourier;">CONFIG_LOCALVERSION_AUTO=3Dy<br /><span style=3D"font-family: helv=
etica;">and there is no trace of</span>&nbsp;</span><span style=3D"font-fam=
ily: courier_newregular, courier;">CONFIG_LOCALVERSION=3D"&lt;my extention&=
gt;"<br /><br /><span style=3D"font-family: helvetica;">Yocto: dunfell</spa=
n><br /><span style=3D"font-family: helvetica;">Kernel 5.4.70</span></span>=
</p>
<div>&nbsp;</div>
<div>&nbsp;</div>
<p>&nbsp;</p>

--0i9UmkXAAjs15VZHejyT--

