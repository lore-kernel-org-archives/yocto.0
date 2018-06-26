Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 211FFE011C9; Tue, 26 Jun 2018 02:28:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9AD5E00DD0
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 02:28:02 -0700 (PDT)
Received: by mail-ot0-f181.google.com with SMTP id i19-v6so18278878otk.10
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 02:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rO+vppRWVN3Mdkshg54MWstUzTQxBy2+a+aiZFA2hW0=;
	b=RqgXJxXhtJZqJX+v5wjiY0puIs6EW9OFQiRAbs+MizH0VVY/yeSZMpCRq/U4ES40oT
	Z7o09b0jK7vCz2WXHH2+iRcrDbH6w/GieCNe3dWTJtIdxaWQnVroABmTVWlrr2V/DucQ
	mc2V+V2IA/AdFGXu2bougkMzSQEPkfUUDw3XbCPM5GR49LKab9C6lKwfcdWbOVc4HPNZ
	DeNIyCveBEC7Ugrq8h052sRTOt35afB6qKn8Fz3cYXq0LV6kBy9cgxrHKYdvb/3j/q5Q
	Q2kRx3AeQdapVLDMuGtOyjun/LXOQWz+c1CVzjVJNkOR2Ifs7ZX1yvrZtkZzH2H19JfA
	Zt3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rO+vppRWVN3Mdkshg54MWstUzTQxBy2+a+aiZFA2hW0=;
	b=BomiqdgSXczgHQKlx52M7UQJ5iofOJSw8yOiHeAWLe4kiYL5QaWjtuwKg7Z4FQoxsl
	PJ9hoMsBiL3rNW92VTe4kPZQP4VdL2/498K1hxvmQhYFZMQ7EopH/h3umIJSlLooAts1
	vdA8o4ewHM/+EcebeP6vQ94gm+HLknkT5jFrLAg5UrhRK94zsjk9KM2WrxZdZz09O/6Y
	Y6I8nE3vZ9a+ticwMWW2nrFfpJeQbrTj4cxWDzALgIF4to8qXLjcPqLpLBUPpiqdqu2B
	weMIde6GYZBY0mhmrNJ1BsaNKLmPt6ykqbHgzNNf+j3cGP1Hb7Mky3BjPC6v7VFcVmqD
	l/PQ==
X-Gm-Message-State: APt69E0TYgt2F86dXj4fUjbGnFLuVw/1xK9N5FWh1FYxlFDUWP7IgLDq
	6vLwgxhp8t84Y0eWW3uko35M8+W4OupDK6tuYTk=
X-Google-Smtp-Source: AAOMgpc6Z/ZI3fOp90yKRR5qQ7ls3KRWWf+KTRMTMbi8isHd+HwRiDciGhiPdA1900pETjdxT8jZLwELXne4Fhgz7H0=
X-Received: by 2002:a9d:368a:: with SMTP id h10-v6mr336283otc.19.1530005282262;
	Tue, 26 Jun 2018 02:28:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:5d01:0:0:0:0:0 with HTTP; Tue, 26 Jun 2018 02:28:01
	-0700 (PDT)
In-Reply-To: <CAJTo0LaMiuXU8d7CWdXd5XHQvf_FpXjrWxr6fybTmf6-r-hGQA@mail.gmail.com>
References: <CAEhQi8k+US+M1MjAaVhnSOdsUxggTMKNAdjsq7fe095H2yyrBQ@mail.gmail.com>
	<CAJTo0LaMiuXU8d7CWdXd5XHQvf_FpXjrWxr6fybTmf6-r-hGQA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 26 Jun 2018 11:28:01 +0200
Message-ID: <CAEhQi8mUDaqu-kF-A6ZhLuEoX267bXeT1pm5tB9ykdO1=oEf+A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: busybox: adding task to run before do_configure
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
X-List-Received-Date: Tue, 26 Jun 2018 09:28:04 -0000
Content-Type: multipart/alternative; boundary="0000000000005a9625056f881de4"

--0000000000005a9625056f881de4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your answer. So this is a simplified implementation so you are
right. I have based my implementation on a class used for kernel you can
find the original implementation here
https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/classe=
s/kernel-resin.bbclass.
I am not sure I understand it fully but the error is not reproducible
there. You can modify the config in two ways you can define areas to modify
in the config but you can also define a new config to base it on and I
thought that the deptasks was need to make sure that configured is called
again. But maybe you are right there is no reason for it. But I am
still curious how it can affect the staging part of install task since it
is not affecting the kernel and I am not doing anything in the tasks.

BR
Mans Zigher

2018-06-25 20:03 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

> AFAIK, you don't need the deptasks as the before/after statements will
> insert the task in the right place.
>
> Ross
>
> On 25 June 2018 at 18:59, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrote:
> > Hi,
> >
> > I have created this simple class file
> >
> > python do_busybox_foo() {
> >     bb.warn("BUSYBOX: foo task!")
> > }
> > addtask busybox_foo after do_configure before do_compile
> > do_busybox_foo[deptask] +=3D "do_configure"
> >
> > do_compile[deptask] +=3D "do_busybox_foo"
> >
> > And created a busybox_%.bbappend inherit this class. When running this =
I
> am
> > seeing the following error
> >
> > WARNING: busybox-1.24.1-r0 do_busybox_foo: BUSYBOX: foo task!
> > ERROR: busybox-1.24.1-r0 do_install: Error executing a python function =
in
> > exec_python_func() autogenerated:
> >
> > The stack trace of python calls that resulted in this exception/failure
> was:
> > File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
> >      0001:
> >  *** 0002:extend_recipe_sysroot(d)
> >      0003:
> > File: '/home/user/workdir/layers/poky/meta/classes/staging.bbclass',
> lineno:
> > 565, function: extend_recipe_sysroot
> >      0561:                    dest =3D newmanifest[l]
> >      0562:                    if l.endswith("/"):
> >      0563:                        staging_copydir(l, targetdir, dest,
> > seendirs)
> >      0564:                        continue
> >  *** 0565:                    staging_copyfile(l, targetdir, dest,
> > postinsts, seendirs)
> >      0566:
> >      0567:    bb.note("Installed into sysroot: %s" % str(msg_adding))
> >      0568:    bb.note("Skipping as already exists in sysroot: %s" %
> > str(msg_exists))
> >      0569:
> > File: '/home/user/workdir/layers/poky/meta/classes/staging.bbclass',
> lineno:
> > 151, function: staging_copyfile
> >      0147:        os.symlink(linkto, dest)
> >      0148:        #bb.warn(c)
> >      0149:    else:
> >      0150:        try:
> >  *** 0151:            os.link(c, dest)
> >      0152:        except OSError as err:
> >      0153:            if err.errno =3D=3D errno.EXDEV:
> >      0154:                bb.utils.copyfile(c, dest)
> >      0155:            else:
> > Exception: FileExistsError: [Errno 17] File exists:
> > '/home/user/workdir/build/tmp/sysroots-components/
> cortexa7hf-neon/glibc-initial/usr/include/time.h'
> > ->
> > '/home/user/workdir/build/tmp/work/cortexa7hf-neon-target-
> linux-gnueabi/busybox/1.24.1-r0/recipe-sysroot/usr/include/time.h'
> >
> > ERROR: busybox-1.24.1-r0 do_install: Function failed:
> extend_recipe_sysroot
> > ERROR: Logfile of failure stored in:
> > /home/user/workdir/build/tmp/work/cortexa7hf-neon-target-
> linux-gnueabi/busybox/1.24.1-r0/temp/log.do_install.30635
> > ERROR: Task
> > (/home/user/workdir/layers/poky/meta/recipes-core/
> busybox/busybox_1.24.1.bb:do_install)
> > failed with exit code '1'
> >
> > I have tried to debug this because I cannot understand why it affects t=
he
> > staging in the install task. By removing the do_busybox_foo[deptask] I
> > prevent this error. Any advise would be appreciated.
> >
> > BR
> > M=C3=A5ns Zigher
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--0000000000005a9625056f881de4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thanks for your answer. So this is =
a simplified implementation so you are right. I have based my implementatio=
n on a class used for kernel you can find the original implementation here=
=C2=A0<a href=3D"https://github.com/resin-os/meta-resin/blob/master/meta-re=
sin-common/classes/kernel-resin.bbclass">https://github.com/resin-os/meta-r=
esin/blob/master/meta-resin-common/classes/kernel-resin.bbclass</a>. I am n=
ot sure I understand it fully but the error is not reproducible there. You =
can modify the config in two ways you can define areas to modify in the con=
fig but you can also define a new config to base it on and I thought that t=
he deptasks was need to make sure that configured is called again. But mayb=
e you are right there is no reason for it. But I am still=C2=A0curious how =
it can affect the staging part of install task since it is not affecting th=
e kernel and I am not doing anything in the tasks.</div><div><br></div><div=
>BR</div><div>Mans Zigher</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2018-06-25 20:03 GMT+02:00 Burton, Ross <span dir=3D"lt=
r">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burt=
on@intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">AFAIK, you d=
on&#39;t need the deptasks as the before/after statements will<br>
insert the task in the right place.<br>
<br>
Ross<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 25 June 2018 at 18:59, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.zighe=
r@gmail.com">mans.zigher@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have created this simple class file<br>
&gt;<br>
&gt; python do_busybox_foo() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0bb.warn(&quot;BUSYBOX: foo task!&quot;)<br>
&gt; }<br>
&gt; addtask busybox_foo after do_configure before do_compile<br>
&gt; do_busybox_foo[deptask] +=3D &quot;do_configure&quot;<br>
&gt;<br>
&gt; do_compile[deptask] +=3D &quot;do_busybox_foo&quot;<br>
&gt;<br>
&gt; And created a busybox_%.bbappend inherit this class. When running this=
 I am<br>
&gt; seeing the following error<br>
&gt;<br>
&gt; WARNING: busybox-1.24.1-r0 do_busybox_foo: BUSYBOX: foo task!<br>
&gt; ERROR: busybox-1.24.1-r0 do_install: Error executing a python function=
 in<br>
&gt; exec_python_func() autogenerated:<br>
&gt;<br>
&gt; The stack trace of python calls that resulted in this exception/failur=
e was:<br>
&gt; File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function:=
 &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;=C2=A0 *** 0002:extend_recipe_sysroot(d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt; File: &#39;/home/user/workdir/layers/<wbr>poky/meta/classes/staging.<w=
br>bbclass&#39;, lineno:<br>
&gt; 565, function: extend_recipe_sysroot<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0561:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 dest =3D newmanifest[l]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0562:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if l.endswith(&quot;/&quot;):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0563:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 staging_copydir(l, targetdir, dest,<=
br>
&gt; seendirs)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0564:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue<br>
&gt;=C2=A0 *** 0565:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 staging_copyfile(l, targetdir, dest,<br>
&gt; postinsts, seendirs)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0566:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0567:=C2=A0 =C2=A0 bb.note(&quot;Installed into sy=
sroot: %s&quot; % str(msg_adding))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0568:=C2=A0 =C2=A0 bb.note(&quot;Skipping as alrea=
dy exists in sysroot: %s&quot; %<br>
&gt; str(msg_exists))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0569:<br>
&gt; File: &#39;/home/user/workdir/layers/<wbr>poky/meta/classes/staging.<w=
br>bbclass&#39;, lineno:<br>
&gt; 151, function: staging_copyfile<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0147:=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.symlink(linkto=
, dest)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0148:=C2=A0 =C2=A0 =C2=A0 =C2=A0 #bb.warn(c)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0149:=C2=A0 =C2=A0 else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0150:=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
&gt;=C2=A0 *** 0151:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.link(c, de=
st)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0152:=C2=A0 =C2=A0 =C2=A0 =C2=A0 except OSError as=
 err:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0153:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if =
err.errno =3D=3D errno.EXDEV:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0154:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 bb.utils.copyfile(c, dest)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0155:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 els=
e:<br>
&gt; Exception: FileExistsError: [Errno 17] File exists:<br>
&gt; &#39;/home/user/workdir/build/tmp/<wbr>sysroots-components/<wbr>cortex=
a7hf-neon/glibc-initial/<wbr>usr/include/time.h&#39;<br>
&gt; -&gt;<br>
&gt; &#39;/home/user/workdir/build/tmp/<wbr>work/cortexa7hf-neon-target-<wb=
r>linux-gnueabi/busybox/1.24.1-<wbr>r0/recipe-sysroot/usr/include/<wbr>time=
.h&#39;<br>
&gt;<br>
&gt; ERROR: busybox-1.24.1-r0 do_install: Function failed: extend_recipe_sy=
sroot<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/user/workdir/build/tmp/<wbr>work/cortexa7hf-neon-target-<wbr>lin=
ux-gnueabi/busybox/1.24.1-<wbr>r0/temp/log.do_install.30635<br>
&gt; ERROR: Task<br>
&gt; (/home/user/workdir/layers/<wbr>poky/meta/recipes-core/<wbr>busybox/bu=
sybox_1.24.1.bb:do_<wbr>install)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; I have tried to debug this because I cannot understand why it affects =
the<br>
&gt; staging in the install task. By removing the do_busybox_foo[deptask] I=
<br>
&gt; prevent this error. Any advise would be appreciated.<br>
&gt;<br>
&gt; BR<br>
&gt; M=C3=A5ns Zigher<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--0000000000005a9625056f881de4--
