Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9884.1590139775610130335
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 May 2020 02:29:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=raKPhmrp;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78ED0E01BDF; Fri, 22 May 2020 02:29:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.161.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF8DE01BCE
	for <yocto@yoctoproject.org>; Fri, 22 May 2020 02:29:34 -0700 (PDT)
Received: by mail-oo1-f44.google.com with SMTP id i9so2038805ool.5
        for <yocto@yoctoproject.org>; Fri, 22 May 2020 02:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=3QA5fSWGJOHf3F+LZMvKLjWdM4B5XW488N+oyGpZg4k=;
        b=raKPhmrpeJfP8WXF0VHEXpQbVoiWLPwNXQ+D4w1G5GnDsPtguFC2/uY1HfR56jw3UU
         09PZ/uAqhrNleTsM4PSdn4yb7otns8hmfgkncyG19uZLtt0BQZFnSX2eZc83PbZ9YYmy
         MfbNl6Fm35KMOVrsFncxJbsaQ8V56DbLhe1Ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=3QA5fSWGJOHf3F+LZMvKLjWdM4B5XW488N+oyGpZg4k=;
        b=Z8YVc8vhdpZvoj0gsXaxRSFt7IoLSIqacAbBwbLfcsHy1zzro9hUNW8VZas4YfaCuC
         BskDrFQ5j4dTosp6olep6Q4ufG1DLwODXpn+j8rKWE3lM2XjPlszcs7vVpEFhS226h7G
         dimTNAEWNRArJUfb36bN3r9LhMfQssuQSqTXaOp3cPdBPqN3sU9xt6rU3l0oS/EzEmaq
         6qpeDBgQmxcELKcYjh1oWj674LnmRhnzkf+09nHHE1svUCUbi4lnkVVzN3+1YfpzZ/sS
         UurHTUV8QZV1tyQQZf+c2nUJbBY6jgiCGM4DJyJg9rtsyZjDb1Rv2Gt8Asa6A5rxxUX0
         Xrsg==
X-Gm-Message-State: AOAM532GQNvkZqgXRVINO3ijSV+T2FeL+TumsFp2cqSNaBcpUzg2XZwC
	lci5CttIhstyrFtvDzTTT8HpWw/h5g6KbdpnOTl+xA==
X-Google-Smtp-Source: ABdhPJyYYwYT0rsA7+RNZ0kPti2VWPbPghJDoKY3ZuXnNma8sayysSprQ5VpU3g3mWF0OZ4zMYcebQSezjRA48DTdPU=
X-Received: by 2002:a4a:9704:: with SMTP id u4mr2293565ooi.88.1590139774443;
 Fri, 22 May 2020 02:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com> <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
In-Reply-To: <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 22 May 2020 10:29:23 +0100
Message-ID: <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: zangrc <zangrc.fnst@cn.fujitsu.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 22 May 2020 at 10:26, Alexander Kanavin <alex.kanavin@gmail.com> wr=
ote:
>
> On Fri, 22 May 2020 at 05:54, zangrc <zangrc.fnst@cn.fujitsu.com> wrote:
>>
>> +               char pytest_append[] =3D "| sed -e 's/\\[...%\\]//g'| se=
d -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'|=
 awk '{if ($NF=3D=3D\"PASS\" || $NF=3D=3D\"FAIL\" || $NF=3D=3D\"SKIP\" || $=
NF=3D=3D\"XFAIL\" || $NF=3D=3D\"XPASS\"){printf \"%s: %s\\n\", $NF, $0}else=
{print}}'| awk '{if ($NF=3D=3D\"PASS\" || $NF=3D=3D\"FAIL\" || $NF=3D=3D\"S=
KIP\" || $NF=3D=3D\"XFAIL\" || $NF=3D=3D\"XPASS\") {$NF=3D\"\";print $0}els=
e{print}}'";
>
>
> Is it possible to process the output directly, rather than tweak it via s=
ed/awk shell pipelines that are very difficult to read?

Another option could be to generate the output in the correct format
directly from Python using something like this module which I wrote a
few years back:
https://gitlab.com/b5/BetaTest/betatest/-/blob/master/betatest/amtest.py

Thanks,

--=20
Paul Barker
Konsulko Group
