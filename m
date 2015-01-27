Return-Path: <coldnew.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF854E00894; Mon, 26 Jan 2015 18:42:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (coldnew.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F87E0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 18:42:34 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id bj1so15452106pad.1
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 18:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:references:to:cc:subject:date:in-reply-to:message-id
	:mime-version:content-type;
	bh=4jOfZfzB67sU+OR7vmlX0ohKA3DCzsS7oBJd+ZkZotU=;
	b=cRm24zYc7yo+Jv122nirTG95dcWm6V1J5vd4AwFnCTCcrsechuRIqK8t6htxHsufda
	f3vhwDy90gzZpFvSc/i5LXL+u6fo5XcTakP+CSJvDr1F9E47uyQKMrQZkkS68rPBXCXK
	HCkL+4tpUb4K2m0BzYkhW/C6IkS3/B14hAbsp0eANYTs2DzfIekplaL/1CoRlBNVT6mH
	Ee1EviXw75CLKhFG8HhyfolQJ2X+MsDqDIFuWeZEOZG+97c2dJ1d20/M2GSDLhLHjMk2
	Cet8nnETKgk/D0HVLqqxrJJX3KtJNyqZvm5STwExpIrAokrO9uL5ap4eyfnLQvpuQ58Q
	dxKw==
X-Received: by 10.66.136.137 with SMTP id qa9mr38509241pab.129.1422326553391; 
	Mon, 26 Jan 2015 18:42:33 -0800 (PST)
Received: from Rosia ([203.70.194.104])
	by mx.google.com with ESMTPSA id ug6sm11148093pab.7.2015.01.26.18.42.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Jan 2015 18:42:31 -0800 (PST)
From: coldnew.tw@gmail.com
X-Google-Original-From: Yen-Chin, Lee <coldnew.tw@gmail.com>
References: <1414203707-21296-1-git-send-email-coldnew.tw@gmail.com>
	<20141120115817.GA24610@gmail.com>
	<CAK18fxFcciQg06v_ScZmw=0+XXMwbgzfCf_76bzKwnzwzAmQ9A@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 27 Jan 2015 10:35:54 +0800
In-reply-to: <CAK18fxFcciQg06v_ScZmw=0+XXMwbgzfCf_76bzKwnzwzAmQ9A@mail.gmail.com>
Message-ID: <m2fvaxgd0t.fsf@gmail.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] qtbase: Add basic Qt5 building support
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
X-List-Received-Date: Tue, 27 Jan 2015 02:42:47 -0000
Content-Type: text/plain


Hi:

Sorry for the late reply :-S

I'll resend the patch to move it to qt5-layers just like
meta-fsl-arm does, just wait for a while :).

Andrei Gherzan writes:

> Hello,
>
> On Thu, Nov 20, 2014 at 1:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> Hello Yen,
>>
>> On Sat, Oct 25, 2014 at 10:21:47AM +0800, Yen-Chin Lee wrote:
>> > To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to
>> > indicate device config.
>> >
>> > Signed-off-by: Yen-Chin Lee <coldnew.tw@gmail.com>
>> > ---
>> >  recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++
>> >  1 file changed, 7 insertions(+)
>> >  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>> >
>> > diff --git a/recipes-qt/qt5/qtbase_%.bbappend
>> b/recipes-qt/qt5/qtbase_%.bbappend
>> > new file mode 100644
>> > index 0000000..c994cf5
>> > --- /dev/null
>> > +++ b/recipes-qt/qt5/qtbase_%.bbappend
>> > @@ -0,0 +1,7 @@
>> > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> > +
>> > +QT_CONFIG_FLAGS += " \
>> > +    -device linux-rasp-pi-g++ \
>> > +    -device-option CROSS_COMPILE=${TARGET_PREFIX} \
>> > +    -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pthreads \
>> > +"
>>
>> If we add this append we need to change the layer dependencies and
>> probably add
>> this package to the test image too. But maybe we can avoid this by using a
>> separate layer specific directory as meta-fsl-arm does with qt5-layer.
>>
>> Check https://github.com/Freescale/meta-fsl-arm and
>> https://github.com/Freescale/meta-fsl-arm/blob/master/conf/layer.conf
>>
>>
> Do you still work on this? I'm trying to catch up with old patches. Any
> updates on this one?

--
Sent from emacs with mu4e

