Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC0F3E00720; Tue, 25 Oct 2016 10:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B844EE00529
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 10:49:29 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id 12so786772uas.3
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 10:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tBYjHv8Uye3CyM48ZmzR71NVUU5xmB0+DJEFYy5N0pQ=;
	b=aHGlHcyX8VmGzV6EVhBMn7n/ZooLV8A6zKDqETPKjZ7uYYAIWAaSAeBjuAtTV2Mo12
	FG0ANrw9H5rtxnq5rP/4IZuaX0QULuMK0N+q3CuqkCkqVDLawq+xZn6LBtFVt7+BiGY+
	r35QblXF5mtVlPsgehBVDCQrOzFJgtCRdlBAmnLVW8SYvZPggSR8rOuXQEG9F4mjnojH
	xtr++zwt7JchtfFFFj2eyaBM3lBPO0paADT47mo3p5oC3taG9rNAm7JjTMl7X706aSVH
	eIOOazWuR+xaNBH7IypdDVAM2InZ89BFtIJsmjHVlh2Q1/sMXvxV651bZcX1Z23DSl9R
	Sg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tBYjHv8Uye3CyM48ZmzR71NVUU5xmB0+DJEFYy5N0pQ=;
	b=gQsdbNGm4899IG6pZV3N9azLWB+oTmcypvikhmForbPZ9D4kJmLprPUA4fEcsNvWYn
	s9Mr/fCxe1AYPwSsR9C+oVlIr+LSZKgWtJjN55+IUTUiX4n7OvyO50qbICqjVwIhLL2L
	SXgGczeXDdeSLuXDLqTEPc3inZNgXaqUlAhfLFaSnsvzYE34D1Bfm0QaOQEdb/PrBwqt
	R6biAggXpoXwVAExmoCF0FGhWOJZvpWoh3mfkTSwkTZDLYqZ4iE+ItEPh0bWNiI4FkPk
	fwxwYDxKzXbs91BsXx9iVVaksVTekwYmxsZ1nnSz+LbyjCqsx/bkIqqUymYGEoxgjzaL
	tuqA==
X-Gm-Message-State: ABUngvdn4VmMtVkPvGqNVTn5RGwMgXuFktlalk2gY5vv1/Y6kgOuM/c+/i1/Bo+ayYtiKxq178HMcq35kBR/jQ==
X-Received: by 10.159.41.131 with SMTP id s3mr15751552uas.178.1477417768872;
	Tue, 25 Oct 2016 10:49:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.67.194 with HTTP; Tue, 25 Oct 2016 10:49:28 -0700 (PDT)
In-Reply-To: <96de1646-d152-49fa-7e6c-0fe0dd0a3acf@windriver.com>
References: <20161024221918.39994-1-todor.minchev@linux.intel.com>
	<9fca01e8-19ef-edc2-3a6d-6e5920fdc77c@windriver.com>
	<1477352804.49237.34.camel@linux.intel.com>
	<96de1646-d152-49fa-7e6c-0fe0dd0a3acf@windriver.com>
From: Brian Avery <avery.brian@gmail.com>
Date: Tue, 25 Oct 2016 10:49:28 -0700
Message-ID: <CAKV_0eg9RvC0fnbrK5quPzsuGhhmtvu23CSgD3Ujn=8kZvEHZg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org, Todor Minchev <todor.minchev@linux.intel.com>
Subject: Re: [PATCH 1/1] runqemu: add user mode (SLIRP) support to x86 QEMU targets
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
X-List-Received-Date: Tue, 25 Oct 2016 17:50:08 -0000
Content-Type: multipart/alternative; boundary=94eb2c08046a4c7252053fb42111

--94eb2c08046a4c7252053fb42111
Content-Type: text/plain; charset=UTF-8

Hi,

This doesn't default to slirp, it just allows it as an option.

In particular, on CROPS containers on Windows 10 and Mac OSX  the
hypervisor is *not* a linux kernel. This means that the only way we can run
qemu in the container for testing/debugging is to run it in slirp mode
.since there is no tun/tap device or driver.

So, given that we
1) are not defaulting to slirp and are merely enabling it
2) need slirp mode to be able to run in a CROPS container setting

I think this makes sense.

-Brian
an intel employee


On Mon, Oct 24, 2016 at 5:16 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 10/24/16 6:46 PM, Todor Minchev wrote:
> > On Mon, 2016-10-24 at 18:15 -0500, Mark Hatle wrote:
> >> On 10/24/16 5:19 PM, Todor Minchev wrote:
> >>> Using 'slirp' as a command line option to runqemu will start QEMU
> >>> with user mode networking instead of creating tun/tap devices.
> >>> SLIRP does not require root access. By default port 2222 on the
> >>> host will be mapped to port 22 in the guest. The default port
> >>> mapping can be overwritten with the QB_SLIRP_OPT variable e.g.
> >>>
> >>> QB_SLIRP_OPT = "-net nic,model=e1000 -net user,hostfwd=tcp::2222-:22"
> >>
> >> In the past patches like this have been rejected for performance and
> other
> >> reasons.
> >
> > Performance is not ideal with SLIRP, but should be sufficient for basic
> > ssh access to the guest. Could you please elaborate on the other reasons
> > why having this is a bad idea?
>
> You'd have to go back in the archives.  Performance was the main reason I
> remember being discussed at the time.
>
> I don't remember the others, and as I said, I'm not a fan of requiring
> root, but
> the community decided sudo approach was better as long as there was a way
> to
> avoid it.
>
> Changing the default will likely require email to the oe-core list and/or
> oe-architecture list...
>
> >> While I don't particularly like requiring sudo access for runqemu,
> >> adding the 'slirp' option will allow someone w/o root/sudo to be able
> to run it.
> >
> > The goal was to be able to run a QEMU image and provide basic networking
> > without requiring root access. Is there any reason why running runqemu
> > w/o root/sudo access should be discouraged?
>
> As long as you can pass in slirp (and it's not the default) then I believe
> your
> requirement and the community direction is preserved.
>
> >> Otherwise, if there is something you can do to make slirp work better
> (when
> >> enabled), that is more likely to be accepted.
> >
> > Similar SLIRP support has been already accepted for qemuarm64 with
> > commit 9b0a94cb
>
> Support for slirp is good, it's defaulting to slirp that has been rejected
> in
> the past by the community.
>
> > --Todor
> >
> > Intel Open Source Technology Center
> >
> >> --Mark
> >>
> >>> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> >>> ---
> >>>  meta/conf/machine/include/qemuboot-x86.inc | 1 +
> >>>  scripts/runqemu                            | 3 ++-
> >>>  2 files changed, 3 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/meta/conf/machine/include/qemuboot-x86.inc
> b/meta/conf/machine/include/qemuboot-x86.inc
> >>> index 06ac983..0870294 100644
> >>> --- a/meta/conf/machine/include/qemuboot-x86.inc
> >>> +++ b/meta/conf/machine/include/qemuboot-x86.inc
> >>> @@ -13,3 +13,4 @@ QB_AUDIO_OPT = "-soundhw ac97,es1370"
> >>>  QB_KERNEL_CMDLINE_APPEND = "vga=0 uvesafb.mode_option=640x480-32
> oprofile.timer=1 uvesafb.task_timeout=-1"
> >>>  # Add the 'virtio-rng-pci' device otherwise the guest may run out of
> entropy
> >>>  QB_OPT_APPEND = "-vga vmware -show-cursor -usb -usbdevice tablet
> -device virtio-rng-pci"
> >>> +QB_SLIRP_OPT = "-net nic,model=e1000 -net user,hostfwd=tcp::2222-:22"
> >>> diff --git a/scripts/runqemu b/scripts/runqemu
> >>> index dbe17ab..6952f32 100755
> >>> --- a/scripts/runqemu
> >>> +++ b/scripts/runqemu
> >>> @@ -542,7 +542,8 @@ class BaseConfig(object):
> >>>      def check_and_set(self):
> >>>          """Check configs sanity and set when needed"""
> >>>          self.validate_paths()
> >>> -        check_tun()
> >>> +        if not self.slirp_enabled:
> >>> +            check_tun()
> >>>          # Check audio
> >>>          if self.audio_enabled:
> >>>              if not self.get('QB_AUDIO_DRV'):
> >>>
> >>
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c08046a4c7252053fb42111
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>This doesn&#39;t default to s=
lirp, it just allows it as an option.</div><div><br></div><div>In particula=
r, on CROPS containers on Windows 10 and Mac OSX =C2=A0the hypervisor is *n=
ot* a linux kernel. This means that the only way we can run qemu in the con=
tainer for testing/debugging is to run it in slirp mode .since there is no =
tun/tap device or driver.</div><div><br></div><div>So, given that we=C2=A0<=
/div><div>1) are not defaulting to slirp and are merely enabling it</div><d=
iv>2) need slirp mode to be able to run in a CROPS container setting</div><=
div><br></div><div>I think this makes sense.</div><div><br></div><div>-Bria=
n</div><div>an intel employee</div><div>=C2=A0</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Mon, Oct 24, 2016 at 5:16 PM, M=
ark Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriver.com"=
 target=3D"_blank">mark.hatle@windriver.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span class=3D"">On 10/24/16 6:46 PM, Todor Minche=
v wrote:<br>
&gt; On Mon, 2016-10-24 at 18:15 -0500, Mark Hatle wrote:<br>
&gt;&gt; On 10/24/16 5:19 PM, Todor Minchev wrote:<br>
&gt;&gt;&gt; Using &#39;slirp&#39; as a command line option to runqemu will=
 start QEMU<br>
&gt;&gt;&gt; with user mode networking instead of creating tun/tap devices.=
<br>
&gt;&gt;&gt; SLIRP does not require root access. By default port 2222 on th=
e<br>
&gt;&gt;&gt; host will be mapped to port 22 in the guest. The default port<=
br>
&gt;&gt;&gt; mapping can be overwritten with the QB_SLIRP_OPT variable e.g.=
<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; QB_SLIRP_OPT =3D &quot;-net nic,model=3De1000 -net user,hostfw=
d=3Dtcp::2222-:22&quot;<br>
&gt;&gt;<br>
&gt;&gt; In the past patches like this have been rejected for performance a=
nd other<br>
&gt;&gt; reasons.<br>
&gt;<br>
&gt; Performance is not ideal with SLIRP, but should be sufficient for basi=
c<br>
&gt; ssh access to the guest. Could you please elaborate on the other reaso=
ns<br>
&gt; why having this is a bad idea?<br>
<br>
</span>You&#39;d have to go back in the archives.=C2=A0 Performance was the=
 main reason I<br>
remember being discussed at the time.<br>
<br>
I don&#39;t remember the others, and as I said, I&#39;m not a fan of requir=
ing root, but<br>
the community decided sudo approach was better as long as there was a way t=
o<br>
avoid it.<br>
<br>
Changing the default will likely require email to the oe-core list and/or<b=
r>
oe-architecture list...<br>
<span class=3D""><br>
&gt;&gt; While I don&#39;t particularly like requiring sudo access for runq=
emu,<br>
&gt;&gt; adding the &#39;slirp&#39; option will allow someone w/o root/sudo=
 to be able to run it.<br>
&gt;<br>
&gt; The goal was to be able to run a QEMU image and provide basic networki=
ng<br>
&gt; without requiring root access. Is there any reason why running runqemu=
<br>
&gt; w/o root/sudo access should be discouraged?<br>
<br>
</span>As long as you can pass in slirp (and it&#39;s not the default) then=
 I believe your<br>
requirement and the community direction is preserved.<br>
<span class=3D""><br>
&gt;&gt; Otherwise, if there is something you can do to make slirp work bet=
ter (when<br>
&gt;&gt; enabled), that is more likely to be accepted.<br>
&gt;<br>
&gt; Similar SLIRP support has been already accepted for qemuarm64 with<br>
&gt; commit 9b0a94cb<br>
<br>
</span>Support for slirp is good, it&#39;s defaulting to slirp that has bee=
n rejected in<br>
the past by the community.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; --Todor<br>
&gt;<br>
&gt; Intel Open Source Technology Center<br>
&gt;<br>
&gt;&gt; --Mark<br>
&gt;&gt;<br>
&gt;&gt;&gt; Signed-off-by: Todor Minchev &lt;<a href=3D"mailto:todor.minch=
ev@linux.intel.com">todor.minchev@linux.intel.com</a><wbr>&gt;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;=C2=A0 meta/conf/machine/include/<wbr>qemuboot-x86.inc | 1 +<br=
>
&gt;&gt;&gt;=C2=A0 scripts/runqemu=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 ++-<br>
&gt;&gt;&gt;=C2=A0 2 files changed, 3 insertions(+), 1 deletion(-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git a/meta/conf/machine/include/<wbr>qemuboot-x86.inc b=
/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
&gt;&gt;&gt; index 06ac983..0870294 100644<br>
&gt;&gt;&gt; --- a/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
&gt;&gt;&gt; +++ b/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
&gt;&gt;&gt; @@ -13,3 +13,4 @@ QB_AUDIO_OPT =3D &quot;-soundhw ac97,es1370&=
quot;<br>
&gt;&gt;&gt;=C2=A0 QB_KERNEL_CMDLINE_APPEND =3D &quot;vga=3D0 uvesafb.mode_=
option=3D640x480-32 oprofile.timer=3D1 uvesafb.task_timeout=3D-1&quot;<br>
&gt;&gt;&gt;=C2=A0 # Add the &#39;virtio-rng-pci&#39; device otherwise the =
guest may run out of entropy<br>
&gt;&gt;&gt;=C2=A0 QB_OPT_APPEND =3D &quot;-vga vmware -show-cursor -usb -u=
sbdevice tablet -device virtio-rng-pci&quot;<br>
&gt;&gt;&gt; +QB_SLIRP_OPT =3D &quot;-net nic,model=3De1000 -net user,hostf=
wd=3Dtcp::2222-:22&quot;<br>
&gt;&gt;&gt; diff --git a/scripts/runqemu b/scripts/runqemu<br>
&gt;&gt;&gt; index dbe17ab..6952f32 100755<br>
&gt;&gt;&gt; --- a/scripts/runqemu<br>
&gt;&gt;&gt; +++ b/scripts/runqemu<br>
&gt;&gt;&gt; @@ -542,7 +542,8 @@ class BaseConfig(object):<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 def check_and_set(self):<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Check conf=
igs sanity and set when needed&quot;&quot;&quot;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.validate_paths()<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 check_tun()<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not self.slirp_enabled:<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 check_tun()<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Check audio<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.audio_enabled:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not self.ge=
t(&#39;QB_AUDIO_DRV&#39;):<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--94eb2c08046a4c7252053fb42111--
