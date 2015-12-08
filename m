Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BA54E007B2; Tue,  8 Dec 2015 08:01:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC63AE005A2
	for <yocto@yoctoproject.org>; Tue,  8 Dec 2015 08:01:05 -0800 (PST)
Received: by vkca188 with SMTP id a188so17442500vkc.0
	for <yocto@yoctoproject.org>; Tue, 08 Dec 2015 08:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3zZSJKDMlHNgblNLFPkP4/1Gv24Bhoo4gtYrfyutBpI=;
	b=pbrCefzZ3YKolJEvgvLtnX2vzMrEztubMtEN/ApN1udEDh8CgjqGyemF8nK2RB/oYD
	YUVUgYLZDAA0KZb3aBogS4vobonyDMtwYdAAZfKvW4+YslYJI9yRmSQwEGOYFlwc3982
	uE6JEd00WMLR7Z1xk+8DnTrI0ihrLcsJ1Q6bixAoFe3pin6tcwdmCPmKjzf27riQ3A1J
	RTpOQ86qMw16wW+nV1r3g6ObM+hGSshU7jiBKtrVE8EqdxVVdP/+WXq8BaPkaN8k0IGQ
	IQFp9GveG9m9kVHBhc7/pwbcX7jZQl1Kh9pZvVSU27OS9xTCjUinIvZan4rgY1wolXZo
	Qi8g==
MIME-Version: 1.0
X-Received: by 10.31.174.131 with SMTP id x125mr211663vke.136.1449590464722;
	Tue, 08 Dec 2015 08:01:04 -0800 (PST)
Received: by 10.31.82.193 with HTTP; Tue, 8 Dec 2015 08:01:04 -0800 (PST)
In-Reply-To: <7211338.biJDk4bQH6@peggleto-mobl.ger.corp.intel.com>
References: <CAJqtCybKFSzf2uhe3ox7LTExCOF+KGNGRHL_hecz6LipTKNmug@mail.gmail.com>
	<2180797.fvhLvehB0f@peggleto-mobl.ger.corp.intel.com>
	<CAJqtCyZWnGCqp4x8JSbVbj-ZhkCi_UXJ5OpmUdvn6cP-wRjnEA@mail.gmail.com>
	<7211338.biJDk4bQH6@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 8 Dec 2015 14:01:04 -0200
Message-ID: <CAJqtCyYYgZ70VnjvzX3o=nbACrXr13LkZTQwm4nKqZdhPiKpbw@mail.gmail.com>
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
X-List-Received-Date: Tue, 08 Dec 2015 16:01:07 -0000
Content-Type: multipart/alternative; boundary=001a1143fbe8b846f8052665149d

--001a1143fbe8b846f8052665149d
Content-Type: text/plain; charset=UTF-8

Paul,
 Ok, thank you for your elucidation.
This could be a prefix problem, because I'm using a make install from
Makefile.

I will find this problem and fix it.

Thank you very much.

Regards,

Caio Pereira



2015-12-01 14:56 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Caio,
>
> compile-host-path isn't about the path being different - it's about the
> path
> being something possibly bad i.e. on the host system. You really ought to
> fix
> that one rather than disable it.
>
> Cheers,
> Paul
>
> On Tue, 01 Dec 2015 10:21:03 Caio wrote:
> > Hi Paul,
> >
> > Thank you very much for your help.
> > I added INSANE_SKIP_${PN} += " libdir compile-host-path" because the
> > instalation is different from /usr/lib.
> >
> > Thank you very much!
> >
> > Regards,
> >
> > Caio Pereira
> >
> > 2015-11-25 20:26 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com
> >:
> > > Hi Caio,
> > >
> > > On Tuesday 24 November 2015 11:48:13 Caio wrote:
> > > > I'm writing a recipe to a Sip proxy Opensips, but I'm having problems
> > >
> > > with
> > >
> > > > QA Issues.
> > > > In the First time I tried to use make install from Opensips Makefile
> I
> > >
> > > had
> > >
> > > > problem with QA Issues,  so I added all the folders to FILES_${PN}
> and
> > > > FILES_${PN} but I still having problem.
> > > >
> > > > So I decided to start small, creating the folder structure and copy
> only
> > > > the binary files and after I will copy all the files using the
> > >
> > > do_install
> > >
> > > > function.
> > > >
> > > > But when I added the folders and I started to have problems with QA
> > >
> > > again.
> > >
> > > > FILES_${PN} = " \
> > > >
> > > >         ${sbindir}/* \
> > > >         ${sysconfdir}/* \
> > > >         ${sysconfdir}/opensips/* \
> > > >         ${libdir}/* \
> > > >         ${libdir}/opensips/* \
> > > >         ${libdir}/opensips/modules/* \
> > > >         "
> > > >
> > > > Someone could help me with this problem?
> > > >
> > > >
> > > > Thank you very much
> > > >
> > > > Best Regards,
> > > >
> > > > Caio Pereira
> > > >
> > > >
> > > > ERROR: QA Issue: opensips: The compile log indicates that host
> include
> > > > and/or library paths were used.
> > > >
> > > >          Please check the log
> > >
> > >
> '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-po
> > > ky>
> > > > -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more
> > >
> > > information.
> > >
> > > > [compile-host-path]
> > > >
> > > >
> > > > ERROR: QA run found fatal errors. Please consider fixing them.
> > > > ERROR: Function failed: do_package_qa
> > >
> > > > ERROR: Logfile of failure stored in:
> > >
> /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-pok
> > > y->
> > > > linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973 ERROR:
> Task
> > >
> > > 9
> > >
> > >
> (/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-telephony/o
> > > pe>
> > > > nsips/ opensips_2.2.0.bb, do_package_qa) failed with exit code '1'
> > > >
> > > >
> > > > cat
> > >
> > >
> /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-pok
> > > y->
> > > > linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973
> > > >
> > > > DEBUG: Python function read_subpackage_metadata finished
> > > > ERROR: QA Issue: opensips: The compile log indicates that host
> include
> > > > and/or library paths were used.
> > > >
> > > >          Please check the log
> > >
> > >
> '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-po
> > > ky>
> > > > -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more
> > >
> > > information.
> > >
> > > > [compile-host-path]
> > >
> > > Did you check the mentioned compile log?
> > >
> > > FYI a good reference for these QA checks is:
> > >
> > >
> > >
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-err
> > > ors-and-warnings
> > >
> > > As mentioned there you should find somewhere in that log "is unsafe for
> > > cross-compilation" or "CROSS COMPILE Badness".
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
----------------------------------------------
Caio Pereira

--001a1143fbe8b846f8052665149d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Paul,<br></div><div>=C2=A0Ok, thank you for your=
 elucidation.<br></div><div>This could be a prefix problem, because I&#39;m=
 using a make install from Makefile.<br><br></div><div>I will find this pro=
blem and fix it.<br><br></div><div>Thank you very much.<br></div><div><br><=
/div>Regards,<br><br></div>Caio Pereira<br><div><br><br></div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-12-01 14:56 GMT-02:=
00 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linu=
x.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hi Caio,<br>
<br>
compile-host-path isn&#39;t about the path being different - it&#39;s about=
 the path<br>
being something possibly bad i.e. on the host system. You really ought to f=
ix<br>
that one rather than disable it.<br>
<br>
Cheers,<br>
Paul<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tue, 01 Dec 2015 10:21:03 Caio wrote:<br>
&gt; Hi Paul,<br>
&gt;<br>
&gt; Thank you very much for your help.<br>
&gt; I added INSANE_SKIP_${PN} +=3D &quot; libdir compile-host-path&quot; b=
ecause the<br>
&gt; instalation is different from /usr/lib.<br>
&gt;<br>
&gt; Thank you very much!<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Caio Pereira<br>
&gt;<br>
&gt; 2015-11-25 20:26 GMT-02:00 Paul Eggleton &lt;<a href=3D"mailto:paul.eg=
gleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;:<br>
&gt; &gt; Hi Caio,<br>
&gt; &gt;<br>
&gt; &gt; On Tuesday 24 November 2015 11:48:13 Caio wrote:<br>
&gt; &gt; &gt; I&#39;m writing a recipe to a Sip proxy Opensips, but I&#39;=
m having problems<br>
&gt; &gt;<br>
&gt; &gt; with<br>
&gt; &gt;<br>
&gt; &gt; &gt; QA Issues.<br>
&gt; &gt; &gt; In the First time I tried to use make install from Opensips =
Makefile I<br>
&gt; &gt;<br>
&gt; &gt; had<br>
&gt; &gt;<br>
&gt; &gt; &gt; problem with QA Issues,=C2=A0 so I added all the folders to =
FILES_${PN} and<br>
&gt; &gt; &gt; FILES_${PN} but I still having problem.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; So I decided to start small, creating the folder structure a=
nd copy only<br>
&gt; &gt; &gt; the binary files and after I will copy all the files using t=
he<br>
&gt; &gt;<br>
&gt; &gt; do_install<br>
&gt; &gt;<br>
&gt; &gt; &gt; function.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; But when I added the folders and I started to have problems =
with QA<br>
&gt; &gt;<br>
&gt; &gt; again.<br>
&gt; &gt;<br>
&gt; &gt; &gt; FILES_${PN} =3D &quot; \<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sbindir}/* \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}/* \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}/opensips/* \<=
br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/* \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/opensips/* \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/opensips/modules/=
* \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Someone could help me with this problem?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Thank you very much<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Best Regards,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Caio Pereira<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ERROR: QA Issue: opensips: The compile log indicates that ho=
st include<br>
&gt; &gt; &gt; and/or library paths were used.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please check the log<br>
&gt; &gt;<br>
&gt; &gt; &#39;/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2h=
f-vfp-neon-po<br>
&gt; &gt; ky&gt;<br>
&gt; &gt; &gt; -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile&#39; fo=
r more<br>
&gt; &gt;<br>
&gt; &gt; information.<br>
&gt; &gt;<br>
&gt; &gt; &gt; [compile-host-path]<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ERROR: QA run found fatal errors. Please consider fixing the=
m.<br>
&gt; &gt; &gt; ERROR: Function failed: do_package_qa<br>
&gt; &gt;<br>
&gt; &gt; &gt; ERROR: Logfile of failure stored in:<br>
&gt; &gt; /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp=
-neon-pok<br>
&gt; &gt; y-&gt;<br>
&gt; &gt; &gt; linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973=
 ERROR: Task<br>
&gt; &gt;<br>
&gt; &gt; 9<br>
&gt; &gt;<br>
&gt; &gt; (/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-te=
lephony/o<br>
&gt; &gt; pe&gt;<br>
&gt; &gt; &gt; nsips/ <a href=3D"http://opensips_2.2.0.bb" rel=3D"noreferre=
r" target=3D"_blank">opensips_2.2.0.bb</a>, do_package_qa) failed with exit=
 code &#39;1&#39;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; cat<br>
&gt; &gt;<br>
&gt; &gt; /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp=
-neon-pok<br>
&gt; &gt; y-&gt;<br>
&gt; &gt; &gt; linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973=
<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; DEBUG: Python function read_subpackage_metadata finished<br>
&gt; &gt; &gt; ERROR: QA Issue: opensips: The compile log indicates that ho=
st include<br>
&gt; &gt; &gt; and/or library paths were used.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please check the log<br>
&gt; &gt;<br>
&gt; &gt; &#39;/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2h=
f-vfp-neon-po<br>
&gt; &gt; ky&gt;<br>
&gt; &gt; &gt; -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile&#39; fo=
r more<br>
&gt; &gt;<br>
&gt; &gt; information.<br>
&gt; &gt;<br>
&gt; &gt; &gt; [compile-host-path]<br>
&gt; &gt;<br>
&gt; &gt; Did you check the mentioned compile log?<br>
&gt; &gt;<br>
&gt; &gt; FYI a good reference for these QA checks is:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/re=
f-manual.html#qa-err" rel=3D"noreferrer" target=3D"_blank">http://www.yocto=
project.org/docs/current/ref-manual/ref-manual.html#qa-err</a><br>
&gt; &gt; ors-and-warnings<br>
&gt; &gt;<br>
&gt; &gt; As mentioned there you should find somewhere in that log &quot;is=
 unsafe for<br>
&gt; &gt; cross-compilation&quot; or &quot;CROSS COMPILE Badness&quot;.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Paul<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt;<br>
&gt; &gt; Paul Eggleton<br>
&gt; &gt; Intel Open Source Technology Centre<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature">----------------------------------------------<br>Caio=
 Pereira</div>
</div>

--001a1143fbe8b846f8052665149d--
