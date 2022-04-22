Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8ADC433F5
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 19:12:53 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v7] Add a banner on the old
 documentation docs.
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.151)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 22 Apr 2022 12:10:29 -0700
References: <6b603baf-5fea-d48d-a7be-f9e3595f4ca0@theobroma-systems.com>
In-Reply-To: <6b603baf-5fea-d48d-a7be-f9e3595f4ca0@theobroma-systems.com>
Message-ID: <29634.1650654629980920185@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tJI0R2QNneYnLPmWq1GX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 19:12:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56849

--tJI0R2QNneYnLPmWq1GX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 22, 2022 at 04:07 PM, Quentin Schulz wrote:

>=20
> Would you mind telling us how you created your patch from a commit so we
> can help you fix the issue there?

I'm sorry I added the run-docs-build manually to another folder after testi=
ng it so that I could easily track it, I did not send the patch from the sc=
ript/run-docs-build and script/docs_fix_all_html_css.py directory, but I ha=
d it run from there, the thing is I had made many commits which I felt will=
 not be included in the latest patch, so I initialized a new folder so I ca=
n easily hard reset it. But I could send a patch that takes into considerat=
ion the actual path from which I tested the script.

>=20
> This used to modify only style.css but now it tries to modify all css
> files. Did you test this version of the script? Are you sure it does not
> break other css files?

Yes actually I don't think break the other css files as I have check and al=
l the other css files end with style.css, but I will replace it with style.=
css just in case I missed a file that ends with .css but is not style.css

--tJI0R2QNneYnLPmWq1GX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 22, 2022 at 04:07 PM, Quentin Schulz wrote:<br />
<blockquote>Would you mind telling us how you created your patch from a com=
mit so we can help you fix the issue there?</blockquote>
I'm sorry I added the run-docs-build manually to another folder after testi=
ng it so that I could easily track it, I did not send the patch from the sc=
ript/run-docs-build and script/docs_fix_all_html_css.py directory, but I ha=
d it run from there, the thing is I had made many commits which I felt will=
 not be included in the latest patch, so I initialized a new folder so I ca=
n easily hard reset it. But I could send a patch that takes into considerat=
ion the actual path from which I tested the script.<br /><br />
<blockquote><span style=3D"white-space: pre-wrap;">This used to modify only=
 style.css but now it tries to modify all css files. Did you test this vers=
ion of the script? Are you sure it does not break other css files?</span></=
blockquote>
Yes actually I don't think break the other css files as I have check and al=
l the other css files end with style.css, but I will replace it with style.=
css just in case I missed a file that ends with .css but is not style.css

--tJI0R2QNneYnLPmWq1GX--

