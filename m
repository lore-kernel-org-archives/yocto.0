Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFB89E0096A; Thu, 21 May 2015 01:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C451DE005B9
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 01:43:15 -0700 (PDT)
Received: by qkx62 with SMTP id 62so1576934qkx.3
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 01:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lcB1lej+qgAkcRocqWPuiL2v92yiD2urzTFYYDsFU4I=;
	b=dP/rRe/cQ6bOoC/gGyZS1NIrJrEhPqqrqJ9ktLV6QQGWr44o/WUqRWsvSnJidu8YNM
	4T3ccDyJTRmDzR4X9KjnEpyYNnUOVy58rOHuetzYKdd+q6abQycAVnj4VvaooD94ubfN
	5dNO53N/eoy2HBxJsjhgtWL1hzMqcuSuRnIdm3exppXNYSpD85X9eVLvdG/u39l4OIwT
	YhUKBL4Nn/7GN2CIoFyGKqSxDf4K8Uorqe+YijZZSoztL8Ylk3WruM2ZdEj6pFc9UV90
	s5ZreG9gXGXTgjTKF6IsUtctlxU9BjcjTmKT74Gm1BhXUZHhjhpW3DKB2wSXPMlnDiGb
	dJ9Q==
X-Gm-Message-State: ALoCoQniifNb80gdornvjgXepSJm9d1UuePzIh9b/WlpfXnH1Tr7cUsmG9dRrObXRQJsuSFInlcc
X-Received: by 10.55.18.155 with SMTP id 27mr2489445qks.36.1432197794651; Thu,
	21 May 2015 01:43:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 21 May 2015 01:42:53 -0700 (PDT)
In-Reply-To: <1432185017343.69879@inedasystems.com>
References: <1432112441117.48793@inedasystems.com>
	<555CAA84.30805@linux.intel.com>
	<1432185017343.69879@inedasystems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 May 2015 09:42:53 +0100
Message-ID: <CAJTo0La1SjjDrHt51BbrBkXtV3GZd0p4VLFf6_q6n=PTECHmVw@mail.gmail.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Usage of apt-get package in yocto
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
X-List-Received-Date: Thu, 21 May 2015 08:43:19 -0000
Content-Type: multipart/alternative; boundary=001a11473796cc74870516938873

--001a11473796cc74870516938873
Content-Type: text/plain; charset=UTF-8

On 21 May 2015 at 06:10, Raghavendra Kakarla <
Raghavendra.Kakarla@inedasystems.com> wrote:

> After adding the lines what you mentioned in the local.conf file and tried
> to get the git packages with "apt-get " it also give the error but this
> time it is different. It gives the error "unable to locate package git".


Did you actually configure your sources.list, and run apt-get update?

Ross

--001a11473796cc74870516938873
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 May 2015 at 06:10, Raghavendra Kakarla <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blank">Raghaven=
dra.Kakarla@inedasystems.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">After adding the lines what you mentioned in the local.conf file =
and tried to get the git packages with &quot;apt-get &quot; it also give th=
e error but this time it is different. It gives the error &quot;unable to l=
ocate package git&quot;.</blockquote></div><br>Did you actually configure y=
our sources.list, and run apt-get update?</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11473796cc74870516938873--
