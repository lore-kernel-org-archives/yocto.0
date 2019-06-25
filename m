Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F46DE00D44; Tue, 25 Jun 2019 07:48:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84995E00CF4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 07:48:12 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id e3so65809ioc.12
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 07:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LanZ9Q0dhZDXbZoP6XVTpnCZ8evWOue1BCGMi3z6Gs0=;
	b=kgjhMZnoUk98dJ2BtGz0f3gJ0bulTuM+E7TPWeX5aJ3JLcHVESIiwHLGV+O+0f6B7t
	RW4/ZdFRfwDvfTLq7K8lqfyHdjEYlvxwUyh7yJSHI7EQw+B5KcHpZo8MDwBRotpQ20Pt
	WfWtNTKEI/PwtmU/QB81J5cctPxm74PpaLJwpnFCmLxQnsnxJ0BwbQ+CdPfJlyPOb1Hh
	FW/D6ZtaTUFt4oKwXa1v+3TSDbMJI5A1/iIuA2aZXAxOzUcWe8MXVBlRhxeE/apAKSdr
	deY+l5JytDKst5oLB5fKA7X7bdSLEthnafgIKvBvB1PHuymEkw8TFVySnS04UVXt/8Dt
	DNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LanZ9Q0dhZDXbZoP6XVTpnCZ8evWOue1BCGMi3z6Gs0=;
	b=Kbq9prWSJhZsc3Z5Bf6VpTTJlkrLb/YSef4LyEt7fM8YwoyjUao8iRf6Zbn/iDdEsl
	bvjrf3PbvNMz2qLfWHCU7wrTtAKuAIfnr0KWdBY9k9Gg5ultdo1Qm9sHQluYWlaWKJjD
	0SjRP+yDfXp+YAvZr6W5RvAufFvGYrvw3EA8Ty2q/0T1rtu64ZSk7lH8ITLn4le/W7zi
	/PJiW/Fq+kUL6NA/bZFVkV+VAuHQPeWG7sZ8WWKPxC8cQPbuLljM9qjP8yVGUoRyXwmG
	ijkjJRLPRTJgfR4Dc1sdRJPPNZbi7KhNYGtQthZSAP7jytVovrAXveREadq9DEoeYIi4
	OvuA==
X-Gm-Message-State: APjAAAXLLqCDqdbiqVZTmtDq7uTC1Y67QdWzVlaH2CGSJc/+LLP8S/eV
	/i+xu16mjSSMWH299zdGzY+kgKSpY7Kifi3I7RvndA==
X-Google-Smtp-Source: APXvYqwuPvqoS/5HmIMPava8IzAMHZknKKxDE6+VUIIRpA5lxcLHtkuM+yKJZ4VXImmjAc38iPzdOH392VwA904FX+Q=
X-Received: by 2002:a05:6602:104:: with SMTP id
	s4mr6134228iot.200.1561474091893; 
	Tue, 25 Jun 2019 07:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <22839e9497e34df9b93272590fcc483d@in.bosch.com>
In-Reply-To: <22839e9497e34df9b93272590fcc483d@in.bosch.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Jun 2019 15:48:00 +0100
Message-ID: <CAJTo0LaUTDZi-cKg4dfGDdfm+gNrVxwPRQpVO0chprNn9nTBMQ@mail.gmail.com>
To: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Ramadevi Sennakesavan \(RBEI/ECF3\)" <Ramadevi.Sennakesavan@in.bosch.com>
Subject: Re: build on CVE is failing
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
X-List-Received-Date: Tue, 25 Jun 2019 14:48:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, you're right, this is a bug in the new functionality.

The usual variables are in the data store, so you can get them with
e.g. d.getVar("http_proxy"), as you can clearly replicate the failure
would you be able to attempt a patch?

Ross

On Tue, 25 Jun 2019 at 11:14, Vignesh Rajendran (RBEI/ECF3)
<Vignesh.Rajendran@in.bosch.com> wrote:
>
> Hi,
>
>
>
> I was trying to check the CVE feature on Yocto.
>
>
>
> I couldn=E2=80=99t succeed the build with CVE.
>
> https://pastebin.com/m7hNcNcm
>
>
>
> There seems like proxy environment doesn=E2=80=99t recognized inside do_p=
opulate_cve_db.
>
>
>
> ERROR: cve-update-db-1.0-r0 do_populate_cve_db: HTTPSConnectionPool(host=
=3D'nvd.nist.gov', port=3D443):
>
> Max retries exceeded with url: /feeds/json/cve/1.0/nvdcve-1.0-2002.meta (=
Caused by NewConnectionError('<urllib3.connection.VerifiedHTTPSConnection o=
bject at 0x7f787f1a8908>: Failed to establish a new connection: [Errno -2] =
Name or service not known',))
>
>
>
> I am using HEAD of poky master branch.
>
>
>
> Best regards,
>
> Rajendran Vignesh
> RBEI/ECF3
>
> Tel. +91 422 676-5103 | Threema Work: +914226765103
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

