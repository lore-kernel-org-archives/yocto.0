Return-Path: <talhacali@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCE6EC77B6F
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 13:02:01 +0000 (UTC)
Subject: create-layers-setup Yaml support #bitbake
To: yocto@lists.yoctoproject.org
From: talhacali@gmail.com
X-Originating-Location: CH (147.161.251.99)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Apr 2023 06:01:56 -0700
Message-ID: <lyWk.1681218116757109971.QydI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gLVxO10dWJ9dcmqDDh4C"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 13:02:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59679

--gLVxO10dWJ9dcmqDDh4C
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

In my project at work, we want to use create-layers-setup instead of git su=
bmodules. But, there is one issue that we are facing right now: We have got=
 a CI pipeline that has Renovate bots to update, and create pull requests f=
or repositories when a new commit is made in one of the dependencies. For i=
t to work with Yocto layers, renovate bots require a regular expression in =
the Json file before ref key that=C2=A0create-layers-setup creates. But the=
 problem is since Json doesn't support comments, and it is not sorted, it c=
reates so much manual work. It is also so ugly if we add a dummy key to the=
 json.

For that reason, would it be possible to support Yaml as an option? I know =
that Yaml is not part of Python standard library but it can be optional if =
pyyaml is installed in the system like here ( https://github.com/yoctoproje=
ct/poky/blob/e13a057812ec639544c321db0aedf9c7c203953e/documentation/sphinx/=
yocto-vars.py ). Either creating both json, and yaml file; or creating one =
of them that user chooses.

Regards,
Talha

--gLVxO10dWJ9dcmqDDh4C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />In my project at work, we want to use create-layers-setu=
p instead of git submodules. But, there is one issue that we are facing rig=
ht now: We have got a CI pipeline that has Renovate bots to update, and cre=
ate pull requests for repositories when a new commit is made in one of the =
dependencies. For it to work with Yocto layers, renovate bots require a reg=
ular expression in the Json file before ref key that&nbsp;create-layers-set=
up creates. But the problem is since Json doesn't support comments, and it =
is not sorted, it creates so much manual work. It is also so ugly if we add=
 a dummy key to the json.<br /><br />For that reason, would it be possible =
to support Yaml as an option? I know that Yaml is not part of Python standa=
rd library but it can be optional if pyyaml is installed in the system like=
 <a href=3D"https://github.com/yoctoproject/poky/blob/e13a057812ec639544c32=
1db0aedf9c7c203953e/documentation/sphinx/yocto-vars.py" target=3D"_blank" r=
el=3D"noopener">here</a>. Either creating both json, and yaml file; or crea=
ting one of them that user chooses.<br /><br />Regards,<br />Talha

--gLVxO10dWJ9dcmqDDh4C--

