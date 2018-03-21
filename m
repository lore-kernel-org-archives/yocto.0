Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACDCAE00C27; Wed, 21 Mar 2018 08:47:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFB72E009CF
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:47:50 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id l4-v6so4240931lfg.12
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DjTRWtLsC8Nfv2kFeAWXImZZ4qwFWnaX/i+d4ksAOxE=;
	b=RSJBXT3qQhjT2hhOfOVJ1SVP8VJx9bR69NWWAQT0SLKPKTcfdFLI59USKnhG/r3I5b
	YN9igbDp1b+yOInxPhn4XQ7ZGdjbmIIqyV1UlmFjIEHr3aV3dfXDVIQ6dZy+gtlOTZQa
	bTAr9o+HwzG7wV23XvLpV5yWcoesB1OwkuIS7j2Fm1DR4NgUwqKA0C/AVF9UkGzIjiBh
	3R/kgSN0TJlSuQryDcU6kTOZZ24UyABOw+S2eA7yCd4iuEwGxS2pQLFnboOhgqa+t+wx
	P5M3O2higroh5RiUQTuzKE9ZiHS1r0949/aZFy3uCS4Qf4wc83u6E8pYsIGEDVjRtbZY
	lxVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DjTRWtLsC8Nfv2kFeAWXImZZ4qwFWnaX/i+d4ksAOxE=;
	b=jarpFv/oRBz2vsVI9E/6rWx5r5Cou2hJM2N++aduQXhKzBE15eXPGf3iyL7O2ggJSf
	R4pM5ArZV/R8STjD4gtRUJ726uz8elCS1n49PbVdjOdiefQ8OcZ2feleKfKtCE/so3dD
	aPuEGZ558io41viWgvT7RiEcCyHtRx19yIurz1g+xPtShFYGgsPkoAlMSIFmEfcR7er5
	atf9kIL+x3FjK1Zvq3izVdqytNzxEfTRU4rDGqsTXezYXdYbRxV3BJ+RhuhH/Ot862+R
	M8ooF03bayD2yQVt7qaVBX+p4z/UcABsh/cCAum+94I2y+2nnN4N/6N3tIDVTCMhn9dK
	fGaQ==
X-Gm-Message-State: AElRT7GeJlwJJveMKx270a0/ia75UYlcwbxVJPjH/5wrVYlcegOwzpuN
	9hpB9oE8qbyo/XI8OWrOWrL6FImYkGVyO0+r1YIlaw==
X-Google-Smtp-Source: AG47ELvAPTj9NdKplCQc8e+pTv2Va4o7lO1TmvrWwjef+UUZgxwsJd118BborR9Voi1OOYgoNqkv//vf8HXKCUEi7xM=
X-Received: by 10.46.7.80 with SMTP id i16mr13780225ljd.78.1521647269269; Wed,
	21 Mar 2018 08:47:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Wed, 21 Mar 2018 08:47:48
	-0700 (PDT)
In-Reply-To: <CAJTo0La6iV6ZSQ5Ecys1LzUCsk14ckSukq+bRjAoiaBmAuLmCw@mail.gmail.com>
References: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
	<CAJTo0LYrM=Amzk731zxmpx5wqaKCiRnA5NQ74nC=y3WSa2BN1Q@mail.gmail.com>
	<CAOT_U5bzcqTXOd43+redZi+1UWN7rW2fZuSeqkpSvLamDWy8_g@mail.gmail.com>
	<CAJTo0La6iV6ZSQ5Ecys1LzUCsk14ckSukq+bRjAoiaBmAuLmCw@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 21 Mar 2018 16:47:48 +0100
Message-ID: <CAOT_U5aB47Wid12ycSXQzd3gk1x4qDD7aXFjBn02nTzDsoNW7w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Building BlueZ from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:47:51 -0000
Content-Type: text/plain; charset="UTF-8"

When you say "tagged as backports" are you referring to the Upstream-Status?

So this is a backport patch:
    Upstream-Status: Accepted
[https://git.kernel.org/pub/scm/bluetooth/bluez.git/commit/?id=76255f73
   2d68aef2b90d36d9c7be51a9e1739ce7]

but these two aren't yet or never will be:
    Upstream-Status: Submitted
    Upstream-Status: Denied

On Wed, Mar 21, 2018 at 4:39 PM, Burton, Ross <ross.burton@intel.com> wrote:
> If you look at the patch headers, you'll see that none of them are
> tagged as backports.
>
> Ross
>
> On 21 March 2018 at 15:35, Alan Martinovic <alan.martinovic@senic.com> wrote:
>> Hey Ross, thanks for the clarification.
>>
>> The issues reoccurred because I modified the recipe not to include any patches,
>> falsely assuming that all of them were BlueZ backports and none is actually
>> a Yocto specific change.
>>
>> On Wed, Mar 21, 2018 at 4:23 PM, Burton, Ross <ross.burton@intel.com> wrote:
>>> On 21 March 2018 at 15:15, Alan Martinovic <alan.martinovic@senic.com>
>>> wrote:
>>>>
>>>>
>>>> Building it with Yocto results in the mentioned error:
>>>>
>>>> | ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
>>>> network input hog  gap scanparam deviceinfo  battery > src/builtin.h
>>>> | ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap mas
>>>> mns > obexd/src/builtin.h
>>>> | /bin/bash: obexd/src/builtin.h: No such file or directory
>>>> | Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
>>>> | make: *** [obexd/src/builtin.h] Error 1
>>>> | make: *** Waiting for unfinished jobs....
>>>> | ERROR: oe_runmake failed
>>>> | WARNING: exit code 1 from a shell command.
>>>>
>>>>
>>>> It seems that for some reason in Yocto, make can't redirect into
>>>> `obexd/src/builtin.h` while
>>>> it does so successfully for native build.
>>>
>>>
>>> Yocto will be doing an out-of-tree build with high parallelism, neither of
>>> which you are likely doing yourself.
>>>
>>> The hint is "no such file or directory" for a file it is writing *to*.  This
>>> means the parent doesn't exist, in this case obexd/src/.
>>>
>>> This is a typical race in out-of-tree and parallel builds, where genbuiltin
>>> is racing against other commands to create the directory.  The fix is to
>>> ensure that whatever rule calls genbuiltin actually does a mkdir first.
>>>
>>> We have a fix for this already in oe-core:
>>>
>>> http://git.openembedded.org/openembedded-core/tree/meta/recipes-connectivity/bluez5/bluez5/out-of-tree.patch
>>>
>>> So I imagine you're using an old release of Yocto.  I sent this patch to the
>>> linux-bluetooth list in April 2016 but it was either moderated away or
>>> missed.
>>>
>>> Ross

