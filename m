Return-Path: <johan.thelin@pelagicore.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDAC3E0148D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 04:32:33 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id e11so8254016iej.2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 04:32:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=Rcm3m8LStuY9r0kQQyP3S+l2JHEHRWmnWbn5ogB8LJo=;
	b=jKuYqSC3f51ehLAyIhv31feWCMYwWdpagMFZ8eO2BWVKBBoRbBZ4nc+9zQmI9Y0o0/
	YUC+YsUa5+kYp+CGpoZYNiy8wIA5gH+xrBGvZfoyQucgfhjxWDPQIjMXifue7tuX98iX
	OJiBuj8b6a4dbFFyW340yPkhm9oXIS2WyTMIN2azl9gOXPtVbQh0o4VfrKb4FQoLEbyC
	9B7DgHNK8zeNcL1EZzFVCsXo0IEIGPzhECAbBBaYi3u8XunjrqibZf4G2SDKNNZRILN2
	IOcbaEg6ceGwp0zK115f/2UXnDPws+AXm4sQk+ijUxNjULfGQ2NeypdTJbZ4SegRIO5e
	Dm3w==
MIME-Version: 1.0
X-Received: by 10.50.65.103 with SMTP id w7mr1422992igs.100.1369308752794;
	Thu, 23 May 2013 04:32:32 -0700 (PDT)
Received: by 10.43.162.69 with HTTP; Thu, 23 May 2013 04:32:32 -0700 (PDT)
In-Reply-To: <2768871.Kj44iKgpRq@helios>
References: <CADGWk0rtNhS2pMUqhXGjLL469FxCFvkdk-3SnUSWQ4uXP60AGw@mail.gmail.com>
	<2768871.Kj44iKgpRq@helios>
Date: Thu, 23 May 2013 13:32:32 +0200
Message-ID: <CADGWk0oQKE7woAqX2mcDKfBCOxyZ7+irj1iAi=ZxZnT5veoG4Q@mail.gmail.com>
From: Johan Thelin <johan.thelin@pelagicore.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQnfcBleQgtP+OitgvTSsJZbjz26qFmSwu2+4o0meIgRWqGBRFWXEQGNgmF7odLtXiblO393
Cc: yocto@yoctoproject.org
Subject: Re: eo_filter_out not working
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
X-List-Received-Date: Thu, 23 May 2013 11:32:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

On 23 May 2013 13:04, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> Hi Johan,
>
> On Thursday 23 May 2013 08:59:03 Johan Thelin wrote:
>> I'm trying to build the packagegroup-core-p1 from the meta-ivi layer,
>> but I would like to remove the RRECOMMENDS as I don't want X11. To do
>> this, I've added a packagegroup-core-p1.bbappend to my own layer. In
>> this file I've tried the following options:
>>
>> Attempt #1
>>
>> RRECOMMENDS_packagegroup-core-p1 :=
>> "${@oe_filter_out('packagegroup-xserver-ivi',
>> '${RRECOMMENDS_packagegroup-core-p1}', d)}"
>>
>> ERROR: ExpansionError during parsing
>> /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/p
>> ackagegroups/packagegroup-core-p1.bb: Failure expanding variable
>> RRECOMMENDS_packagegroup-core-p1[:=],
>> expression was ${@oe_filter_out('packagegroup-xserver-ivi',
>> '${RRECOMMENDS_packagegroup-core-p1}', d)} which triggered exception
>> SyntaxError: EOL while scanning string literal
>> (RRECOMMENDS_packagegroup-core-p1[:=], line 1)
>>
>>
>> I read this as RECOMMENDS_packagegroup-core-p1 is not yet set, so the
>> oe_filter_out part fails.
>>
>>
>>
>> Attempt #2
>>
>> RRECOMMENDS_packagegroup-core-p1 := "foo"
>>
>> WARNING: Variable key RRECOMMENDS_${PN} (    packagegroup-xserver-ivi
>>    ) replaces original key RRECOMMENDS_packagegroup-core-p1 (foo).
>>
>>
>> This sort of explains why attempt #1 fails, as it seems that the bb is
>> evaluated after the bbappend.
>
> It's not specifically about the order of evaluation between the bb and the
> bbappend, what this is saying is assignment statements where the variable name
> on the LHS contains references to other variables will be evaluated after
> assignment statements that don't.
>
> Unfortunately I think this means this kind of expression can't work, because
> at the time of the immediate evaluation, RDEPENDS_packagegroup-core-p1 (which
> is what RDEPENDS_${PN} is later expanded to) isn't available. I tried to get
> the value specifically of RDEPENDS_${PN} in an anonymous python function but
> that doesn't seem to work either.

I was actually able to make it work (thanks to a friendly colleague)
with an anonymous python function:

python () {
    rrec = bb.data.getVar('RRECOMMENDS_packagegroup-core-p1', d, 1)
    if rrec:
        rrec = rrec.replace("packagegroup-xserver-ivi", "")
        bb.data.setVar('RRECOMMENDS_packagegroup-core-p1', rrec, d)
}

I don't know why the original oe_filter_out didn't work, but this does
the trick for me, so I'm good.

Cheers,

Johan

> I think for this case you're probably better off just setting the value as
> desired rather than trying to mangle the original value. When this kind of
> situation arises it usually indicates the recipe being appended needs to be
> changed to be more flexible instead of trying to work around its inflexibility
> in the bbappend.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

