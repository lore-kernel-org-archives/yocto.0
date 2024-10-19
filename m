Return-Path: <felix-kuhlmann@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0008D3C90B
	for <webhook@archiver.kernel.org>; Sat, 19 Oct 2024 11:50:02 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web11.4899.1729338596694567773
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Oct 2024 04:49:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=felix-kuhlmann@gmx.de header.s=s31663417 header.b=WnMsIfv/;
 spf=pass (domain: gmx.de, ip: 212.227.15.18, mailfrom: felix-kuhlmann@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729338595; x=1729943395; i=felix-kuhlmann@gmx.de;
	bh=tvr2AWeTiKYtcMeT+FnKSTUIJeEJhEqgwbSckwKm1iA=;
	h=X-UI-Sender-Class:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=WnMsIfv/qqbND/DFljEjIPrfyB45lLkAOtSMG8JN7TJUYfvrE+2uQnbwnmqQTbKS
	 Gy2LSgf1JGgXkFEG2YqGKDb2iPt4G37xCCF1oLSTMaFB5/jVhbxlcwfOKpha6ot0h
	 QQA3w7pma2bGj3S63dozeK6psw++0EeJ6XvKDRqG3PW9rnOGkR96kCTf1bho0ZbUv
	 bmdirkPOZJk3gfd2nyTGcdW96w3+VzsfM3yx72goLu9InSRdBY+zgriQH+NdVpimG
	 inEj/I+xSc2QgjtKEglQEu+GmdmH4nHp/33GEnnleEIW7jBxsBuczupFts6FwuLJ0
	 oSMbMml3oduWTgh/Gg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from fedora ([213.172.123.58]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MYNNo-1tNfDl0v2I-00QcDz for
 <yocto@lists.yoctoproject.org>; Sat, 19 Oct 2024 13:49:55 +0200
Date: Sat, 19 Oct 2024 13:50:22 +0200
From: Felix Kuhlmann <felix-kuhlmann@gmx.de>
To: yocto@lists.yoctoproject.org
Subject: Question regarding executing an install script during the build of
 an image
Message-ID: <ZxOc_m5GBfsY2Hhk@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K1:X49ao1gm26lU2yCv9wcWCSxeIUi9IC3u8mS4nIw0AADWUtuCp9j
 gwKf55tI2UxOa1nmhBsHB2NTZS/uccZ2qMpAXZ/WD9/omxCaIbBeB8pumQV5X2E0C+JOL3e
 rxTZny/Sn5sh8V2qs+O1itNCZ6L34xi0WEP7Sbe9QAo/+KkN9HE52WNPBSI4buV572zJJk4
 wfwSM0rCOsf2b0xuCM0UQ==
UI-OutboundReport: notjunk:1;M01:P0:4fyqp68Jd3g=;wplaJk0wb4M4d1mL5O9Qaoy0DeL
 H9+j+i8fAnP4+N50wrgF4o3C/lAGN3HLkPj5uZasrwswdAPbAM9nN23YD/UimmxitHYIWZFDF
 o9E1FC2J8L6kokj0IOCxsk0lBrx0ElHLAw+eM+rHatbCcSMghCuEUQMRTY8E2udXi9HCt3BKA
 SBa4+3OJ2PhI4e9zDT76j3zrlMVCqSG15s2NhUrXgDuFZACHXWzKK9GX8WLj0t9j0PypBJ9k/
 fSfnQicNqEOQlfEuJI/XZuAnkfDvF1V4pN23nACByHvVQrEVIAur3QnYjbNMS3W42VjTwu0Gd
 gQ8T4JQo4PY0PcDATwaNW3ZqGEho6kZ1FUPderOKX8gWd1ldS8iTnuDNQMoaE+aRDqJSb6Mk5
 9SV7IZg0JoOdtYnPv7NmGBjDjLyiN440PaXdNO0TAPcFI0/6aU5lsKU/udyaQ+Tnr5TdyWvPQ
 FQY7hoPa8Q22PKFGhrnWC2xV4ykMbxXYT9tL4L7s+IAxxpdclBBkVoNos6Ho+9wr3Vj4nSDJL
 mbebIqgP3/lcr5rokbfBsCjHGVh1Hzuzg2Td0xq5ZkS8o8i41qKEGTpshuB53nB9bEhLEW4so
 viWATkIf8pim41E1c86RW0sjgoAe2wgTYn7URzxej7gVETcFGh+D+xunZl1NS4meHwsK7RK4k
 S2WydSeRqXJzIntMU4mlqodRFDcLOT9Tbxx8ft6ChB3z4kh0joJ3KgHSarBUmdrmVyMC82zBZ
 xhpAAe6QsCiJerSmURLXQRrZds4aa9wO/L3soqSnovXNKE2a8VrFrfWvfXDenJGlI9cfge9pk
 BsbwyGd4vFhiK7gp+RX0oQiw==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Oct 2024 11:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64051

Hello everybody,

I need your help with a project I'm currently working on.
I want to create an image that contains the OpenPLC runtime, which is an
open source soft PLC solution.

The creators of this project provide a handy install script, which can
be aquired through their project's GitHub repository.

My question now is, what would I have to write in a custom recipe in
order to install this piece of software? From what I can tell, it also
compiles code on the go, so Bitbake would have to do that with the
cross compiler used for other aspects of the build as well.

The solutions I've found online so far mostly centered around
post-install scripts, which isn't what I'm looking for.

My goal is to have a soft PLC system that boots up and starts the
necessary services straight away. Usually, this is taken care of by the
script.

If you have any better ideas or if you need further information, feel
free to reply.

Thanks in advance and best regards
Felix Kuhlmann

