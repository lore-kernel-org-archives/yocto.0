Return-Path: <steve.bedford@timesys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A5E5E00E83; Thu, 11 Jan 2018 07:52:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30F4E00D32
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 07:52:24 -0800 (PST)
Received: by mail-qk0-f174.google.com with SMTP id d21so4855524qkj.3
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 07:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=timesys-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oPHVXH3vIMcoaK4H49fo5ZCSrSMD72ZCVHyb9DNvPd8=;
	b=yJTQOlXaunaybVNARqnTMtbumCyEwajFVkjHrEzAfhvlT3RO9hAzbsUxp41iCon1ii
	0KxTLy8iAI+nTO10s/gQgJN3afqyby7hnIhyj6z9I2tQK5K4nchaTox9fwAS9EKNT5Ap
	gNnxy7nJQ7FEZ4lITtmyPcL4ZolsJF/D4TgIQBz11Yot8jjbPtKTfWorpSHlo0If1m7l
	2vPvojeHN7LTanr0MDygy7ur6j4VbkbnYsEEw0RfesDUoYK3PfX6YtajqDS74w6P7V1O
	dDtiy9sRb89fB68iM97A0QGhokui+6dc8VcDu5qpfH9YwuzZEWcsOqCLuQDWUuI0dcQr
	unHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oPHVXH3vIMcoaK4H49fo5ZCSrSMD72ZCVHyb9DNvPd8=;
	b=G3Lgm+NCbnMYSfQw7XNiun5Rj40l1hc4Cr3k+/xRBwPzk7+oIVoTK4NqM1Dpu0OHSe
	BFZX7Zp5WSgVBXHSZWc9AmfWqdUo2UNCzzmtwXDuAnbJD4uFfPUDNjABiPz3B6wrt9JT
	GIj20NvRxIzp1eCObWBvo7l2QbGd4CZKJjioUOYK9Nkvv8arsN+TyAE9PrCrHRlNRN4E
	6HFMYC2VqHXxD/eYVhIuQB4MbY9kSmwqOA/UqATId4CqEqt8HPyijZJ9acOxefCNjHW2
	3GhRQ8vrQljK7V/+PSh8XyveAG0db5UO5qlG0qqBU19WyRHq97PfyL7W2+jEDPhwCKJu
	0NHw==
X-Gm-Message-State: AKwxytcIOrogaVQrhG90mxIGfqA1sEwcs+DdpwAQj6R8tZbfG0lCa9hY
	nesDVcxUTC0jK5lwJZDQopzg9xmUC87Lx8SA0zyHbw==
X-Google-Smtp-Source: ACJfBotWs+lDyn0cJ8vuA38WVaaeFh/XXt+LAihN1ArKmxrlFCf8phKR2ZaFwW8QwreH2MpDTbh/K2buXQMloOvjaN8=
X-Received: by 10.233.220.130 with SMTP id q124mr16314448qkf.170.1515685943778;
	Thu, 11 Jan 2018 07:52:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.233.237.198 with HTTP; Thu, 11 Jan 2018 07:52:23 -0800 (PST)
From: Steve Bedford <steve.bedford@timesys.com>
Date: Thu, 11 Jan 2018 10:52:23 -0500
Message-ID: <CALRpHvKDyjyynB7oaEWoWDfnwv7sDpq1DcUdHAOsbdoFKxcEWw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [layerindex-web] Updating layers?
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
X-List-Received-Date: Thu, 11 Jan 2018 15:52:25 -0000
Content-Type: multipart/alternative; boundary="94eb2c044bea453a1d056282227b"

--94eb2c044bea453a1d056282227b
Content-Type: text/plain; charset="UTF-8"

Hello!

Is the layerindex not running the update script?  I see end of September as
last updates, and a bunch of branches in our layer (meta-timesys) were
never picked up.

Or is there another way for maintainers to add branches / trigger an update?


Thanks,
-- 
Steve Bedford
Timesys Corporation

--94eb2c044bea453a1d056282227b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>Is the layerindex not running th=
e update script?=C2=A0 I see end of September as last updates, and a bunch =
of branches in our layer (meta-timesys) were never picked up.</div><div><br=
></div><div>Or is there another way for maintainers to add branches / trigg=
er an update?</div><div><br></div><div><br></div><div>Thanks,</div><div>-- =
<br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div>Steve Bedford</div><div>Timesys Corp=
oration</div></div></div></div></div>
</div></div>

--94eb2c044bea453a1d056282227b--
