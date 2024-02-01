Return-Path: <timotheus.giuliani@philips.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 354BDC4828D
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 14:32:02 +0000 (UTC)
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: Martin Jansa <martin.jansa@gmail.com>,yocto@lists.yoctoproject.org
From: timotheus.giuliani@philips.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (155.190.35.4)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Feb 2024 06:31:58 -0800
References: <CA+chaQfSiDw0g6oFKF9AO4MAfx2m+c_UuR_BB97M7X26ntOOxg@mail.gmail.com>
In-Reply-To: <CA+chaQfSiDw0g6oFKF9AO4MAfx2m+c_UuR_BB97M7X26ntOOxg@mail.gmail.com>
Message-ID: <13858.1706797918021134316@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LTMfNXGNGKxZgWQawQll"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:32:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62366

--LTMfNXGNGKxZgWQawQll
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Is the "private HTTP source mirror" configured as PREMIRROR (not just MIR=
ROR, see own-mirrors.bbclass) to fetch from there before trying upstream si=
tes?
The do_fetch logs shows that my mirror is used and not the upstream. own-mi=
rrors.bbclass just prepends the mirror defined in SOURCE_MIRROR_URL for dif=
ferent protocols to the=C2=A0PREMIRRORS variable.
> If it is, then is it as fast as the sstate mirror you're using? If the ne=
twork access is slow then you would see the same issue with sstate, so I'm =
surprised that you worry only about fetched sources.
Maybe it is, but the downloads are ten times bigger than sstate cache. Unfo=
rtunately I have no possibility to influence the network setup.
Maybe there is the possibility to bring the downloads size to the minimum n=
ecessary to build the current state, without history.

regards,

--LTMfNXGNGKxZgWQawQll
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>&gt; Is the "private HTTP source mirror" configured as PREMIRROR (not ju=
st MIRROR, see own-mirrors.bbclass) to fetch from there before trying upstr=
eam sites?<br />The do_fetch logs shows that my mirror is used and not the =
upstream. own-mirrors.bbclass just prepends the mirror defined in SOURCE_MI=
RROR_URL for different protocols to the&nbsp;PREMIRRORS variable.<br />&gt;=
 If it is, then is it as fast as the sstate mirror you're using? If the net=
work access is slow then you would see the same issue with sstate, so I'm s=
urprised that you worry only about fetched sources.<br />Maybe it is, but t=
he downloads are ten times bigger than sstate cache. Unfortunately I have n=
o possibility to influence the network setup. <br />Maybe there is the poss=
ibility to bring the downloads size to the minimum necessary to build the c=
urrent state, without history.</p>
<p><br />regards,</p>

--LTMfNXGNGKxZgWQawQll--

