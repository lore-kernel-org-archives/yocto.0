Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D35FEE00A81; Tue,  1 Dec 2015 04:21:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ED07E00A4F
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 04:21:03 -0800 (PST)
Received: by vkay187 with SMTP id y187so2439340vka.3
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 04:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7NLXME7oR9S1CalSFg7ULviaZoVwFlZF0eMh1SoRKj4=;
	b=R8Y5kzRbeljTk0w9OYfzHki3I/ns56V8U8ZjW5UKPAct8lQEOM4tDMUXKV5WqCvH4q
	lQJHSZBLNm6SkgrTi+dpUh11wRfOAo3iNOxYiemy5/txlWgYKNFo+ezgxfKoC5o/wxbG
	0TYUCzvZJQQbrdwftITBoNpjDch7c7GiBrrSvmR8vqRlTZTuJoEQ+9EK8PP01sz0AXCQ
	BcuhH6MGHVl1cfds49JRHl91BJsOsK6FmIoP6Rc0g2uE8F91DPdn8EzBDNN/OyN02J/g
	XfiUbm4F6zAM2w4ZV/vZVL/s2591cx8SJyYw3/CAB4z8wIBxFOxbSoeLXXyJS0wibxpA
	btWg==
MIME-Version: 1.0
X-Received: by 10.31.108.90 with SMTP id h87mr58588101vkc.24.1448972463148;
	Tue, 01 Dec 2015 04:21:03 -0800 (PST)
Received: by 10.31.82.3 with HTTP; Tue, 1 Dec 2015 04:21:03 -0800 (PST)
In-Reply-To: <2180797.fvhLvehB0f@peggleto-mobl.ger.corp.intel.com>
References: <CAJqtCybKFSzf2uhe3ox7LTExCOF+KGNGRHL_hecz6LipTKNmug@mail.gmail.com>
	<2180797.fvhLvehB0f@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 1 Dec 2015 10:21:03 -0200
Message-ID: <CAJqtCyZWnGCqp4x8JSbVbj-ZhkCi_UXJ5OpmUdvn6cP-wRjnEA@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Help with Opensips Recipe - QA run found fatal errors
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
X-List-Received-Date: Tue, 01 Dec 2015 12:21:09 -0000
Content-Type: multipart/alternative; boundary=001a1147840af4c7970525d53081

--001a1147840af4c7970525d53081
Content-Type: text/plain; charset=UTF-8

Hi Paul,

Thank you very much for your help.
I added INSANE_SKIP_${PN} += " libdir compile-host-path" because the
instalation is different from /usr/lib.

Thank you very much!

Regards,

Caio Pereira


2015-11-25 20:26 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Caio,
>
> On Tuesday 24 November 2015 11:48:13 Caio wrote:
> > I'm writing a recipe to a Sip proxy Opensips, but I'm having problems
> with
> > QA Issues.
> > In the First time I tried to use make install from Opensips Makefile I
> had
> > problem with QA Issues,  so I added all the folders to FILES_${PN} and
> > FILES_${PN} but I still having problem.
> >
> > So I decided to start small, creating the folder structure and copy only
> > the binary files and after I will copy all the files using the
> do_install
> > function.
> >
> > But when I added the folders and I started to have problems with QA
> again.
> >
> > FILES_${PN} = " \
> >         ${sbindir}/* \
> >         ${sysconfdir}/* \
> >         ${sysconfdir}/opensips/* \
> >         ${libdir}/* \
> >         ${libdir}/opensips/* \
> >         ${libdir}/opensips/modules/* \
> >         "
> > Someone could help me with this problem?
> >
> >
> > Thank you very much
> >
> > Best Regards,
> >
> > Caio Pereira
> >
> >
> > ERROR: QA Issue: opensips: The compile log indicates that host include
> > and/or library paths were used.
> >          Please check the log
> >
> '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky
> > -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more
> information.
> > [compile-host-path]
> >
> >
> > ERROR: QA run found fatal errors. Please consider fixing them.
> > ERROR: Function failed: do_package_qa
> > ERROR: Logfile of failure stored in:
> >
> /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-
> > linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973 ERROR: Task
> 9
> >
> (/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-telephony/ope
> > nsips/ opensips_2.2.0.bb, do_package_qa) failed with exit code '1'
> >
> >
> > cat
> >
> /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-
> > linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973
> >
> > DEBUG: Python function read_subpackage_metadata finished
> > ERROR: QA Issue: opensips: The compile log indicates that host include
> > and/or library paths were used.
> >          Please check the log
> >
> '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky
> > -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more
> information.
> > [compile-host-path]
>
> Did you check the mentioned compile log?
>
> FYI a good reference for these QA checks is:
>
>
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-errors-and-warnings
>
> As mentioned there you should find somewhere in that log "is unsafe for
> cross-compilation" or "CROSS COMPILE Badness".
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
----------------------------------------------
Caio Pereira

--001a1147840af4c7970525d53081
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi Paul,<br><br></div>Thank you v=
ery much for your help.<br></div>I added INSANE_SKIP_${PN} +=3D &quot; libd=
ir compile-host-path&quot; because the instalation is different from /usr/l=
ib.<br><br></div>Thank you very much!<br><br></div>Regards,<br><br></div>Ca=
io Pereira<br><div><div><div>=C2=A0<br></div></div></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-11-25 20:26 GMT-02:00 =
Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.i=
ntel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">Hi Caio,<br>
<div><div class=3D"h5"><br>
On Tuesday 24 November 2015 11:48:13 Caio wrote:<br>
&gt; I&#39;m writing a recipe to a Sip proxy Opensips, but I&#39;m having p=
roblems with<br>
&gt; QA Issues.<br>
&gt; In the First time I tried to use make install from Opensips Makefile I=
 had<br>
&gt; problem with QA Issues,=C2=A0 so I added all the folders to FILES_${PN=
} and<br>
&gt; FILES_${PN} but I still having problem.<br>
&gt;<br>
&gt; So I decided to start small, creating the folder structure and copy on=
ly<br>
&gt; the binary files and after I will copy all the files using the=C2=A0 d=
o_install<br>
&gt; function.<br>
&gt;<br>
&gt; But when I added the folders and I started to have problems with QA ag=
ain.<br>
&gt;<br>
&gt; FILES_${PN} =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sbindir}/* \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}/* \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}/opensips/* \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/* \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/opensips/* \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/opensips/modules/* \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; Someone could help me with this problem?<br>
&gt;<br>
&gt;<br>
&gt; Thank you very much<br>
&gt;<br>
&gt; Best Regards,<br>
&gt;<br>
&gt; Caio Pereira<br>
&gt;<br>
&gt;<br>
&gt; ERROR: QA Issue: opensips: The compile log indicates that host include=
<br>
&gt; and/or library paths were used.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please check the log<br>
&gt; &#39;/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp=
-neon-poky<br>
&gt; -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile&#39; for more inf=
ormation.<br>
&gt; [compile-host-path]<br>
&gt;<br>
&gt;<br>
&gt; ERROR: QA run found fatal errors. Please consider fixing them.<br>
&gt; ERROR: Function failed: do_package_qa<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon=
-poky-<br>
&gt; linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973 ERROR: Ta=
sk 9<br>
&gt; (/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-telepho=
ny/ope<br>
</div></div>&gt; nsips/ <a href=3D"http://opensips_2.2.0.bb" rel=3D"norefer=
rer" target=3D"_blank">opensips_2.2.0.bb</a>, do_package_qa) failed with ex=
it code &#39;1&#39;<br>
<span class=3D"">&gt;<br>
&gt;<br>
&gt; cat<br>
&gt; /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon=
-poky-<br>
&gt; linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973<br>
&gt;<br>
&gt; DEBUG: Python function read_subpackage_metadata finished<br>
&gt; ERROR: QA Issue: opensips: The compile log indicates that host include=
<br>
&gt; and/or library paths were used.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please check the log<br>
&gt; &#39;/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp=
-neon-poky<br>
&gt; -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile&#39; for more inf=
ormation.<br>
&gt; [compile-host-path]<br>
<br>
</span>Did you check the mentioned compile log?<br>
<br>
FYI a good reference for these QA checks is:<br>
<br>
=C2=A0 <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-m=
anual.html#qa-errors-and-warnings" rel=3D"noreferrer" target=3D"_blank">htt=
p://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-errors-=
and-warnings</a><br>
<br>
As mentioned there you should find somewhere in that log &quot;is unsafe fo=
r<br>
cross-compilation&quot; or &quot;CROSS COMPILE Badness&quot;.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature">----------------------------------------------<br>Cai=
o Pereira</div>
</div>

--001a1147840af4c7970525d53081--
