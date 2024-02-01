Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79EABC47DDB
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 08:36:00 +0000 (UTC)
Received: from cp165174.hpdns.net (cp165174.hpdns.net [91.238.165.174])
 by mx.groups.io with SMTP id smtpd.web11.11115.1706776559282973412
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 00:36:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=cu6tabz+;
 spf=pass (domain: keylevel.com, ip: 91.238.165.174, mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Type:From:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2gaMF6zAp22h3gT1kHDHbbKX4QNlnf0JuO3Y3xHEM58=; b=cu6tabz+uX4V73WJJDiAVWo8oe
	Jjuul0QTSkP8PTrdj3E64jGD7sw84VA/cmfafe1TUsFUY4YPdjC10lJuod+Cqk0ejrDFkX+iACstO
	FIRJA2dTFaLXqabo/Iyk7RUbbX+ys2SL8kK4Vx7eBTbLWOY3oi1qaoa4E24Tal9GUi64Ol4p9r7sz
	ZxrKWG6b0KyYEYGO+KncwiTpPZwnLFxSQChIC3fdgxlITwgC/+q0ud4WCkYflf3PUYZqOjA3vz8xO
	+GbphRGegYbMRa7QF8ASjWNFowM6rkKZ9rtx7qfIzax/fHQi4n0Iefix/hPy0uFjIEsKUIMw+Xl7/
	F1tcNNAw==;
Received: from durham.keylevel.com ([78.32.131.67]:27348 helo=smtpclient.apple)
	by cp165174.hpdns.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <opensource@keylevel.com>)
	id 1rVSY6-002Iuv-1y;
	Thu, 01 Feb 2024 08:35:54 +0000
From: Chris Tapp <opensource@keylevel.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4C0A2AED-667D-4865-85A2-0A2E7AC875CF"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Subject: Re: [yocto] List membership verification
Date: Thu, 1 Feb 2024 08:35:23 +0000
References: <CADfgfobScqVYRtPjm5buBRVzROqWX++85inBmKqZ1MVLSWawMg@mail.gmail.com>
To: yocto@lists.yoctoproject.org,
 mhalstead@linuxfoundation.org
In-Reply-To: <CADfgfobScqVYRtPjm5buBRVzROqWX++85inBmKqZ1MVLSWawMg@mail.gmail.com>
Message-Id: <F8A549AA-54ED-4D5D-B392-3858344C246D@keylevel.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-YourOrg-MailScanner-Information: Please contact the ISP for more information
X-YourOrg-MailScanner-ID: 1rVSY6-002Iuv-1y
X-YourOrg-MailScanner: Found to be clean
X-YourOrg-MailScanner-SpamCheck: 
X-YourOrg-MailScanner-From: opensource@keylevel.com
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp165174.hpdns.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: cp165174.hpdns.net: authenticated_id: opensource@keylevel.com
X-Authenticated-Sender: cp165174.hpdns.net: opensource@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 08:36:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62354


--Apple-Mail=_4C0A2AED-667D-4865-85A2-0A2E7AC875CF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Michael,

I=E2=80=99ve had a few of these and followed the instructions that said =
logging in to my account would count as confirmation.

However,  they continued and only stopped when I used the =E2=80=9Creply =
to this message=E2=80=9D confirmation method.

Everything seems to back to normal now, but though it was worth =
mentioning in case it helps someone else.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


> On 30 Jan 2024, at 18:02, Michael Halstead =
<mhalstead@linuxfoundation.org> wrote:
>=20
> Hello,
> Some mailing list users are being asked to confirm they actively want =
to continue receiving emails from our lists. Please search your inbox =
for a message with the subject: "Action Required: Confirm Your Groups.io =
Membership to Continue Receiving Group Emails" from "@groups.io =
<http://groups.io/>". Reply to this email to ensure you continue to =
receive listmail.
>=20
> Please let me know if you have any issues.
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62338): =
https://lists.yoctoproject.org/g/yocto/message/62338
> Mute This Topic: https://lists.yoctoproject.org/mt/104059097/3617534
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: =
https://lists.yoctoproject.org/g/yocto/leave/6692120/3617534/1571444874/xy=
zzy [opensource@keylevel.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--Apple-Mail=_4C0A2AED-667D-4865-85A2-0A2E7AC875CF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Hi =
Michael,<div><br></div><div>I=E2=80=99ve had a few of these and followed =
the instructions that said logging in to my account would count as =
confirmation.</div><div><br></div><div>However, &nbsp;they continued and =
only stopped when I used the =E2=80=9Creply to this message=E2=80=9D =
confirmation method.</div><div><br></div><div>Everything seems to back =
to normal now, but though it was worth mentioning in case it helps =
someone else.</div><div><br id=3D"lineBreakAtBeginningOfMessage"><div>
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><div style=3D"color: rgb(0, 0, 0); letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
Helvetica; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: =
after-white-space;"><div>--</div><div><br></div><div>Chris =
Tapp</div><div>opensource@keylevel.com</div><div>www.keylevel.com</div><di=
v><br></div></div></span></div></div></div></div>
</div>
<div><br><blockquote type=3D"cite"><div>On 30 Jan 2024, at 18:02, =
Michael Halstead &lt;mhalstead@linuxfoundation.org&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div dir=3D"ltr">Hello,<div>Some =
mailing list users are being asked to confirm they actively want to =
continue receiving emails from our lists. Please search your inbox for a =
message with the subject: "Action Required: Confirm Your Groups.io =
Membership to Continue Receiving Group Emails" from "@<a =
href=3D"http://groups.io/">groups.io</a>". Reply to this email to ensure =
you continue to receive listmail.</div><div><br></div><div>Please =
let&nbsp;me know if you have any issues.<br><span =
class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto =
Project</div><div>Systems Operations =
Engineer</div></div></div></div></div>
<br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Links: You receive =
all messages sent to this group.<br>View/Reply Online (#62338): =
https://lists.yoctoproject.org/g/yocto/message/62338<br>Mute This Topic: =
https://lists.yoctoproject.org/mt/104059097/3617534<br>Group Owner: =
yocto+owner@lists.yoctoproject.org<br>Unsubscribe: =
https://lists.yoctoproject.org/g/yocto/leave/6692120/3617534/1571444874/xy=
zzy =
[opensource@keylevel.com]<br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
<br><br></div></blockquote></div><br></div></body></html>=

--Apple-Mail=_4C0A2AED-667D-4865-85A2-0A2E7AC875CF--

