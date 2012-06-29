Return-Path: <mhubig@imko.de>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23835E006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 10:19:17 -0700 (PDT)
Received: by wgbds11 with SMTP id ds11so1041696wgb.5
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 10:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/34qpz3C91q8d/fuTb8HMGojnkj7759d1/z7FgA4e4I=;
	b=uvK1OliQiobSAJLfe0FD1Cr57yEE5Aditns5r8lE0Hpa77+kPhvMn3OkB03p0ZIpkE
	LBgoZ3WoNQNBOtSvSoX/rqu3z0i7Md/5MGu7HvpOXNTkSzmKpXtLJ62JwA+WbKFpVVIg
	f+yh1sTn+ijqRPOlCGQlZNZvHNqzEpd7DNXDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=/34qpz3C91q8d/fuTb8HMGojnkj7759d1/z7FgA4e4I=;
	b=eQ7RJ4EPooFXLedOwzQYGvfQlKM4t5vRjbsmH2bjkl0zsafPODr1+RBuDDeqy1K3l/
	hs81lfbQQEgjehni+tsMLmyYCwpX1TNBgD/ul9XRCMc5ZxxEw2sfgF5xeIynfpA+Wpwo
	lpK8HatkzABX6uhjVdXL90OqUbR4aWW8ma0oWSuK7G6O3gLNa+PMmu0EkwOfAdtxdBek
	xSYTgyZ5b7DZBvL/7OOATb4xHUhZOYAYWhqXm999TdJKdcDTfpRhgk6USSF2etMfrktx
	Q5ZdtpSis2z+IZ+5LZHos2yvI6ajcy3k0p88Sg4Gyz7JDfNfZ7Egl8I4n+K0BtHVI+8w
	ZyIA==
MIME-Version: 1.0
Received: by 10.216.194.23 with SMTP id l23mr1182720wen.121.1340990356711;
	Fri, 29 Jun 2012 10:19:16 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Fri, 29 Jun 2012 10:19:16 -0700 (PDT)
In-Reply-To: <CAGws1TtREZg6Fa2+KKcshRHP-XJz372NkYMZ2jWM5m7vxoVrfg@mail.gmail.com>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
	<4FE9D6CB.1080800@windriver.com>
	<CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
	<4FEDB1DA.1040504@windriver.com>
	<CAGws1TtREZg6Fa2+KKcshRHP-XJz372NkYMZ2jWM5m7vxoVrfg@mail.gmail.com>
Date: Fri, 29 Jun 2012 19:19:16 +0200
Message-ID: <CAGws1TudcY2VMD+WvMDiWNPCpgwdfNVhL=yirANRZzqnKTs-mQ@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQl9sq1HTw/QeyWSh4MvE/RyQ3EiEqs6Z/B5QoRqfzbOGXCQXCIV0W311QaRdTUUgUcfrFBV
Subject: Re: BSP for taskit stamp9g20
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Jun 2012 17:19:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello @all, hello Bruce!

https://bitbucket.org/imko/meta-stamp9g20

here you can find my first attempt of a BSP for the taskit stamp9g20 and
portuxg20 Board. Until now there is only the kernel part. Please have a look
and give comments.

Thanks, Markus

