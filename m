Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DDBDE016D4; Mon, 16 Jul 2018 05:06:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5201E0115E
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 05:06:26 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id s198-v6so74264492oih.11
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 05:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=j4a4P7aE1Pmq26+HbV+R1vQd7XHEeNTepanCinZGs9E=;
	b=o0nnzrZFuPCCLiEIBimaVO56+7D7szhV2LKQQNZfriMCyIF7NzD9fQsYpAqpByject
	t3voKSdwmsCCBVNs9wRq06eV2zviCbhUyBQZh3hPDNh/B2P/+eoPJh55c0rMmGog9yIo
	dokpFjrX9qL9bAAhfZCDW3UMjPxmqA/8T/0g1mLs2CCYkN051DceyAfzE4c1xUIxl3P4
	LsgooXt+5mchy3ScDzNX80v7wqv+5e1behmcUDgB9PSjnitwZbqdqD/GTzFUk7X3vVXU
	LQxqsLxvEMSo/otZyUR3RvBUbkkHzSNGrlWnEB4PdcVayFKc5Tj9289QMEvOhPEpF02d
	3WkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=j4a4P7aE1Pmq26+HbV+R1vQd7XHEeNTepanCinZGs9E=;
	b=esb7+u0Q4r9is3icxB3szUxgmCogPxdBS99uuQEpSW5eWu6knc5erHa/a3CQ6pL4XE
	L24MkLu96tgiUE/I88ISAWddPPeXn+wpEz1v5cV9NQhFjcK6yG8fw9PbE4ygusWXVALu
	YyzS8BAhjFtSJOgjk/RvWFATb2Te+PgcOAv2jUHmapn138nhbaukXJ90ipyX3OLZNADx
	Ft92p8WTRHAkZZqSWpiS9r3hFRSu3joiLGGRPu0fe+HOnAgpLcm/pUeOQd3QFtZSepGU
	t2/bbFmWoJR6oZ6n9hc5i7+87PsIib+OZwKKQToGts1mm/CIUj6wlXa9bfVHTXkgGYHU
	FJ5A==
X-Gm-Message-State: AOUpUlGlQm/VpIp30wuO1QnxEmpA6wYrg4t/zWlvX5xrD1u8cK5OihPb
	2Ixz2nFspmDdzpdoi5K7nQ+K9/vJjHXVnveqjeSwKw==
X-Google-Smtp-Source: AAOMgpcHSsJVKQrlmfGygAsl1DDH47u8CA7eg9aX2ciGqB3D9KCGFObLL1ipR/ivIj+ZRYW08pnjSBdIcNuly9/cyj4=
X-Received: by 2002:aca:2808:: with SMTP id
	8-v6mr18796819oix.235.1531742786386; 
	Mon, 16 Jul 2018 05:06:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 16 Jul 2018 05:06:05
	-0700 (PDT)
In-Reply-To: <18573e27c770465cafc516a4f77dce32@BN3PR73MB0070.mgdir.irco.com>
References: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
	<CAJTo0LYak86JDDX_7-cgJYcbrXTzP=W-jjoz5cmCZZ6MpDkP1g@mail.gmail.com>
	<1dd08bd8322b48078abeac992cb89f9b@BN3PR73MB0070.mgdir.irco.com>
	<CAJTo0LaYG8HU1A1tzo5Pq6d6u_ufQ94u26PBK-_CF6VuxHQ7_A@mail.gmail.com>
	<694c32fb54d546b7a958f039d234cbc2@BN3PR73MB0070.mgdir.irco.com>
	<CAJTo0LY4N-cO6xvh353hH5PCRdDe5mSS6fQv=0vFHmq=ztwS0A@mail.gmail.com>
	<18573e27c770465cafc516a4f77dce32@BN3PR73MB0070.mgdir.irco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jul 2018 13:06:05 +0100
Message-ID: <CAJTo0LaUisRsiaXHMn2b-qj_Je0cQQuejYTvFQkxxqFQbtNhfw@mail.gmail.com>
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
X-List-Received-Date: Mon, 16 Jul 2018 12:06:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Change SRCREV to a real SHA, not AUTOREV.   That's all you need to do.

Ross

On 16 July 2018 at 13:04, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
> Hi Ross,
>       From your reply and from the below link " https://wiki.yoctoproject=
.org/wiki/How_do_I#Non-networked_Builds_and_Cached_Git_Respositories"
> I may have to change something in SRC_URI and SRC_REV variable and this w=
ill work I guess, Please let me know what exactly I have to do. Thanks for =
supporting this issue.
>
> Thanks,
> Karthik
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Monday, July 16, 2018 4:55 PM
> To: S, Karthikeyan <Karthikeyan.S@trane.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Regarding build Yocto offline
>
> That build is not building that recipe, because the recipe you've attache=
d has SRC_URI=3Da local file, but the log clearly shows it going to github.
>
> Assuming you're actually using the original version of the recipe and not=
 the edited version you sent, then the problem is that the recipe has SRCRE=
V=3D${AUTOREV}, which means "always go and get the latest revision".  This =
is obviously incompatible with offline builds, so you'll want to replace th=
at with a specific SHA to build (as this is an old kernel, the SHA of the b=
ranch will be sufficient).
>
> Ross
>
> On 16 July 2018 at 12:17, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
>> Hi Ross,
>>     Sorry, I don=E2=80=99t have log file, I am attaching screenshot here=
 and
>> please let me know how to get log files
>>
>>
>> Thanks & Regards,
>> Karthik S
>>
>>
>>
>> -----Original Message-----
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Monday, July 16, 2018 4:44 PM
>> To: S, Karthikeyan <Karthikeyan.S@trane.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Regarding build Yocto offline
>>
>> Logs, please.
>>
>> Ross
>>
>> On 16 July 2018 at 10:45, S, Karthikeyan <Karthikeyan.S@trane.com> wrote=
:
>>> Hi,
>>>    Thanks a lot for responding my message even in your busy schedule. A=
s for recipe, it was linux. When I was trying to build entire image "core-i=
mage-base", it was failed with "linux kernel recipe". Please find attached =
linux kernel bb files, all other remaining packages were built successfully=
.
>>>
>>> Thanks,
>>> Karthik
>>>
>>> -----Original Message-----
>>> From: Burton, Ross [mailto:ross.burton@intel.com]
>>> Sent: Monday, July 16, 2018 2:57 PM
>>> To: S, Karthikeyan <Karthikeyan.S@trane.com>
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Regarding build Yocto offline
>>>
>>> What recipe is failing?  It's most likely to be a recipe which is using=
 a git tag instead of a git hash in the SRCREV.
>>>
>>> Ross
>>>
>>> On 13 July 2018 at 09:58, S, Karthikeyan <Karthikeyan.S@trane.com> wrot=
e:
>>>> Greetings,
>>>>
>>>>              Initially I was able to built with github access, but
>>>> our requirement is to build offline(without Internet), I followed
>>>> the steps given in
>>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__wiki.yoctoproje
>>>> c
>>>> t
>>>> .org_wiki_How-5Fdo-5FI-23Q-3A-5FHow-5Fdo-5FI-5Fcreate-5Fmy-5Fown-5Fs
>>>> o
>>>> u
>>>> rce-5Fdownload-5Fmirror-5F.3F&d=3DDwIBaQ&c=3DRqOSY-j6o2m72bl3g1aM9A&r=
=3DYb
>>>> S
>>>> 5
>>>> yltng6sM94fh7KTh4S4VmOewJypeQHV1NtdqqQc&m=3DP2cndFe0OX2zyu8XR1B5rdwBTl
>>>> b c jdT4XVot9clBO6Y&s=3D25mwi0Mp0X78CdeZtKoVzQ0BeTqLR-q4tn1K0xZcpaU&e=
=3D
>>>>
>>>> I added following lines in conf/local.conf (Git enabled machine)
>>>>
>>>> SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>>
>>>> INHERIT +=3D "own-mirrors"
>>>>
>>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>>
>>>> and copied download directory to network disabled system and added
>>>> following in conf/local.conf(network disabled system).
>>>>
>>>> SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>>>>
>>>>  INHERIT +=3D "own-mirrors"
>>>>
>>>>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>>>
>>>>  BB_NO_NETWORK =3D "1"
>>>>
>>>> It was throwing error, saying that "Network is disabled through
>>>> BB_NO_NETWORK=3D1" and build was failed. Please share me the exact
>>>> procedure to build yocto offline.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> Thanks & Regards,
>>>>
>>>> Karthik S
>>>>
>>>>
>>>>
>>>>
>>>> ________________________________
>>>>
>>>> The information contained in this message is privileged and intended
>>>> only for the recipients named. If the reader is not a representative
>>>> of the intended recipient, any review, dissemination or copying of
>>>> this message or the information it contains is prohibited. If you
>>>> have received this message in error, please immediately notify the
>>>> sender, and delete the original message and attachments.
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproj
>>>> e
>>>> c
>>>> t.org_listinfo_yocto&d=3DDwIBaQ&c=3DRqOSY-j6o2m72bl3g1aM9A&r=3DYbS5ylt=
ng6s
>>>> M
>>>> 94fh7KTh4S4VmOewJypeQHV1NtdqqQc&m=3DP2cndFe0OX2zyu8XR1B5rdwBTlbcjdT4XV
>>>> o t9clBO6Y&s=3Du-a0sJKO7HiDC_SADTXL06S-qN7DPan-UYMsYULz_T0&e=3D
>>>>
>>>
>>> ________________________________
>>>
>>> The information contained in this message is privileged and intended on=
ly for the recipients named. If the reader is not a representative of the i=
ntended recipient, any review, dissemination or copying of this message or =
the information it contains is prohibited. If you have received this messag=
e in error, please immediately notify the sender, and delete the original m=
essage and attachments.
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

