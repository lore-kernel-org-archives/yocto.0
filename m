Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD152E01425
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 05:15:21 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 06 Jun 2012 05:15:20 -0700
Received: by qcmv28 with SMTP id v28so3119708qcm.25
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2012 05:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=7QS+HBvuFtfkUt593IOObAELFmhr+0t9t5F7JAEH6xA=;
	b=Mb+s7F/EtrMRqj4zxygUd28cT0XTLhuhhA2Jx9F/ptEvq+3SkeDv9242YViLKDLI2q
	o/RS4GiNCu1cPvi4cubWtghDGEyPc8P4x3OyJ9bUg0b0IOT3ikJSPWeG/wgHvEgDwoT8
	tJkPZbf6D+TBpB17BlEkZ6LruogS4qRYkFjP882FuuILj72097VxkdnEQ8NuV8dph8+0
	P5ljNze+FqcSuyG5KfkCP/Wq4fiiF9WcpEETDTwDvNbG5/AHW9PNyeTxYaw7OFZYCVq9
	vUoKAFJa/OHebYEG28JxBKxl7kZSDs/mb4g4GOlvBeoaNNUrX11aVM7+a6m4D97dh2VG
	y/+g==
Received: by 10.224.174.138 with SMTP id t10mr21598312qaz.50.1338984919700;
	Wed, 06 Jun 2012 05:15:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.53.212 with HTTP; Wed, 6 Jun 2012 05:14:59 -0700 (PDT)
In-Reply-To: <4FCE2CDC.3030207@windriver.com>
References: <4FCC2833.5060508@linux.intel.com> <4FCE2CDC.3030207@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Jun 2012 13:14:59 +0100
Message-ID: <CAJTo0LbR_seK4uUsv96fc6DVUdRVZTDqN0XR41LmXDvUz5h8vQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Gm-Message-State: ALoCoQlXmB5NPGS0RnjBkTIC0vyUk1WY8LSnC0yvi2ZP6IcWjrkwlb4Ro7104NrZH+Qy+4kzEG3R
Cc: yocto@yoctoproject.org
Subject: Re: [RFC] Split and revamp distro_tracking_fields.inc
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
X-List-Received-Date: Wed, 06 Jun 2012 12:15:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 5 June 2012 16:59, Mark Hatle <mark.hatle@windriver.com> wrote:
> Document the date when the recipe was upreved. =C2=A0Then in a separate f=
ile,
> document the check dates. =C2=A0Then the check dates and the uprev dates =
can be
> compared and it'll be easier to watch to see if things are being neglecte=
d
> or let go out of date.
>
> (Note, using git, it should be possible to also discover the data of the
> uprev as well....)

Agreed, documenting the date when git can tell us when the recipe was
last touched does seem a bit wasteful.  The counter-argument is that
purely using the git log will result in false dates from commits like
"all recipes: fix whitespace".

Ross

