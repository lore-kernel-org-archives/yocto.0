Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07CD0C433F5
	for <webhook@archiver.kernel.org>; Fri,  1 Oct 2021 21:38:57 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web10.3612.1633124332706079771
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 14:38:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=VhlwwV2o;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DbPT9P7hfd7MEvFSkwdeTuPJoRLXB3sHOpoDYhnlo9E=; b=VhlwwV2o9YznQ5L6Q3+kAVpmJh
	s9wbYE+XuNV10Ypj6w4gTmukkhzoknyPPJx/44OI+E2mWc4axrP6GHtC3la5gtXLIQFxMxJVWFEKc
	8qUAGDx6Zezt8JsVEp9Blmi0qHLEeeNknxpCAs3Y4HtmanYEZe2ufVF7eVtDnhHmPrd9Ub82Iwiti
	64YsAMAAD9WKHtNTIeJxggvEkNnGNypNPXMvtmwN9vb3Jr+9kGFDKQoqrc+snnmRWlOU61Exrepkp
	Sdr/SKMCFBN2TaBRHPeaxgXeEBiqfG2XTZjPvwHph3v6y5SS03Ey3NnZxyQoipp048Y8yxJvFbzLk
	6O3fYM+g==;
Received: from durham.keylevel.com ([88.97.77.109]:52554
 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mWQEy-0001w9-E9
	for yocto@lists.yoctoproject.org; Fri, 01 Oct 2021 22:38:47 +0100
From: Chris Tapp <opensource@keylevel.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C368C09B-A77B-47F2-8B2F-05B2F35DEC1E"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Meta-raspberrypi - how to configure device tree for MCP251x
Message-Id: <0EB6DADB-A6A2-43B6-815C-C90F40DBF8E7@keylevel.com>
Date: Fri, 1 Oct 2021 22:38:47 +0100
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mWQEy-0001w9-E9
X-4UH-MailScanner: Found to be clean
X-4UH-MailScanner-SpamCheck: 
X-4UH-MailScanner-From: opensource@keylevel.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hs013.4uh.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hs013.4uh.net: authenticated_id:
 opensource@keylevel.com
X-Authenticated-Sender: hs013.4uh.net: opensource@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Oct 2021 21:38:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54927


--Apple-Mail=_C368C09B-A77B-47F2-8B2F-05B2F35DEC1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I am having trouble getting the Waveshare 2-CH CAN HAT working with an =
RPI4. Channel 0 does not come up, channel 1 does, but it will only send =
one message (eventually reporting "write: No buffer space available=E2=80=9D=
) and not receive anything.

Looking at the mcp2515-can0-overlay.dts and mcp2515-can1-overlay.dts =
device tree files in =
/tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/dts/overlays/, =
it looks as if the interrupts are not mapped as required for the board.

      DTS               HAT
CAN0  brcm,pins =3D <25>  PIN23
CAN1  brcm,pins =3D <25>  PIN25

This doesn=E2=80=99t look right, and seems consistent with the behaviour =
I am seeing.

I would also like to check the device chip select signals, but I can't =
see how (if) they are mapped in the dts files.

How can I override these settings when I build the image?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


--Apple-Mail=_C368C09B-A77B-47F2-8B2F-05B2F35DEC1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
am having trouble getting the Waveshare 2-CH CAN HAT working with an =
RPI4. Channel 0 does not come up, channel 1 does, but it will =
only&nbsp;send one message (eventually reporting "write: No buffer space =
available=E2=80=9D) and not receive anything.<br class=3D""><br =
class=3D"">Looking at the mcp2515-can0-overlay.dts and =
mcp2515-can1-overlay.dts device tree files in =
/tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/dts/overlays/, =
it looks as if the interrupts are not mapped as required for the =
board.<br class=3D""><br class=3D""><font face=3D"Courier New" =
class=3D"">&nbsp; &nbsp; &nbsp; DTS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; HAT<br class=3D"">CAN0 &nbsp;brcm,pins =3D &lt;25&gt; =
&nbsp;PIN23<br class=3D"">CAN1 &nbsp;brcm,pins =3D &lt;25&gt; =
&nbsp;PIN25<br class=3D""></font><br class=3D"">This doesn=E2=80=99t =
look right, and seems consistent with the behaviour I am seeing.<br =
class=3D""><br class=3D"">I would also like to check the device chip =
select signals, but I can't see how (if) they are mapped in the dts =
files.<br class=3D""><br class=3D"">How can I override these settings =
when I build the image?<br class=3D""><div class=3D""><br =
class=3D"webkit-block-placeholder"></div><div class=3D"">--<br =
class=3D""><br class=3D"">Chris Tapp<br class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a><br class=3D"">www.keylevel.com<br =
class=3D""><br class=3D""></div></body></html>=

--Apple-Mail=_C368C09B-A77B-47F2-8B2F-05B2F35DEC1E--

