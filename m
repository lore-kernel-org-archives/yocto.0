Return-Path: <rahuls.work97@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12BF4C021A6
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 19:37:44 +0000 (UTC)
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: "Yoann Congal" <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
From: "Rahul Singh" <rahuls.work97@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (45.119.30.111)
X-Originating-Platform: Android Phone Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2025 11:37:37 -0800
References: <CAMSfU+6s3fLkwGfK=5esnnW9yJd7Ln9WiULJ8TUP2gxhZaz1Sg@mail.gmail.com>
In-Reply-To: <CAMSfU+6s3fLkwGfK=5esnnW9yJd7Ln9WiULJ8TUP2gxhZaz1Sg@mail.gmail.com>
Message-ID: <18350.1739475457865519329@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Lu7WSCcPyyycxtkrQto3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 19:37:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64806

--Lu7WSCcPyyycxtkrQto3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I read through the conversation & I thought I'd suggest the following below=
. I am not sure of this suggestion but I hope it lays well with the require=
ments.
I suggest we divide the repo management into two repos: a Contributors Repo=
 & Non-contributors' Repo.
1. Have the main repo be part of some place like GitLab & the one that user=
's (presuming "users" means-> non-contributors which means no PRs & therefo=
re they won't be needed t) interact with be on GitHub. The GitLab/main repo=
 would be managed by only the steering committee, contributing developers &=
 owners.
2. Maybe we could use utilise RPA or Robot Framework to manage to automate =
CI/CT/CD & deployment across the two
3. The GitHub repo can be used, for without consequences to the main repo, =
for testing out new features, infrastructure integration & anything the com=
munity can think of. If it results in an acceptable/good build then can be =
delivered to the main repo with all the changes.

P.S. I had some other thoughts too but wanted to get this clarified with fi=
rst.

Thanks & Best Regards,
Rahul.

--Lu7WSCcPyyycxtkrQto3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>I read through the conversation &amp; I thought I'd suggest the follow=
ing below. I am not sure of this suggestion but I hope it lays well with th=
e requirements.</div>
<div>I suggest we divide the repo management into two repos: a Contributors=
 Repo &amp; Non-contributors' Repo.</div>
<div>1. Have the main repo be part of some place like GitLab &amp; the one =
that user's (presuming "users" means-&gt; non-contributors which means no P=
Rs &amp; therefore they won't be needed t) interact with be on GitHub. The =
GitLab/main repo would be managed by only the steering committee, contribut=
ing developers &amp; owners.</div>
<div>2. Maybe we could use utilise RPA or Robot Framework to manage to auto=
mate CI/CT/CD &amp; deployment across the two</div>
<div>3. The GitHub repo can be used, for without consequences to the main r=
epo, for testing out new features, infrastructure integration &amp; anythin=
g the community can think of. If it results in an acceptable/good build the=
n can be delivered to the main repo with all the changes.</div>
<div>&nbsp;</div>
<div>P.S. I had some other thoughts too but wanted to get this clarified wi=
th first.</div>
<div>&nbsp;</div>
<div>Thanks &amp; Best Regards,</div>
<div>Rahul.</div>

--Lu7WSCcPyyycxtkrQto3--

