Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D34F3E00D10; Wed, 27 Sep 2017 10:28:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.46 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D7ADE00C89
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:28:45 -0700 (PDT)
Received: by mail-yw0-f196.google.com with SMTP id v72so7171329ywa.1
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=jaU23UVCCde19HcKE7Yi/x05EQ9HejT8QTqN6Caltv8=;
	b=AVeMACGqP24QSdJhGY0sor272VVP4k2sCe2q/eUMKnCJHCX2tcLNbW4Mlaze15Xw3n
	DFhac3Pi2xARZ/737/p41kLoFljQUjgDDQ7NWmUht4qScn5kXCkhVAG7F85kLEwnlP+p
	ha9J8Vu3G9QG9VJOBeClV89IXimS54KFO4Zdej7jM+Y1xAN2NC88OVggLFU15a8mWoZc
	KRpuEMBrWEZJzTyanD8ggBLGzetbiVk506hYX3oWX0sguz4T2/mZuft+yq4F/07KxxS1
	5VeY2cEitYdUBoOyU+MUJt3k05DpRqLtd18eP87tS+7+I7EscLOdNqydj6Zbaeia39yP
	eTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=jaU23UVCCde19HcKE7Yi/x05EQ9HejT8QTqN6Caltv8=;
	b=UdjpUu1RP/agQqf/LilKG+P3xZRLMXGlIFrzX0L+AAPsdLNTWgX/nO4Yrfzfimugio
	2aZBkf/Fd4ybPxKOKXehhfZRgVXMQZl8AxIrRCrA815Dgbi1xXLC2DU0sxFe05/LQlJE
	GcUjZcQh6zDvK+rqa8r2xzVRTkAyR24dbRY2xwovZDU+Fc82+jkWT9ikLzW+lS7E8ppt
	zfN4aVK/m4q3KTqTHY45n2yUOj2Y+DovRQ75s3fZ2AuuQ18cPre71hsNkBKWZha4D1qr
	HAAJdzXKNtYThbzaDpmrFEsCxr9CTbYg+VeYkoZpOXdNeQjS011bC4cy7iuHNb/LQtcn
	vXBw==
X-Gm-Message-State: AHPjjUifM95R0Qtjq/CIPkVtCNX2Gwoj8vjNsikQeTcOuhhq+g8a5a8G
	08ChsdXQ3ZdCgPRPObhpsb9tOLey
X-Received: by 10.13.229.3 with SMTP id o3mr1438843ywe.417.1506533324692;
	Wed, 27 Sep 2017 10:28:44 -0700 (PDT)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com.
	[209.85.218.46]) by smtp.gmail.com with ESMTPSA id
	s127sm4711635ywc.49.2017.09.27.10.28.43
	for <yocto@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 10:28:43 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f46.google.com with SMTP id j126so17811614oia.10
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:28:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC7Q6ZTtFu1HHEyn/mF1oQDxIiEVLf/r8c6MccHcMN8xawLAR3G4sU0zH9qdje5sNq5e2LCn7a33AJPUod1pNk=
X-Received: by 10.157.8.134 with SMTP id 6mr1239377otf.189.1506533322868; Wed,
	27 Sep 2017 10:28:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.66.149 with HTTP; Wed, 27 Sep 2017 10:28:42 -0700 (PDT)
In-Reply-To: <CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
Date: Wed, 27 Sep 2017 14:28:42 -0300
X-Gmail-Original-Message-ID: <CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
Message-ID: <CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 17:28:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 2:20 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Wed, Sep 27, 2017 at 10:17 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>>
>> On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>>>
>>> * this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
>>> * this makes qtbase and everything which depends on some qt* recipe to
>>>   be effectivelly MACHINE_ARCH
>>>
>>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>>> ---
>>>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
>>>  1 file changed, 3 deletions(-)
>>>  delete mode 100644
>>> dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>>
>>> diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>> deleted file mode 100644
>>> index ae3f1d3..0000000
>>> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>> +++ /dev/null
>>> @@ -1,3 +0,0 @@
>>> -# Copyright (C) 2017 O.S. Systems Software LTDA.
>>> -
>>> -PACKAGECONFIG_GL_rpi   = "gles2 eglfs"
>>
>>
>> What would be the solution though?
>
> I think check for OpenGL feature to enable it
> I think another thing is to also check for X11 in distro features before
> enabling it
>
> Gl support is quite soc specific so I don't think there is an elegant way
> unless qt components can be built with soc specific elements as plugins or
> something which then can have independent recipe

https://github.com/Freescale/meta-freescale/blob/master/classes/fsl-dynamic-packagearch.bbclass

Something like this?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

