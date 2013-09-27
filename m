Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A490E01652
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 23:49:54 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id va2so2952661obc.29
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 23:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=I6yMhgnmfk6m9UAiDqj4Z8SfmKyhsVAxqu4+9lyu+VE=;
	b=o7/sngahofg+RHS//LLkA9JDs1bar2tGGPqKwQCbKoVPBok0/Tz7CSpLaX3dS1dp8h
	hY6OS6N+j0rHLSIieOBIfMtFJVulEGT3rpFO4DEGyXD658aNkWH3hXUcOCc7kaY+Q/OX
	raW7L367Wqk8srBEus8GQ+BFtJWznciXPV1iHskQ54dc/VXHR4d3N0oXg+xfSwCbQNDO
	E3mrDmZBOWzirkiDzAeRXuteASTO9i+ShbAJ+jynY83BTdXF8Vq/IEyaW7sgNq2O1l68
	9iPXOT5yl5kARtO+8wLkYIY3PwpZ02uTMMJb1zn2dZLSSJgjh6IG+8jyeLnpJ+X4x/JR
	uUTQ==
MIME-Version: 1.0
X-Received: by 10.60.118.70 with SMTP id kk6mr4530732oeb.22.1380264593701;
	Thu, 26 Sep 2013 23:49:53 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 23:49:53 -0700 (PDT)
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DF03B46@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DF039C2@TI-ODIN.tasernet.com>
	<CAP71Wjx4KQtfiEG4a4kin6XAtu9fMwZON6cNDgHDwJksef_H4w@mail.gmail.com>
	<E51394554A503C4E852F9BEE46B03E8DF03B46@TI-ODIN.tasernet.com>
Date: Fri, 27 Sep 2013 08:49:53 +0200
Message-ID: <CAFyqS9qLLgCd=dCKQB436XxHar8uKFUZzgDSEoHb-EMPf+3DSQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Brad Litterell <brad@evidence.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about automatic debug package generation
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
X-List-Received-Date: Fri, 27 Sep 2013 06:49:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Sep 27, 2013 at 8:11 AM, Brad Litterell <brad@evidence.com> wrote:
> Thanks Nicolas!
>
> Sent from my Windows Phone
> ________________________________
> From: Nicolas Dechesne
> Sent: 9/26/2013 15:29
> To: Brad Litterell
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Question about automatic debug package generation
>
>
> On Fri, Sep 27, 2013 at 12:00 AM, Brad Litterell <brad@evidence.com> wrote:
>>
>> My recipe builds and ships an executable in /foo/bin/fooapp
>>
>> FILES_${PN} += "/foo/bin/*"
>>
>> WARNING: QA Issue: foo: Files/directories were installed but not shipped
>>   /foo/bin/.debug
>>   /foo/bin/.debug/fooapp
>>
>> This file doesn't appear in the image, but is in the package folder:
>> ./package/foo/bin/.debug/fooapp
>>
>> It appears something is automatically creating these .debug files during
>> the packaging steps, but the corresponding file isn't under packages-split.
>>
>> Can someone point me to a place to learn more about how these are created
>> and packaged?
>
>
> this is done in meta/classes/package.bbclass. at the beginning of that file,
> you will find an overall description of what the 'packaging' steps are, and
> you can see, among many things:
>
> # d) split_and_strip_files - split the files into runtime and debug and
> strip them.
> #    Debug files include debug info split, and associated sources that end
> up in -dbg packages
> you can then check the source code for the function split_and_strip_files.
>
> Now, about 'packaging' the files, you need to look at meta/conf/bitbake.conf
> and search for FILES_{PN}-dbg. this is the default variable that specifies
> which files go into the -dbg package. Your issue above is because the
> 'default' path for binary is /usr/bin, hence the 'default' path for debug
> variants is /usr/bin/.debug. But if you need '/foo' , you can change these
> default in your recipe, by modifying FILES_{PN}xxx in your .bb file.
>
>
Actually, I have a related question. If you choose to install -dbg
variants, you will get a .debug folder copied to the target.
That .debug folder can then be pointed out by debuggers etc. to get
the symbol information, right?
How can the package handler know what files to strip? Does it use some
simple file magic match? I have a case now for which I made a set of
working recipes for Erlang. Erlang .beam files also contain symbols
that can be stripped, but not the conventional way. I guess I need to
add something to the do_package phase to compensate for that, but will
it interfere with what is done in package.bbclass?

Thanks.
Hans

>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

