Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 783A4E00C77; Mon, 23 Jul 2018 13:49:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDE9AE00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 13:49:35 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id y207-v6so3602427oie.13
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 13:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zxgc9qLoOCS3mduCU9DAQ+U2KTlM4oeWeLKiTpHQBDo=;
	b=yFggw6DTNp+OkNp9gpiVvjrdI+NcBQpLo/hgNUx9gZRVHJdV8JLQRFXNmQoUatRcG0
	NFguy3NeeqGnc1TXtOEht66lwG4wHtgaiTzrxgdtoqOQdodNMGVbOkzk1NVeO/cJFNTs
	cYJxbRLaMc8x3El707z2ZVbdjSDi1emA5PJemFep8j2x/fs0tK883nkew7noVUBpQpEN
	TJxLDj2yqpFS0dZOUu0hy4jmCZfVb/7BSpV0OTLMahvkjZ4ZdUYgF3YxlmvYdpLylSfs
	RRKKXJZP9g6TAYjO0HNBVLVQ1+s2+r9GaQrDZYVl5Svew214k4PALAcv7SD22DCTs2SC
	9dRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zxgc9qLoOCS3mduCU9DAQ+U2KTlM4oeWeLKiTpHQBDo=;
	b=Cbw2J4JFDRR4cVunrLPdpQ6RHyCGbm9gLJpyJrb26A3PP0rVfC+QYPAF4BNXO9byN5
	g36Gapyu9lCiq5wGj0AzEjo7enRhceuwbX6qFSRuLjNy87LVF2IOacydwoipqNFB+a9i
	UNXZl7MxrPUAHYyfuKm70YrFVz/5iEqu7OkUH/xaf0pyAIKjfvQPwkSFxljWC7wOovq6
	uGrm2IS4GszXX/HvZXOyDjnoEwke0FyikAjfGn8VcIwymYQa4P2BCc60T+98OCzMYL/4
	yAkfbnLDgHN9eBX9r4un9YNxE0WSa0y/4viOUQCWHvl2HYRR8DjuTkpbIgx2SHOu/bQp
	+Jpg==
X-Gm-Message-State: AOUpUlGLbfMZwg8MMFt2nExTiiWSGxgCOytjJ7/xk3NuLf9kBV+t0bB8
	2OdDTreS/n4zDv52/NVcVBcMnSV2BDf2XaXvnMbGzwoK
X-Google-Smtp-Source: AAOMgpdSsKUPwuKGRNTYU9wOnv/XmwTfJt+YjXcheAsvPF4YkxXVjyDrzmBzk6d27Ia+9kFinQZaGaeo3rXMtVFZFCw=
X-Received: by 2002:aca:4c8e:: with SMTP id
	z136-v6mr442893oia.170.1532378975248; 
	Mon, 23 Jul 2018 13:49:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 13:49:14
	-0700 (PDT)
In-Reply-To: <CANmTPBb4izbEgFR2uo9Jd32tBZLbyPKhHuLfXMUkdyqTdNd91w@mail.gmail.com>
References: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
	<CANmTPBY=pJajhhyr=9rBPpAQE_LSJyxxQk5YuJ+c-T9d9DmB-w@mail.gmail.com>
	<CAJTo0LaBSZdOVh7QEWvtr=S+ft99J7W=dodXTK0OTJp9A9sDNA@mail.gmail.com>
	<6605202.trP80IfoMo@localhost.localdomain>
	<CANmTPBb4izbEgFR2uo9Jd32tBZLbyPKhHuLfXMUkdyqTdNd91w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 21:49:14 +0100
Message-ID: <CAJTo0Lak+aLz9r-131Zo_kphSn3bGND4FxxYo9upi2_rRULKCA@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to download a recipe
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
X-List-Received-Date: Mon, 23 Jul 2018 20:49:36 -0000
Content-Type: text/plain; charset="UTF-8"

grpc has build dependencies that are also in meta-oe, add the layer to
conf/bblayers.conf instead of just copying it piece by piece.

Ross

On 23 July 2018 at 21:45, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> So I cloned the git meta-networking.
>
> Copied the whole
> meta-openembedded/meta-networking/recipes-devtools/grpc
>
> into my layer.  Ran bitbake and I get the following errors:
>
>
> $ bitbake grpc
> Loading cache: 100%
> |#################################################################################|
> Time: 0:00:01
> Loaded 3076 entries from dependency cache.
> Parsing recipes: 100%
> |###############################################################################|
> Time: 0:00:01
> Parsing of 2334 .bb files complete (2333 cached, 1 parsed). 3064 targets,
> 288 skipped, 2 masked, 0 errors.
> WARNING: No bb files matched BBFILE_PATTERN_phytec
> '^/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-phytec/common/'
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'gflags-native' (but
> virtual:native:/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-networking/recipes-devtools/grpc/grpc_1.8.5.bb
> DEPENDS on or otherwise requires it). Close matches:
>   glslang-native
>   slang-native
>   lua-native
> ERROR: Required build target 'grpc' has no buildable providers.
> Missing or unbuildable dependency chain was: ['grpc', 'grpc-native',
> 'gflags-native']
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> $
>
>
> There is no instructions on how we can compile this grpc into image?
>
> Thanks,
> S
>
>
>
>
> On Tue, Jul 17, 2018 at 3:11 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>>
>> On Thursday, 12 July 2018 7:51:35 PM CEST Burton, Ross wrote:
>> > On 12 July 2018 at 18:49, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
>> > > for grpc, there are 2 of them:
>> > >
>> > > http://layers.openembedded.org/layerindex/recipe/72419/
>> > > Layer meta-oe
>> > >
>> > > <http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/>
>> > > (master branch)
>> >
>> > That's a bug in the tool, as meta-networking is a sublayer of meta-oe.
>> > If
>> > you look at the paths, they're the same file.
>>
>> That is indeed a bug in the layer index update script - at some point in
>> the
>> past the recipe was moved and the move wasn't handled properly. I have a
>> fix
>> and will be sending it shortly.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>>
>

