Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543AEE00767; Wed, 19 Aug 2015 08:15:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19435E0071C
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 08:14:58 -0700 (PDT)
Received: by igfj19 with SMTP id j19so8419781igf.1
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 08:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=/Yb6lag9eQAgGYSOkBJ4gCm0p9JTNW8AJlwrYxfiT/A=;
	b=OWmcXed4YoSyTSdyg2u7jqYD1QgySzBrsYOFWUkdnsrs4qHUO1juJtDrzVtmO9xola
	6gGyXdyz1xJHrFRimThvyXvFJSj3tMwIF19nF9KSTGnz7dnrFG1KPUmNay9YbzrDkdXU
	ZKHnCr7ef2pwkU0DsO2O770k4aXT4e1mlypBVxhWQshcRQrfRHtQEm5LNu5N29g5y/Fs
	CJrJjL/hMtql/YtNs/WLkyeVuT3OkRK2MDKPKw97/sQjhk5HLU3fD5WqqDDSapnJrmDf
	G6muMEBVd4MWZhs6gha4Ncwo3XFPo6dbnD82DqlCnacQWUFefmWt2mwIMuRfFMSu9oJy
	6tbw==
X-Received: by 10.50.30.226 with SMTP id v2mr29872887igh.11.1439997298400;
	Wed, 19 Aug 2015 08:14:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Wed, 19 Aug 2015 08:14:28 -0700 (PDT)
In-Reply-To: <032b01d0d6c6$1fbf16f0$5f3d44d0$@tekmagic.net>
References: <032b01d0d6c6$1fbf16f0$5f3d44d0$@tekmagic.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Aug 2015 08:14:28 -0700
Message-ID: <CAMKF1sqiis4Jw9CTxFL2CP=jfD0vNB7PDR8Gn-xitD5aooQSTg@mail.gmail.com>
To: gerard.b@tekmagic.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding Python to an Image
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
X-List-Received-Date: Wed, 19 Aug 2015 15:15:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 14, 2015 at 12:19 PM, Gerard Bucas <gerard.b@tekmagic.net> wrot=
e:
> Hi Ross (or anyone else!)
>
> How do YOU know this & how could ANYONE find out about the names of ALL t=
he
> modules available for adding in yocto?
>
> In other words is there a searchable list somewhere of ALL "things" that =
can
> be added to a yocto build?

there is layerindex. http://layers.openembedded.org/
there you can find the recipes. If you want to know the output package
names. Then you have to build it and snoop into buildhistory repo to
see what all output packages are generated. I dont know if there is
any official online index for that

>
> I (& others!) would love to better understand how we can "learn" to find =
the
> names of all the modules that can easily be added to yocto!?
>
> THANKS!
>
> Gerard
>
>
> [yocto] Adding Python to an Image
> Jeremy Moles cubicool at gmail.com
> Thu Sep 25 14:35:54 PDT 2014
> =E2=80=A2 Previous message: [yocto] Adding Python to an Image
> =E2=80=A2 Next message: [yocto] Wildcard in RDEPENDS when exporting perl =
modules to
> SDK
> =E2=80=A2 Messages sorted by: [ date ] [ thread ] [ subject ] [ author ]
> ________________________________________
> On 09/25/2014 05:26 PM, Burton, Ross wrote:
>> On 25 September 2014 21:53, Jeremy Moles <cubicool at gmail.com> wrote:
>>> Hello everyone! With today's git (56f6634) I can build python using
> bitbake
>>> without any issues. However, if I add it to an image I'm trying to
> arranage
>>> (in the form of adding it to IMAGE_INSTALL) it totally explodes. The
> error
>>> is massive, so I have attached it to this e-mail.
>> The message says that it can't find a package called "python" (and
>> then spams you with the complete list of packages it did find).
>> There's a good reason for this: the python recipe doesn't actually
>> produce a package called python.
>>
>> The binary and key libraries are in python-core, and the rest of the
>> modules are split into separate packages.  If you want to install them
>> all then install python-modules.
>>
>> Ross
>>
>
> Ah, thanks. In this case, python is the RECIPE, which can (and in this
> case, does) produce man PACKAGES.
>
> Thanks for the reminder! Chugging right along!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

