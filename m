Return-Path: <jbarnesweb@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C04EB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 15:48:06 +0000 (UTC)
Subject: Re: #fakeroot #pseudo-native #xattr #attr-native #yocto
To: yocto@lists.yoctoproject.org
From: jbarnesweb@yahoo.com
X-Originating-Location: Orlando, Florida, US (72.189.75.43)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Jun 2023 08:48:00 -0700
References: <0da6a246265769516bff8190afd79dea1fa1946d.camel@linuxfoundation.org>
In-Reply-To: <0da6a246265769516bff8190afd79dea1fa1946d.camel@linuxfoundation.org>
Message-ID: <10784.1686757680483461481@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WgbdWJT0OmXjuZr2dg7P"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 15:48:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60306

--WgbdWJT0OmXjuZr2dg7P
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your reply, Richard.

The=C2=A0 task was elided above. Here's what the recipe looks like now. (I =
removed the fakeroot decorator from the function signature). It still stops=
 with Operation not permitted.

label_sign_verity() {
...
${DUMPIMAGE} -T flat_dt -p 0 -o ${SOCOS_IMAGEDIR}/Image ${FITIMAGE_PATH} #D=
oes this contribute to the error?
...
echo ${WHOAMI} >>${WORKDIR}/socosupdate_sign_and_package.txt # prints root
...
${SETFATTR} -n security.ima -v 0x${IMA_HEADER}${HASH_ALGO}${KEY_ID}${SIG_LE=
NGTH}${DTB_SIG} ${SOCOS_IMAGEDIR}/Image # Operation not permitted.
}
...
fakeroot do_sign_and_package() {
...
label_sign_verity ${SOCOSUPDATEDIR}/ ${FITIMAGE_PATH} >>${WORKDIR}/socosupd=
ate_sign_and_package.txt
}
...
addtask sign_and_package after do_deploy before do_build

--WgbdWJT0OmXjuZr2dg7P
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your reply, Richard.<br /><br />The&nbsp; task was elided above.=
 Here's what the recipe looks like now. (I removed the fakeroot decorator f=
rom the function signature). It still stops with Operation not permitted.<b=
r /><br />label_sign_verity() {<br />...<br />
<div>&nbsp; &nbsp; ${DUMPIMAGE} -T flat_dt -p 0 -o ${SOCOS_IMAGEDIR}/Image =
${FITIMAGE_PATH} #Does this contribute to the error?&nbsp;<br />...<br />
<div>&nbsp; &nbsp; echo ${WHOAMI} &gt;&gt;${WORKDIR}/socosupdate_sign_and_p=
ackage.txt # prints root<br />...<br />
<div>&nbsp; &nbsp; ${SETFATTR} -n security.ima -v 0x${IMA_HEADER}${HASH_ALG=
O}${KEY_ID}${SIG_LENGTH}${DTB_SIG} ${SOCOS_IMAGEDIR}/Image # Operation not =
permitted.<br />}</div>
<div>...</div>
</div>
</div>
<div>fakeroot do_sign_and_package() {</div>
<div>...<br />
<div>&nbsp; &nbsp; label_sign_verity ${SOCOSUPDATEDIR}/ ${FITIMAGE_PATH} &g=
t;&gt;${WORKDIR}/socosupdate_sign_and_package.txt</div>
<div>}</div>
</div>
...<br />
<div>addtask sign_and_package after do_deploy before do_build</div>
<div>&nbsp;</div>

--WgbdWJT0OmXjuZr2dg7P--

