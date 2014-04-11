Return-Path: <wpdster@gmail.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D52CE00CC1
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 17:13:22 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id lj1so4632636pab.36
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 17:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3A8yDine6Lh45pNFKJN8kQ6K+bi85yq8vNwAu/gsKts=;
	b=DRo2BQfeGiv5/4AGnNmkTKWPI4fKVt9fiLJ5/Iym9gCHz2QOTSjY8lxMf3eOv/mQSe
	PxdDDJSXfJovtIE8ibktwq/b4NErDHjhlRP7BdWjGrWsQWDZOAGvcibKQEMXNcOb6UB0
	Q2vylPkQoKTXsdBJ1i6MbKVv3s45HwslV12Z0C8J/i7D16eB/R/VfjkScKDnrRogk6cT
	NtJh4G1eUVzg13uVtxnej9eAeJtHa7+aJaM8halVMG9GkGq+4IAH5mZlusPmolvVpr7k
	lro2zoq9LOqBcg/8pUi/UZJhpqpHG0Z5xL0m7poi6gy03iL+lVc2hBibBW8pDK9FhnIr
	rYpg==
X-Received: by 10.68.105.36 with SMTP id gj4mr23288409pbb.64.1397175201691;
	Thu, 10 Apr 2014 17:13:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Thu, 10 Apr 2014 17:12:51 -0700 (PDT)
In-Reply-To: <CABcZAN=BAXcbK87929P34zCeT9Y4o3nUm12P99N+=4Gy31zSxw@mail.gmail.com>
References: <CAF_dkJAi700hXNbRQc=1UVTRY7VVwwf+UJyQ5EJm=+FoxQvC9A@mail.gmail.com>
	<CABcZAN=BAXcbK87929P34zCeT9Y4o3nUm12P99N+=4Gy31zSxw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Apr 2014 20:12:51 -0400
Message-ID: <CAF_dkJBdofKM1WNEKyMw1Bg3A4o5DBaYwbjbXaU5SYrFyGb7wg@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confusion about autotools
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
X-List-Received-Date: Fri, 11 Apr 2014 00:13:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

ok, that makes sense.  Trying to pattern match against too many
patterns, and not spending enough time understanding the underlying
technology.  Thank you for the explanation.

If you don't mind, I'll move on to my next question...

I now have a "do_fetch()" task that looks like this:

do_fetch () {
bberror "Hello World"
exit 1
}

Where would I see "Hello World" pop out?  I don't see it in the log file.

I do see in run.do_fetch a shell script that looks like:
...
do_fetch() {
bberror "Hello World"
exit 1

}

bberror() {
echo "ERROR: $*"

}

cd '/home/wpd/yocto/downloads'
do_fetch

That's cool... things are starting to make sense now.  Especially as I
see that "do_fetch()" is probably not the right task to overload.

But I do wonder what happened to my "Hello World" message.

--wpd


On Thu, Apr 10, 2014 at 7:50 PM, Chris Larson <clarson@kergoth.com> wrote:
>
> On Thu, Apr 10, 2014 at 4:43 PM, Patrick Doyle <wpdster@gmail.com> wrote:
>>
>> I am trying to write a recipe for a custom gstreamer plugin that
>> compiles fine (natively) with autotools.
>>
>> I thought it would be as simple as writing a recipe that said something
>> like:
>>
>> inherit autotools
>>
>> myplugin_do_fetch() {
>>     commands_to_make_a_copy_of_my_source_code_in_build_tree;
>> }
>> EXPORT_FUNCTIONS do_fetch
>>
>> (I am leaving out the boilerplate DESCRIPTION, LICENSE, etc...
>>
>> But when I try to run my recipe, I get an error that ends like:
>>
>> 109: /home/wpd/.../run.do_fetch.1234 do_fetch: not found
>>
>> and when I look at run.do_fetch, I see on line 109
>>
>> do_fetch
>>
>> I thought that do_fetch would be inherited from base.bbclass.  I look
>> in autotools.bbclass and I don't see a do_fetch function task defined
>> there.
>
>
> EXPORT_FUNCTIONS is an inheritance mechanism, to let you override a function
> in a class you inherit but still be able to explicitly call the function
> defined by that class. Unless you have a 'myplugin' class, nothing will
> translate myplugin_do_fetch to do_fetch. If you want to override a function
> like do_fetch in your recipe, just override that function, don't prefix it.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

