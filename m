Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24ABCE0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 07:08:38 -0800 (PST)
Received: by qadz32 with SMTP id z32so2313568qad.14
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 07:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=Y+WWcG0mbaciBxKnzlTvdNuhUzx03O25BHQEK1rvvnU=;
	b=OFUYd2lxTb/0FvsASCxUSW+xyr1SgOQ8MK7N5dgx52bUz7iYlyxtMC+1vilFcPybx0
	nFYTivFWqVG+3dqkNn27XPgna/iNWxv1V16sEH4awULoCz5NgJuXSP0nVnhqQEs4IE4B
	W4pMJs34dsIICaRIjvz8bnCGmUtcMYNqhhInw=
Received: by 10.229.75.216 with SMTP id z24mr6682844qcj.50.1328540917475; Mon,
	06 Feb 2012 07:08:37 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.33.68 with HTTP; Mon, 6 Feb 2012 07:08:17 -0800 (PST)
In-Reply-To: <4F2F86F0.7020905@enea.com>
References: <4F2CB95F.6040509@intel.com> <4F2F86F0.7020905@enea.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 6 Feb 2012 08:08:17 -0700
X-Google-Sender-Auth: AbqIkwnx3Pf3A578kVOdLmLGz8I
Message-ID: <CABcZAN=kZCy5=puLzDofDAf5SHuGJBZt_+H+pAUp-HbnoG+VOQ@mail.gmail.com>
To: =?UTF-8?Q?David_Nystr=C3=B6m?= <david.nystrom@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Garman <scott.a.garman@intel.com>
Subject: Re: Trying to re-use sstate.
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
X-List-Received-Date: Mon, 06 Feb 2012 15:08:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 6, 2012 at 12:53 AM, David Nystr=C3=B6m <david.nystrom@enea.com=
> wrote:
> On 02/04/2012 05:51 AM, Scott Garman wrote:
>>
>> Hello,
>>
>> I'm trying to re-use the sstate from one build directory and move it to
>> another. It's not working - bitbake is rebuilding *everything*.
>>
>> My hunch is the reason for this is because bblayers.conf must differ
>> between the two build directories, because it uses full paths to the
>> layer directories.
>>
>> By default, when you source oe-init-build-env for the first time, it
>> generates a bblayers.conf file with full paths to the default layers,
>> meta and meta-yocto.
>>
>> I thought the point of sstate was that I could copy it between build
>> directories - or even different hosts - and save myself the effort of
>> rebuilding everything if the remaining metadata was the same?
>>
>> Scott
>>
> We have the same issue,
>
> I tried to setup a buildbot to warm up sstate caches over night,
> and let developers use this common sstate to speed up build times.
> Epic fail, since paths usually are not consistent.
> And it seems you can't even fake =C2=A0an "identical path" with symlinks
> either, bitbake detects the symlink and rebuilds everything.


Afaik your BBLAYERS should not be in your signatures at all, unless
something in the metadata is accessing it. For what it's worth, I
reuse sstate every day, but don't use the poky/oe-core scripts
(oe-init-build-env).
--=20
Christopher Larson

