Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59AB0E00B94
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 09:36:36 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id db12so1629022veb.38
	for <yocto@yoctoproject.org>; Fri, 04 Apr 2014 09:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=HMevAyWlVmQtwD59BOiJd8qe7TFLTQo9HrYEtXWB2hQ=;
	b=xyRgu5OzFLWwr3nSjv2Xrwcnvjl8pyShSZPk6Hrb6EgiOUKVcZuJeo/gc6Die6pZgk
	qFmRb5WsBYexHdkyf7aPi1Ij8L+vS4vES47QWuxyT97MRXTojUEOrCrdTOnTA3PLZJH7
	Xy0VhteospdxjSt/CUwJu0bEIjW9xwNOSicSyRPwEqyXjWSc1Y7+b9NOHhTCm5S2DIXw
	MSsj+FdtasqXmH9XxDVHV8xaHJEvqjyFUZ9xFtP6L4/g+DapIOOLee74XAgl3+j4azp0
	71yW6xq8lUwHY16RM22Vu7dC8kFqkqPUIIZd9dl6Cg3GGt5D1slsI8ChXPI1flWKhiW1
	QSzg==
X-Received: by 10.58.248.5 with SMTP id yi5mr651482vec.42.1396629396267; Fri,
	04 Apr 2014 09:36:36 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Fri, 4 Apr 2014 09:35:56 -0700 (PDT)
In-Reply-To: <533ED18F.9050604@freenet.de>
References: <533B0C8F.9050004@freenet.de> <533EC2F7.9070803@freenet.de>
	<533EC4F1.1020305@mlbassoc.com> <533ED18F.9050604@freenet.de>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 4 Apr 2014 17:35:56 +0100
X-Google-Sender-Auth: PMDy0ThSM9AiS8myq8QnUY6gHn8
Message-ID: <CANyK_8fPPkbyaoBuP-bLpSxkC0FM7i-v9ucCWEYsLZGQbZk5EA@mail.gmail.com>
To: Jens Lucius <jenslucius@freenet.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Is Python Tkinter available for Yocto
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
X-List-Received-Date: Fri, 04 Apr 2014 16:36:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 4 April 2014 16:36, Jens Lucius <jenslucius@freenet.de> wrote:
> Am 04.04.2014 16:42, schrieb Gary Thomas:
>>
>> Note: there was already a recipe for tk 8.6.0 in meta-oe (always a
>> good place to check for missing pieces before crafting your own)
>>
> Actually there is. Don=B4t know why I missed that. I just started with yo=
cto
> this week and still get confused where to best look for recipes. There is
> the old openembedded, meta-oe, oe-core/meta, yocto and some are floating
> around in other gits. Would be really nice to have one place to go.
>
> But thanks again for pointing to the meta-oe where I will also look for
> recipes in the future.
>

The best place to search is usually
http://layers.openembedded.org/layerindex/branch/master/recipes/

Just make sure you check the README for any layers you include to see
what else they depend on (e.g. some layers depend on the meta-oe
layer).

Recipes from the old openembedded repo usually need a bit of work to
bring them up to date, they're a good last resort before writing your
own recipe for something.

Cheers,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

