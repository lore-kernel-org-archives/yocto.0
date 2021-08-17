Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web08.41685.1629218096274756293
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 09:34:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t8kyeA7x;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id bo18so37096pjb.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 09:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2OpbafzTU6pacYeoE6n7gQ6ZdDJAVuhhqH/JkOwPeW4=;
        b=t8kyeA7xfrcN8ucFJQhwmNb6smhRoNyJfmh9vEbgvYMsa83H1O3MzlkFz9X3i2kWZe
         uxa4dldy25zxVHYs/IFLIkHg+l1JBFcen7MzxlUqOPQA19ge4V38MQhMekejODFcIv6N
         yARPINxJ7OGFZ1uNmjSjS2MGdhFHI052+e0h/uHV8JlthDRx/9dc9LLRvn4b9Jszc5YZ
         D23P49IZzCTO2AHMclZsq1fgOvBLmyg0gmjDYbvohtQbfLWRoNCd5cuWMfZG6EAnQ1zx
         RslV4Ko0xyhS5pZUN/HCGMpgCQDW2VwyPL9vPUErw3qzIRV5CSe82cfUk0udTSDQI1VS
         46AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2OpbafzTU6pacYeoE6n7gQ6ZdDJAVuhhqH/JkOwPeW4=;
        b=IAAj1yQOQzYczOeWCWG2u0xNTYs2ME/IrTP+BeLl5J7osiLlYah0yoO6mgWjUz63Ze
         SrfzCh4dOBMpPiOm6ix4aCh46FxH086gLFNUd65u9wXRjxTB/rxMManOyDNylhdyDKPu
         7Ucxg8RCQolktyXtzIOyKg/RTEYLGc/kUdi90/TnhXGcsHkZEvBMPyjpUxqm8+5R0tN0
         B/UYfsHCo8IEN6DUiNFsIN7ItmDnPFNAUTpeA2EvdCXyHGeV+H3u/eob3sujdf05K/oi
         TFoLyeiJQUvxXYZ+6G1CwuY02ILrOp5+5Yz7VQ5E19witagM3t/7jD65I0FEFQZ57rWs
         UMnA==
X-Gm-Message-State: AOAM531IxLD5xAIfQuAceCJik7G4bzLlLU4FbsuEY4y909+377daITzN
	RQ4GdR1fVAdXvOt1SwA9VXOOo/Q6OAqRW09jhVc=
X-Google-Smtp-Source: ABdhPJxbXFbH8+wRmkjyS4j6LMqpC7J/sHRnlQ4N2ETSap7VmzfrJbwvwjC6AHeVmAaLQgr8+me5NBFaPyDbQCBCIuc=
X-Received: by 2002:a63:e408:: with SMTP id a8mr4332231pgi.184.1629218095733;
 Tue, 17 Aug 2021 09:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <YBth.1629214691621384185.kqQR@lists.yoctoproject.org>
In-Reply-To: <YBth.1629214691621384185.kqQR@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 17 Aug 2021 18:34:44 +0200
Message-ID: <CAGAf8LxqONibrFkFONt8e3W==44c+cdzVGW=tZzvcDyCPksOFQ@mail.gmail.com>
Subject: Re: [yocto] Getting bitbake error after 54% recipes are baked. #dunfell #yocto
To: vishal.rana118@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000db9f2905c9c3e507"

--000000000000db9f2905c9c3e507
Content-Type: text/plain; charset="UTF-8"

> /home/vrana/Desktop/yocto_Practice/build/tmp/ \
> work/core2-64-poky-linux/gcc/9.3.0-r0/recipe-sysroot-native/ \
> usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/ \
> gcc/x86_64-poky-linux/9.3.0/as:
> *out of memory allocating 4064 bytes after a total of 452272128 bytes*

Looks to me that your VM ran out of SDRAM memory,
allocated for the VM, somehow.

> Memory allocated to VM machine is 100+ GB.

It is (hopefully) a VDI (Dynamic) VM disk image, NOT a SDRAM,
my best guess.

[1] You can just try to continue bitbake process, it might pass, since the
     Bitbake processes were forcefully killed, and some memory hogged
     fortunately were entirely deallocated;
[2] If [1] fails again a few times, you can try to reconfigure VMM to give
     more SDRAM to VM (have no idea what is the allocated default), it
     might help!

Zee
_______

On Tue, Aug 17, 2021 at 5:38 PM <vishal.rana118@gmail.com> wrote:

> Hi,
>
> I am using* ubuntu 16.04* (host) in VirtualBox.
>
> Memory allocated to VM machine is 100+ GB.
>
> Poky* dunfell*.
>
> While trying to build the project fo*r x86_64.*
>
> Steps followed as per yocto quick guide for "dunfell"
>
> ////////////////////////////////////////////////////////////////////////
>
> after baking 54% of recipe I am getting error.
>
>
> ////////////////////////////////////////////////////////////////////////////////////
>
> |
> /home/vrana/Desktop/yocto_Practice/build/tmp/work/core2-64-poky-linux/gcc/9.3.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/as:
> out of memory allocating 4064 bytes after a total of 452272128 bytes
>
> | Makefile:1117: recipe for target 'insn-emit.o' failed
>
> | make[1]: *** [insn-emit.o] Error 2
>
> | make[1]: *** Waiting for unfinished jobs....
>
> | rm gcc.pod
>
> | make[1]: Leaving directory
> '/home/vrana/Desktop/yocto_Practice/build/tmp/work/core2-64-poky-linux/gcc/9.3.0-r0/gcc-9.3.0/build.x86_64-poky-linux.x86_64-poky-linux/gcc'
>
> | Makefile:4328: recipe for target 'all-gcc' failed
>
> | make: *** [all-gcc] Error 2
>
> | WARNING: exit code 1 from a shell command.
>
> |
>
> ERROR: Task
> (/home/vrana/Desktop/yocto_Practice/source/poky/meta/recipes-devtools/gcc/gcc_9.3.bb:do_compile)
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 1832 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
>
> /home/vrana/Desktop/yocto_Practice/source/poky/meta/recipes-devtools/gcc/gcc_9.3.bb:
> do_compile
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
>
>
>
> ////////////////////////////////////////////////////////////
>
> looking for guidance.
>
>
>
> Regards,
>
> 
>
>

--000000000000db9f2905c9c3e507
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; /home/vrana/Desktop/yocto_Practice/build/tmp/ \<=
/div><div>&gt; work/core2-64-poky-linux/gcc/9.3.0-r0/recipe-sysroot-native/=
 \</div><div>&gt; usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux=
/ \<br></div><div>&gt; gcc/x86_64-poky-linux/9.3.0/as: <br></div><div>&gt; =
<span style=3D"color:rgb(255,0,0)"><i><b>out of memory allocating 4064 byte=
s after a total of 452272128 bytes</b></i></span></div><div><br></div><div>=
Looks to me that your VM ran out of SDRAM memory,</div><div>allocated for t=
he VM, somehow.<br></div><div><br></div><div>&gt; Memory allocated to VM ma=
chine is 100+ GB.</div><div><br></div><div>It is (hopefully) a VDI (Dynamic=
) VM disk image, NOT a SDRAM,</div><div>my best guess.<br></div><div><br></=
div><div>[1] You can just try to continue bitbake process, it might pass, s=
ince the</div><div>=C2=A0=C2=A0=C2=A0=C2=A0 Bitbake processes were forceful=
ly killed, and some memory hogged</div><div>=C2=A0=C2=A0=C2=A0=C2=A0 fortun=
ately were entirely deallocated;<br></div><div>[2] If [1] fails again a few=
 times, you can try to reconfigure VMM to give</div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0 more SDRAM to VM (have no idea what is the allocated default), it</d=
iv><div>=C2=A0=C2=A0=C2=A0=C2=A0 might help!</div><div><br></div><div>Zee</=
div><div>_______<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Aug 17, 2021 at 5:38 PM &lt;<a href=3D"ma=
ilto:vishal.rana118@gmail.com">vishal.rana118@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><p style=3D"font-siz=
e:13px;margin-bottom:0px;padding:0px;max-width:60rem;color:rgb(28,29,31);fo=
nt-family:&quot;sf pro text&quot;,-apple-system,BlinkMacSystemFont,Roboto,&=
quot;segoe ui&quot;,Helvetica,Arial,sans-serif,&quot;apple color emoji&quot=
;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;">Hi,</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">I am using<strong> ubuntu 16.04</strong> (host) in Vir=
tualBox.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">Memory allocated to VM machine is 100+ GB.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">Poky<strong> dunfell</strong>.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">While trying to build the project fo<strong>r x86_64.<=
/strong></p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">Steps followed as per yocto quick guide for &quot;dunf=
ell&quot;</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">//////////////////////////////////////////////////////=
//////////////////</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">after baking 54% of recipe I am getting error.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">//////////////////////////////////////////////////////=
//////////////////////////////</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| /home/vrana/Desktop/yocto_Practice/build/tmp/work/co=
re2-64-poky-linux/gcc/9.3.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-li=
nux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/as: out of =
memory allocating 4064 bytes after a total of 452272128 bytes</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| Makefile:1117: recipe for target &#39;insn-emit.o&#3=
9; failed</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| make[1]: *** [insn-emit.o] Error 2</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| make[1]: *** Waiting for unfinished jobs....</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| rm gcc.pod</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| make[1]: Leaving directory &#39;/home/vrana/Desktop/=
yocto_Practice/build/tmp/work/core2-64-poky-linux/gcc/9.3.0-r0/gcc-9.3.0/bu=
ild.x86_64-poky-linux.x86_64-poky-linux/gcc&#39;</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| Makefile:4328: recipe for target &#39;all-gcc&#39; f=
ailed</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| make: *** [all-gcc] Error 2</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">| WARNING: exit code 1 from a shell command.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">|</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">ERROR: Task (/home/vrana/Desktop/yocto_Practice/source=
/poky/meta/recipes-devtools/gcc/gcc_9.3.bb:do_compile) failed with exit cod=
e &#39;1&#39;</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">NOTE: Tasks Summary: Attempted 1832 tasks of which 0 d=
idn&#39;t need to be rerun and 1 failed.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">Summary: 1 task failed:</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">=C2=A0 /home/vrana/Desktop/yocto_Practice/source/poky/=
meta/recipes-devtools/gcc/gcc_9.3.bb:do_compile</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">Summary: There were 2 ERROR messages shown, returning =
a non-zero exit code.=C2=A0</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">=C2=A0</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">//////////////////////////////////////////////////////=
//////</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">looking for guidance.</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">=C2=A0</p>
<p style=3D"font-size:13px;margin-top:0.8rem;margin-bottom:0px;padding:0px;=
max-width:60rem;color:rgb(28,29,31);font-family:&quot;sf pro text&quot;,-ap=
ple-system,BlinkMacSystemFont,Roboto,&quot;segoe ui&quot;,Helvetica,Arial,s=
ans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;se=
goe ui symbol&quot;">Regards,</p>
<br>
<br>
<br>
</blockquote></div>

--000000000000db9f2905c9c3e507--
