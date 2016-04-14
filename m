Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 544F1E00E63; Wed, 13 Apr 2016 18:28:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C99D2E00833
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 18:28:22 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id f52so55502145qga.3
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 18:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=PiqbVeJ79b0T+c5vR5E1o5q2l2K7Zmsnmi03NoH1bl0=;
	b=WEN54SwbQBLcWn5tp26kv39P6yR3Yn6HyiiAzhsfJoLF8G4zuiJKWYtMIXIhvzjK35
	+Bv/NfCa4ixSi7IG3liEAPrmTzZnyQi0Zuqg3+LlKqvsJG8JRYzcbmn010hhE/D30whJ
	8Ov2kWtDolGsHsa4W4zwSGOdDUejQQTi3fly77za6/7Zdbmd3CkzUzEaxQACHu/BVMyx
	cV4mi3PSoXDCshbV8LTPSu5CQW9Z1DGusCR+Qi7gmUvOtM9i4oiUGwnRZOntXu9Rg4FZ
	vqNnIWIjDbTI+8MpTb2Fh/uduY5731AEBn1zoZRTvCLUTLdxT9rmC6KsBjoo2wORxupk
	xsSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=PiqbVeJ79b0T+c5vR5E1o5q2l2K7Zmsnmi03NoH1bl0=;
	b=VqWvCWiBA/4vqWQ5k9CcrFQQE65cTPhFGdfMjmWXdR39BcpWUc04RVEi8n7LN9bIJ6
	eWmFwteqIe2kZ0F7Uu7vKooUZJXalZ2RRj9UFMft9SL566f9yUfBABx3xMfYRpfCnb7g
	UTr8jf1HExllWc0WbHqiqrsmVuZ2ZZiVHEEL2AFpDKAzZk4om34PyqhjihAxDhR+pU+z
	/T3Q3TF16DD79FXcU6AZJfpzMJSyshQ8kCMZvRQj7tMbrIH70gSr+vh/KB5GoccEY5A8
	P4hOgkqItVNq0R4Myi1QrioyPchuybnFB48yrw/6vQakmO+cdmAdPcs4ZjlpLI1+mSwM
	1srg==
X-Gm-Message-State: AOPr4FXli6nwVnnEhEz6ZGldK2TxhBbE4RoC7RNZJXWFhy5JwFkpY2N93/fF8qmbCQVdx18xIzBrFlzQTIyomA==
MIME-Version: 1.0
X-Received: by 10.140.37.113 with SMTP id q104mr14693636qgq.104.1460597301594; 
	Wed, 13 Apr 2016 18:28:21 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Wed, 13 Apr 2016 18:28:20 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Wed, 13 Apr 2016 18:28:20 -0700 (PDT)
In-Reply-To: <20160413220428.GC27168@linux-yxv0>
References: <1459348549-32007-1-git-send-email-petter@technux.se>
	<1459348549-32007-4-git-send-email-petter@technux.se>
	<20160413220428.GC27168@linux-yxv0>
Date: Wed, 13 Apr 2016 18:28:20 -0700
Message-ID: <CAMKF1srF=TiHno7Kn43nyWOuPC_myvOm9iVgP-CRN6Hg5xYiag@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/5] rpi-base.inc: Add overlay for rpi-ft5406
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
X-List-Received-Date: Thu, 14 Apr 2016 01:28:26 -0000
Content-Type: multipart/alternative; boundary=001a11c1373e5250c1053067cf99

--001a11c1373e5250c1053067cf99
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Apr 13, 2016 3:05 PM, "Trevor Woerner" <twoerner@gmail.com> wrote:
>
> On Wed 2016-03-30 @ 04:35:47 PM, Petter Mab=C3=A4cker wrote:
> > rpi-ft5406 is an enabler for Official Raspberry Pi 7 inch
> > touchscreen support.
>
> I have an official raspberry pi 7" touchscreen and it's not obvious to me
how
> I would go about enabling it in my config. If I had one of the others I
would
> simply add:
>
>         MACHINE_FEATURES +=3D "pitft pitft22"
>
> or
>
>         MACHINE_FEATURES +=3D "pitft pitft28r"
>
> to my conf/local.conf, but what do I do for the official touchscreen?
>
> Also, by trial and error I've discovered that my touchscreen comes up as
> /dev/fb0 and not /dev/fb1. But the xorg config for touchscreen support
assumes
> /dev/fb1. Am I doing something wrong in my build or can anyone think of a
> reason why my screen would be /dev/fb0 instead of /dev/fb1?
>
> By the way
>
>         MACHINE_FEATURES +=3D "pitft pitft22"
>
> seems to work for me if I use /dev/fb0, but I'm not sure if that's a
fluke?

Check the device trees. Are you using  4.1 kernel or some other
>
> Best regards,
>         Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a11c1373e5250c1053067cf99
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Apr 13, 2016 3:05 PM, &quot;Trevor Woerner&quot; &lt;<a href=3D"mailto:t=
woerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed 2016-03-30 @ 04:35:47 PM, Petter Mab=C3=A4cker wrote:<br>
&gt; &gt; rpi-ft5406 is an enabler for Official Raspberry Pi 7 inch<br>
&gt; &gt; touchscreen support.<br>
&gt;<br>
&gt; I have an official raspberry pi 7&quot; touchscreen and it&#39;s not o=
bvious to me how<br>
&gt; I would go about enabling it in my config. If I had one of the others =
I would<br>
&gt; simply add:<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 MACHINE_FEATURES +=3D &quot;pitft pitft22&=
quot;<br>
&gt;<br>
&gt; or<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 MACHINE_FEATURES +=3D &quot;pitft pitft28r=
&quot;<br>
&gt;<br>
&gt; to my conf/local.conf, but what do I do for the official touchscreen?<=
br>
&gt;<br>
&gt; Also, by trial and error I&#39;ve discovered that my touchscreen comes=
 up as<br>
&gt; /dev/fb0 and not /dev/fb1. But the xorg config for touchscreen support=
 assumes<br>
&gt; /dev/fb1. Am I doing something wrong in my build or can anyone think o=
f a<br>
&gt; reason why my screen would be /dev/fb0 instead of /dev/fb1?<br>
&gt;<br>
&gt; By the way<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 MACHINE_FEATURES +=3D &quot;pitft pitft22&=
quot;<br>
&gt;<br>
&gt; seems to work for me if I use /dev/fb0, but I&#39;m not sure if that&#=
39;s a fluke?</p>
<p dir=3D"ltr">Check the device trees. Are you using=C2=A0 4.1 kernel or so=
me other<br>
&gt;<br>
&gt; Best regards,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 Trevor<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--001a11c1373e5250c1053067cf99--
