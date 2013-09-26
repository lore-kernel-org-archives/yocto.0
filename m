Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3264CE01613
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 07:32:02 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id o17so771099oag.32
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 07:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=4kaPbH83JI8gSsQjA1vmd5YiGXHRp+rCGFBqRImGyx0=;
	b=Px5woQtGHpVLwipPuFkEVwdS92hmxo6rkCHd+Z/JxG2qkyZ30FCU5zQJwvQq+94+H8
	6DlCxYNXhaMK49HehZfBRI6dUkzXKgFxGsvWLQ9//BDJ2tHQ+/5n0gip47h+a5VJ4+1R
	YhrwJ4IZt9LlLSTpqd+CKZlQtVUMmQc5NEbSe2JPWwnUQXdpQ4RCNaHqqGJz497uXOsf
	D791NkXsoyWaOTGqrYY9V565mzqJ0BMY0TIxUVhT/Zj4Z8mMqAofU6rFl2BpvpHXan11
	U7z2mImhoae2+1cfasQyP4v/UfcVFl0fuv2ZGl8oW7mZI6vBVaAGexagS0GM3LYwHQgO
	WJnA==
MIME-Version: 1.0
X-Received: by 10.60.44.9 with SMTP id a9mr949549oem.67.1380205921021; Thu, 26
	Sep 2013 07:32:01 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 07:32:00 -0700 (PDT)
In-Reply-To: <1675887.iRGCGyzpnN@helios>
References: <CAFyqS9pb0aXUVgKH7vANiNxhrXMtfVxGRd9FDVj8Y1Rk=0XgFw@mail.gmail.com>
	<15510684.X3bYELTYuV@helios>
	<CAFyqS9q54HXgcCPvhUodqYXLZ9oqmZA4+mhOX958CyeG7VL3Gg@mail.gmail.com>
	<1675887.iRGCGyzpnN@helios>
Date: Thu, 26 Sep 2013 16:32:00 +0200
Message-ID: <CAFyqS9rJDHwzuLdg=tL=SN+vY5KvYC4-w0caOmD4GOM5HASo7w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to combine BBCLASSEXTEND and variable export
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
X-List-Received-Date: Thu, 26 Sep 2013 14:32:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2013 at 12:48 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 26 September 2013 12:38:13 Hans Beck=E9rus wrote:
>> On Thu, Sep 26, 2013 at 12:13 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Wednesday 25 September 2013 17:39:04 Hans Beck=E9rus wrote:
>> >> Hi. I have a recipe that use BBCLASSEXTEND to extend native. For the
>> >> normal/base version I wish to set/export an environment variable to b=
e
>> >> picked up by configure.
>> >> But I do not wish this variable to be set by the native package. How
>> >> would I accomplish that? It was ok before when I had a package-native
>> >> recipe but since that is obsolete in favor for BBCLASSEXTEND I wish t=
o
>> >> remove it. I think I covered all the other caveats like DEPEND and
>> >> PACKAGE/FILES. But this one is not as straight forward, or is it?
>> >
>> > If I'm understanding the requirements correctly think you could do
>> > something like:
>> >
>> > do_configure_prepend_class_target() {
>> >
>> >         export VARIABLE=3Dvalue
>> >
>> > }
>>
>> Yes, I believe I tried that, but then the export does not persist over
>> do_configure(), does it?
>> It is only alive during the scope of do_configure_prepend() or?
>
> The _prepend is just prepended to the function before running it, so it w=
ill
> be applied for the entire function. If you have a look at
> temp/run.do_configure.* in the workdir for the recipe, you'll be able to =
verify
> this.
>
Ah, yes. Of course it works like that. What was I thinking :)
Thanks for the help Paul. I must have done some mistake before which
made it go wrong.

> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

