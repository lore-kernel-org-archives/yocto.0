Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEF4AE00C4B; Wed,  3 Feb 2016 12:06:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F79E00C46
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 12:06:24 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id hb3so20093566igb.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 12:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=QcB0APGXvTysIY6+2zM8h4MNO+UttjCLHwE34jHBkfE=;
	b=Mw4shZ8l92XzwpH+SkSlCsTYamQdiQBsBBA/tCbGgGVTzAG8Xs5cuQ0hWOTG/woRga
	rHgUE+FovFeZ+ihJJ3QxQccQoWXpZipvb/h2uG4rQGEKGXIDB+ywA4ReVNDZqoZD73uy
	HZfiAgGIuAF9hTf2uZadyMM5skseuG5tvAHx56+pLicD5Rb5KwMMpCGtdrPO879m16uB
	fdBaQpR6eA3aQu192AZ9YG8yWQfN7VRK2X5BSNrQ1AK8CUzE5umZEtW0oLkcZxGAKIh1
	RVlMqh7DXCk9GRCdIccvqJOjDhyHxQdFZNxquvUemRhZIfYY3Dtk5C+BnU1YBHFa7OGN
	GC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=QcB0APGXvTysIY6+2zM8h4MNO+UttjCLHwE34jHBkfE=;
	b=XF/yo2NXsZz/Ot9Fo2ztXAG6NeBw5w9uqZpjmGRA7xHyeIi6av/JdT3f7Z44bCvT8O
	awDVfSdKovD66BfdeI7TSAf6OxUPntS+TEM4fVnso1FaEv4260JWuA6MDHe3TZHRh4t5
	QOqpGceW4PUgg5UBHv5IE2cBKfCy2PwTpFetvG24YPOBaYGHMdeAYja4wVxGbzXc6cW6
	d+1LrjzVcxZ8UHU9agbUxMKKad3k0AuLJuGxukCakDrfFT2IVLO3BmB8JwmaE21IPu1C
	/4Qss19dhlDrgWmJLcuYw10dEdq/Wkzimk61L/Iu5uaQdZLaeKt3YKMUJ38MoEn4ezI2
	mMKQ==
X-Gm-Message-State: AG10YOS82QV7jMpv0KAcJLyyjSZw3e9eF5xDRsFvggVyAy4Lamf9X3SDsPV0CDFMPRcdpbLoIYnnElgL2HcIFg==
MIME-Version: 1.0
X-Received: by 10.50.41.38 with SMTP id c6mr105849igl.64.1454529984175; Wed,
	03 Feb 2016 12:06:24 -0800 (PST)
Received: by 10.36.25.81 with HTTP; Wed, 3 Feb 2016 12:06:24 -0800 (PST)
In-Reply-To: <4771189.YZVmszphZV@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<4771189.YZVmszphZV@peggleto-mobl.ger.corp.intel.com>
Date: Wed, 3 Feb 2016 21:06:24 +0100
Message-ID: <CALbNGRSJKT+9wSKE-mSZbeEo4bWpw3XfpBnpenP7vSvtkMXFqg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Wed, 03 Feb 2016 20:06:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2016 at 8:10 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Andreas,
>
> On Wed, 03 Feb 2016 14:41:42 Andreas M=C3=BCller wrote:
>> FAQ for layerindex says recipes are updated every 3 hours but I think
>> it does not work. E.g meta-oe geis/grail/frame are not mentioned but
>> were committed few days ago.
>
> I do know there's a problem, but I'm honestly not sure what's causing it.
> Unfortunately I don't have time to dig into it now but let me see if I ca=
n
> resync meta-oe at least.
>
> Cheers,
> Paul
>
No need for manual update - it was just a heads up. I was not sure
that it is a known issue.

Andreas

