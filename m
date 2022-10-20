Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47BAC4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 07:09:14 +0000 (UTC)
Received: from mail.mindteck.com (mail.mindteck.com [14.142.4.50])
 by mx.groups.io with SMTP id smtpd.web11.6803.1666249744704081546
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 00:09:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mindteck.com header.s=default header.b=iFbAVkQj;
 spf=pass (domain: mindteck.com, ip: 14.142.4.50, mailfrom: poornesh.g@mindteck.com)
Received: from mail.mindteck.com (mail.mindteck.com [172.16.5.205])
	by mail.mindteck.com (8.17.1/8.16.1) with ESMTPS id 29K78xDg1287497
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 20 Oct 2022 12:39:00 +0530
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.mindteck.com 29K78xDg1287497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mindteck.com;
	s=default; t=1666249740;
	bh=k0epRqzXeQgogpwMZhQlX4tChN/u71FQDFY1hok1YIc=;
	h=From:In-Reply-To:Date:Cc:To:Subject:From;
	b=iFbAVkQjN8A8sspyDmNuzA8K/hiK2wAVNFnj6m96Z6pi/TaeasMFoIfGnPf4vTq6a
	 7P0whL3t9zdy0Jb0FB75AaNv3yleNtbAMSdukz/4sqYhNJGGRIFR7P+4uxLgnetvDO
	 GkRqPDFor9hL5PKL79GNhOc4gJC4bMwkG0TXt7To=
Received: (from sogo@localhost)
	by mail.mindteck.com (8.17.1/8.17.1/Submit) id 29K78vpv1287445;
	Thu, 20 Oct 2022 12:38:57 +0530
X-Authentication-Warning: mail.mindteck.com: sogo set sender to poornesh.g@mindteck.com using -f
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
In-Reply-To: <CAMKF1sqBr77aR+aUzTZ2YeuKahU+f6zbvsE=UZgj6zjrUfEdBg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="----=_=-_OpenGroupware_org_NGMime-1211317-1666249737.555275-10------"
X-Forward: 192.168.21.195
Date: Thu, 20 Oct 2022 12:39:00 +0530
Cc: yocto@lists.yoctoproject.org
To: "Khem Raj" <raj.khem@gmail.com>
MIME-Version: 1.0
Message-ID: <127bb5-6350f400-d-79b22b80@255379599>
Subject: =?utf-8?q?Re=3A?= [yocto] Adding msktutil in yocto #yocto
User-Agent: SOGoMail 5.7.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 07:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58369

------=_=-_OpenGroupware_org_NGMime-1211317-1666249737.555275-10------
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Length: 1331


Dear=C2=A0Khem Raj,

Thanks much , I could successfully able to add "msktutil"=C2=A0as per y=
our response.

Thanks,
=E2=80=8B=E2=80=8B


On Thursday, October 20, 2022 11:26 IST, Khem Raj <raj.khem@gmail.com> =
wrote:
=C2=A0Try something like

https://git.openembedded.org/meta-openembedded/commit/?h=3Dmaster-next

On Wed, Oct 19, 2022 at 10:33 PM <poornesh.g@mindteck.com> wrote:
>
> Greetings !
>
> Can any one help me out to include "msktutil" (used for fetching and =
managing kerberos keytabs in an Active Directory environment) in Yocto =
(Zeus).
>
> Thanks,
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58367): https://lists.yoctoproject.org/g/yocto/me=
ssage/58367
> Mute This Topic: https://lists.yoctoproject.org/mt/94448165/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
CAUTION: This email originated from outside of the organization. Do not=
 click links or open attachments unless you recognize the sender and kn=
ow the content is safe.
=C2=A0

=C2=A0

------=_=-_OpenGroupware_org_NGMime-1211317-1666249737.555275-10------
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Length: 1730

<html>Dear&nbsp;Khem Raj,<br /><br />Thanks much , I could successfully=
 able to add "msktutil"&nbsp;as per your response.<br /><br />Thanks,<b=
r />=E2=80=8B=E2=80=8B<br /><br /><br />On Thursday, October 20, 2022 1=
1:26 IST, Khem Raj &lt;raj.khem@gmail.com&gt; wrote:<br />&nbsp;<blockq=
uote type=3D"cite" cite=3D"CAMKF1sqBr77aR+aUzTZ2YeuKahU+f6zbvsE=3DUZgj6=
zjrUfEdBg@mail.gmail.com">Try something like<br /><br />https://git.ope=
nembedded.org/meta-openembedded/commit/?h=3Dmaster-next<br /><br />On W=
ed, Oct 19, 2022 at 10:33 PM &lt;poornesh.g@mindteck.com&gt; wrote:<br =
/>&gt;<br />&gt; Greetings !<br />&gt;<br />&gt; Can any one help me ou=
t to include "msktutil" (used for fetching and managing kerberos keytab=
s in an Active Directory environment) in Yocto (Zeus).<br />&gt;<br />&=
gt; Thanks,<br />&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br =
/>&gt; Links: You receive all messages sent to this group.<br />&gt; Yo=
u automatically follow any topics you start or reply to.<br />&gt; View=
/Reply Online (#58367): https://lists.yoctoproject.org/g/yocto/message/=
58367<br />&gt; Mute This Topic: https://lists.yoctoproject.org/mt/9444=
8165/1997914<br />&gt; Mute #yocto:https://lists.yoctoproject.org/g/yoc=
to/mutehashtag/yocto<br />&gt; Group Owner: yocto+owner@lists.yoctoproj=
ect.org<br />&gt; Unsubscribe: https://lists.yoctoproject.org/g/yocto/u=
nsub [raj.khem@gmail.com]<br />&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-<br />&gt;<br />CAUTION: This email originated from outside of=
 the organization. Do not click links or open attachments unless you re=
cognize the sender and know the content is safe.<br />&nbsp;</blockquot=
e><br /><br />&nbsp;</html>

------=_=-_OpenGroupware_org_NGMime-1211317-1666249737.555275-10--------

