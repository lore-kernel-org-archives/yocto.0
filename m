Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE769E00B30; Wed, 25 Apr 2018 02:07:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFEA8E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 02:07:27 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id j11so14642098pff.10
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 02:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=knPHOECQArbUBoFEQtZ6QZsmnB66DV0OzUMJ+Z8s8A0=;
	b=ugvsCk3jBXsHkDnj7YBuU4UjdAN+FBTDtWXGYnm630DaWiPwzCanTl+RLmDUKPL47u
	dvrTHNUfo8kGzy6aKTNdHdBaGo+/sgESTTrlPMxQY7e3NvsCFz2r73qOjD0FPAiQqnRd
	smgFAakXMjH6ydDO4JVtYCfz3fF/i7t7CDjtNHMAkWRZ0Dk7/hXSFuySw7gRwSKIzYyi
	7DH68T2vf8ewxlphJ9lTyRWR2OtPmwwzajiVK/t4D02WokHN+/ng/UwE4GLDqdkYEhmh
	YgHedIzYYwPP5jM7pwfOfRR2pL5S7KbpKZujJlfS94Amt5NwAIuWHgXX8wMJ6OmK1tJr
	RduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=knPHOECQArbUBoFEQtZ6QZsmnB66DV0OzUMJ+Z8s8A0=;
	b=U/O/sgI6MNz15B2Pfj/z4QccxrsHz194+xyGmn1S1ccKPGI1b8sBdkp8BSXh6D1V4s
	zNzHVZRnNdtkdsUZ++OY3jEoZzxf3NlE0UaptxPsE//xEU1FJMxP3SJXNLuLqHULuvzu
	A7R5H0EbiCwfJdYOnoxlSiFu7XPh3OWx5wJws8Zt8kN9J00WZZRUA3LbGz7tq14rCJgh
	hUilQyLP3IJcCZi459/mgwHy6UIFC63ARjfIzUMDCbZIPO7zmMtG7bTxH+hycfvtSlHA
	xX6CW/rmbH42DmRf+wgrk5C/SXCF2P5XBIRlRFzmGx7f7Og0BgXwOX9Xky8XwdUedBUl
	QIoQ==
X-Gm-Message-State: ALQs6tCAnGhrKUJ0FgwWJilaXkrw+xCJRMEdOoQG3V7KVPYmSuMh9Rme
	56W0hR0SlkCkWF/RQsGru7ZB9sC/dVNPFxuJJ6c=
X-Google-Smtp-Source: AIpwx4/o3YoJoHwGMdOIHUM5N6mBpcB9Gb8sa/iOO7NR+tUs5CS32822NODyvZKRbCgJlbNR1N4PDOaOkWGQof7jISg=
X-Received: by 2002:a17:902:ba88:: with SMTP id
	k8-v6mr27810892pls.305.1524647246891; 
	Wed, 25 Apr 2018 02:07:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.163.134 with HTTP; Wed, 25 Apr 2018 02:07:26 -0700 (PDT)
In-Reply-To: <CAJTo0LbfXubp3VJkMHJoVMBiBe7=3VRMZAEuqZ=5K6-H79=eCw@mail.gmail.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
	<c9e549ba-42f6-1a79-ec63-c37ceb805364@windriver.com>
	<CAJTo0LYtg87SdW_SPuxTo+ifMxZN+qKJmnA4+PqC2R5fBgZ+kA@mail.gmail.com>
	<509dbc86-dd0b-0d58-9d26-286cd8a2d026@windriver.com>
	<CAJTo0LbfXubp3VJkMHJoVMBiBe7=3VRMZAEuqZ=5K6-H79=eCw@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Wed, 25 Apr 2018 11:07:26 +0200
Message-ID: <CALw8SCVT_H_O2w2pMFamX2kvfoSUsyaoOm9ZBV8rWZ43ottePg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 09:07:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 25 April 2018 at 11:00, Burton, Ross <ross.burton@intel.com> wrote:
> Good work Chen, the trailing slash was making me wonder but I didn't
> check.  Best normalise both of those paths before comparing.

Yeah, I will make that change and we will see in a couple of days if
still produces any errors.

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

