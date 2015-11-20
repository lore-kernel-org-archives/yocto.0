Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A5AFE00B5E; Fri, 20 Nov 2015 08:09:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26C3E00B30
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 08:09:53 -0800 (PST)
Received: by ioc74 with SMTP id 74so127814805ioc.2
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 08:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=3qLl7ADsHf7cvIogMhJ8t8s3xxiEADFztQqdEyqHzIc=;
	b=cyqXe6ysqr5FTZOWM98ZCXDPdjASiG1+ZiJ5rqDhxG93FyC4P3VQr+VSj5r3ljWeGc
	mtSaUfyMPUV8r1uD3ZbixYAAfnuqGg0VO8QlAgnUjjN6hp73kF2TLPheIOtdrqeUg4C/
	29m6vM/0J1szRb0X8hF9uihK7fpEyQeAu9dL7gzaRX5EeFitPOyGlpq/yfbF8c+OzrkY
	E+DxOZRqqarUoTAF+L5sOBkFhL4pApc+wd6IQJPFbvH+X65uh/oYfL5D8J180FXamyka
	t3AHTxA7HruXa/+kR/G7m5+PRwd/WUKyC9PqqOFwdiVRf4P0x3xu4jZxfA+XnFkVgra3
	b85g==
X-Received: by 10.107.162.137 with SMTP id l131mr13656037ioe.49.1448035792751; 
	Fri, 20 Nov 2015 08:09:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Fri, 20 Nov 2015 08:09:23 -0800 (PST)
In-Reply-To: <564F3D6F.7020601@osg.samsung.com>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
	<564F3D6F.7020601@osg.samsung.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Nov 2015 08:09:23 -0800
Message-ID: <CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Fri, 20 Nov 2015 16:09:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 20, 2015 at 7:34 AM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:
>> Hello Andrei,
>>
>> This series adds support for Eric Anholt's v4.2 kernel, that has support
>> for the vc4 DRM/KMS driver, which is the new open source graphics driver
>> stack for the Raspberry Pi to be used instead of the userland driver.
>>
>> This is a third version of the series which addresses feedback provided
>> by Andreas M=C3=BCller, Khem Raj and you. The first version and second v=
ersion
>> of the series can be found at [0] and [1]. Some of the v2 patches have
>> been dropped since are no longer necessary so the delta is smaller in v3=
.
>>
>
> Any comments about this series?

Whole series looks good to me.

>
> Best regards,
> --
> Javier Martinez Canillas
> Open Source Group
> Samsung Research America

