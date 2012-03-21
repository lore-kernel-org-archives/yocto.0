Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E1C4E0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:14:10 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so1291326pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sAUmi2zYB+7cKG6wf+YHqy49Ouxj9dsy6FFTOYCrKLc=;
	b=oUdtqspoAkCtlvd1JbmKPS3IqhG38zIhsDIl3/AIg8SN/KYgbDYzVkdySBWB6qYYsw
	fldvC6Du0wXM8VEJsnpHFQ8gxjmnNZ9aLOCNHH41+0QWC2ypZwbd/ys8ZgxvvcROyzwE
	xK9Sjba4yVCF54UEH5SolfkgChBXSbSMf/Ki1TW7kYLSoMaatyhO6R4c+e9uKEdmAEKh
	Ndv5ntERcCuuOjnZPwX9FRTyrjQNjNRx2pjHimSVQM6Or/wMENx4JFKr8Ox3h33vEkbp
	CxrAPJvq/Gnokk1jtCnbxtxD570GDfBYIsZ61QoihLPXFafuaLsu484LSXDVwJWHvgSN
	w9WA==
MIME-Version: 1.0
Received: by 10.68.132.41 with SMTP id or9mr14489812pbb.8.1332360849960; Wed,
	21 Mar 2012 13:14:09 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Wed, 21 Mar 2012 13:14:09 -0700 (PDT)
Date: Wed, 21 Mar 2012 16:14:09 -0400
Message-ID: <CADzUK1+w4y131HdB8_hRVXv6tmYRH=q6PSgqUCH_AW9MVxNPyg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Graphics Acceleration on crownbay - 1.2M2 + meta-intel tip
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 20:14:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am trying to get hardware accelerated graphics (video in particular)
to work on my crownbay based hardware. I have EMGD 1.10 driver
integrated and working. The evidence for this is that when I use
glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.

This is good, however, when I go over to the web2 browser (enabled by
defining WEB = "web-webkit" for recipe task-core-apps-x11-pimlico) - I
do not get graphics acceleration for javascript graphics. I also do
not get graphics acceleration when I watch an MP4 movie. I get 2-3 fps
instead of the standard 25 or 29 fps.

This was not the case when Yocto used EMGD 1.8 driver - video worked
fine - I am not sure about accelerated javascript based graphics in
browser as I was not as far ahead in the project.

Is this a known issue?

Thanks

Autif

