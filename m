Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEDE8E0099B; Tue,  5 May 2015 03:33:18 -0700 (PDT)
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
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C9B1E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 03:33:09 -0700 (PDT)
Received: by qcbgy10 with SMTP id gy10so32421782qcb.3
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 03:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6fJyAFnup6Jbj/o7prizwxwaPUak1E4qJsQOShoo7y4=;
	b=CRt3/QDddAMFTmdPdDxOjwJjPJmjoTBDXP02KtLQbahu9N+zOihHbSvv/XbfJpl41S
	Z/o9a9/psr0Jjm1Xw/PshteYsKRdeo8hfy9H7ZxU6XnSx2yuaKboRXyNbECP6WJa4k/q
	dueHkN1/oVHRm+3MQ/C2LEGYJOFDwGUFaUnSsFtJZj+HdE99iIEN7Th903J7jItcjLx4
	gwD719Cs1tme+Gz9c4zevFwGgFReCh1GHb1bdRLzHWhw9i0iX6GfbN5geJKeiHP6aeeP
	oSLbyTHfCIHKnqO9CXNmBD+bIZSo8EmAc/86vk7SnIEy+u5rwftz0V7MOlGX7jVJ4FFM
	Awvw==
X-Gm-Message-State: ALoCoQlEsHQL8QMeHp3X6qXxmsbzr4FYN6wwBnVEF0UK1Kpyt3fG5BWpzp/+CI7HYBy1qWctS9Yx
X-Received: by 10.140.235.77 with SMTP id g74mr34799153qhc.64.1430821989169;
	Tue, 05 May 2015 03:33:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 5 May 2015 03:32:48 -0700 (PDT)
In-Reply-To: <CABc_YGDJ=yvOkU7Bpbwq-oxbJ7Ec4ZHgL-fy2BR2+pTKwSZWdQ@mail.gmail.com>
References: <CABc_YGDJ=yvOkU7Bpbwq-oxbJ7Ec4ZHgL-fy2BR2+pTKwSZWdQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 May 2015 11:32:48 +0100
Message-ID: <CAJTo0LafbAPvc_+AVQk-OnTeF7kjRkPxLcRPBM=PpXf+UzWfdg@mail.gmail.com>
To: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package group in one ipk package
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
X-List-Received-Date: Tue, 05 May 2015 10:33:18 -0000
Content-Type: multipart/alternative; boundary=001a11354a0066e193051553347b

--001a11354a0066e193051553347b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 May 2015 at 09:30, Marcin Krzemi=C5=84ski <mar.krzeminski@gmail.com> w=
rote:

> I have a question. I created my own package group containing 12 packages
> and I want if possible to make yocto to create one ipk package to system
> update instead of twelve. Is it possible? I can not fin any solution to i=
t.
>

Not really.

If your goal is something along the lines of safe entire-system atomic
updates then you'll be needing something more advanced that rpm/dpkg/opkg,
often involving two rootfs partitions and upgrading the one that wasn't
booted and then rebooting.

Ross

--001a11354a0066e193051553347b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 5=
 May 2015 at 09:30, Marcin Krzemi=C5=84ski <span dir=3D"ltr">&lt;<a href=3D=
"mailto:mar.krzeminski@gmail.com" target=3D"_blank">mar.krzeminski@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<div>I have a question. I created my own package group containing 12 packag=
es and I want if possible to make yocto to create one ipk package to system=
 update instead of twelve. Is it possible? I can not fin any solution to it=
.</div></div></blockquote><div><br></div><div>Not really.</div><div><br></d=
iv><div>If your goal is something along the lines of safe entire-system ato=
mic updates then you&#39;ll be needing something more advanced that rpm/dpk=
g/opkg, often involving two rootfs partitions and upgrading the one that wa=
sn&#39;t booted and then rebooting.</div><div><br></div><div>Ross</div></di=
v></div></div>

--001a11354a0066e193051553347b--
