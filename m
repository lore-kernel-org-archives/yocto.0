Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB49FC4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 08:48:31 +0000 (UTC)
Subject: Re: [yocto] Regarding Complete Yocto source transfer/migration from one ubuntu machine to other
To: Poornesh G ( India - Bangalore ) <poornesh.g@mindteck.com>,yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Dec 2023 00:48:28 -0800
References: <amrh.1701942804707613571.jmtt@lists.yoctoproject.org>
In-Reply-To: <amrh.1701942804707613571.jmtt@lists.yoctoproject.org>
Message-ID: <18114.1702025308367991991@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qe5cGkU3uufCZrmvaflU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 08:48:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61841

--qe5cGkU3uufCZrmvaflU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You can easily create a complete copy between two PCs using *rsync

# rsync -axHAWXS --numeric-ids --info=3Dprogress2 /mnt/sourcePart/ /mnt/des=
tPart
*
It is important to keep the path between the two copies.
In case you change path you have and check the file *bblayers.conf* and del=
ete the *tmp* directory then rebuild with *bitbake*.
Hope this helps

Distinti Saluti / Best Regards
--
Marco Cavallini | KOAN sas
Bergamo - Italia
embedded software engineering
https://KoanSoftware.com

--qe5cGkU3uufCZrmvaflU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You can easily create a complete copy between two PCs using <strong>rsync<b=
r /><br /><span style=3D"font-family: courier_newregular, courier;">&nbsp;#=
 rsync -axHAWXS --numeric-ids --info=3Dprogress2 /mnt/sourcePart/ /mnt/dest=
Part</span><br /></strong><br />It is important to keep the path between th=
e two copies.<br />In case you change path you have and check the file <str=
ong>bblayers.conf</strong> and delete the <strong>tmp</strong> directory th=
en rebuild with <strong>bitbake</strong>.<br />Hope this helps<br /><br />D=
istinti Saluti / Best Regards<br />--<br />Marco Cavallini | KOAN sas<br />=
Bergamo - Italia<br />embedded software engineering<br />https://KoanSoftwa=
re.com

--qe5cGkU3uufCZrmvaflU--

