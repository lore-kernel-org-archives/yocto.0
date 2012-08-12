Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65DFAE0027E
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 10:29:31 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1846997lag.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 10:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=CQvVgnFtbwwYd2ekYTbnrynTYniiLJHycBW1SRMFgP0=;
	b=YOnvpAOk5vLf8en2rKL/RLSkqt/EOhClIvk42OlHyDdjuBBCYXlvSGaposMjYKxziJ
	PxHlaLo6FDhbyhoR14yFiAi0tYtee5pobwipA0nQQP4+IqLiVDFq31f08z6YEoLi+zTA
	g/PLWzXznOYRR2TQelEsUklOs+dXgQsElYuLC1NsqC/gmJCn3tDWREaA19rDd31LmZAk
	gBCGOOFtNiJ1kWkagf4X7fWkCZ9NJRlywV/nATH7pvAvMPiZD0c4tib18wSA/k8elN58
	31q9xOe4WTfBSzt3a0juNMXfMpnFfwAQBTQkhBUSv5E61KZZ3JoqEBzgRXqPbtPUIEGb
	YPzg==
Received: by 10.112.86.169 with SMTP id q9mr1622599lbz.65.1344792569916; Sun,
	12 Aug 2012 10:29:29 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Sun, 12 Aug 2012 10:29:09 -0700 (PDT)
In-Reply-To: <08208D93-AA86-444A-AA1E-994F143FD8C8@gmail.com>
References: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
	<CABcZANkH8v44cc-ecnvOihGBe3v4BWKiosFvuCjAUwui014kzA@mail.gmail.com>
	<A941E4AA-B567-4E61-85B7-E4E9A1A191BA@gmail.com>
	<CABcZANm9U0h3Q0E1Uou1Wi5p_1mmA48uaDTAsmzC=Y1div8Sng@mail.gmail.com>
	<08208D93-AA86-444A-AA1E-994F143FD8C8@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 12 Aug 2012 10:29:09 -0700
X-Google-Sender-Auth: GJ41fL4_mrXZR8AkmEJf6d5KOgw
Message-ID: <CABcZANks+zkRLnWAS442gOKHLD94=4YFisgVNroZqCfqnFDWCg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Over-riding insane LDFLAGS check
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
X-List-Received-Date: Sun, 12 Aug 2012 17:29:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 12, 2012 at 10:10 AM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
>
> On Aug 12, 2012, at 8:20 PM, Chris Larson wrote:
>
>> On Sun, Aug 12, 2012 at 9:17 AM, Elvis Dowson <elvis.dowson@gmail.com> w=
rote:
>>>
>>> On Aug 12, 2012, at 8:14 PM, Chris Larson wrote:
>>>
>>>> On Sun, Aug 12, 2012 at 4:45 AM, Elvis Dowson <elvis.dowson@gmail.com>=
 wrote:
>>>>>      Is there anyway I can over-ride the insane LDFLAGS check for
>>>>> GNU_HASH?
>>>>
>>>> Remove it from ERROR_QA and (optionally) add it to WARN_QA instead. If
>>>> you're using an external toolchain, see what I did at
>>>> https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distr=
o/include/tcmode-external-sourcery.inc#L91-98
>>>> for this one.
>>>
>>> How would I go about hooking, in a single location, so that if I run gc=
c-4.5, it over-rides it completely, but if I specify gcc-4.6 or 4.7 it does=
n't get over-ridden?
>>
>> Use INSANE_SKIP. Grep the metadata for examples. Specifically,
>> INSANE_SKIP_<packagename> =3D "ldflags".
>
> While I was developing the gcc-4.5 recipe against the current poky master=
, I first started adding INSANE_SKIP_<packagename> =3D "ldflags". For a cou=
ple of recipes, adding that didn't work because of the way the name was set=
up !! I think it was gnutls. So, I ended up having to temporarily disable t=
he entire LDFLAGS check, for the gcc-4.5 build.

Then you're doing something wrong. Find that and fix it. INSANE_SKIP
is the correct mechanism to use in this situation.
--=20
Christopher Larson

