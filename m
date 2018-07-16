Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40120E011F0; Mon, 16 Jul 2018 04:14:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D10FE00CEA
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 04:14:20 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id r16-v6so74027603oie.3
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 04:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6W8VZaWsMVZbwhE3IirzJHghkUi9T03L1FBkD+zLSMA=;
	b=Gz3qKFF3C97OXSLwwx/npmyVQNVXY68pNa4iRrGMRstnY072QlV9a4xYDB3umamT2Z
	rtMxAA/rPqJcZadPGos70UgeRSg/9gKfjrEKvdIOsiFtGP+C3GVe/tJya8N5oB7MK03N
	J6eD/twdMZXHm8Y6gyvFQ0akfdEX5g/GlGttfktbHwpoX+BAiiedJbr6UYCbJy2robSH
	5cPUYoRxaQlNotJY6V6Yn0ccvZrLsH6F1qJ8BkrCmEi/4f1Hwiu0QC+xWAaHbiZx8awG
	0r9gLzc9k2hqCBQQsJYIJjHDW1EdK5mE49JCnvYcK0URuyGzD8te9GrPt3JemONxzjI8
	prcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6W8VZaWsMVZbwhE3IirzJHghkUi9T03L1FBkD+zLSMA=;
	b=YLpwWFNtPGRNuK/EjLVfK/T80Q20Blp7bOvRSghJkVYK72r5XjwQ26yHBfhLQJs8sk
	qlxYSPen364RUgYVP6MH5CiH5g0FXKT3UTdox1rKrrggLerjlZHiZyGP+NIxQxuZznBN
	SnbJRoN4hecAFTFBTstw8NU8uySH0m4GnWv8+faPjluitoA7ER3CTc4GQLM7p8LJQ121
	iWc4qWXlSEKwlwHu224nXL/a8CL6ytqlXyNsMsPtLrYvNADQWKdoSgiKSZm6INSV/D3r
	MMEnbKMVhlF5uXnR5WDEYlUZuABFtX0vaHIUNxycTYzc9Mxj92bewkZbZyM7kRL2dULM
	GonQ==
X-Gm-Message-State: AOUpUlGpN3yP6W6zjjJePsZCW5PZ6qF5qrTLpA2Qu0d5cOW3uWaMm0wt
	6Wtm1Db7moLFQ5rmH50Jc01H8xst14nq2jBrdEzgbQ==
X-Google-Smtp-Source: AAOMgpcll1nSbgjwHP5xzUw9rBdsVlgd4aUNgwtsauUzg4ghuGn3T45sAHt7e4YU8b6+huEA9dXzgZW7r1nyfJxOFps=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr18733634oib.115.1531739659557; 
	Mon, 16 Jul 2018 04:14:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 16 Jul 2018 04:13:58
	-0700 (PDT)
In-Reply-To: <1dd08bd8322b48078abeac992cb89f9b@BN3PR73MB0070.mgdir.irco.com>
References: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
	<CAJTo0LYak86JDDX_7-cgJYcbrXTzP=W-jjoz5cmCZZ6MpDkP1g@mail.gmail.com>
	<1dd08bd8322b48078abeac992cb89f9b@BN3PR73MB0070.mgdir.irco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jul 2018 12:13:58 +0100
Message-ID: <CAJTo0LaYG8HU1A1tzo5Pq6d6u_ufQ94u26PBK-_CF6VuxHQ7_A@mail.gmail.com>
To: "S, Karthikeyan" <Karthikeyan.S@trane.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Regarding build Yocto offline
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
X-List-Received-Date: Mon, 16 Jul 2018 11:14:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Logs, please.

Ross

On 16 July 2018 at 10:45, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
> Hi,
>    Thanks a lot for responding my message even in your busy schedule. As =
for recipe, it was linux. When I was trying to build entire image "core-ima=
ge-base", it was failed with "linux kernel recipe". Please find attached li=
nux kernel bb files, all other remaining packages were built successfully.
>
> Thanks,
> Karthik
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Monday, July 16, 2018 2:57 PM
> To: S, Karthikeyan <Karthikeyan.S@trane.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Regarding build Yocto offline
>
> What recipe is failing?  It's most likely to be a recipe which is using a=
 git tag instead of a git hash in the SRCREV.
>
> Ross
>
> On 13 July 2018 at 09:58, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
>> Greetings,
>>
>>              Initially I was able to built with github access, but our
>> requirement is to build offline(without Internet), I followed the
>> steps given in
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__wiki.yoctoproject
>> .org_wiki_How-5Fdo-5FI-23Q-3A-5FHow-5Fdo-5FI-5Fcreate-5Fmy-5Fown-5Fsou
>> rce-5Fdownload-5Fmirror-5F.3F&d=3DDwIBaQ&c=3DRqOSY-j6o2m72bl3g1aM9A&r=3D=
YbS5
>> yltng6sM94fh7KTh4S4VmOewJypeQHV1NtdqqQc&m=3DP2cndFe0OX2zyu8XR1B5rdwBTlbc
>> jdT4XVot9clBO6Y&s=3D25mwi0Mp0X78CdeZtKoVzQ0BeTqLR-q4tn1K0xZcpaU&e=3D
>>
>> I added following lines in conf/local.conf (Git enabled machine)
>>
>> SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>
>> INHERIT +=3D "own-mirrors"
>>
>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>
>> and copied download directory to network disabled system and added
>> following in conf/local.conf(network disabled system).
>>
>> SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>
>>  INHERIT +=3D "own-mirrors"
>>
>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>
>>  BB_NO_NETWORK =3D "1"
>>
>> It was throwing error, saying that "Network is disabled through
>> BB_NO_NETWORK=3D1" and build was failed. Please share me the exact
>> procedure to build yocto offline.
>>
>>
>>
>>
>>
>> Thanks & Regards,
>>
>> Karthik S
>>
>>
>>
>>
>> ________________________________
>>
>> The information contained in this message is privileged and intended
>> only for the recipients named. If the reader is not a representative
>> of the intended recipient, any review, dissemination or copying of
>> this message or the information it contains is prohibited. If you have
>> received this message in error, please immediately notify the sender,
>> and delete the original message and attachments.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoprojec
>> t.org_listinfo_yocto&d=3DDwIBaQ&c=3DRqOSY-j6o2m72bl3g1aM9A&r=3DYbS5yltng=
6sM94fh7KTh4S4VmOewJypeQHV1NtdqqQc&m=3DP2cndFe0OX2zyu8XR1B5rdwBTlbcjdT4XVot=
9clBO6Y&s=3Du-a0sJKO7HiDC_SADTXL06S-qN7DPan-UYMsYULz_T0&e=3D
>>
>
> ________________________________
>
> The information contained in this message is privileged and intended only=
 for the recipients named. If the reader is not a representative of the int=
ended recipient, any review, dissemination or copying of this message or th=
e information it contains is prohibited. If you have received this message =
in error, please immediately notify the sender, and delete the original mes=
sage and attachments.

