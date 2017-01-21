Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4213E0071C; Sat, 21 Jan 2017 04:41:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3DDAE00546
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 04:41:31 -0800 (PST)
Received: by mail-oi0-f47.google.com with SMTP id m124so57455557oif.1
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 04:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kJY9FxgvEnXVJwVRswG+JBwmc9TKuPEu/HpIn6pE19Q=;
	b=eY9U6MBe4uHyQg0YaZZInPCH7mxOvPH43mfQGtAXWAn28mb9EIMuZr88WWxPK0U8Dt
	7qC2YJCfxpHlOPUfz2xstg61HM/rMY1H1jIQZKoMbWjcy6GNrlPxD80SAD+TdO3tlzES
	r2EY6xacQaHfKSclKxSGr3zc6dsOAt+uzfSiCdsm2OhCILOKlBSDk7JNbGKrJ/NBdatX
	+hJ0WcJJoU2qwY0/CJJG6u/bAjrm/f92L+3gL2lnMY34BtSMfRMoltH25/0jsC3KDoST
	UDk0pQHVrBOFxetloc2PsFfCyzVBppmsruiXG3I3RrUP7/LB+SX4Yi/IW7+8SoiSdai3
	YmKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kJY9FxgvEnXVJwVRswG+JBwmc9TKuPEu/HpIn6pE19Q=;
	b=ixZcOd6IPXJTDPETR4zzuqqxs5pwgIsNuAM057rQtBj9tuB3WNkr8K6yt2bYdNKUly
	PtPyct+Ww3ATkKe2Y52u3r4jJK9IdQ3EFDS7YJYXr9XMQMub0BfS1ONvL3wE0IX1eltL
	KInZW3718mGmH/ii1tI3C0FyBQj8GF8FpQe8sYkeu4Xat1vsVifOvthQz+3Vr2cehQGf
	PT4n4VGrIhLC3SkUgFY404qkefw+Us1E8cxEUWZEvz3S3w140oyVIY4yLDcrVWTk6iSi
	hqZzRSa1a8mMrbRkXXbJBSIQZPicBAO7bR5XvmYqor9eQS1YLvICrUwZ7b3uwU9VxiJ1
	OIMA==
X-Gm-Message-State: AIkVDXIxrRRq77u+jihmJqUcct7+OPDsHZS7i8KZ0Hru2NmAGYQTJRPAEOWzgHhu7L9qvQWSrfWY/t4ZviEQdA==
X-Received: by 10.202.51.10 with SMTP id z10mr10003633oiz.214.1485002490708;
	Sat, 21 Jan 2017 04:41:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Sat, 21 Jan 2017 04:41:30 -0800 (PST)
In-Reply-To: <cb2342be-f33b-e59d-b5e8-66f752110178@topic.nl>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<40274d5f-c074-8ee5-bb41-5cb66f5da9bd@topic.nl>
	<CALXw4G6VmPJqb6tc+148SADpX-SauFR9GneZ51eBoMdfmcK=AA@mail.gmail.com>
	<cb2342be-f33b-e59d-b5e8-66f752110178@topic.nl>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Sat, 21 Jan 2017 13:41:30 +0100
Message-ID: <CAMjhiJibYBbzEF39WPi7QqSmLvvZ=b52YhqmDo0JyO08LbKRJQ@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jan 2017 12:41:35 -0000
Content-Type: multipart/alternative; boundary=001a113cdfe8f319be05469a15b9

--001a113cdfe8f319be05469a15b9
Content-Type: text/plain; charset=UTF-8

Hello Mike,

On Fri, Jan 20, 2017 at 3:27 PM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> An no one (except one of the systemd folks) has come up with a program
> that just waits for the the processes to finish (with a timeout) and only
> uses the "-9" double barrel shotgun to finish only the ones that didn't
> respond?
> (though doing that is rather pointless if the system power is about to be
> cut anyway...)
>
> What lesser-brain-dead "one of the systemd folks" solution is that?

Regards,

Leon.

--001a113cdfe8f319be05469a15b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Mike,<br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Jan 20, 2017 at 3:27 PM, Mike Looijmans <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">m=
ike.looijmans@topic.nl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">An no one (except one of the systemd folks) has come up with a program =
that just waits for the the processes to finish (with a timeout) and only u=
ses the &quot;-9&quot; double barrel shotgun to finish only the ones that d=
idn&#39;t respond?<br>
(though doing that is rather pointless if the system power is about to be c=
ut anyway...)<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></bloc=
kquote><div></div><div>What lesser-brain-dead &quot;one of the systemd folk=
s&quot; solution is that?<br><br></div><div>Regards,<br><br></div><div>Leon=
.<br></div><div><br></div><br></div><br></div></div>

--001a113cdfe8f319be05469a15b9--
