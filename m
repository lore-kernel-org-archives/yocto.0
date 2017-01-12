Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F8FE003C1; Thu, 12 Jan 2017 08:27:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A96E0088B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:27:43 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id j12so1797836vkd.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=o3ouGHo4ZVt3dddpfrD/8irQ7I3S2R3T7v5e1Qw/D1o=;
	b=q6qHFIpXbbxtgDJWXf9DqhadpOscX2zVPiBRZ6VLGBEpg05MpTRtuLe5+OKJ4qCOuS
	zaY+B98ODJjAcVT6/D83pWeC0e30uOSvCuuwEXMoqDWkvWGZyGzhZiJqgjlLALGrDmYl
	GOEJ933Op7wo60SIqnY7VfkU7vbgbqrhpBu4taKcfpVOIndRdBN1qNkv5PP4R3V5TxHD
	qPB/4jwWiU/vZj5fCHI9Hy1SmzDIGyf5EVV3G690zKEL2qOUr0Qyb9Cvzzsqh5sNjHGo
	arnhgmgZG8MiMQnA8N6vvywcoIRKJqgALM43nJbVPNuWaxhn9xqQza+8glvoljesjLqb
	TAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=o3ouGHo4ZVt3dddpfrD/8irQ7I3S2R3T7v5e1Qw/D1o=;
	b=iIfwMcUK4mk8U5+nMx6SqE9px5f8I3r9wYdzgvxzYskzO7dkUvaLCDirmIXMzV1yJy
	3cCl/MUVR/VO1zKvZomMnXzZ5bUALDGCZCcxHZQ7jaSnAUBG3OJneNoC0wScwJviZWte
	WqEg6dfck0/Zpu89WagHIM+AX6Kwax2q2kI54I3pso5VVuhollX4EmvwGaT8ey5mqWpc
	5BefJin5H60mm3U8rA3G9Fj+M4K9QXlLWAZN4ASYIHef1jnexiJrysftF1k9mBfzv1+/
	5fj6mA/ke/u941LowtSqI5MwJCMnfW9j5vKRu3o1gRvB1M/wV2ham28HxejNS4K3FREy
	hrLA==
X-Gm-Message-State: AIkVDXIEe532W8zlNSKzfOJELmAITD6a5q/hhncAFDB0AMAg3EOUB/7cIBhWj3Sawe7ZZE99AKiiXGkJ7V7o/g==
X-Received: by 10.31.153.8 with SMTP id b8mr2772829vke.140.1484238462583; Thu,
	12 Jan 2017 08:27:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 12 Jan 2017 08:27:12 -0800 (PST)
In-Reply-To: <CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jan 2017 08:27:12 -0800
Message-ID: <CAMKF1sqiVZr9o9Z=a-HONR09g5Aa+aka6MLA_9kw7iiwoNWWSw@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 16:27:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2017 at 8:21 AM, Belisko Marek <marek.belisko@gmail.com> wr=
ote:
> On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
> <timothy.t.orling@linux.intel.com> wrote:
>> You can also build using Docker containers:
>> https://github.com/crops/docker-win-mac-docs/wiki
> Well the re is other limitation about slow filesystem access from
> docker on osx. There is workaround to use nfs but it's not possible to
> use nfs for building yocto - so it's kind of chicken-egg problem ;)

virtualbox works well unless you passionately dont want to use linux
on build host
>>
>> On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>>
>> On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> wrote:
>>>
>>> Is there any documentation for running the Yocto build system on Mac OS=
 X
>>> or macOS as Apple now calls it? I am working with the Intel Aero board.
>>> Before I go down the rabbit hole of fixing issues like this one (and I =
am
>>> using the bash shell), I=E2=80=99d like to know if anyone has build it =
on os x
>>> before.
>>
>>
>> If you install all of the GNU tools using brew or similar and put them f=
irst
>> on $PATH then you can get bitbake started.  Then you need to stub out th=
e
>> linux-specific bits in bitbake.  I've previously started on this work
>> already
>> (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/da=
rwin).
>> The next step is figuring out how to configure OE to build and link nati=
vely
>> on OSX using LLVM instead of GCC.
>>
>> However all of this is mostly academic because in Sierra (iirc) onwards
>> there is tighter security on processes, which means that pseudo won't wo=
rk
>> even if you port it to macOS.
>>
>> So unless you fancy some non-trivial engineering the short version is ju=
st
>> use something like Docker to run a Linux system on your Mac.
>>
>> Ross
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

