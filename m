Return-Path: <andreabenini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E636E0043A; Sun, 18 Jan 2015 14:08:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreabenini[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D372E002F9
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 14:08:00 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id b13so1234492qcw.9
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 14:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=SF/NGHO2jaGQVRqG7ryGWVEiG7kgEhUtqBqvxtOzSlw=;
	b=gkX+PqrobkUHN6zz1sU6Keg1SNfZRB0aDEXpr+CWHiWbdF1Y52kWCUwu0PVSM5H9+R
	9lnHFfmr51UWLnb+TTW25zpndOMGcfOlgJ4kK+wtiq1CnkVpjVWINarKlrBJL2p1qTFJ
	fe7USZE7JNOew1s/K0CtEKr1UqquuNT8jWDv4v8k0WA+SUq8Oo6UWEKUzdk9/vG/8Blq
	V5hL/id5/v0bJN73affH5ElIjFSuHEVAkc10pAvOWOsJD1Qc7q/Dv691O7lOAMZnhgyH
	X9dJoDSVRHAGQqTdpAsEmuD7aDuI77NwvbkwDTG/LWzEeZ69v+MIeq9D4+ScKnxXhyyP
	vu8g==
MIME-Version: 1.0
X-Received: by 10.224.103.72 with SMTP id j8mr43280710qao.19.1421618879458;
	Sun, 18 Jan 2015 14:07:59 -0800 (PST)
Received: by 10.229.138.79 with HTTP; Sun, 18 Jan 2015 14:07:59 -0800 (PST)
In-Reply-To: <CAK18fxEN7pVqNTTrbvybTdcOUhvRknxMwj1ge0R5wWnxJkQv3A@mail.gmail.com>
References: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>
	<54BAABF4.8000300@jenslucius.de>
	<CAK18fxEN7pVqNTTrbvybTdcOUhvRknxMwj1ge0R5wWnxJkQv3A@mail.gmail.com>
Date: Sun, 18 Jan 2015 23:07:59 +0100
Message-ID: <CAOrUntYKmWch0iQSsm9qxHQNcshxtH20iGrCKE2c0pY6mAW0Hg@mail.gmail.com>
From: Andrea Benini <andreabenini@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: armhf support for meta-raspberrypi
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
X-List-Received-Date: Sun, 18 Jan 2015 22:08:02 -0000
Content-Type: multipart/alternative; boundary=001a11c297a650f1aa050cf470ed

--001a11c297a650f1aa050cf470ed
Content-Type: text/plain; charset=UTF-8

Thanks folks, and thank you Andrei.
As suggested by toolmmy and pleasant folks in this thread I'm using
DEFAULTTUNE option. I had already seen the arm1176jzfshf after a small
search into the meta-raspberry layer but I didn't know how to use it.
Now I have recompiled my toolchain with this option enabled and it worked
fine, I need to compile other tools (C, C++ libs, toolchain, binutils) for
my own test and I'll put it on a real Pi. It takes a while but after this
full recompile it seems everything is fine.
If someone is interested in some benchmarking or other tests please let me
know, my current image works. I'd like to add other packages useful for a
real distro (Python 2/3, mc, nano, gcc, ext utils, ...) as I did before
with the armel build but seems to be working without troubles so I'll
normally continue my job with yocto and the Pi. My armel image works on Pi
model A, B (256 and 512) and B+, as soon as I'll have a complete armhf
image I'll do complete tests on them as well.

Ben

On Sun, Jan 18, 2015 at 1:24 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Let's keep this discussion in one thread but thanks Jens for this
> extensive explanation. Indeed, DEFAILTTUNE is the way to switch to hf.
>
> On Sat, Jan 17, 2015 at 7:37 PM, Jens Lucius <incnews@jenslucius.de>
> wrote:
>
>>
>> Am 17.01.2015 um 16:55 schrieb Andrea Benini:
>>
>>>
>>> Is there someone using armhf on it ?
>>>
>>>
>> Hello,
>>
>> This option can be set by using the variable "DEFAULTTUNE", which is
>> normally set within the machine configuration.
>>
>> In case of the raspberrypi layer this is located in ./conf/machine.
>>
>> The DEFAULTTUNE is set in the subdirectory "include" in the file
>> tune-arm1176jzf-s.inc and is set to "armv6" by default. There is a
>> discussion going on at the moment if this should be set to "armv6hf" by
>> default, maybe you could read the mail archive of the last few days.
>>
>> There are also special tune options available for the raspberrypi in this
>> file which fits the processor architecture. I am using "arm1176jzfshf" so
>> far without any problems but I did not do any speed tests.
>>
>> Regards,
>>
>> Jens
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> *Andrei Gherzan*
>

--001a11c297a650f1aa050cf470ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks folks, and thank you Andrei.</div><div>As sugg=
ested by toolmmy and pleasant folks in this thread I&#39;m using DEFAULTTUN=
E option. I had already seen the arm1176jzfshf after a small search into th=
e meta-raspberry layer but I didn&#39;t know how to use it.</div><div>Now I=
 have recompiled my toolchain with this option enabled and it worked fine, =
I need to compile other tools (C, C++ libs, toolchain, binutils) for my own=
 test and I&#39;ll put it on a real Pi. It takes a while but after this ful=
l recompile it seems everything is fine.</div><div>If someone is interested=
 in some benchmarking or other tests please let me know, my current image w=
orks. I&#39;d like to add other packages useful for a real distro (Python 2=
/3, mc, nano, gcc, ext utils, ...) as I did before with the armel build but=
 seems to be working without troubles so I&#39;ll normally continue my job =
with yocto and the Pi. My armel image works on Pi model A, B (256 and 512) =
and B+, as soon as I&#39;ll have a complete armhf image I&#39;ll do complet=
e tests on them as well.</div><div><br></div><div>Ben</div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Sun, Jan 18, 2015 at 1:24 AM, =
Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" t=
arget=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr">Let&#39;s keep this discussion in one thre=
ad but thanks Jens for this extensive explanation. Indeed, DEFAILTTUNE is t=
he way to switch to hf.</div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote"><div><div class=3D"h5">On Sat, Jan 17, 2015 at 7:37 PM, Jens Lu=
cius <span dir=3D"ltr">&lt;<a href=3D"mailto:incnews@jenslucius.de" target=
=3D"_blank">incnews@jenslucius.de</a>&gt;</span> wrote:<br></div></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div><div class=3D"h5"><br>
Am 17.01.2015 um 16:55 schrieb Andrea Benini:<span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Is there someone using armhf on it ?<br>
<br>
</blockquote>
<br></span>
Hello,<br>
<br>
This option can be set by using the variable &quot;DEFAULTTUNE&quot;, which=
 is normally set within the machine configuration.<br>
<br>
In case of the raspberrypi layer this is located in ./conf/machine.<br>
<br>
The DEFAULTTUNE is set in the subdirectory &quot;include&quot; in the file =
tune-arm1176jzf-s.inc and is set to &quot;armv6&quot; by default. There is =
a discussion going on at the moment if this should be set to &quot;armv6hf&=
quot; by default, maybe you could read the mail archive of the last few day=
s.<br>
<br>
There are also special tune options available for the raspberrypi in this f=
ile which fits the processor architecture. I am using &quot;arm1176jzfshf&q=
uot; so far without any problems but I did not do any speed tests.<br>
<br>
Regards,<br>
<br>
Jens</div></div><span class=3D"HOEnZb"><font color=3D"#888888"><span><font =
color=3D"#888888"><br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></font></span></blockquote></div><span class=3D"HOEnZb"><font=
 color=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div><div di=
r=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:c=
enter"><div align=3D"left"><b style=3D"font-family:Arial;font-size:small;co=
lor:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br></div></div></di=
v></div>
</font></span></div>
</blockquote></div><br></div></div>

--001a11c297a650f1aa050cf470ed--
