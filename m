Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 336FEC433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:32:38 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web08.28304.1647855157368732701
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:32:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=XsLxUQNP;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 1FB55240006;
	Mon, 21 Mar 2022 09:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647855155;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0poagvpZqV3cVJ9GtaZw796VY1YnHib+YtQFqT3815o=;
	b=XsLxUQNPJdD+99mGaYoOLCejh0T28PgPtw48vbldhDLdL1JtlV4fCJBWxh/lLl/pt2bs80
	8/OMmyRlZwzmkGeUGmyiOIKsjuO9Spm0totExvAldVG+r9jt3ElTymIo8BbSRlKskW/t8F
	PNbZ1dmUvjUkqsiPjmd4exUjJhv/n65ok3q7KUo54fARDR79ULJL6XreTRsv+YaK6Cmfak
	vGl5u246jKF25zQ6fbtumIP4ReCce3cYfOahjR2/6k3akU7PrFnw3SgltP7pr8lP8GN46W
	4YSasVSenP/6n4IyU47YDQmnR1jYMr5P9cqRa/WBylWqvbfJ4mlDX6fMMiTgNg==
Message-ID: <af3cccc9-548a-1aa5-f4c3-fb2d2d40be2c@bootlin.com>
Date: Mon, 21 Mar 2022 10:32:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <foss+yocto@0leil.net>,
 Nicolas Dechesne <nicolas.dechesne@linaro.org>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH]
 scripts/run-docs-build: Support auto generation of switchers.js and poky.yaml
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <20220319152819.1110633-1-richard.purdie@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220319152819.1110633-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56516

Hi Richard,

On 3/19/22 16:28, Richard Purdie wrote:
> This uses the set_versions.py script from the docs master branch to handle
> creation of the swictchers.js version information as well as the data in
> poky.yaml.
>
> This allows patches to those sections of the docs to be dropped.
>
> It is assumed the patch to use set_versions is applied to the docs transitions
> branch so that it's switchers.js files no longer need to be tweaked.
>
> This does lead to user visible changes on the website:
>
> - Older versioned released docs gain their current version and the
>   latest version listed in the switcher rather than being unlisted
> - The list of releases is normally filtered down to our active ones
>   (hardknott, honister and dev right now)
> - 3.3's doc references to gatesgath are corrected to hardknott
> - Docs for unversioned release branches (not linked on the website) now
>   use 3.1.999 versioning instead of confusing them with the last relased version
> - 3.1.13 refers to 3.1.13 instead of 3.1.12
>
> all of which seem to be reasonable improvements.
>
> The big advantage of these changes is that with a single change to the script
> in the master branch, the right thing should happen for all the current docs
> and at release time, only a docs rebuild should need to be triggered after tags
> are pushed.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  ...01-releases-update-to-include-3.1.14.patch | 41 ------------
>  ...umentation-update-for-3.1.14-release.patch | 23 -------
>  ...umentation-prepare-for-3.3.5-release.patch | 53 ---------------
>  .../0001-conf-update-for-release.patch        | 17 -----
>  ...honister-updates-for-recent-releases.patch | 67 -------------------
>  ...001-releases-update-to-include-3.4.2.patch | 63 -----------------
>  .../0001-conf-update-for-release.patch        | 17 -----
>  scripts/run-docs-build                        | 24 +++++--
>  8 files changed, 20 insertions(+), 285 deletions(-)
>  delete mode 100644 scripts/docs-build-patches/yocto-3.1.14/0001-releases-update-to-include-3.1.14.patch
>  delete mode 100644 scripts/docs-build-patches/yocto-3.4.2/0001-releases-update-to-include-3.4.2.patch


Looks good to me. Thanks for the simplification.

Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


