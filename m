Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D1BC433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 05:54:02 +0000 (UTC)
Subject: extra-cmake-modules-native-5.81.0 Package porting on riscv target
 using meta-qt5-extra layer #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Oct 2021 22:54:01 -0700
Message-ID: <rDKQ.1634018041115425688.Oq7S@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vXBdsUW8O8eWgEy18Hvg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 05:54:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55029

--vXBdsUW8O8eWgEy18Hvg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am facing compile-time issue (extra-cmake-modules-native-5.81.0 ). Using =
bitbake extra-cmake-modules it's compiled fine. It is dependent on other pa=
ckages. Using bitbake extra-cmake-modules is compiled success. other depend=
ent package expecting extra-cmake-modules-native.

build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.81.0-r0/temp=
/run.do_compile.21147' failed with exit code 1:
build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.81.0-r0/buil=
d/docs/html > build-html.log
*FAILED: docs/doc_format_html*
*Could not import extension ecm (exception: cannot import name 'htmlescape'=
)

* How can I fix this issue or build time it is going to docs so how I can d=
isable it.=C2=A0 or any patch available gives some suggestions to fix this =
issue.

Thanks & Regards,
Sateesh

Regards,
Sateesh

--vXBdsUW8O8eWgEy18Hvg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am f=
acing compile-time issue (extra-cmake-modules-native-5.81.0 ). Using bitbak=
e extra-cmake-modules it's compiled fine. It is dependent on other packages=
. Using bitbake extra-cmake-modules is compiled success. other dependent pa=
ckage expecting extra-cmake-modules-native.<br /><br />build/tmp-glibc/work=
/x86_64-linux/extra-cmake-modules-native/5.81.0-r0/temp/run.do_compile.2114=
7' failed with exit code 1:<br />build/tmp-glibc/work/x86_64-linux/extra-cm=
ake-modules-native/5.81.0-r0/build/docs/html &gt; build-html.log<br /><stro=
ng>FAILED: docs/doc_format_html&nbsp;</strong><br /><strong>Could not impor=
t extension ecm (exception: cannot import name 'htmlescape')<br /><br /></s=
trong>How can I fix this issue or build time it is going to docs so how I c=
an disable it.&nbsp; or any patch available gives some suggestions to fix t=
his issue.<br /><br /><br />Thanks &amp; Regards,<br />Sateesh<br /><br /><=
br /><br /><br /><br />Regards,<br />Sateesh

--vXBdsUW8O8eWgEy18Hvg--

