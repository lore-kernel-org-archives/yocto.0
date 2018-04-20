Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22EA8E00AAF; Thu, 19 Apr 2018 18:46:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44092E00823
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 18:46:05 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id p10so3333645pgn.1
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 18:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=df135d2bUNdLKa2SDNZ4kRkytHIP3VeAJmenpNwGUVo=;
	b=uohBl917kqro/or7j3dkU6zZoz4vLte23mJ1hyV8ak4xgjX0x7XKcUgL2K08aqEmiN
	kVwvvYqmpx3/txwVjucrDkSljJ4KD4gXtkHgioQDGijqJ5J/yZCew1hcWb8HuseQjbYR
	FbiivPQqS3MSmCvq5ydeNbttTsOy6Jv2a2MJF78bLxdeWrT0CfAYeAgKHFh+byQxyna3
	AvjU2E9o1GwYwM/EVvsl6Ou6iRLKdtCRWCAJJbkGStKD7dwZqnap1UrdHgsZi7Bq5lpS
	KyYohwXyiAZICeGGd35veNpBHRbNS3vm8Dso7gQQSAbZWobOHP3CGsooPwmwcrJ/86fi
	uUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=df135d2bUNdLKa2SDNZ4kRkytHIP3VeAJmenpNwGUVo=;
	b=b+vbr9H5tWDvWgbocB6Xdxx60/6yqBXQ9DDpGhL++aO7SgN8BnXZyCERyUhs9t/ZEF
	xOQ4DbW2/IwRrV6UU5KmRHZY2DxfIK63WGhnYUrOu6gWjR6bZZbIkaxZFEGhtdctRRIi
	dIZ1YEw2jJ561PVu9zPUifGJ9Wq27gleBW1zGfyoXQ6Pp8uesvOwQlFCnSGOIefGLeFc
	FlmW7h/xToAXp56HWdQkCGZULzC3U1oEtF1FE9xA1RyU44en4jDaCQaguzosfIZ44yrN
	A4UJwMMSh4n6OdK7ZQmKayqS5xFqL+LDLW2SHq09M+HC1f14VB6DVg6j2Pjfw4E+cpkR
	17yw==
X-Gm-Message-State: ALQs6tAe9gpHGiaZX3+0Xeqswn4vAB59aQaGnc5BIpYXiqZT2it3Sogg
	R1XNkRk9TlvWgIKK4JNcQw7F38MqOVQ=
X-Google-Smtp-Source: AIpwx49Tf5p4dqIVgJd0af5f7zejH6pUSxGi+XrPc9hFpbzEbHxkd8vnRrChGHj99pm/GerFlLEE/Q==
X-Received: by 10.99.175.29 with SMTP id w29mr7051617pge.247.1524188765066;
	Thu, 19 Apr 2018 18:46:05 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:d8ec:4d1c:3442:b65e?
	([2601:202:4000:1184:d8ec:4d1c:3442:b65e])
	by smtp.gmail.com with ESMTPSA id
	a81sm12412017pfc.168.2018.04.19.18.46.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Apr 2018 18:46:04 -0700 (PDT)
To: Adrian Dudau <Adrian.Dudau@enea.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
	<1524055346.6692.26.camel@enea.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <ab4d8b1d-93d4-b9f3-2046-6834a2e93060@mvista.com>
Date: Thu, 19 Apr 2018 18:46:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1524055346.6692.26.camel@enea.com>
Subject: Re: [meta-cgl][PATCH 0/5][RFC] CGL cleanup
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
X-List-Received-Date: Fri, 20 Apr 2018 01:46:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 04/18/2018 05:42 AM, Adrian Dudau wrote:
> On mån, 2018-04-16 at 08:03 -0700, Armin Kuster wrote:
>> I understand some of these changes a harsh. This set of changes allow
>> this layer to pass the
>> yocto-check-layer. This is one of many options to address passing.
>>
> Hi Armin,
>
> Thanks for doing this. The series is good, and I merged it with some
> minor changes, see below.
>
> I also fixed the LAYERSERIES_COMPAT issue in meta-cgl-common so you
> won't have to resend that series.
great thanks.

- Armin
>
> Regards,
> --Adrian
>
>
>
>> Armin Kuster (5):
>>   meta-cgl-fsl-ppc: drop layer supporting old kernel
> This patch didn't apply without your patches from the
> LAYERSERIES_COMPAT series which wasn't correct. I was going to drop the
> layer anyways, so I did it in a separate commit to simplify things.
>
>>   Corosync: remove recipe its in meta-networking.
>>   makedumpfile: remove as its in meta-oe
>>   iscsi-initiator-utils: drop bbappends
>>   meta-cge-common: Add README
> Fixed typo in subject.
>
>>  meta-cgl-common/README                             | 138
>> ++++++++++++++++++
>>  .../corosync/build-cleanup-configure-ac.patch      |  57 --------
>>  .../corosync/corosync/corosync-docs.patch          |  37 -----
>>  .../corosync/corosync/corosync-notifyd.service     |  13 --
>>  .../recipes-cgl/corosync/corosync/corosync.init    | 160 ---------
>> ------------
>>  .../recipes-cgl/corosync/corosync/corosync.service |  26 ----
>>  .../corosync/corosync/fix-define-semun-union.patch |  20 ---
>>  .../corosync/corosync/groff-desc-path.patch        |  12 --
>>  .../recipes-cgl/corosync/corosync/notifyd.init     | 120 ---------
>> -------
>>  .../recipes-cgl/corosync/corosync/volatiles        |   1 -
>>  .../recipes-cgl/corosync/corosync_1.4.8.bb         |  88 ---------
>> ---
>>  .../files/alias-powerpc-powerpc32.patch            |  18 ---
>>  .../recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb |  20 ---
>>  .../iscsi-initiator-utils_%.bbappend               |   1 -
>>  meta-cgl-fsl-ppc/conf/layer.conf                   |  14 --
>>  ...p-inherit-auth-capable-on-INIT-collisions.patch |  41 ------
>>  ...erpc-Fix-64-bit-builds-with-binutils-2.24.patch |  80 -----------
>>  .../linux/linux-qoriq-cgl-prt_3.12.bb              |  36 -----
>>  18 files changed, 138 insertions(+), 744 deletions(-)
>>  create mode 100644 meta-cgl-common/README
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/build-cleanup-configure-ac.patch
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/corosync-docs.patch
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/corosync-notifyd.service
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/corosync.init
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/corosync.service
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/fix-define-semun-union.patch
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/groff-desc-path.patch
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/notifyd.init
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync/volatiles
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/corosync/corosync_1.4.8.bb
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
>>  delete mode 100644 meta-cgl-common/recipes-
>> cgl/makedumpfile/makedumpfile_1.5.8.bb
>>  delete mode 100644 meta-cgl-common/recipes-extended/iscsi-initiator-
>> utils/iscsi-initiator-utils_%.bbappend
>>  delete mode 100644 meta-cgl-fsl-ppc/conf/layer.conf
>>  delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-
>> CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
>>  delete mode 100644 meta-cgl-fsl-ppc/recipes-
>> kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
>>  delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-
>> qoriq-cgl-prt_3.12.bb
>>
>> --
>> 2.7.4
>>
> This message, including attachments, is CONFIDENTIAL. It may also be privileged or otherwise protected by law. If you received this email by mistake please let us know by reply and then delete it from your system; you should not copy it or disclose its contents to anyone. All messages sent to and from Enea may be monitored to ensure compliance with internal policies and to protect our business. Emails are not secure and cannot be guaranteed to be error free as they can be intercepted, a mended, lost or destroyed, or contain viruses. The sender therefore does not accept liability for any errors or omissions in the contents of this message, which arise as a result of email transmission. Anyone who communicates with us by email accepts these risks.


