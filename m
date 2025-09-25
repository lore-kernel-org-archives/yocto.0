Return-Path: <git@oliver-kaestner.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B65CAC5A5
	for <webhook@archiver.kernel.org>; Thu, 25 Sep 2025 11:13:48 +0000 (UTC)
Subject: Re: [yocto] Bitbake fetch private Github repository release archive
To: "Katu Txakur" <katutxakurra@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?T2xpdmVyIEvDpHN0bmVy?= <git@oliver-kaestner.de>
X-Originating-Location: Delmenhorst, Lower Saxony, DE (90.153.6.76)
X-Originating-Platform: Linux Firefox 143
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Sep 2025 04:13:41 -0700
References: <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
In-Reply-To: <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
Message-ID: <27679.1758798821990851768@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9VURb82lujN4LvCqTWZh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Sep 2025 11:13:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65874

--9VURb82lujN4LvCqTWZh
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

We do it like this (recipe snippet) and pass the GITHUB_TOKEN (replaced wit=
h an appropriately authorized PAT/GitHub app) via env var:


```
# disable all other mirrors (our private mirror will be :prepend-ed)
PREMIRRORS =3D ""
MIRRORS =3D ""

SRC_URI =3D "https://api.github.com/repos/<ORG>/<REPO>/releases/assets/${GH=
_ASSET_ID};subdir=3D${BP};downloadfilename=3D${BP}.tar.gz

# don't include the GitHub PAT in the task hash for SSTATE
# that way, we don't have to try to fetch it again, if no token is set but =
the tarball is already downloaded etc
do_fetch[vardepsexclude] +=3D "GITHUB_TOKEN FETCHCMD_wget"

python do_fetch:prepend() {
    gh_token =3D d.getVar("GITHUB_TOKEN", False)

    if not gh_token:
        bb.fatal(d.getVar('PN') + ": GITHUB_TOKEN is not set")

    wget_cmd =3D d.getVar("FETCHCMD_wget") or "/usr/bin/env wget -t 2 -T 30=
 --passive-ftp --no-check-certificate" \
                + " --header 'Authorization: Bearer {}'".format(gh_token) \
                + " --header 'Accept: application/octet-stream'" \
                + " --header 'X-GitHub-Api-Version: 2022-11-28'"
    d.setVar("FETCHCMD_wget", wget_cmd)
}
```

I would be very interested in further improvements.

Oliver

--9VURb82lujN4LvCqTWZh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>We do it like this (recipe snippet) and pass the GITHUB_TOKEN (replaced =
with an appropriately authorized PAT/GitHub app) via env var:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown"># disable all o=
ther mirrors (our private mirror will be :prepend-ed)
PREMIRRORS =3D &#34;&#34;
MIRRORS =3D &#34;&#34;

SRC_URI =3D &#34;https://api.github.com/repos/&lt;ORG&gt;/&lt;REPO&gt;/rele=
ases/assets/${GH_ASSET_ID};subdir=3D${BP};downloadfilename=3D${BP}.tar.gz

# don&#39;t include the GitHub PAT in the task hash for SSTATE
# that way, we don&#39;t have to try to fetch it again, if no token is set =
but the tarball is already downloaded etc
do_fetch[vardepsexclude] +=3D &#34;GITHUB_TOKEN FETCHCMD_wget&#34;

python do_fetch:prepend() {
    gh_token =3D d.getVar(&#34;GITHUB_TOKEN&#34;, False)

    if not gh_token:
        bb.fatal(d.getVar(&#39;PN&#39;) + &#34;: GITHUB_TOKEN is not set&#3=
4;)

    wget_cmd =3D d.getVar(&#34;FETCHCMD_wget&#34;) or &#34;/usr/bin/env wge=
t -t 2 -T 30 --passive-ftp --no-check-certificate&#34; \
                + &#34; --header &#39;Authorization: Bearer {}&#39;&#34;.fo=
rmat(gh_token) \
                + &#34; --header &#39;Accept: application/octet-stream&#39;=
&#34; \
                + &#34; --header &#39;X-GitHub-Api-Version: 2022-11-28&#39;=
&#34;
    d.setVar(&#34;FETCHCMD_wget&#34;, wget_cmd)
}
</code></pre>
<p>I would be very interested in further improvements.</p>

<p>Oliver</p>

--9VURb82lujN4LvCqTWZh--

