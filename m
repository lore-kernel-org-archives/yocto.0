Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13804.1589668619924264936
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2020 15:37:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=btI5EekT;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A824FE01B79; Sat, 16 May 2020 15:36:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3957BE01B3E
	for <yocto@yoctoproject.org>; Sat, 16 May 2020 15:36:58 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id l1so5161821qtp.6
        for <yocto@yoctoproject.org>; Sat, 16 May 2020 15:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QRYA0KA3PAIET+etM+/lTwVH1VKh23iQWyoYBEptrxw=;
        b=btI5EekTNHOCtuJ2CdFqn1Ev32JjrlkXsD7yiwbY68rQaz+JIBexyru+qi4H7drrD5
         Av4ApvBlM4PRb5GNiYmlh580fOmzyFyOcWqKaD+XPzyHNTop+1w/Ek/C4SccL7lPTshp
         IjSXZH8N/Pnu9uB6czpgD+75h3eCasg/Id177BU1cbN2x66jGECpOiGQHtpEuIECFrYV
         vtmPC1q0SVt4w2f4vVF1iyw8Dnh6XnfOX7sZ3TGV8ilrq/NPIV5mn9K5PcZOIKwyNbIF
         UKfbAgnaZXzlfKhvQAY0yhSKlVTT8DPJke1mtWDVEOg52TibrOINuMH2mtXRpRE+Pd12
         K+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QRYA0KA3PAIET+etM+/lTwVH1VKh23iQWyoYBEptrxw=;
        b=KVF3Zt+bnFDJzb+RQPR2ofrijq8Na8pjrYh00CbxsFChNNJ7PAQPX+AaYLqFGuLfsa
         3DfEjsZ68dBrE12SCurvVF3tNTCDiwusb9rw3+5aNlA8PZtZona2XqWnnGJXQO9f83E/
         HrIPLkIn3PRclmKjpa0q0SdKftDk+YisMeo5OMKDjSoHQpJpyoOkU4UngO4BEDXJ+wR4
         E7lirs7bktPl2m6+bZzZ7MtI3lwpSR0NVm0iJt5ltATWuqvAKXwLJQ9I41Jo0n4k5h5B
         ZZB4ILJW9Mfh/LKwEkya+5KtXh1lQ0zbFqAKfdr1GPDGdcsyP/7vNIs9IZkaKCiPCgX1
         dY2g==
X-Gm-Message-State: AOAM530GCizk6cEnD93Pwo/uftNdyiaPv7wQqLGX+0Cfs1TIL487Fidr
	1c5ZTZDXdtuGPy8ctGsoStP0+MbG1YEGQaY5L5s=
X-Google-Smtp-Source: ABdhPJwdc0ARJrGbwgnOOVndFowHhJvHaC1FiJI4VBGrXIm/8z294sLlkwRXR/mwfq25Q1YXloOVxH7FHM2n/V+Q57M=
X-Received: by 2002:ac8:1b58:: with SMTP id p24mr10098991qtk.29.1589668618470;
 Sat, 16 May 2020 15:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJAW0uYnm=yC_cC5fa+Jt-r+KjBzfJC_rL+4WZ5CjXa7rQ@mail.gmail.com>
 <f8274e46-b45f-d4f0-b446-75443865fc08@gmail.com> <CALbNGRQ_TqKMhxHzHPBw6229r++oBMaowEmDZU0iQL0KcrhePA@mail.gmail.com>
In-Reply-To: <CALbNGRQ_TqKMhxHzHPBw6229r++oBMaowEmDZU0iQL0KcrhePA@mail.gmail.com>
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Sat, 16 May 2020 18:36:32 -0400
Message-ID: <CAF_dkJDtKhTOcj62M0YSEXcuUShsPbha21Ws0GB6ues+4A=cGw@mail.gmail.com>
Subject: Re: [yocto] What is the recommended method for debugging applications with Yocto
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks folks, IMAGE_GEN_DEBUGFS was exactly what I was looking for.

--wpd
