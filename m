Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B6DBE00848; Tue, 28 Aug 2018 12:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57CA8E00519
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 12:43:05 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id 8-v6so5041385oip.0
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 12:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=C+o94mSHVmLNE1Rd1ZVoWBUglBc6Y1sDg9XLWbCq1yI=;
	b=HeK+bzVJ63E7Mx0lKWj4fW944N6TA+2gUKs31NM5cJD30HACsLDLQF3143HGwtKoLK
	uZ3pwZ0CeB4bkTsKHwOuPPzw9X9wa6N2/OWLXFAEpk7ivZB/+IF62VWbD6ygYKKcMti/
	Fbl3kocJVQZnbXKnzJavYaAGN1AL7qyquRIxjq33f2aLS/vzIAxIU70JBjFO123jVDg3
	NuzIlxitYQYR5sLxrWybNPE+kZPyqKApH7k4vNazUZBcY+GlwERyabpd9SsqCX757wEV
	bDg9ldUzoi4poha7oudUnN8z86tA9B7ZB53903WnZV+Yqd8w6uZ2qgVDW9eatkcK0Ha4
	2YMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=C+o94mSHVmLNE1Rd1ZVoWBUglBc6Y1sDg9XLWbCq1yI=;
	b=Hr3U1hBT/i7ucih3YCooHZaWVwFGm1TI40bWKDcrWbHyQSl8non52O5/UumLYqr4+w
	Gqp/09KWCT2cX9jxgys+K7rVlu6I6HQR9cRiEWrnQmR7RW8JBEtWgE6IuR6kTNq9FRG+
	vWjvfJYn7g8pR+MLWO7CTV3FhaKReUCzimrNHh3Lwz8TZr7bDf5Pw1qio5eqrcI7glZO
	cI6fZA1pA/HZVZNCznS+o1EdMexJ5FfVCpyQqbc87gcU7LdpGp9V82J7t77qoY5oDwbX
	7IlhqhUNKBMudUmVXjeurmDUOVuerxqBur7/MMZQClRbtFzmGA1ibxIYWVReT5P1Z1Hr
	B6yQ==
X-Gm-Message-State: APzg51D54hRmPG3hMWN1A/PcAOH1hJLk4MKsv4OpNlf2+DNI9bHtv+OR
	2rkpZbYq2HpBgyt+B2lu4mdWH/g5aVqoBwRoTz+X5Xw9
X-Google-Smtp-Source: ANB0VdYyiiSe/Wm/hVO1HzeR22mnFbrmSEAYWGW/StwA6fsdr9Of0qjVRr3wolsdNpij0A09TbMoYbxI75GjShc+eGM=
X-Received: by 2002:aca:edd8:: with SMTP id
	l207-v6mr2521171oih.65.1535485384782; 
	Tue, 28 Aug 2018 12:43:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 12:43:04
	-0700 (PDT)
In-Reply-To: <CABF_=yjgYC1cPFkdqEjfLh6kSRFqjNvnsd7sHeDtttqXOvDv-w@mail.gmail.com>
References: <CABF_=yjbBOpjSYyObgs091fRcxTyBj0gw0SOPi4hhKS-3PxV_A@mail.gmail.com>
	<CANNYZj-xqhJkgtQ0mYKQERcM0hPSC8t=kYwkFnsMJHAF8MxS5w@mail.gmail.com>
	<CABF_=yjgYC1cPFkdqEjfLh6kSRFqjNvnsd7sHeDtttqXOvDv-w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Aug 2018 21:43:04 +0200
Message-ID: <CANNYZj9-Q9FcVgpkNT0Y3y3g2e=MCHeFzB01esZHAX5G8U7cmQ@mail.gmail.com>
To: jan vermaete <jan.vermaete@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails at master with something about glibc-binary-localedata-...
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
X-List-Received-Date: Tue, 28 Aug 2018 19:43:06 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-28 21:39 GMT+02:00 jan vermaete <jan.vermaete@gmail.com>:
> It's working. Thanks!
>
> I hope deb package will be again fully supported in the next release.

Someone has to do the work though. If you truly want it fixed, you
know what to do :)

Alex

