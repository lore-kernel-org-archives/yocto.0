Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAD06E013DC
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 13:23:13 -0700 (PDT)
Received: by yenl3 with SMTP id l3so2936899yen.35
	for <yocto@yoctoproject.org>; Tue, 01 May 2012 13:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=FpAWvjNNEjKcLrIEPitNA7rT7L567+U0Y6RhmAYxu8M=;
	b=QBpU4D+0x8drH6cx++f78icOZITSspibgaa839CPHJKelbbeWliEbCpbAlPJc1EDub
	VyLGZDcQz2TH8SpcXfJN2L66ISvvIDqJQPQfRd8DYgrDPAEfFVvxRP5rB17FGJ2z44po
	tZ0OUdxxLyNHWZ5QlN8Y/CVJshpGStES7VQb0leV8yn2r1MXEc7GrJLDpEaoKNOe0N2D
	7EC9QGSU299IUNps07+gAmpJK/Vm41i8gZzUU/jFTwe+3A3q/TA2MjRFTR5cQv9QhwQM
	BFeEmPLjKrBx1CMIhVRWuRhFMqpf9OsZ9RgdvfClYeVDMJaTcMr2iS7KdiehYKyNfERJ
	okAw==
MIME-Version: 1.0
Received: by 10.68.221.35 with SMTP id qb3mr28992785pbc.136.1335903792946;
	Tue, 01 May 2012 13:23:12 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 1 May 2012 13:23:12 -0700 (PDT)
In-Reply-To: <1335884317.27056.93.camel@elmorro>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
	<1335884317.27056.93.camel@elmorro>
Date: Tue, 1 May 2012 22:23:12 +0200
Message-ID: <CACW_hTaf6QY0g-65=OqWcVVfZ55LG3vFvrMiSTfd17cVYXHFUg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: bsp experiences
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
X-List-Received-Date: Tue, 01 May 2012 20:23:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/1 Tom Zanussi <tom.zanussi@intel.com>:
> Hi Frans,
>
> Thanks for your input, comments below...
>
> On Tue, 2012-05-01 at 16:21 +0200, Frans Meulenbroeks wrote:
>> Dear all,
>>
>> In this email I'd like to share my experiences wrt creating a new bsp.
>> I hope this is useful for someone (e.g. for updating the doc). Feel
>> free to point out the n00bish errors I made, or where I could have
>> improved.
>>
>> Aim was to bring my current board (powerpc mpc8313e based) onto yocto 1.=
2
>> This board is already working under oe classic.
>>
>> I started fetching poky-denzil-7.0.
>> Tested by building core-image-minimal. No problems here.
>>
>> Then I wanted to add my own bsp. Decided to use the bsp-guide as a start=
er.
>>
>> Tried to use yocto-bsp with the standard 7.0 setup (where there is a
>> poky-denzil-7.0-build dir adjacent to the soruce dir).
>> yocto-bsp when invoked complained with:
>> IOError: [Errno 2] No such file or directory:
>> '/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'
>>
>
> This should be fixed by the fix for this bug:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2219
>
> which didn't make it into the release, and hasn't been pulled into
> master yet either...
>
> But actually that should only apply to yocto-kernel, not yocto-bsp.
>
> Can you provide more info on your exact setup and commands you used?

I just downloaded denzel according to the quickstart guide.
My build dir was outside the source tree.

I did
    $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-=
denzil-7.0.tar.bz2
     $ tar xjf poky-denzil-7.0.tar.bz2
     $ source poky-denzil-7.0/oe-init-build-env poky-denzil-7.0-build
Tweaked local.conf a little (parallel make and bbthreads and rm_work).
Then build core-image-minimal for for the standard machine (x68 emu or so)

after that in the build dir I did (if I recall correctly)
yocto-bsp create mpc8313 powerpc

That gave the error.
I think the exact message is still on the console of my build system
at work. Will check, if so I can email it tomorrow.

>
>> I resolved this for now by making /home/frans/poky-denzil-7.0/build/ a
>> symlink to /home/frans/poky-denzil-7.0-build
>> Not sure if that is the desired solution but anyway this allowed me to
>> move forward
>>
>> Reinvoked yocto-bsp create, this indeed gave progress.
>> Now had to decide on the machine branch to start this on. As mpc8315
>> is fairly close decide to start with that one.
>> tuning support was a bit tough. The 8313 machine conf file in
>> oe-classic said ppce300c3, so used ppce300c2 as a starter
>> next modified the file that contains the device tree to the default 8313=
 dts.
>>
>> That generated the layer.
>> Still had to add the layer to bblayers.conf (I was somewhat surprised
>> by this as the script before complained about not being able to find
>> that file so I somehow expected it to be added automatically)
>>
>
> The tools are conservative about changing anything outside of what they
> generated - not sure it makes sense to have them changing
> bblayers.conf...

That's ok.
After sending my mail I noticed that the doc says that one needs to
update bblayers.conf

It might be an idea to let the script spit out a message that the user
still needs to do this though.

>
>> Also went to conf/machine in my bsp and changed it to use
>> tune-ppce300c3 instead of c2, and created this include file by copying
>> the c2 file to c3 and renaming all references to c2 by c3 (as these
>> were the only changes when comparing the oe classic c2 and c3 tune inc
>> files.
>>
>> While building core-image-minimal, building the kernel failed because
>> recipes-kernel/linux/linux-yocto_3.2.bbappend had some references to
>> mpc8315*. Replaced these with mpc8313*. (not fully sure if that is
>> fully sound though; anyway I need to hack the kernel part anyway).
>> And now, while typing this, things are happily humming along, giving
>> me time to type this message.
>>
>
> The ppc template support is pretty much untested - I focused only on
> platforms I had hardware support for and didn't do much with the others,
> as mentioned in the submission.
>
> So I'll be happy to change the templates to make them match reality and
> be more useful out-of the box for those platforms I don't know much
> about.
>
> The other thing to note however is that the tool is meant to give a
> starting point which will likely need to be tweaked in order to actually
> work on the hardware. =A0It should at least compile, though...
>

Understood. I'm not too sure how well the template works.
I'm still in the process to migrate (knowledgewise) from oe-classic to yoct=
o.
If I find out how to improve the template (or something else), I'll
let you know (or submit a patch)

Keep up the good work!
Frans

