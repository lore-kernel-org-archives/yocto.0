Return-Path: <mns@gomspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C155C78831
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 12:30:19 +0000 (UTC)
Subject: Re: [yocto] read-only-rootfs and opkg
To: "Alex Stewart" <alex.stewart@emerson.com>, yocto@lists.yoctoproject.org
From: "Martin Siegumfeldt" <mns@gomspace.com>
X-Originating-Location: Copenhagen, Capital Region, DK (79.171.149.174)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Sep 2024 05:30:09 -0700
References: <DM4PR10MB6134C9BCBAABA358F109B46294622@DM4PR10MB6134.namprd10.prod.outlook.com>
In-Reply-To: <DM4PR10MB6134C9BCBAABA358F109B46294622@DM4PR10MB6134.namprd10.prod.outlook.com>
Message-ID: <17877.1726835409945994361@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="16p89lUE6xJp0Rffcrew"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 12:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63875

--16p89lUE6xJp0Rffcrew
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Indeed, it was from a layer-local "opkg_%.bbappend" - moving to local.conf =
seems to do the trick.

Yes I would like to use opkg runtime to be able to update individual compon=
ents and also keep the meta-data updated, such that e.g. 'opkg info <COMPON=
ENT>' would indicate actuals.

Runtime moving of the meta-data from '/var/lib' to '/data-os' might be an o=
ption - at least I can't think of a better for now. Manual experiments indi=
cates the concept functional.

Again, thanks for your ideas Alex - appreciated.

Have a nice weekend,
Martin

--16p89lUE6xJp0Rffcrew
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Indeed, it was from a layer-local "opkg_%.bbappend" - moving to local.=
conf seems to do the trick.</div>
<div>&nbsp;</div>
<div>Yes I would like to use opkg runtime to be able to update individual c=
omponents and also keep the meta-data updated, such that e.g. 'opkg info &l=
t;COMPONENT&gt;' would indicate actuals.</div>
<div>&nbsp;</div>
<div>Runtime moving of the meta-data from '/var/lib' to '/data-os' might be=
 an option - at least I can't think of a better for now. Manual experiments=
 indicates the concept functional.</div>
<div>&nbsp;</div>
<div>Again, thanks for your ideas Alex - appreciated.</div>
<div>&nbsp;</div>
<div>Have a nice weekend,</div>
<div>Martin</div>
</div>

--16p89lUE6xJp0Rffcrew--

