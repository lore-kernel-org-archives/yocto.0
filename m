Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 960A9E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 08:13:22 -0700 (PDT)
Received: by obhx4 with SMTP id x4so3986377obh.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 08:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=h0kmZQkLzYXco3yVa3unakNR5cr9CmDEHc6GgkCxJfs=;
	b=SE+C/uqHxmmGEKAj1C1EpqWJtMKN5wcKQfj6mkzGhRBZMqjtDMlKnGS/0YsA+orlJE
	vvNLIGjmwzp2KHHh1V50mqeq6I5EIdycgp1xEfPjff37JUyyiKjD+0KAM0fLOvacqtda
	FERaZOB0Gb9Zrn1jFytkEtbmnCAhHfTVbDtBVaBdb1TmyHuhv37i9VS4Ia+mAgBy9h92
	0ACERMgpMaLYTtzKc9uGRputY4qe3fHMCKt+lJSi/R0GC1x1+wysBEGGPI7fREP4DLW9
	krHjgnzC9xwi6y8ffCOB3g3C5KxRoSi8XyC2EmDAUBJ2ZSWhVBAM5IFiJUQkYiupMWRy
	0YLQ==
MIME-Version: 1.0
Received: by 10.182.131.37 with SMTP id oj5mr5976984obb.54.1348845202206; Fri,
	28 Sep 2012 08:13:22 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Fri, 28 Sep 2012 08:13:22 -0700 (PDT)
In-Reply-To: <10806457.GXdzIaxYOE@helios>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<1470336.PrNkWSnEWe@helios>
	<CAMAb8ZO4+DBOAboVYLMQDq-Aa2ymreBrumnrLvUp0ZGJcqK+Tw@mail.gmail.com>
	<10806457.GXdzIaxYOE@helios>
Date: Fri, 28 Sep 2012 11:13:22 -0400
Message-ID: <CAMAb8ZNWccQSq9c=8pFwO1tv5kCUC4nTPVamr1=5iFqh2JJaKg@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: build failure on current
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
X-List-Received-Date: Fri, 28 Sep 2012 15:13:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

To answer your questions...

> Just to confirm, this is the same path you get if you run "cat pseudodone"
> in your build directory?

Yessir.

evadeflow% cat pseudodone
/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr/bin


>  ...                  could you put this into a file and run it and tell me
>  what it prints on your system?
>
> --------------- snip --------------
> #!/bin/sh
> needtar=1
> TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
> float_test() {
>      echo | awk 'END { exit ( !( '"$1"')); }'
> }

Erm... that *specific* bit prints nothing when pasted into a file and
executed. (Is it really supposed to?)

evadeflow% cat > temp.sh
#!/bin/sh
needtar=1
TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
float_test() {
     echo | awk 'END { exit ( !( '"$1"')); }'
}
evadeflow% chmod +x temp.sh
evadeflow% ./temp.sh
evadeflow% ls -la /bin/sh
lrwxrwxrwx 1 root root 9 2010-08-13 05:08 /bin/sh -> /bin/bash
evadeflow% tar --version | head -n 1 | cut -d ' ' -f 4
1.22


On Fri, Sep 28, 2012 at 10:34 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 28 September 2012 10:16:27 Evade Flow wrote:
>> Seems it definitely didn't build tar:
>>
>> evadeflow% pwd
>> /home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr/bin
>
> Just to confirm, this is the same path you get if you run "cat pseudodone" in
> your build directory?
>
>> evadeflow% ls t*
>> tabs  tailf  taskset  tic  toe        tput  tset  tunctl  tzselect
>> evadeflow% tar --version
>> tar (GNU tar) 1.22
>> ...
>> This is on denzil, BTW. (Maybe the check against the tar version was added
>> later?)
>
> No, the code to do this was there in denzil as well. Here's the code cut out
> into a shell script - could you put this into a file and run it and tell me
> what it prints on your system?
>
> --------------- snip --------------
> #!/bin/sh
> needtar=1
> TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
> float_test() {
>      echo | awk 'END { exit ( !( '"$1"')); }'
> }
>
> # Tar version 1.24 and onwards handle overwriting symlinks correctly
> # but earlier versions do not; this needs to work properly for sstate
> float_test "$TARVERSION > 1.23" && needtar="0"
> echo $needtar
> --------------- snip --------------
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

