Return-Path: <pavel@zhukoff.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5808FC4332F
	for <webhook@archiver.kernel.org>; Tue, 27 Dec 2022 12:36:17 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web10.155807.1672144570212640227
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Dec 2022 04:36:10 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@zhukoff.net header.s=fm2 header.b=J1zj7Ahn;
 spf=pass (domain: zhukoff.net, ip: 64.147.123.24, mailfrom: pavel@zhukoff.net)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id D639C32003C0
	for <yocto@lists.yoctoproject.org>; Tue, 27 Dec 2022 07:36:08 -0500 (EST)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Tue, 27 Dec 2022 07:36:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zhukoff.net; h=
	cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1672144568; x=1672230968; bh=TdZfUqXxpj
	FJD6IyR1tuAoYnTq9Ym6zVPxMmJxbiBBg=; b=J1zj7Ahn2npBjhhOXQjaS89KcQ
	hqnZHvJ9/QvncN4TOrfhHOqm3/L80cZOrwOnEJ0Iv+mK3QDks6tG5bh0P7OIDAYt
	nQImgbLS8oa/1FxCkHT2YTm4gooaG730qbo9ZIE/XbZYtYZ6NPq5HCTFu+qhhDOE
	P6AWdLZxzii7iefcwTXVtFononxnLrhd2cppAT4yIHBGMY0GuNtReHWTU6vdt7ST
	epGfYMYjEMX++9n8YfP4e96SPc+kz/mcrtoc/lS4DTeVVMLvTgbq7v6XA39UwVQ+
	O1jIbu/8PDPTySGU5vloobUDudYDOhTmaz90YQB6POZO+fsZrx4jcJpjd8KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1672144568; x=1672230968; bh=TdZfUqXxpjFJD6IyR1tuAoYnTq9Y
	m6zVPxMmJxbiBBg=; b=tT6RzqLIVxJocVM5VIAur0y6l5Lq7R24uD1zjxWMIk2f
	TPSBYTIdCeG4ntcTbC97afLkEumtZvQBxowz+hyRDIJeu758ZUlmhpXIpho3YbAl
	vgiAh8f+79d0esNAHgGjSrEUxThPBqBCOekNxviLl7Au3YYTaaL0JlixXRQjjtkk
	fkGYe2YwT4p3DAjHYsqQvOuUsVMUDhjc7F1Ov1111HD8ap9uisQceWdMC5yZPUw9
	BIdx3oDcOoswit5jVgDlpyo96u6ZdRDtGLjmXR5HvYqpv82rfeT6V9tvmIYlQ6c6
	MCAljCARCdOOqkdBsxFo5co0cCijqTGQljJXYMbAOQ==
X-ME-Sender: <xms:uOaqY-Je6vXXfCI88YFiY_WE1nr6hYvyl_baRCTh5JoiTjw39Mif2g>
    <xme:uOaqY2KOVwITKwGCSaIR1P0KvoR0D73dmXins04xF9R9Rb8EIfokUlbtFWIdPyjVg
    lujd1s92WYYSRIOtlo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedriedtgdegvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrgdtre
    erreertdenucfhrhhomhepfdfrrghvvghlucgkhhhukhhovhdfuceophgrvhgvlhesiihh
    uhhkohhffhdrnhgvtheqnecuggftrfgrthhtvghrnhepleelfedtvdfgheehkefhueehle
    dvhffgvedutedtgefhfeekueekudeijedvudeknecuffhomhgrihhnpehthhhomhgrshif
    rdguvghvpdihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghvvghlseiihhhukhhofhhfrdhnvght
X-ME-Proxy: <xmx:uOaqY-sD7N6pRN1-W_d-jkSAGr6YIOdJEoHUjzj9qSqh-brgtr2q8A>
    <xmx:uOaqYzY5iqE-qm_uwBET3ztvv2m8LTXU31Ohvu1VvUSUaMg-8WHovg>
    <xmx:uOaqY1akTMWk9w0uQOTR4BKrgNTURPR-SppDPX6C26FSJMc2Vuiyyw>
    <xmx:uOaqY-kDH-X3R_ZKuDXGbNEscF_0ZkSi5m8guFZ2vrRIoI4rOmQfpg>
Feedback-ID: ib94946c9:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 3A115B60086; Tue, 27 Dec 2022 07:36:08 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1185-g841157300a-fm-20221208.002-g84115730
Mime-Version: 1.0
Message-Id: <74e8ddf5-c68c-401f-a0fa-93a8941162ef@app.fastmail.com>
In-Reply-To: <eqFs.1672125218320991333.nTda@lists.yoctoproject.org>
References: <eqFs.1672125218320991333.nTda@lists.yoctoproject.org>
Date: Tue, 27 Dec 2022 13:35:46 +0100
From: "Pavel Zhukov" <pavel@zhukoff.net>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Run browser immediately after booting up device #yocto
Content-Type: multipart/alternative;
 boundary=a45bbc8cb0d84ff79be13eef3d98f3cc
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Dec 2022 12:36:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58874

--a45bbc8cb0d84ff79be13eef3d98f3cc
Content-Type: text/plain

Hi, 

Kiosk mode is what you're looking for. Just google for "Yocto kiosk" and you'll see few solutions like:
https://thomasw.dev/post/yocto-kiosk/
https://wiki.yoctoproject.org/wiki/Web_Application_for_Interactive_Kiosk_Devices

-- 
Pavel

On Tue, Dec 27, 2022, at 08:13, jovanbosic95@gmail.com wrote:
> Hi everyone,
> 
> I have a task to add browser to my yocto project and start it immediately after it is booted. Also I have to open specific web page. Any suggestions how to do it? Any advice would be helpful. 
> 
> Thanks in advance! 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58873): https://lists.yoctoproject.org/g/yocto/message/58873
> Mute This Topic: https://lists.yoctoproject.org/mt/95900014/6390638
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org <mailto:yocto%2Bowner@lists.yoctoproject.org>
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [pavel@zhukoff.net]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
> 

--a45bbc8cb0d84ff79be13eef3d98f3cc
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi,&nbsp;<br></=
div><div><br></div><div>Kiosk mode is what you're looking for. Just goog=
le for "Yocto kiosk" and you'll see few solutions like:<br></div><div><a=
 href=3D"https://thomasw.dev/post/yocto-kiosk/">https://thomasw.dev/post=
/yocto-kiosk/</a><br></div><div><a href=3D"https://wiki.yoctoproject.org=
/wiki/Web_Application_for_Interactive_Kiosk_Devices">https://wiki.yoctop=
roject.org/wiki/Web_Application_for_Interactive_Kiosk_Devices</a></div><=
div><br></div><div>--&nbsp;<br></div><div>Pavel<br></div><div><br></div>=
<div>On Tue, Dec 27, 2022, at 08:13,&nbsp;<a href=3D"mailto:jovanbosic95=
@gmail.com">jovanbosic95@gmail.com</a> wrote:<br></div><blockquote type=3D=
"cite" id=3D"qt" style=3D""><div>Hi everyone,<br></div><div><br></div><d=
iv>I have a task to add browser to my yocto project and start it immedia=
tely after it is booted. Also I have to open specific web page. Any sugg=
estions how to do it? Any advice would be helpful.&nbsp;<br></div><div><=
br></div><div>Thanks in advance! <br></div><div><br></div><div>-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div>Links: You receive al=
l messages sent to this group.<br></div><div>View/Reply Online (#58873):=
&nbsp;<a href=3D"https://lists.yoctoproject.org/g/yocto/message/58873">h=
ttps://lists.yoctoproject.org/g/yocto/message/58873</a><br></div><div>Mu=
te This Topic:&nbsp;<a href=3D"https://lists.yoctoproject.org/mt/9590001=
4/6390638">https://lists.yoctoproject.org/mt/95900014/6390638</a><br></d=
iv><div>Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mu=
tehashtag/yocto">https://lists.yoctoproject.org/g/yocto/mutehashtag/yoct=
o</a><br></div><div>Group Owner:&nbsp;<a href=3D"mailto:yocto%2Bowner@li=
sts.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a><br></div><d=
iv>Unsubscribe:&nbsp;<a href=3D"https://lists.yoctoproject.org/g/yocto/u=
nsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailt=
o:pavel@zhukoff.net">pavel@zhukoff.net</a>]<br></div><div>-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div><br></div><div><br></div></b=
lockquote><div><br></div></body></html>
--a45bbc8cb0d84ff79be13eef3d98f3cc--

