Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E788E00746
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 04:24:49 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 19 Jun 2012 04:24:48 -0700
Received: by qcmv28 with SMTP id v28so3267889qcm.25
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 04:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=dvzt/u7EdrvCB9mtfux53wPk31FElm5jIgZpLtZYpF8=;
	b=dZ7ZPjNxopg/cQ7uu9mCaIubT5fGVqyZslWaiEzMMZuBhHE7/sFWEqIIf0DCEbemEZ
	20H+8jWZkncdIh24CbFxuTGx9nyOlCMZA7lj8HKtAR67Q5V7bSUSZ1OV9dpLXxr+Ppbd
	VsP3PPRv9EoFY7zWg0xN7+/ExUTKFcyfJt6ZoABJsGNyv/z74a01P6WtxgIsF3nWaB/3
	GawX2NNU1M/ipIyLlyQIp09YDwCPgeDrr7aoInkTuxyTP8t0YPD0qtdnMn2HVqPBxQcX
	kFO7B3VlYo7Q+M1thdsK/BppsQ8wSCBQAG203WvbmKcmqfSo7UNkDQWscVQUN9wUXUSv
	93Wg==
Received: by 10.224.210.198 with SMTP id gl6mr32990351qab.7.1340105087806;
	Tue, 19 Jun 2012 04:24:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.251.142 with HTTP; Tue, 19 Jun 2012 04:24:27 -0700 (PDT)
In-Reply-To: <20120618150433.GC1646@giant>
References: <20120614132601.GB29124@giant> <1340019794.8481.10.camel@ted>
	<20120618150433.GC1646@giant>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 Jun 2012 12:24:27 +0100
Message-ID: <CAJTo0LaOBdoieFvyxm-r-qRVmekB3mH5_-fAcgrTy3btc4YjtQ@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B6rn_Stenberg?= <bjst@enea.com>
X-Gm-Message-State: ALoCoQmdMF42kZkC73LTxWzMDXKGJPcC4ihFddDupZlpJA8w5nxMlchTg3A0hJKk0zn2AjwvZUvU
Cc: yocto@yoctoproject.org
Subject: Re: Discussion: Package testing
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
X-List-Received-Date: Tue, 19 Jun 2012 11:24:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 18 June 2012 16:04, Bj=C3=B6rn Stenberg <bjst@enea.com> wrote:
> Typically the tests don't mix production and test code, since the purpose=
 is to test the production code. Rather the tests are isolated in separate =
files that we relatively easily can build and install separately from the b=
ase package.

The problem with that is that you can only test the external
interfaces, not the inner state (black box vs white box).  i.e. DBus
has test cases for each C file inside that C file, so it can exercise
both the external API and internal state.

Ross

