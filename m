Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D99EEE009C7; Wed, 22 Apr 2015 05:13:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41344E00949
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 05:12:44 -0700 (PDT)
Received: by pdea3 with SMTP id a3so272647933pde.3
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 05:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Z3RgAFJYHjD++RbcITCIa5PqGE7YKkI5czZyQJ7xFV0=;
	b=mcsbkAHD67lXTiqWgvfTbipdMpCvsAnCYBV8+2TaAdoU4rTO9WVimFuVIJt83TyT9p
	ethEPidOhFO4kCzWIWRPxlRqKZHes0oVLCMaxHll6DrJ6hCyhb6TYL/VqwZ6FWWEtZl8
	/NhBv2VfpqPS5Tf97TfABdvH1BOEceUnJvd6ElYzgxR8sJX3f8S/ICNQCWE0ZBm6+euc
	ues7/MfrvXti1ReAfJRw+zwFrcgS8ifhj181zY71EY6Xtf7YX3o8eZzRE5NPJ9+FNZrG
	2F9uNIG/OId7H8rd7VCHViqsBquo5QWfeKJYkhVAx2dv1WWJe45d/0b3Vc3jhUNC7zhx
	YWZw==
X-Received: by 10.66.142.137 with SMTP id rw9mr46207187pab.56.1429704764099;
	Wed, 22 Apr 2015 05:12:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.114.166 with HTTP; Wed, 22 Apr 2015 05:12:23 -0700 (PDT)
In-Reply-To: <2068353.baZ4Sj8WqF@peggleto-mobl.ger.corp.intel.com>
References: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
	<1758688.vCBBUn3nR9@peggleto-mobl.ger.corp.intel.com>
	<CAAPegz0yoeT6MHsTgszud2RXHpkNDZLo28Xsj_w8iHPosSikhw@mail.gmail.com>
	<2068353.baZ4Sj8WqF@peggleto-mobl.ger.corp.intel.com>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 22 Apr 2015 08:12:23 -0400
Message-ID: <CAAPegz0X7HQdQQLkpVgvxFhGrEQvDxgyVw8_YHYq35vBLzAxDQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extrausers working from image file .bb but not from .bbappend
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
X-List-Received-Date: Wed, 22 Apr 2015 12:13:11 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 22, 2015 at 7:03 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 22 April 2015 07:00:50 Chris Morgan wrote:
>> On Wed, Apr 22, 2015 at 4:10 AM, Paul Eggleton
>>
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Tuesday 21 April 2015 18:54:29 Khem Raj wrote:
>> >> Hi Chris
>> >>
>> >> > On Apr 21, 2015, at 6:27 PM, Chris Morgan <chmorgan@gmail.com> wrote:
>> >> >
>> >> > Hello.
>> >> >
>> >> > Based on
>> >> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref
>> >> > -c
>> >> > lasses-extrausers and the .bbclass file I've added this to a .bbappend,
>> >> > pulseaudio_%.bbappend actually so root user can use pactl when
>> >> > pulseaudio is running in system mode:
>> >> >
>> >> > inherit extrausers
>> >> > EXTRA_USERS_PARAMS = "\
>> >> >
>> >> >        usermod -a -G audio root \
>> >> >
>> >> > "
>> >> >
>> >> >
>> >> > From the .bbappend this isn't working. If instead I add it to our
>> >> > custom image file recipe (image-blah.bb) it does work.
>> >>
>> >> its a image level config so thats right behavior.
>> >>
>> >> > I'm not sure how to debug or why it isn't working from the .bbappend.
>> >> > Thoughts?
>> >> >
>> >> >
>> >> >
>> >> > Also, the documentation in the .bbclass seems out of date but wanted to
>> >> > confirm:
>> >> >
>> >> > http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers
>> >> > .bb
>> >> > class
>> >> >
>> >> > shows:
>> >> >
>> >> > Below is an example showing how to use this functionality.
>> >> > # INHERIT += "extrausers"
>> >> > # EXTRA_USERS_PARAMS = "\
>> >> > # useradd -p '' tester; \
>> >> > # groupadd developers; \
>> >> > # userdel nobody; \
>> >> > # groupdel -g video; \
>> >> > # groupmod -g 1020 developers; \
>> >> > # usermod -s /bin/sh tester; \
>> >> > # "
>> >> >
>> >> > This INHERIT vs. inherit seems like it could be something that changed
>> >> > in bitbake in the past but was left over in the .bbclass.
>> >>
>> >> its correct because its assuming you are adding it to config metadata and
>> >> not recipe metadata may be location is not right. Send a patch
>> >
>> > It should work either in the image recipe (with inherit) or at the
>> > configuration level (with INHERIT +=), but I agree extrausers not intended
>> > to work from individual recipes, we have useradd for that.
>>
>> Looked at useradd source and documentation and skeleton example but I
>> don't see a way to add another specific user to a group.
>>
>> I had been looking to use extrausers with 'usermod' in the
>> pulseaudio_%.bbappend because the pulseaudio.inc base recipe file is
>> the one creating the 'audio' group and adding the 'pulse' user to it.
>> So it seemed like an appropriate recipe to add to to also add root to
>> the 'audio' group.
>>
>> Am I missing some way of doing this with useradd or should I just be
>> modifying the top level image recipe to resolve this issue?
>
> I don't believe useradd.bbclass can be used to solve this, no. You probably
> need to use extrausers.bbclass from the image recipe.


Hmm. Alright. Appreciate the help Paul, and you too Khem.

For pulseaudio as a system service it would be handy if root could use
pactl. While I'm not working on adding support like this upstream at
the moment, I'm not sure how one might do so if each image had to add
the extrausers entries to adjust groups. It looks like the group
approach isn't the correct one in this case but I'm also not sure what
other approaches would work.

Chris

