Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CAA9E017DC
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 04:58:04 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id ks9so2842202vcb.31
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 04:58:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=P2Zod3q3anAy5dfwFtpBIySz4JFmco50nAIHQ5TaCA8=;
	b=b/ntMvQxKt0HHQv82QrfNDo7Mc+P9qsNOn6HIm30txqn91iF9fcdWazspKD3Xh+VIQ
	IAtj2x7GoL+jGsPQzxpma/3wnOr9Jl+vm5FTk0664omlRR1CAzwkPJAkhlxxJFqQ4K/g
	NmIW/3FfGl8SoUPWfcCEMeovSNhIhn9AG2I2W6gIHepQBsE4zRp8GxCz/211lCsqnVhh
	AEsqx3Nzg0NQOtslSx0qh71fWgdaeNsfhhGfsWPZwO55ZfBzsvqbP6pOJNnv0gw4Fib3
	L4GhP34a0kRdyOs+wyGIkYowMQRCiL0vgBS+Mrqz2uBKaEtTsXMrr5Pm8ikZF3KGoCAQ
	afWw==
X-Gm-Message-State: ALoCoQnNKFR9XdDPhf5fYeS5MS1fu+csSlQcc56dL+JMJBiaG5v64vvzqZ9tNQMd6KaS+H6cYPrB
X-Received: by 10.52.22.110 with SMTP id c14mr1385791vdf.28.1383307083983;
	Fri, 01 Nov 2013 04:58:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Fri, 1 Nov 2013 04:57:43 -0700 (PDT)
In-Reply-To: <3213177.CW78GHyWDt@koontz>
References: <1383001864-4366-1-git-send-email-sgh@sgh.dk>
	<CAJTo0LZDy=OMicnNi6J5ax8A01X4mEtrRjdHPk-QavCSCRDYVQ@mail.gmail.com>
	<3213177.CW78GHyWDt@koontz>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Nov 2013 11:57:43 +0000
Message-ID: <CAJTo0LYhiNi_sR2NF4P31LwxhB4cWB-Sij92+gCLABVACmi6EA@mail.gmail.com>
To: =?UTF-8?Q?S=C3=B8ren_Holm?= <sgh@sgh.dk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] e2fsprogs: Escape filenames in populate-extfs.sh
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
X-List-Received-Date: Fri, 01 Nov 2013 11:58:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

openembedded-core@lists.openembedded.org only. yocto@ is for community
announcements and user support.

Ross

On 1 November 2013 11:14, S=C3=B8ren Holm <sgh@sgh.dk> wrote:
> Fredag den 1. november 2013 11:11:52 skrev Burton, Ross:
>> Please sent patches to oe-core@.
>>
>
> Should patches be sent to oe-core only or should they also be sent to yoc=
to?
>
> --
> S=C3=B8ren Holm

