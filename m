Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A929CE004D2
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 13:34:45 -0800 (PST)
Received: by lagw12 with SMTP id w12so1272235lag.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 13:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=IpcqBSLmeW/164p68xIPFukIC2YnNaNgl6QoovvIy2M=;
	b=BO7UZEMHdq2RgZp++HtGtqsbUjO3XNzvk2G86dRq9A3oSL2p6i8yDZfQS7fkRf5pmK
	/r4+CiJ0fWLSxIAdGxmE1wL/8bW88AkK872kyu7yWrBO5c1GV2Ea4YsFPh3sWXQLJWeX
	iZBBk+bB32ts0/5X9wJIU5GHTvOPTKMpaw+rY=
Received: by 10.152.114.169 with SMTP id jh9mr16614166lab.20.1328736884307;
	Wed, 08 Feb 2012 13:34:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Wed, 8 Feb 2012 13:34:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
	<4F32C595.4040508@linux.intel.com>
	<alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Feb 2012 13:34:14 -0800
Message-ID: <CAMKF1spqTfZmBpdJNo-eBQ+P8RRDXf6SAx_6mNZp=gqTj+ZLxg@mail.gmail.com>
To: Daniel Stenberg <daniel@haxx.se>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Wed, 08 Feb 2012 21:34:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 8, 2012 at 1:26 PM, Daniel Stenberg <daniel@haxx.se> wrote:
> On Wed, 8 Feb 2012, Saul Wold wrote:
>
>> If the author of curl would like to review and/or implement modification
>> for OE that would be awesome, feel free to share the patches with them.
>
>
> I am the maintainer of curl.
>
> The curl patches Bj=C3=B6rn mentioned are clearly not written in way inte=
nded to
> be "upstreamable" so they cannot be accepted by the curl project and nobo=
dy
> has tried to.
>
> This said, at least one of the patches fixes a problem that still exists
> upstream but the yocto patch [*] is made in such a hard-coded way it'd ha=
ve
> to be seriously edited to get accepted. The flaw has not even been discus=
sed
> with or mentioned to the curl project AFAICR...
>
> So, room for improvements!

We understand the lack of upstreaming hence the process of documenting
the patches with Upstream-Status
was put in place. So step by step we are getting there where we will
be able to interact with upstream projects
on the patches we carry. The first step it to account for them which
we did. Next step
would be to interact with respective upstream projects and propose the
patches or describe
the problems if they are to be fixed differently.

-Khem

