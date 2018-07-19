Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F3C5E0108C; Thu, 19 Jul 2018 05:44:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BB6E0108C
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 05:44:38 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id p10-v6so7269591ljg.2
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 05:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bpWn5zo9lEBbJ7kaWys4ORkiECjmoS7uaaVNEpvtGBo=;
	b=tHst07rrFK6fug0aS/vOrztS5qHcm+Q0LvslPcb2pqAfrJkPCvANl87vDWpmi3kEKN
	3Uy28XKObkU7+9x7uWemRWChkqmYl4GpeYFH6Y22XAX4vpdNadrplhQJe1SxHGJmBRek
	8o9PpCjWYLpV7Ong7Qf8c1f0dLUi6Kg3+UuzVU99/+N2b8os6qMoljlfkzp1IUwyVX7w
	XOup2otLI+8uIc2E8j8joh5JgPUJUjKMeHj2C3kfi4GVrwVA+jTS8Ma+KmQJx20wqOuf
	kr3Gws2WEgD5M3NsDScVBJciDgpXDzrc7ischwYcZcJ+wbS36YUP+OFHmRRIoXeFmvWJ
	taRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bpWn5zo9lEBbJ7kaWys4ORkiECjmoS7uaaVNEpvtGBo=;
	b=W2q4OXTdNQRFyGa7PlgVC5s/Oxa4+tCmIcjTZ5HnBn4RsxKJILIgabJYDmdRTZGzEY
	N5ladI0Omr+4ygF6mk8aa1wDwtPsFBFAhNHAdPd9iuRx/MOq+33Sg7ozvlriOgUMd9kE
	ZkBdBULpalp6uFjYnpLFyLk95X3YqQ0GMeyajRsAWHSbsVbyDVGOE/LZ+unM7Ghovg/h
	U1Mb4yyBy5KZzYUsQA14qsqsbkoBiIVX30VizPu2DbQ1TJ1V7Xwy3Pts8eHeHJ6Eg/KM
	L7xYcIQp5RiFlRlZix+EC0pYBdHTvo6xRMekOGdSgT51gmKPwTSA4OVslu2lKc7QHr5y
	0OdQ==
X-Gm-Message-State: AOUpUlHSXISFhFcpHJ+6wHzdw9Enq/cUi0QuudXEuNcnSglxAzk08vo+
	9xMkxqPu3RY/mdCO1GYh6df8bAKltDilKsw3u1f1vTgFeUQ=
X-Google-Smtp-Source: AAOMgpdI92CSR7xbBPiNznsScbtklY7O41plUJnNGrMSYCwSYOllKBEQoSinBi4mP4E2swlcNdobIq8VWTaPQ6cr+lE=
X-Received: by 2002:a2e:7c12:: with SMTP id
	x18-v6mr7513956ljc.71.1532004277257; 
	Thu, 19 Jul 2018 05:44:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 05:44:36
	-0700 (PDT)
In-Reply-To: <CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
	<1531996869.3103.16.camel@genivi.org>
	<CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Jul 2018 14:44:36 +0200
Message-ID: <CAGAf8Lw0sQ10zoGLLW=o7ziYOaARKix=++=Tt_wnB4cYmHXHfw@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Thu, 19 Jul 2018 12:44:39 -0000
Content-Type: text/plain; charset="UTF-8"

Actually, I ran into this:
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extended/socketcan

So here, I think, can-utils recipes should be revisited, cannelloni
recipe added, and also another application recipe added as well:
https://github.com/dschanoeh/socketcand/

Best Regards,
Zoran

On Thu, Jul 19, 2018 at 1:09 PM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>> I'm happy to move cannelloni to a generic layer if there is wider interest.
>
> I did not write only the stand-alone recipe for cannelloni, since I
> needed the one, original one from this location:
> https://github.com/mguentner/cannelloni
>
> I also wrote one for can-utils, since one, residing in YOCTO Projects
> from Pengutronix GIT is 8y old.
> I used one from here (most recent, I guess):
> https://github.com/linux-can/can-utils
>
> So, I created my own layer, and put them both (recipes) there.
>
> If you all ask me, I would like to have some generic CAN layer, where
> these CAN recipes can reside.
>
> There are more CAN user space creations, most of them work over
> socketCAN (and these days more important socketCAN-Fd) frameworks.
>
> This generic CAN layer creation will be the step toward the unified
> automotive system CAN architecture... IMHO.
>
> Zoran
> _______
>
>
> On Thu, Jul 19, 2018 at 12:41 PM, Gunnar Andersson
> <gandersson@genivi.org> wrote:
>> On Wed, 2018-07-18 at 23:49 +0200, Mirza Krak wrote:
>>> On Wed, Jul 18, 2018, 13:38 Zoran Stojsavljevic <zoran.stojsavljevic@gmail
>>> .com> wrote:
>>> > Hello YOCTO community,
>>> >
>>> > Since I need to build the latest and the greatest Github creations
>>> > from the independent contributors, I decided myself to write few YOCTO
>>> > recipes and to get myself to this (un)pleasant learning path.
>>> >
>>> > I did few examples, simplistic ones, before I took more complex
>>> > recipes to write.
>>> >
>>> > And... I need this one, Cannelloni, one defined here:
>>> > https://github.com/mguentner/cannelloni
>>>
>>> Recipe for above can be found here, https://github.com/GENIVI/genivi-dev-
>>> platform/blob/master/meta-genivi-dev/meta-genivi-dev/recipes-
>>> extended/cannelloni/cannelloni.bb.
>>
>> Since that layer is not kept as a separate submodule, your only reasonable
>> option would be copying, so I'll jump in to preempt that.
>>
>> It would be better with a single location (shared maintenance).  meta-
>> genivi-dev is where we keep things that (seem to be so far) unique to our
>> platform, so rather than recommending to reuse that layer we strive to push
>> things out of there, as soon as it makes sense.
>>
>> I'm happy to move cannelloni to a generic layer if there is wider interest.
>>
>> meta-can-networking?  There might be some other CAN associated components of
>> interest so that it does not become one of those single-recipe layers...
>>
>> On the other hand, some related things are elsewhere:
>>
>> - meta-openembedded/meta-oe/recipes-extended/socketcan/*
>>
>> Please share your thoughts.
>>
>> - Gunnar
>>
>>
>>

