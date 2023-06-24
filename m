Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EB44EB64DC
	for <webhook@archiver.kernel.org>; Sat, 24 Jun 2023 16:03:20 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web10.19187.1687622593880386643
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 09:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=l8Sg5FTa;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.27, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 03E795C0089;
	Sat, 24 Jun 2023 12:03:13 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Sat, 24 Jun 2023 12:03:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1687622593; x=1687708993; bh=XV
	qZlX/mTj/VaJZbeearVVWtweMd2aDCn/yJASZX6Mw=; b=l8Sg5FTagB2SmoP3fB
	jPHWHP17oPsF9SNSkpYWk+CjEskKfDzrJ9cNyDj6+lou7iakD8JnU/35jiqOx4dO
	zGY2jl18Yn3mMUXdnTyuXRdkBTS/3D+al/Gn4GA/uMeF4nWpJMWfb9rUvteMl0N0
	ZQjRofI81QSZWPkdAX9RS5nJXWhaViB+0Tn3somuXLGunn1R2rrcyoZKlwYHZEJs
	Ap1nXjY44+UipR3lFYwdw/GRE5zij3m5OxEBKQpdKXIHh/ZUjtgWEvIiD/eiNamB
	4QrTju3OLBXtbcOoWen68omvGio59sLUfW5KokqvE2ZiQlLGdgJOJjfgLnQwrlub
	z8vA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687622593; x=1687708993; bh=XVqZlX/mTj/Va
	JZbeearVVWtweMd2aDCn/yJASZX6Mw=; b=UhnD2AhHa50LiAvztTwGKi3S1Fvcc
	0+fxiH3EYsd7pfZuWPlpnrME41Z15wrM/u3D0kIEdZZXOmLtF5FwZPrTl9mBnVmv
	8r/4oyhGdwZviLIhjPPmg73eXGCqhdDf93bxdSB6K0EF8KfXVw1yphEHCQv8EafA
	LFIi49JMV3MaVzoODvEk1MoV9yU+hdt9aVOclU+Fjg5+YpM9Yb0J/Sj39l4lLmhI
	PRGfMEpVvulrba7ywvT9/5dWJRqXl9ZNVTQdsyc5LC1RS4aQuEpqYVDHhDx3398s
	fX/v2B8jCorpTCImhYOTyq8vcK1ybYC0DbHUCU/bsS/Qqf0q3PEQl124w==
X-ME-Sender: <xms:wBOXZGw_XfG8s-UfMVECSozS9U597Awn4qayfAyyf3WApzSNWmGqfw>
    <xme:wBOXZCQlNfPv-_hFXKMZDsHLvAg63Z83lgV8vd0Xh6MEyFdVUvPNP8AyiiFUIIbrq
    i0l1Jta99YYQpPz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeegjedgleegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsegrtderreerreejnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeejieehleffhfevveevveevheduieefjeejfeel
    kefgjeevjeefvefghfetffeltdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:wBOXZIWAj7lFCyNVu9P1lCl0vAzLI_N_H3Yf7VEHJ5vyzLA4DTstdg>
    <xmx:wBOXZMiiEAU5cUfJLxBwlRqteTx7_mVrrrbgPeXRQW7ueoO0U0Y84w>
    <xmx:wBOXZIDD-NZJO5BAiqS-wmL5mxLVN-0D7--FwQBOj6VNchPpi_RVMQ>
    <xmx:wROXZH9Y44WFntEYXuM2OSi-10b9_wc3yTftj9rLPeQoB-MBg6qRPA>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B88BA2D4009A; Sat, 24 Jun 2023 12:03:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <f387de3c-883e-4eaa-842d-d665968d021a@app.fastmail.com>
In-Reply-To: 
 <CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
 <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
 <4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
 <CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
Date: Sat, 24 Jun 2023 18:02:52 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Khem Raj" <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
Content-Type: multipart/alternative;
 boundary=72d6a69cb8d2420c8f36e1cdde274b0a
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 16:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60425

--72d6a69cb8d2420c8f36e1cdde274b0a
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am Sa, 24. Jun 2023, um 17:25, schrieb Khem Raj:
> On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither <ManWag@fastmail.f=
m> wrote:
>> Am Sa, 24. Jun 2023, um 00:04, schrieb Khem Raj:
>> > On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither <ManWag=
@fastmail.fm> wrote:
>> >>
>> >> Hi users of meta-raspberrypi,
>> >>
>> >> I'd like to ask around if for you people vc4-kms-v3d (opposed to v=
c4-fkms-v3d) *really* is the working way to get vc4 support on a Raspber=
ry Pi 4 Model B.
>> >>
>> >> Both on master and kirkstone, vc4-kms-v3d is the default. It's def=
ined in /conf/machine/raspberrypi4-64.conf:
>> >>
>> >> VC4DTBO ?=3D "vc4-kms-v3d"
>> >>
>> >> I was mildly surprised to find this, because on my system (running=
 Kirkstone) I can get the screen to work only if I specify vc4-fkms-v3d.
>> >>
>> >> Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build=
. The commit message further suggests that vc4-Fkms-v3d is broken, while=
 vc4-kms-v3d is not. So I'm wondering:hy is it exactly the other way rou=
nd on my machine?
>> >>
>> >>     raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay
>> >>
>> >>     With latest 5.10 kernel fkms version fails to bring up VC4 and=
 we do not
>> >>     get dri device initialized ( /dev/dri ) is empty, which means =
we can not
>> >>     launch wayland componsitors.
>> >>
>> >
>> > We have moved away from 5.10 kernel to 5.15 and then 6.1, so its
>> > possible that fkms is working fine again.
>> > If you test it with both vc4graphics and userland graphics do both =
work ?
>>=20
>> The meta-raspberrypi commit I'm on (a6fa6b3aec36b92c3750852dd6788af9d=
2ce08f6) has recipes for Linux 5.10.110 and 5.15.34 and on both of them =
vc4-fkms-v3d works while vc4-kms-v3d does not.
>>=20
>> * When using vc4-kms-v3d, the screen goes dark very early in the boot=
 process.
>> * When using vc4-kms-v3d, kmscube and weston-wayland both work.
>=20
> Which release branch are you using for
> Your project=20

I'm two commits behind kirkstone, on meta-raspberrypi.
--72d6a69cb8d2420c8f36e1cdde274b0a
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Am Sa, 24. Jun =
2023, um 17:25, schrieb Khem Raj:<br></div><blockquote type=3D"cite" id=3D=
"qt" style=3D""><div><div class=3D"qt-gmail_quote"><div dir=3D"ltr" clas=
s=3D"qt-gmail_attr">On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither =
&lt;<a href=3D"mailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wro=
te:<br></div><blockquote class=3D"qt-gmail_quote" style=3D"margin-top:0p=
x;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width=
:1px;border-left-style:solid;border-left-color:rgb(204, 204, 204);paddin=
g-left:1ex;"><div>Am Sa, 24. Jun 2023, um 00:04, schrieb Khem Raj:<br></=
div><div> &gt; On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreith=
er &lt;<a href=3D"mailto:ManWag@fastmail.fm" target=3D"_blank">ManWag@fa=
stmail.fm</a>&gt; wrote:<br></div><div> &gt;&gt;<br></div><div> &gt;&gt;=
 Hi users of meta-raspberrypi,<br></div><div> &gt;&gt;<br></div><div> &g=
t;&gt; I'd like to ask around if for you people vc4-kms-v3d (opposed to =
vc4-fkms-v3d) *really* is the working way to get vc4 support on a Raspbe=
rry Pi 4 Model B.<br></div><div> &gt;&gt;<br></div><div> &gt;&gt; Both o=
n master and kirkstone, vc4-kms-v3d is the default. It's defined in /con=
f/machine/raspberrypi4-64.conf:<br></div><div> &gt;&gt;<br></div><div> &=
gt;&gt; VC4DTBO ?=3D "vc4-kms-v3d"<br></div><div> &gt;&gt;<br></div><div=
> &gt;&gt; I was mildly surprised to find this, because on my system (ru=
nning Kirkstone) I can get the screen to work only if I specify vc4-fkms=
-v3d.<br></div><div> &gt;&gt;<br></div><div> &gt;&gt; Commit a6fa6b3aec3=
6b92c3750852dd6788af9d2ce08f6 [1] broke my build. The commit message fur=
ther suggests that vc4-Fkms-v3d is broken, while vc4-kms-v3d is not. So =
I'm wondering:hy is it exactly the other way round on my machine?<br></d=
iv><div> &gt;&gt;<br></div><div> &gt;&gt;&nbsp; &nbsp; &nbsp;raspberrypi=
4: Use full kms (vc4-kms-v3d) DT overlay<br></div><div> &gt;&gt;<br></di=
v><div> &gt;&gt;&nbsp; &nbsp; &nbsp;With latest 5.10 kernel fkms version=
 fails to bring up VC4 and we do not<br></div><div> &gt;&gt;&nbsp; &nbsp=
; &nbsp;get dri device initialized ( /dev/dri ) is empty, which means we=
 can not<br></div><div> &gt;&gt;&nbsp; &nbsp; &nbsp;launch wayland compo=
nsitors.<br></div><div> &gt;&gt;<br></div><div> &gt;<br></div><div> &gt;=
 We have moved away from 5.10 kernel to 5.15 and then 6.1, so its<br></d=
iv><div> &gt; possible that fkms is working fine again.<br></div><div> &=
gt; If you test it with both vc4graphics and userland graphics do both w=
ork ?<br></div><div> <br></div><div> The meta-raspberrypi commit I'm on =
(a6fa6b3aec36b92c3750852dd6788af9d2ce08f6) has recipes for Linux 5.10.11=
0 and 5.15.34 and on both of them vc4-fkms-v3d works while vc4-kms-v3d d=
oes not.<br></div><div> <br></div><div> * When using vc4-kms-v3d, the sc=
reen goes dark very early in the boot process.<br></div><div> * When usi=
ng vc4-kms-v3d, kmscube and weston-wayland both work.<br></div></blockqu=
ote><div dir=3D"auto"><br></div><div dir=3D"auto">Which release branch a=
re you using for<br></div><div dir=3D"auto">Your project&nbsp;<br></div>=
</div></div></blockquote><div><br></div><div>I'm two commits behind kirk=
stone, on&nbsp;meta-raspberrypi.</div></body></html>
--72d6a69cb8d2420c8f36e1cdde274b0a--

