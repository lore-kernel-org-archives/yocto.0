Return-Path: <vlad.pruteanu@p3-group.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2075FFF885E
	for <webhook@archiver.kernel.org>; Mon, 27 Apr 2026 09:05:36 +0000 (UTC)
Subject: Re: [yocto] [qa-build-notification] QA notification for completed autobuilder build (yocto-6.0.rc1)
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: vlad.pruteanu@p3-group.com
X-Originating-Location: Asse, Flanders, BE (81.82.196.114)
X-Originating-Platform: Linux Chrome 146
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Apr 2026 02:05:30 -0700
References: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com> <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org> <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com> <53c2c6f263b874cbf8382fa7d5993aac51835cbd.camel@linuxfoundation.org>
In-Reply-To: <53c2c6f263b874cbf8382fa7d5993aac51835cbd.camel@linuxfoundation.org>
Message-ID: <1637251.1777280730612486891@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GOizovbsu5X6V1aCIUGN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2026 09:05:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66444

--GOizovbsu5X6V1aCIUGN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm also seeing the issue on my local build machine, building the
imx-image-core image.

Other users are encountering it as well:
https://github.com/qualcomm-linux/meta-qcom/pull/2045/files

I might be mistaken, but isn't the rate-limit mechanism from the
PR linked by Richard only used for logging?
https://github.com/rust-lang/simpleinfra/blob/2eaee4876c8bebbe00998b427a6c3=
3012cddd910/terragrunt/modules/crates-io/fastly-webapp-ngwaf.tf#L5-L6

Also, per crates.io Data Access Policy, a user-agent should be present.
https://crates.io/data-access#api
I don't know if it's worth adding it to poky/bitbake/lib/bb/fetch2/crate.py
since I can't find a rule that blocks request which are missing it.

I'm afraid that the IP's encountering this issue might be manually blocked?
https://github.com/rust-lang/simpleinfra/blob/2eaee4876c8bebbe00998b427a6c3=
3012cddd910/terragrunt/modules/crates-io/fastly-webapp.tf#L11
Although I am wondering how my poor local machine's IP got so much atention=
.

--GOizovbsu5X6V1aCIUGN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm also seeing the issue on my local build machine, building the<br /=
>imx-image-core image.<br /><br /></div>
<div>Other users are encountering it as well:<br /><a href=3D"https://githu=
b.com/qualcomm-linux/meta-qcom/pull/2045/files" target=3D"_blank" rel=3D"no=
opener">https://github.com/qualcomm-linux/meta-qcom/pull/2045/files</a></di=
v>
<div><br />I might be mistaken, but isn't the rate-limit mechanism from the=
<br />PR linked by Richard only used for logging?<br /><a href=3D"https://g=
ithub.com/rust-lang/simpleinfra/blob/2eaee4876c8bebbe00998b427a6c33012cddd9=
10/terragrunt/modules/crates-io/fastly-webapp-ngwaf.tf#L5-L6" target=3D"_bl=
ank" rel=3D"noopener">https://github.com/rust-lang/simpleinfra/blob/2eaee48=
76c8bebbe00998b427a6c33012cddd910/terragrunt/modules/crates-io/fastly-webap=
p-ngwaf.tf#L5-L6</a><br /><br />Also, per crates.io Data Access Policy, a u=
ser-agent should be present.<br /><a href=3D"https://crates.io/data-access#=
api" target=3D"_blank" rel=3D"noopener">https://crates.io/data-access#api</=
a><br />I don't know if it's worth adding it to poky/bitbake/lib/bb/fetch2/=
crate.py<br />since I can't find a rule that blocks request which are missi=
ng it.<br /><br />I'm afraid that the IP's encountering this issue might be=
 manually blocked?<br /><a href=3D"https://github.com/rust-lang/simpleinfra=
/blob/2eaee4876c8bebbe00998b427a6c33012cddd910/terragrunt/modules/crates-io=
/fastly-webapp.tf#L11" target=3D"_blank" rel=3D"noopener">https://github.co=
m/rust-lang/simpleinfra/blob/2eaee4876c8bebbe00998b427a6c33012cddd910/terra=
grunt/modules/crates-io/fastly-webapp.tf#L11</a><br />Although I am wonderi=
ng how my poor local machine's IP got so much atention.<br /><br /><br /></=
div>

--GOizovbsu5X6V1aCIUGN--

