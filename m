Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C91EB64DC
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 13:32:55 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web11.11329.1687699974613134970
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Jun 2023 06:32:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=YXeKqR+i;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id CF4095C0101;
	Sun, 25 Jun 2023 09:32:53 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Sun, 25 Jun 2023 09:32:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1687699973; x=1687786373; bh=ns
	FzIQn2evP2/byWroKEUYp1TfcbzQ4gUm9lPsPiLhk=; b=YXeKqR+iBtBC8LYlmL
	TyNxC6PkX88l3aP7hF8JuxNZIFfrOf2PdjjqCXClb/oWQBSn+coWKw2PA0jaf4tG
	CZiDKTThMJBFMN95hLnaqRiXU0zVmtKRxh6INWK/lv9L5Kndf9d/Gjd4aFo8lihg
	b/m3xfDLj/zDfiZmYi18Y2DKjATwvmRFbF5Qo0FS/vyKZ2NsMKOI9ASR7faYW9RH
	qv96wYbdz3SRkNnDqVUjG3RIs0ltZNog/DCiVHjUmUrzKBjDhM4kivYmN2WCJfu3
	ZY2WvRxmwQejeJ/Zjn7KKtNoO/KO6YEQwpacpd4kPDVblooO7fJLxLL7oPw/MOO+
	NwYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687699973; x=1687786373; bh=nsFzIQn2evP2/
	byWroKEUYp1TfcbzQ4gUm9lPsPiLhk=; b=SyUGdDTSJNZqJWyBX93TTKtBt57II
	h/U5i8H37Ircel/QtFAap6M/SgNHIfgDCquQWT4RQYGDnJ10TZRtifhJFMwbIIMO
	r4tbxwCk7MbQfLeGdSjNy5iNmIfG/y5cJSRlJlR8GCmG5NFXHokLXgqexwEpqhEt
	ifkVB6xbcg0rxrnAxWhOPGJk33Fhr/q0yKikRw+Q7H9g6dQ2DjqEgj+qxg5XdryM
	Ace7XshvJ5mWAuf3oBLwzbCT1KYG3RRoncDIjDoir3p3NON6cQXDzEOAfkbfFsQd
	EExmUWReeTf8WGJLlWzBd+76Fx2r2y1/ItckK8du3BR3jj4n3gbZUKkSg==
X-ME-Sender: <xms:BUKYZP-R6Z3T1VQF8xSwEW7UNVziyDCeXIrBPOc0cFjdkpEeWQ7OUQ>
    <xme:BUKYZLtfqBY3eix6jcLgOeUMfaSLQHiLXTlgwuncShiV4pQ0FeU8bzoXCHE0BbD3Q
    t0-jL-pxh_PC6Yb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeehtddgieefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdforghn
    uhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrd
    fhofeqnecuggftrfgrthhtvghrnhepteffhfehtdekvdekveduvddugefhgfejhfejhedt
    heegvefhtedtteehffeiuddunecuffhomhgrihhnpehqthdrihhopdhphhhorhhonhhigi
    drtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhm
    peforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:BUKYZNAcd03Xc9u3qMQCrM581S3GrgpksKW9huH9y441REvpfMqaXg>
    <xmx:BUKYZLeQPTQkiOKdAX0QuSrDQyQgr3629y6a7EGBU2IXJEr9k2rNHg>
    <xmx:BUKYZEPMMuWKBb5FB7f3hKN8AFXCe0q24pxElSpyW3iv9B5UcU_cQg>
    <xmx:BUKYZPau9OkvQ-42DYtT0pEx35WN3DeOjm9zaW2ctq8ivulxkugWbg>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 90EE22D400A5; Sun, 25 Jun 2023 09:32:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <19982c2d-8e78-4149-9be3-1101b0158a4a@app.fastmail.com>
In-Reply-To: <9581.1687687100979603745@lists.yoctoproject.org>
References: <Z6ASWR.R5G5DV4V5AS73@t-online.de>
 <9581.1687687100979603745@lists.yoctoproject.org>
Date: Sun, 25 Jun 2023 15:32:32 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Electronic Consult" <electronicconsult1@gmail.com>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
Content-Type: multipart/alternative;
 boundary=d8bdb00aa250449da00885dc9d109181
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 13:32:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60434

--d8bdb00aa250449da00885dc9d109181
Content-Type: text/plain

Am So, 25. Jun 2023, um 11:58, schrieb Electronic Consult:
> I used the attached kas file to generate an image. I didn't try with Wayland as it wasn't required, I was incorporating meta-qt6 which requires EGLFS for the RPi4 (http://doc.qt.io/qt-6/configure-linux-device.html).
That's my final goal as well -- letting an Qt6 python application run on the target using EGLFS.

I'm just not there yet, am still about to write the Qt6 application. If you experienced any gotchas, I'd be happy to learn abou them.

> I may be grasping for coincidences but on another project using meta-atmel I had issues with the 5.15 kernel, seems there was significant changes  <https://www.phoronix.com/news/DRM-Misc-Next-First-5.15>to the DRM. I recently updated to 6.1 & the issues were resolved.
Will do so to.

Regards,
Manuel
--d8bdb00aa250449da00885dc9d109181
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Am So, 25. Jun =
2023, um 11:58, schrieb Electronic Consult:<br></div><blockquote type=3D=
"cite" id=3D"qt" style=3D""><div>I used the attached kas file to generat=
e an image. I didn't try with Wayland as it wasn't required, I was incor=
porating meta-qt6 which requires EGLFS for the RPi4 (<a href=3D"http://d=
oc.qt.io/qt-6/configure-linux-device.html">http://doc.qt.io/qt-6/configu=
re-linux-device.html</a>).<br></div></blockquote><div>That's my final go=
al as well -- letting an Qt6 python application run on the target using =
EGLFS.<br></div><div><br></div><div>I'm just not there yet, am still abo=
ut to write the Qt6 application. If you experienced any gotchas, I'd be =
happy to learn abou them.<br></div><div><br></div><blockquote type=3D"ci=
te" id=3D"qt" style=3D""><div>I may be grasping for coincidences but on =
another project using meta-atmel I had issues with the 5.15 kernel, seem=
s there was <a href=3D"https://www.phoronix.com/news/DRM-Misc-Next-First=
-5.15" target=3D"_blank" rel=3D"noopener">significant changes </a>to the=
 DRM. I recently updated to 6.1 &amp; the issues were resolved.<br></div=
></blockquote><div>Will do so to.<br></div><div><br></div><div>Regards,<=
br></div><div>Manuel</div></body></html>
--d8bdb00aa250449da00885dc9d109181--

