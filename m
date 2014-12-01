Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E43AE00872; Mon,  1 Dec 2014 14:55:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D92E0084E
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 14:55:32 -0800 (PST)
Received: by mail-qa0-f50.google.com with SMTP id w8so7892745qac.37
	for <yocto@yoctoproject.org>; Mon, 01 Dec 2014 14:55:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GwMLDv1xVvLmwuVNOLJ+InC648lzDPYBCgcPMmRrIFg=;
	b=NhdusnWctWfgFjtnWe8oNDDkT6lmRNonRbF2Sw9pE6ogtT+il/3V/m8FPIlZMXeYzB
	HDq40D9lb8D9HVTs/MsvJFEU05d2Qa/9sA+eybgboQ69vpJwGbuaNwPd4rftPCQnMpEv
	36IiKejPGUT6E+JDVu28VejRA4cy65oaq1ilU0lsQ1XUCRFBzqkmF2PI5eqn+d4h0eCk
	dvbfJoJhtf97EKPyEaJEibnnePHj1csXBek4p1MN0VAuC2mJNdAFehJXxrXZDIChgxJc
	7ourXeWBQXGHH/mGUQCfXJN4t1phR5uGXXVKs41i67+BIpUbpXDEbhYbNI3ohAXwqSNC
	pKHg==
X-Gm-Message-State: ALoCoQlmTF9HbUv4FVXOHMACdY2IsmQkhbN4tK9Alll3lruzcH2XPsbqMV6ccrbRuoxci3qB5q9I
X-Received: by 10.140.96.101 with SMTP id j92mr88620452qge.87.1417474531561;
	Mon, 01 Dec 2014 14:55:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Mon, 1 Dec 2014 14:55:11 -0800 (PST)
In-Reply-To: <CAPhnLPAOP_zqsP2Obows-X9nyqoDU6OLQWypw7R_6=krZ4qqjQ@mail.gmail.com>
References: <1416504504-20259-1-git-send-email-ross.burton@intel.com>
	<CAPhnLPAOP_zqsP2Obows-X9nyqoDU6OLQWypw7R_6=krZ4qqjQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Dec 2014 22:55:11 +0000
Message-ID: <CAJTo0Lb3zJ0bJD5GrWLKHWLO6306pTx07J8i+jNxYRKP1yg6xQ@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [autobuilder][PATCH] buildset-config.controller: add nightly-arm64 target
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
X-List-Received-Date: Mon, 01 Dec 2014 22:55:36 -0000
Content-Type: multipart/alternative; boundary=001a113a9d8aeeaaa305092f8192

--001a113a9d8aeeaaa305092f8192
Content-Type: text/plain; charset=UTF-8

On 1 December 2014 at 22:39, Flanagan, Elizabeth <
elizabeth.flanagan@intel.com> wrote:

> Pulled into master, I'll bring it into production this week. Note: it
> will not be part of nightly, so if you want it kicked on prod
> autobuilders for nightlies, we'll have to do some extra work for that
> (LAYERVERSION bump, and code in the buildstep to skip this build to
> ensure backwards compatibility).
>

I'll ensure we layerversion bump when the machine is merged, but for now
this is for testing a patch set that isn't in master yet anyway.

Cheers,
Ross

--001a113a9d8aeeaaa305092f8192
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
 December 2014 at 22:39, Flanagan, Elizabeth <span dir=3D"ltr">&lt;<a href=
=3D"mailto:elizabeth.flanagan@intel.com" target=3D"_blank">elizabeth.flanag=
an@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Pulled=
 into master, I&#39;ll bring it into production this week. Note: it<br>
will not be part of nightly, so if you want it kicked on prod<br>
autobuilders for nightlies, we&#39;ll have to do some extra work for that<b=
r>
(LAYERVERSION bump, and code in the buildstep to skip this build to<br>
ensure backwards compatibility).<br></blockquote><div><br></div><div>I&#39;=
ll ensure we layerversion bump when the machine is merged, but for now this=
 is for testing a patch set that isn&#39;t in master yet anyway.</div><div>=
<br></div><div>Cheers,</div><div>Ross=C2=A0</div></div><br></div></div>

--001a113a9d8aeeaaa305092f8192--
