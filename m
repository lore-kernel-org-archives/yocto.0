Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28412E00A39; Thu, 13 Sep 2018 10:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dimtass[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17791E0093B
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 10:32:52 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id h26-v6so2018184otl.9
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 10:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+k3t9MKQ8LQ2rdJwAlPw/4qW+YhzMqsGPW+8JUidd8k=;
	b=pXmM5u5bemHv0QzinPfkS1wORJR+W2F4FCB0xDdfnMvxVlw8DholzN9MZn8ubSBLiF
	nnLdZ5ZHzE19EBVhd0ZbEBAP1nfMW6oyfA+fDpm/WatNlQiIXQM7MCp5gdwSdrVQoz6k
	xuHasfbWSw7MF4Vrr7iN7sduSoZPXwO3Y3Yhz8xblH+gmA8X4unsCEI+9tV199lQ0qUF
	1K+x4+FgCoth6m7Ivpq26tGrIT8nzejlijDR6v+oAIHGB9HAtS2Ekqcu1KZ8CwjuL7Wr
	AbIB3SkZ23LCxmCGyMFrf7EEEtKLJjYgkI3FPsmqDooP16UIlJb+qYKNBlgjTbHlyyV7
	7y7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+k3t9MKQ8LQ2rdJwAlPw/4qW+YhzMqsGPW+8JUidd8k=;
	b=pglfCzb/6T/rZxGm0qHbRyN7KTSsNf25Ty8IVwLs3ELFbXhNEOTQzGTAwdP28q9tRN
	CFjlqayewqnwvCAbcExrNfOdgG7CE8RfdtcfEq2JTqMVspLZtgtQp/xreiExcMRRhWZN
	7LTP1rmc5Oq7cEUBNEzbaCHNWkl01oIAetF+zV+s29c5GKYZptMbyFkMkI0WE76vGloT
	/AGIMwoEmpqhj3/RuA/4XIzePn0bNuAaL4pv+lGFyADqDWj5Gd03N45WzdRusbfMb7LC
	d57kmKaYejhFcce8Ky4hUbJObaMhBHSabOQ6UCzCTDUncRxstZNVEv240qNs7796lOz1
	khNg==
X-Gm-Message-State: APzg51BHo9Jnx4P1JHxcelKZ8y8stHjE+/4tYzo3HtMHelmBO/UgPdW4
	nWgUb0YQEzXrg1JTrywRoVlOkHZZPHFd5lCiIwY=
X-Google-Smtp-Source: ANB0VdYq8Hmc1DamX73uV9t+1SZSAtpkSiCViLoHJnLB5Zu4YeVuV0+LyGnReupqpi4I9XGtu8+eS/EY8IUOUqjZ+gQ=
X-Received: by 2002:a9d:26cf:: with SMTP id
	i15-v6mr1952928otd.21.1536859972220; 
	Thu, 13 Sep 2018 10:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <op.zo9636t6mnlnty@pc-mls.ecafaros.local>
	<CANNYZj9UKxFHObAuS-7x+bGLwcXakRJ-879Pf5W6iGwAxei0ng@mail.gmail.com>
In-Reply-To: <CANNYZj9UKxFHObAuS-7x+bGLwcXakRJ-879Pf5W6iGwAxei0ng@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Thu, 13 Sep 2018 19:32:40 +0200
Message-ID: <CACKFPN1io03s45NFuLjVDm0tBp8+oJH6TeCk1F6JMh0Chf6rGw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake error
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
X-List-Received-Date: Thu, 13 Sep 2018 17:32:54 -0000
Content-Type: multipart/alternative; boundary="000000000000b6bb5c0575c418ea"

--000000000000b6bb5c0575c418ea
Content-Type: text/plain; charset="UTF-8"

Sometimes, I also got some weird errors like that when copying and pasting
projects (or meta layers) from one machine to other. That's because the
flags and some file stats are not copied.

On Thu, 13 Sep 2018, 18:57 Alexander Kanavin, <alex.kanavin@gmail.com>
wrote:

> It seems as though the build system is unable to create this directory:
>
>
> /home/b/yocto-krogoth/../../yocto/downloads//uninative/acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8
>
> You probably have a permission problem there, working from /home/b but
> attempting to create /home/yocto.
>
> Alex
>
> 2018-09-13 15:15 GMT+02:00 idealsim <idealsim@laposte.net>:
> > Hi, i'm trying to build an image with Yocto on a new machine (ubuntu
> 16.04
> > LTS)but i have this error that i can't resolve. Can you help ?
> >
> > ERROR: Execution of event handler 'uninative_event_fetchloader' failed
> > Traceback (most recent call last):
> >   File
> "/home/b/yocto-krogoth/sources/poky/meta/classes/uninative.bbclass",
> > line 55, in uninative_event_fetchloader(e=<bb.event.BuildStarted object
> at
> > 0x7f2015027790>):
> >              if not os.path.exists(tarballpath):
> >     >            bb.utils.mkdirhier(tarballdir)
> >                  if d.getVar("UNINATIVE_URL", True) == "unset":
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/utils.py", line
> > 716, in
> >
> mkdirhier(directory='/home/b/yocto-krogoth/../../yocto/downloads//uninative/acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8'):
> >              if e.errno != errno.EEXIST:
> >     >            raise e
> >
> > OSError: [Errno 13] Permission denied:
> '/home/b/yocto-krogoth/../../yocto'
> >
> > ERROR: Command execution failed: Traceback (most recent call last):
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/command.py",
> line
> > 104, in runAsyncCommand
> >     commandmethod(self.cmds_async, self, options)
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/command.py",
> line
> > 325, in buildTargets
> >     command.cooker.buildTargets(pkgs_to_build, task)
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/cooker.py",
> line
> > 1423, in buildTargets
> >     bb.event.fire(bb.event.BuildStarted(buildname, ntargets), self.data)
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line
> > 178, in fire
> >     fire_class_handlers(event, d)
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line
> > 110, in fire_class_handlers
> >     execute_handler(name, handler, event, d)
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line
> > 82, in execute_handler
> >     ret = handler(event)
> >   File
> "/home/b/yocto-krogoth/sources/poky/meta/classes/uninative.bbclass",
> > line 55, in uninative_event_fetchloader
> >     bb.utils.mkdirhier(tarballdir)
> >   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/utils.py", line
> > 716, in mkdirhier
> >     raise e
> > OSError: [Errno 13] Permission denied:
> '/home/b/yocto-krogoth/../../yocto'
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b6bb5c0575c418ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Sometimes, I also got some weird errors like that when co=
pying and pasting projects (or meta layers) from one machine to other. That=
&#39;s because the flags and some file stats are not copied.</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">On Thu, 13 Sep 2018, 18:57 Alexander=
 Kanavin, &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">It seems as though the build system is unable to creat=
e this directory:<br>
<br>
/home/b/yocto-krogoth/../../yocto/downloads//uninative/acf1e44a0ac2e855e81d=
a6426197d36358bf7b4e88e552ef933128498c8910f8<br>
<br>
You probably have a permission problem there, working from /home/b but<br>
attempting to create /home/yocto.<br>
<br>
Alex<br>
<br>
2018-09-13 15:15 GMT+02:00 idealsim &lt;<a href=3D"mailto:idealsim@laposte.=
net" rel=3D"noreferrer noreferrer" target=3D"_blank">idealsim@laposte.net</=
a>&gt;:<br>
&gt; Hi, i&#39;m trying to build an image with Yocto on a new machine (ubun=
tu 16.04<br>
&gt; LTS)but i have this error that i can&#39;t resolve. Can you help ?<br>
&gt;<br>
&gt; ERROR: Execution of event handler &#39;uninative_event_fetchloader&#39=
; failed<br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/meta/classes=
/uninative.bbclass&quot;,<br>
&gt; line 55, in uninative_event_fetchloader(e=3D&lt;bb.event.BuildStarted =
object at<br>
&gt; 0x7f2015027790&gt;):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not os.path.exists(=
tarballpath):<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.ut=
ils.mkdirhier(tarballdir)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if d.get=
Var(&quot;UNINATIVE_URL&quot;, True) =3D=3D &quot;unset&quot;:<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/utils.py&quot;, line<br>
&gt; 716, in<br>
&gt; mkdirhier(directory=3D&#39;/home/b/yocto-krogoth/../../yocto/downloads=
//uninative/acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f=
8&#39;):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if e.errno !=3D errno.=
EEXIST:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise=
 e<br>
&gt;<br>
&gt; OSError: [Errno 13] Permission denied: &#39;/home/b/yocto-krogoth/../.=
./yocto&#39;<br>
&gt;<br>
&gt; ERROR: Command execution failed: Traceback (most recent call last):<br=
>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/command.py&quot;, line<br>
&gt; 104, in runAsyncCommand<br>
&gt;=C2=A0 =C2=A0 =C2=A0commandmethod(self.cmds_async, self, options)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/command.py&quot;, line<br>
&gt; 325, in buildTargets<br>
&gt;=C2=A0 =C2=A0 =C2=A0command.cooker.buildTargets(pkgs_to_build, task)<br=
>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/cooker.py&quot;, line<br>
&gt; 1423, in buildTargets<br>
&gt;=C2=A0 =C2=A0 =C2=A0bb.event.fire(bb.event.BuildStarted(buildname, ntar=
gets), self.data)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/event.py&quot;, line<br>
&gt; 178, in fire<br>
&gt;=C2=A0 =C2=A0 =C2=A0fire_class_handlers(event, d)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/event.py&quot;, line<br>
&gt; 110, in fire_class_handlers<br>
&gt;=C2=A0 =C2=A0 =C2=A0execute_handler(name, handler, event, d)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/event.py&quot;, line<br>
&gt; 82, in execute_handler<br>
&gt;=C2=A0 =C2=A0 =C2=A0ret =3D handler(event)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/meta/classes=
/uninative.bbclass&quot;,<br>
&gt; line 55, in uninative_event_fetchloader<br>
&gt;=C2=A0 =C2=A0 =C2=A0bb.utils.mkdirhier(tarballdir)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/b/yocto-krogoth/sources/poky/bitbake/lib/=
bb/utils.py&quot;, line<br>
&gt; 716, in mkdirhier<br>
&gt;=C2=A0 =C2=A0 =C2=A0raise e<br>
&gt; OSError: [Errno 13] Permission denied: &#39;/home/b/yocto-krogoth/../.=
./yocto&#39;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer noreferrer=
" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/listinfo/yocto</a><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/li=
stinfo/yocto</a><br>
</blockquote></div>

--000000000000b6bb5c0575c418ea--
