Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1C7FE00BA1; Thu,  7 Nov 2019 09:02:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,URIBL_GREY autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	*  0.4 URIBL_GREY Contains an URL listed in the URIBL greylist
	*      [URIs: surveymonkey.com]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE8F1E0084E
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 09:02:00 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id d83so2459928ilk.7
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2019 09:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=3FY1KB7dOKJqzlyT2wPDI5iln+xlRhIiMoBhSOmVyQ0=;
	b=LgV+hgNdFf1UaF3pvd0BtId8A3/LNMvbTBUkbohWbAy1hhdmR5DgQLZ6NTjZlDOTmu
	aC8nm71szSvMvhlv+snU+EHSRDAtU0VrRrn9hTswXq/XKWqygkzAiJ83PFDVQJ1wTLYO
	jNMwiQuED9joQgKpUNuApaCziaPsH3llSFWVO+1NQG5hRrJDoqDWaXC0YQIc623SKXLC
	dQ49+1uPCvAxN4/dCivU9eQ9EQH6/MjbcDBjLmyQS292TOPNBhAY1aBy6Ma0F5icqig8
	0KPQTpkC2yDWe3JhJB+0u9lquKbk5EqCZUsBKUoiGMOiuuwZzlgWqYV3LpiFD+y4rmlO
	0/AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3FY1KB7dOKJqzlyT2wPDI5iln+xlRhIiMoBhSOmVyQ0=;
	b=bETTpyDB+tFaI6fSlaC5y+08O3+uvIL3ofUsYG5aON3ucGKnZ9ZB22lpzNQ6Kic1I3
	+iNBXr4QfYR4EHsYf3T6UhSGIS6w5R+asiG8Dss5g5w0a4bWQPfRrcWUUxCotiXvQFu+
	ijEra20g6Lv5JgxNXSECxLIkbiOxhrRbsjTdN4J3ryG+lSUbn8Y+lzKm6vxf5lUQu0k9
	nMpfr1mb0zuo8qtwI4nnoRPyF3YAfgARabMctHzhy1oAhXlG+FLm5LcjldBNI64tM/bf
	Y98/VFzRlMuzR3+v3e9ztsejRvsebNmFlTahN3Qv8KnSVxVpRp5xsDD0bosd9BeQszsm
	yLFw==
X-Gm-Message-State: APjAAAUzXpZxEG/ikIRot/9DOYxXDJj9UZUO1c2ifJjeRtugkQfg1Uzd
	ygG5zuFKOyJJmQhn1Ud7pUXFBm+km/ZEOZIHzaYJ6cTDMe2Inw==
X-Google-Smtp-Source: APXvYqyon0NRlMSooHH8iwi0XIjWY9gkahvvDDBkS9+FiSg9fbUJ+pGNkp2pdYVvcIE4kQtwPwH/mvGJ3RYXh3OkSBQ=
X-Received: by 2002:a92:8388:: with SMTP id p8mr5826502ilk.49.1573146119708;
	Thu, 07 Nov 2019 09:01:59 -0800 (PST)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Thu, 7 Nov 2019 12:01:48 -0500
Message-ID: <CAPoiz9x+8E-NHEkO=1GXMFHRn-FTST6iizTAZcmceE5qCK+PEA@mail.gmail.com>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Subject: OpenEmbedded event at FOSDEM20
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
X-List-Received-Date: Thu, 07 Nov 2019 17:02:01 -0000
Content-Type: text/plain; charset="UTF-8"

OpenEmbedded is considering creating a mini-conference attached to
FOSDEM 2020 (https://fosdem.org/2020/), and we would like your help.
Please fill out this short, 10 question, survey to determine the
viability of such an effort.
https://www.surveymonkey.com/r/9QP76CL

Thank you,
The OpenEmbedded Board

