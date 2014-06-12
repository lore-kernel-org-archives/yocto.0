Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1162EE00BE0; Thu, 12 Jun 2014 12:52:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAD9BE00BB3
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:52:41 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id jz11so2369479veb.30
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=2zVGfXUME/vSmSDjENXXFfuO25HS+6nBLkvl/jYbwe0=;
	b=N0jX1BjZ7TO7edlxTNFp3bP0xGB1+2RSPJ5UM5W5qYua+Gw62Oiy6WR144wFp/cSLq
	60fIPoxsVTA7zbTHcrZR1SECojWCjdWojIexd1EsnHozlX8ep6ZoEDygRJ+tCxA120OI
	VHagC/ULUxU9M01apK8aMVZpqo8hu6Cvl5Z9hRUoEbihg5Ok7zbJ0iQlpLHfzIqWxHat
	rPzyml44hj5j0zJKu07IKR0QmVvWu4d89CB3zOoCzqIlEYbzsmQqYTcw0U/ByQRlnOw5
	W3scGK2Ylnj4eaQI6xJEWq3FxDRLc7CQ1Hu+7ehTiDrCNiPWx199Zx21aoqqGGZVTQmp
	I/4A==
X-Received: by 10.58.208.228 with SMTP id mh4mr32285884vec.22.1402602760921;
	Thu, 12 Jun 2014 12:52:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Thu, 12 Jun 2014 12:52:10 -0700 (PDT)
In-Reply-To: <CABcZAN=dqyUpOmmFjFifnsyD-RMWP7OkD4NSvqh6RvNA_wKYGQ@mail.gmail.com>
References: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
	<CAJTo0Lb6mRt6H0fpVVXT_PW8SX1pWrKdE8Z3Avbp7SpY420UGw@mail.gmail.com>
	<CABcZAN=dqyUpOmmFjFifnsyD-RMWP7OkD4NSvqh6RvNA_wKYGQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 12 Jun 2014 15:52:10 -0400
Message-ID: <CAF_dkJDanXGehdznOiZPnyL9Fyq4Zon5JPZ4oS6Cg0ken=ZFJA@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to determine which tasks bitbake just ran?
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
X-List-Received-Date: Thu, 12 Jun 2014 19:52:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks.

bitbake foo | cat

is most likely to be what I was looking for.  I found the cooker log
shortly after I asked my question.  I'll go look through bitbake and
see what it would take to create a symbolic link to the most recent
logfile, as is done with the logfiles for the individual tasks.

I'll also go see what I can learn about Toaster.

--wpd


On Thu, Jun 12, 2014 at 3:06 PM, Christopher Larson <clarson@kergoth.com> w=
rote:
>
> On Thu, Jun 12, 2014 at 12:00 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>>
>> On 12 June 2014 19:53, Patrick Doyle <wpdster@gmail.com> wrote:
>> > As you know, when we bitbake a recipe, we see lots of messages about
>> > individual tasks that are run as they are being run (do_fetch,
>> > do_configure, etc=E2=80=A6), and then a final summary message that rea=
ds
>> > something like:
>> >
>> > NOTE: Tasks Summary: Attempted 690 tasks of which 677 didn't need to
>> > be rerun and all succeeded.
>> >
>> > I'm curious:
>> > 1) What were the 13 tasks that ran?
>> > 2) Why are there 690 tasks for my simple recipe anyway?
>>
>> You want to see the cooker log.
>>
>> If you want to see that as it happens, then for a one-off you can
>> convince bitbake that it's not running on a vt (bitbake foo | cat -).
>>
>> After the event, the cooker logs are in
>> tmp/logs/cooker/[machine]/[timestamp].log.  For convenience, Chris
>> Larson's excellent 'bb' command has a 'log' mode that if given no
>> arguments will display the latest cooker log.
>
>
> The new Toaster is pretty great at examining what your build did, if you =
ran
> your build in toaster context, afaik. I haven't spent much time playing w=
ith
> it, but it does seem like it's intended to answer just these sort of
> questions.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

