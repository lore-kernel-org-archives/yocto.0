Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E5E5E00AD7; Wed, 27 Jan 2016 06:45:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfalizer[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F49AE00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 06:45:30 -0800 (PST)
Received: by mail-vk0-f53.google.com with SMTP id n1so5978374vkb.3
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 06:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Vj2I+3rrO5zxFlLq6VUpnij//GFcgOE7sJptn14VTpQ=;
	b=A6FeOO5ofVS2xuKgJHqximq+HuCPIChEofESU+TCeVTgKLxX+8It5/Y9BbtVGpCsMB
	UeIpYC6aijp3Zma3RnRjlRaeEGjpEaTexx46GOfrmUv2awHltaAH7acOuBdmBy0y4aMo
	R9SLwkYZXKP5236yTAZCNOyhW0zSczfYCeQSTI387wEfwll+Sawfvc3y8WoABmvmYYHb
	GtTQzAjheNFfWPUN8n0guuRlT/2F/77V7mk5A+GrmM4rMeBb/VAx+GXxT1aY0sXVXAZ5
	BrP6awZFyyXVHpxB2LL5D2MVbZUMjpuRJOWPSJF6hQWjjkirN4egMA2IPSOroTlbZpK1
	HW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Vj2I+3rrO5zxFlLq6VUpnij//GFcgOE7sJptn14VTpQ=;
	b=g06CTpShi4YqVMBlc6eNGHTRNVl87JQKlhQk9RoEpn5FvMI7svRIVgSYt/CBWiCSn6
	n+3umtc5LKRcC6lICbYLuacP2Dq/cBSsbuk4uHHrODTIHjbxNpLjMUBfubc/uRyw/bAQ
	2mZHKzae9ig+DMTts8OPrgkRTqF1Ptx08I3U4ilhkpuzeNgsv41rCylyxtCw786WD+tg
	UCt0XcspqVECDeCEF31gh0nZRIQ/Wev7g3sfUX7WjFIo4Cc19T6fRLnhbPuy9ov1Q02O
	67M6BEp6hn8Vy4Bujls+iDc2VqAVyRZxJPm7ivVtiYxyC/TWlWtDWAUteX4+w2Fzei54
	q+Iw==
X-Gm-Message-State: AG10YOQnGQMmrIRIVMMdA8irBht0YQa4YG1+3LvXfJ8/5tO9yuKt5XqkUTbd7oKVmyghrDaHeBwpskIagj4QZw==
MIME-Version: 1.0
X-Received: by 10.31.137.11 with SMTP id l11mr16448130vkd.98.1453905930054;
	Wed, 27 Jan 2016 06:45:30 -0800 (PST)
Received: by 10.103.64.132 with HTTP; Wed, 27 Jan 2016 06:45:30 -0800 (PST)
Date: Wed, 27 Jan 2016 15:45:30 +0100
Message-ID: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
From: Ulf Magnusson <ulfalizer@gmail.com>
To: yocto@yoctoproject.org
Subject: Detecting missing build dependencies
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
X-List-Received-Date: Wed, 27 Jan 2016 14:45:34 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

If a recipe has a missing build dependency that the sysroot just
happens to contain anyway from an earlier build, then the build will
succeed only to fail later when the sysroot no longer has the build
dependency. We want to avoid that, so we're looking for ways to
automatically check for unspecified build dependencies.

The only method I know of at the moment is to remove or rename tmp/ so
that the build uses a fresh sysroot and then trying to rebuild the
recipe. Is there something nicer? I think I remember reading about a
script for testing for missing build dependencies, but I might be
misremembering.

Cheers,
Ulf

