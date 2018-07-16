Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E753BE01205; Mon, 16 Jul 2018 04:25:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01C95E00E28
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 04:25:26 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id q11-v6so48477283oic.12
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 04:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=rQdKdrIS8m/PYYLaMd3CI0oleH2CrEfW1xE1nEWwwBY=;
	b=CkY37T/JMD3wL8NgbTn9UmsX8/hXyUBVAvhAyuLCMKuOpzOXHG2HVOKX+zsrzR9IkW
	nc6ulhMhRmEMW+n4j9te1AxGr368dIcgZnIAfTXYGGRKloHVVmJgghBJbgmMVhLi1cqQ
	dyNbMF572RjXKVPSf7AzSyqACVUwGTo6o/yezR1wrEkVoWIJHyLx/a5BjuJTEKgsCkSx
	M6h3PaY4QFXpVeYtui6qQWDzKYG7oZeyMhN4S8TGB2mDWexOwZVw8tqt4pX7874IAmxJ
	SHUPtt71od5XGrLMZUp/Ciyi/VK8FXV8TcJpSJww3aQJAuSxZo3bDPEZ2vGRWpo/8IhL
	GXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=rQdKdrIS8m/PYYLaMd3CI0oleH2CrEfW1xE1nEWwwBY=;
	b=KfZYuc3WlkadozwJQTW8rrQcZgFDodf/mKzIwRdbMMipq3Bs1c8dUZw0eORiKDqxHD
	3JCzJ3v4FVpZvB/l1mEzt2PL8HyGCKBwmlGYpqcqCEOr1NvcGluledKa8ovTB+N8Z6bP
	C7wj6UnEtCrKAVN/JFq2rBdMejsKgXCjYDkqjwqnPcT3WCddDWHmDiLe04SPD0/2W4Kz
	zy7VxY66EuHlO1pzxQiDlNJrF/xxrcOVOxF2QfoXyhxg47g30uUJaQCMCoAmgBV8clFM
	9nqsa50VE6pXchr0lVAnj6tOBHlYa4gyzAxt+eqLy3VCG0giplpl0CZYqwtg19qKUFvX
	OTTw==
X-Gm-Message-State: AOUpUlGcXia6WFz+E+e+iqmCDmsygtFdA5GZ+OmTT279vcoU16MDtj6g
	t0FIPSPPrjUz1JJj6B0kSIKauSsaUDo+YlyYbdhozw==
X-Google-Smtp-Source: AAOMgpdXnuuMcdFLh2W+Fbs+EmWF467ABdCrHXoxHyJR/m6ozrUUo59dyD6nYcI1EXqyZEC4TZrtgoiZbjXamHaLXmQ=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr19019694oig.245.1531740326363; 
	Mon, 16 Jul 2018 04:25:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 16 Jul 2018 04:25:05
	-0700 (PDT)
In-Reply-To: <694c32fb54d546b7a958f039d234cbc2@BN3PR73MB0070.mgdir.irco.com>
References: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
	<CAJTo0LYak86JDDX_7-cgJYcbrXTzP=W-jjoz5cmCZZ6MpDkP1g@mail.gmail.com>
	<1dd08bd8322b48078abeac992cb89f9b@BN3PR73MB0070.mgdir.irco.com>
	<CAJTo0LaYG8HU1A1tzo5Pq6d6u_ufQ94u26PBK-_CF6VuxHQ7_A@mail.gmail.com>
	<694c32fb54d546b7a958f039d234cbc2@BN3PR73MB0070.mgdir.irco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jul 2018 12:25:05 +0100
Message-ID: <CAJTo0LY4N-cO6xvh353hH5PCRdDe5mSS6fQv=0vFHmq=ztwS0A@mail.gmail.com>
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
X-List-Received-Date: Mon, 16 Jul 2018 11:25:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That build is not building that recipe, because the recipe you've
attached has SRC_URI=3Da local file, but the log clearly shows it going
to github.

Assuming you're actually using the original version of the recipe and
not the edited version you sent, then the problem is that the recipe
has SRCREV=3D${AUTOREV}, which means "always go and get the latest
revision".  This is obviously incompatible with offline builds, so
you'll want to replace that with a specific SHA to build (as this is
an old kernel, the SHA of the branch will be sufficient).

Ross

On 16 July 2018 at 12:17, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
> Hi Ross,
>     Sorry, I don=E2=80=99t have log file, I am attaching screenshot here =
and please let me know how to get log files
>
>
> Thanks & Regards,
> Karthik S
>
>
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Monday, July 16, 2018 4:44 PM
> To: S, Karthikeyan <Karthikeyan.S@trane.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Regarding build Yocto offline
>
> Logs, please.
>
> Ross
>
> On 16 July 2018 at 10:45, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
>> Hi,
>>    Thanks a lot for responding my message even in your busy schedule. As=
 for recipe, it was linux. When I was trying to build entire image "core-im=
age-base", it was failed with "linux kernel recipe". Please find attached l=
inux kernel bb files, all other remaining packages were built successfully.
>>
>> Thanks,
>> Karthik
>>
>> -----Original Message-----
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Monday, July 16, 2018 2:57 PM
>> To: S, Karthikeyan <Karthikeyan.S@trane.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Regarding build Yocto offline
>>
>> What recipe is failing?  It's most likely to be a recipe which is using =
a git tag instead of a git hash in the SRCREV.
>>
>> Ross
>>
>> On 13 July 2018 at 09:58, S, Karthikeyan <Karthikeyan.S@trane.com> wrote=
:
>>> Greetings,
>>>
>>>              Initially I was able to built with github access, but
>>> our requirement is to build offline(without Internet), I followed the
>>> steps given in
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__wiki.yoctoprojec
>>> t
>>> .org_wiki_How-5Fdo-5FI-23Q-3A-5FHow-5Fdo-5FI-5Fcreate-5Fmy-5Fown-5Fso
>>> u
>>> rce-5Fdownload-5Fmirror-5F.3F&d=3DDwIBaQ&c=3DRqOSY-j6o2m72bl3g1aM9A&r=
=3DYbS
>>> 5
>>> yltng6sM94fh7KTh4S4VmOewJypeQHV1NtdqqQc&m=3DP2cndFe0OX2zyu8XR1B5rdwBTlb
>>> c jdT4XVot9clBO6Y&s=3D25mwi0Mp0X78CdeZtKoVzQ0BeTqLR-q4tn1K0xZcpaU&e=3D
>>>
>>> I added following lines in conf/local.conf (Git enabled machine)
>>>
>>> SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>
>>> INHERIT +=3D "own-mirrors"
>>>
>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>
>>> and copied download directory to network disabled system and added
>>> following in conf/local.conf(network disabled system).
>>>
>>> SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>
>>>  INHERIT +=3D "own-mirrors"
>>>
>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>
>>>  BB_NO_NETWORK =3D "1"
>>>
>>> It was throwing error, saying that "Network is disabled through
>>> BB_NO_NETWORK=3D1" and build was failed. Please share me the exact
>>> procedure to build yocto offline.
>>>
>>>
>>>
>>>
>>>
>>> Thanks & Regards,
>>>
>>> Karthik S
>>>
>>>
>>>
>>>
>>> ________________________________
>>>
>>> The information contained in this message is privileged and intended
>>> only for the recipients named. If the reader is not a representative
>>> of the intended recipient, any review, dissemination or copying of
>>> this message or the information it contains is prohibited. If you
>>> have received this message in error, please immediately notify the
>>> sender, and delete the original message and attachments.
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproje
>>> c
>>> t.org_listinfo_yocto&d=3DDwIBaQ&c=3DRqOSY-j6o2m72bl3g1aM9A&r=3DYbS5yltn=
g6sM
>>> 94fh7KTh4S4VmOewJypeQHV1NtdqqQc&m=3DP2cndFe0OX2zyu8XR1B5rdwBTlbcjdT4XVo
>>> t9clBO6Y&s=3Du-a0sJKO7HiDC_SADTXL06S-qN7DPan-UYMsYULz_T0&e=3D
>>>
>>
>> ________________________________
>>
>> The information contained in this message is privileged and intended onl=
y for the recipients named. If the reader is not a representative of the in=
tended recipient, any review, dissemination or copying of this message or t=
he information it contains is prohibited. If you have received this message=
 in error, please immediately notify the sender, and delete the original me=
ssage and attachments.
>
> ________________________________
>
> The information contained in this message is privileged and intended only=
 for the recipients named. If the reader is not a representative of the int=
ended recipient, any review, dissemination or copying of this message or th=
e information it contains is prohibited. If you have received this message =
in error, please immediately notify the sender, and delete the original mes=
sage and attachments.

