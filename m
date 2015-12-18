Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C90BE00B5C; Thu, 17 Dec 2015 21:37:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6461E0078A
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 21:37:29 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id o67so79109919iof.3
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 21:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iv1zl9Z5qT9KW170ok2twtcoYKlG7gOBUdZsy7FQ9lU=;
	b=l3qW3TryDg3znXevqIJjCZ5jleHF6jQM5MKnD0jTxG3EKjXTMheWk7sy/nqeZNRHF+
	X0rDTxyo187FHcIqoLpgKkd/n+e4Np+/23br8n4HxLEjNi92rZnWNiuceU5qcUT6bU+c
	Y9BYTlKPZQ3SZzjCr+ot9m2T1eitzSMUka20xhRkidiSVFXLW7y4kaTTepXIgRkAhkX6
	Qo05PvBqeFuVrtDDKCIgGpsbSauVHfdWY2VtKIjB739c3PJkcSMjHK+2amubU1FhyVWj
	fFsvOqE/a9H3HXss85clalnGxQ/1PwpUSHFa4YULK6v7t445r5awsLwgFsQc6B71xQXD
	UnUQ==
MIME-Version: 1.0
X-Received: by 10.107.9.197 with SMTP id 66mr2540648ioj.121.1450417048380;
	Thu, 17 Dec 2015 21:37:28 -0800 (PST)
Received: by 10.79.36.195 with HTTP; Thu, 17 Dec 2015 21:37:28 -0800 (PST)
In-Reply-To: <1450269478.2067.30.camel@settopsurvey.com>
References: <1450201373.2067.10.camel@settopsurvey.com>
	<CAALGJZZSsF_xE3w1c=6ajkXFDbr+7_wd0+BN=e283XGZya8dVA@mail.gmail.com>
	<CAALGJZbV0Afzj3=YD1pqVrtbQ4ugcMiVK3dLj6VRM57Y+gxcTg@mail.gmail.com>
	<1450269478.2067.30.camel@settopsurvey.com>
Date: Thu, 17 Dec 2015 23:37:28 -0600
Message-ID: <CAOsp8o-FvX64t-dniWEPY57hTfA7ckKdhS4khCg9AL1ddh6FZw@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: simo <sazzalin@settopsurvey.com>
Cc: yocto@yoctoproject.org
Subject: Re: Power off IC over Yocto
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
X-List-Received-Date: Fri, 18 Dec 2015 05:37:31 -0000
Content-Type: multipart/alternative; boundary=001a113ebb5cf1eb95052725885a

--001a113ebb5cf1eb95052725885a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Simon, that's more of a kernel development question and probably doesn't
fit in the Yocto project mailing list. You may try the linux kernel
development mailing lists.

However, I will give you some feedback. I think you are modifying code too
deep in the kernel. By the time you get to that function, the system should
not be executing more tasks. If it does, it will likely get terminated
pretty quickly afterward, regardless if it finished (no guarantee your
process will run to completion). It's also not great practice to actually
modify the kernel itself, because then it will only work with your one
machine/setup (unless that is acceptable). Kernel modules loaded in may be
better practice here.

I don't understand your question about machine_halt, but I will assume you
are asking how important the lines of code are between your usermode helper
call and machine_halt. The answer is very. All of those lines must execute
successfully to have clean shutdown.

On Wed, Dec 16, 2015 at 6:37 AM, simo <sazzalin@settopsurvey.com> wrote:

> Hi,
>
> right now we solved executing an external tool we wrote in C to send the
> I2C command to the external expansion board.
>
> I had to modify the kernel_halt() function as follows:
>
> void kernel_halt(void)
> {
>
>         /* added by simo */
>
>         /* external environment declaration */
>         char i2c_shutdown_cmd[] =3D "/home/root/i2c-shutdown";
>         char **argv;
>         static char *envp[] =3D
>         {
>                 "HOME=3D/",
>                 "PATH=3D/home/root:/sbin:/usr/sbin:/bin:/usr/bin",
>                 NULL
>         };
>
>         argv =3D argv_split(GFP_KERNEL, i2c_shutdown_cmd, NULL);
>
>         // WORKS HERE
>         pr_emerg("Turning off.\n");
>         call_usermodehelper(argv[0], argv, envp, UMH_WAIT_EXEC);
>
>         /* no more executed */
>         kernel_shutdown_prepare(SYSTEM_HALT);
>
>         migrate_to_reboot_cpu();
>         syscore_shutdown();
>         //pr_emerg("System halted\n");
>         kmsg_dump(KMSG_DUMP_HALT);
>
>         /* commented while(1); in machine_halt for arm */
>         machine_halt();
> }
> EXPORT_SYMBOL_GPL(kernel_halt);
>
> I cannot execute call_usermodehelper after kernel_shutdown_prepare()
> because this function disables user space access.
>
> So I have a question: how much is important to execute the code until
> machine_halt() ?
>
> I am using a kernel version 3.18.18.
>
> Regards,
> Simon
>
>
> El mar, 15-12-2015 a las 19:46 +0100, Christian Ege escribi=C3=B3:
> >
> > Am 15.12.2015 7:45 nachm. schrieb "Christian Ege" <k4230r6@gmail.com>:
> > >
> > > Hi,
> > >
> > > Am 15.12.2015 6:45 nachm. schrieb "simo"
> > <sazzalin@settopsurvey.com>:
> > > >
> > > > I am using a Gumtix Overo board and we create and expansion board
> > that
> > > > power Overo and other devices by external power supply IC.
> > > >
> > > > Our expansion board with power supply are connected by I2C bus 2
> > in
> > > > overo (not the same i2C that TW4030 or tps6595 is connected).
> > > >
> > > > Using the Linux  command shutdown we would like to power off the
> > hole
> > > > system.
> > > > We would like to close the linux and last thing send a command
> > over I2C
> > > > to our power supply IC in order it disconnect the physical power.
> > > >
> > > > Our question is:
> > > >
> > > > Where we have to implement that function?
> > > > Is there any example of it?
> > > I guess you can use
> > > http://lxr.free-electrons.com/source/kernel/reboot.c
> > >
> > register_reboot_notifier is your friend
> > > You have to create some kernel module doing this or write a kernel
> > patch.
> > >
> > > Regards,
> > > Christian
> > >
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ebb5cf1eb95052725885a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Simon, that&#39;s more of a kernel development question an=
d probably doesn&#39;t fit in the Yocto project mailing list. You may try t=
he linux kernel development mailing lists.<div><br></div><div>However, I wi=
ll give you some feedback. I think you are modifying code too deep in the k=
ernel. By the time you get to that function, the system should not be execu=
ting more tasks. If it does, it will likely get terminated pretty quickly a=
fterward, regardless if it finished (no guarantee your process will run to =
completion). It&#39;s also not great practice to actually modify the kernel=
 itself, because then it will only work with your one machine/setup (unless=
 that is acceptable). Kernel modules loaded in may be better practice here.=
=C2=A0</div><div><br></div><div>I don&#39;t understand your question about =
machine_halt, but I will assume you are asking how important the lines of c=
ode are between your usermode helper call and machine_halt. The answer is v=
ery. All of those lines must execute successfully to have clean shutdown.</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed,=
 Dec 16, 2015 at 6:37 AM, simo <span dir=3D"ltr">&lt;<a href=3D"mailto:sazz=
alin@settopsurvey.com" target=3D"_blank">sazzalin@settopsurvey.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
right now we solved executing an external tool we wrote in C to send the<br=
>
I2C command to the external expansion board.<br>
<br>
I had to modify the kernel_halt() function as follows:<br>
<br>
void kernel_halt(void)<br>
{<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* added by simo */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* external environment declaration */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char i2c_shutdown_cmd[] =3D &quot;/home/root/i2=
c-shutdown&quot;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char **argv;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 static char *envp[] =3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;HOME=3D/&quot=
;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PATH=3D/home/=
root:/sbin:/usr/sbin:/bin:/usr/bin&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 argv =3D argv_split(GFP_KERNEL, i2c_shutdown_cm=
d, NULL);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // WORKS HERE<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pr_emerg(&quot;Turning off.\n&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 call_usermodehelper(argv[0], argv, envp, UMH_WA=
IT_EXEC);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* no more executed */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_shutdown_prepare(SYSTEM_HALT);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 migrate_to_reboot_cpu();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 syscore_shutdown();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 //pr_emerg(&quot;System halted\n&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kmsg_dump(KMSG_DUMP_HALT);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* commented while(1); in machine_halt for arm =
*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 machine_halt();<br>
}<br>
EXPORT_SYMBOL_GPL(kernel_halt);<br>
<br>
I cannot execute call_usermodehelper after kernel_shutdown_prepare()<br>
because this function disables user space access.<br>
<br>
So I have a question: how much is important to execute the code until<br>
machine_halt() ?<br>
<br>
I am using a kernel version 3.18.18.<br>
<br>
Regards,<br>
Simon<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
El mar, 15-12-2015 a las 19:46 +0100, Christian Ege escribi=C3=B3:<br>
&gt;<br>
&gt; Am 15.12.2015 7:45 nachm. schrieb &quot;Christian Ege&quot; &lt;<a hre=
f=3D"mailto:k4230r6@gmail.com">k4230r6@gmail.com</a>&gt;:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; Am 15.12.2015 6:45 nachm. schrieb &quot;simo&quot;<br>
&gt; &lt;<a href=3D"mailto:sazzalin@settopsurvey.com">sazzalin@settopsurvey=
.com</a>&gt;:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I am using a Gumtix Overo board and we create and expansion =
board<br>
&gt; that<br>
&gt; &gt; &gt; power Overo and other devices by external power supply IC.<b=
r>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Our expansion board with power supply are connected by I2C b=
us 2<br>
&gt; in<br>
&gt; &gt; &gt; overo (not the same i2C that TW4030 or tps6595 is connected)=
.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Using the Linux=C2=A0 command shutdown we would like to powe=
r off the<br>
&gt; hole<br>
&gt; &gt; &gt; system.<br>
&gt; &gt; &gt; We would like to close the linux and last thing send a comma=
nd<br>
&gt; over I2C<br>
&gt; &gt; &gt; to our power supply IC in order it disconnect the physical p=
ower.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Our question is:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Where we have to implement that function?<br>
&gt; &gt; &gt; Is there any example of it?<br>
&gt; &gt; I guess you can use<br>
&gt; &gt; <a href=3D"http://lxr.free-electrons.com/source/kernel/reboot.c" =
rel=3D"noreferrer" target=3D"_blank">http://lxr.free-electrons.com/source/k=
ernel/reboot.c</a><br>
&gt; &gt;<br>
&gt; register_reboot_notifier is your friend<br>
&gt; &gt; You have to create some kernel module doing this or write a kerne=
l<br>
&gt; patch.<br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt; Christian<br>
&gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a><br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" re=
l=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/=
yocto</a><br>
&gt;<br>
&gt;<br>
<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a113ebb5cf1eb95052725885a--
