Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F798C55191
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:25:55 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v2] Wrote python code to
 automatically add banner to outdated versions of yocto-docs,
 pointing the user to the latest version.
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.132)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 15 Apr 2022 16:04:15 -0700
References: 
 <04f336fc82a310608e554dbd89027f54a705bdb9.camel@linuxfoundation.org>
In-Reply-To: 
 <04f336fc82a310608e554dbd89027f54a705bdb9.camel@linuxfoundation.org>
Message-ID: <13405.1650063855074324706@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QXabv1IVc8IjF71rAfaw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:25:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56785

--QXabv1IVc8IjF71rAfaw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,
I implemented the changes you gave and it successfully modified all the htm=
l and css files.
But I noticed an issue, In the script to edit the css script, I discovered =
that the class name of the <div> tag in the html files are different for so=
me files.
For such files, the banner will overlap with whatever is at the top.
I was thinking of a way to grap the class name of each main div class and a=
dd it to the css file but it never came up with anything yet.

--QXabv1IVc8IjF71rAfaw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Richard,<br />I implemented the changes you gave and it successfully =
modified all the html and css files.<br />But I noticed an issue, In the sc=
ript to edit the css script, I discovered that the class name of the &lt;di=
v&gt; tag in the html files are different for some files.<br />For such fil=
es, the banner will overlap with whatever is at the top.<br />I was thinkin=
g of a way to grap the class name of each main div class and add it to the =
css file but it never came up with anything yet.</p>

--QXabv1IVc8IjF71rAfaw--

