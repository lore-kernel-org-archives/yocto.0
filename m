Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7660E00CFE; Thu, 21 Sep 2017 13:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB4E9E00D17
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 13:41:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 9AB5B1A36;
	Thu, 21 Sep 2017 13:41:18 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eorklmY8DMPY; Thu, 21 Sep 2017 13:41:16 -0700 (PDT)
Received: from linuxlap.zyxel.com (c83-248-212-222.bredband.comhem.se
	[83.248.212.222])
	by smtp1.genivi.org (Postfix) with ESMTPSA id 33E861A32;
	Thu, 21 Sep 2017 13:41:14 -0700 (PDT)
Message-ID: <1506026431.8543.59.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
In-Reply-To: <CA+chaQcCvMNZ7AJ_=v52EHDYgXeW09tm8n8FuTu9CGrFcMZphw@mail.gmail.com>
References: <MWHPR01MB32939418BEF2C9C72FE13D57B6660@MWHPR01MB3293.prod.exchangelabs.com>
	<386119ba-a8ca-ccc6-0dde-26c01edc1c35@gmail.com>
	<eda389cc3fd34e08bd7f37c17fae4fcf@XBOX02.axis.com>
	<CA+chaQcCvMNZ7AJ_=v52EHDYgXeW09tm8n8FuTu9CGrFcMZphw@mail.gmail.com>
Organization: GENIVI Alliance
Date: Thu, 21 Sep 2017 22:40:31 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: "(-)"??
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
X-List-Received-Date: Thu, 21 Sep 2017 20:41:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


On Thu, 2017-09-21 at 12:43 +0200, Martin Jansa wrote:
> null and nothing can also be matched in MACHINE names, so to make sure
> people should use:
> 
> COMPATIBLE_MACHINE = "(^$)"
> 
[trimmed]
> > >
> > > COMAPTIBLE_MACHINE uses regexp syntax
> > 
> > Which actually makes that a pretty weird COMPATIBLE_MACHINE,
> > 
> > especially if it is intended for blacklisting.

Yes, I think seeking consensus on the best practice here would make a lot of
sense.  Clearly people copy each other, but there are still *so* many
variants of this out there!

Very often machine overrides are used because there's no real sane way of
adding a specific machine, to the value that is there already:

This is actually written in many places:

COMPATIBLE_MACHINE_core2-32-intel-common = "${MACHINE}"

So if I see it correctly, that's going to apply if and only if MACHINE is
core2-32-intel-common and if so, then the ${MACHINE} regexp will also expand
to "core2-32-intel-common", and then finally bitbake will match that (as a
regexp) against the same $MACHINE name again to see if it yields true
(which it always will)...  I mean it's a little crazy isn't it?

Luckily special characters are usually not used in the machine names, or the
above might have unintended consequences too.

Sometimes the pattern matching is good but most of the time we just to say
basically: IS_COMPATIBLE(mymachinename)!

There are also these variations in various layers:

COMPATIBLE_MACHINE_genericx86 = "genericx86"

and this one seems popular:

# (Always match my string, but using MACHINE override):
COMPATIBLE_MACHINE_x86-64 = "(.*)"

That's a bit more straight forward, but not much.

If it's a true regexp match as Martin indicates with the ^$ example to
exclude non-empty string - presumably then, this syntax is yet another
working alternative because an empty regexp matches, right?

COMPATIBLE_MACHINE_x86-64 = ""

Being able to append your new machine in a sane way would make sense, but
with regexps it seems the reasonable syntax would then be:

COMPATIBLE_MACHINE_append = "|core2-32-intel-common"

Is that right?  And is that syntax also being used?  I'm not sure if that
will result in a valid regexp 100% of the time, but presumably it might
work.

And what is this?  I'm not sure I understand this one...

COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"


There is legacy and compatibility to consider I understand, but just looking
at it with fresh eyes, this thing seems to beg for a more easy to understand
mechanism.

I wonder if what one might like is a kind of array (of regexps), so you can
add new machines or machine-patterns to it in a sane manner.  Admittedly it
makes it harder to reset/subtract from the value if you want to remove some
previous setting.

Perhaps in a new design I'd consider two mechanisms, one for exact matches,
which could act as a list of words - many other bitbake variables do - and
one for patterns:

COMPATIBLE_MACHINE_EXACT = "first-machine second-machine"
COMPATIBLE_MACHINE_EXACT += " third-machine"

COMPATIBLE_MACHINE_PATTERN = "(.*x86.*)"

Just my 2c, take it for what it's worth.

- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance




