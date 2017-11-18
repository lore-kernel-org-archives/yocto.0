Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C475AE00D18; Sat, 18 Nov 2017 10:47:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E65CAE00C97
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 10:47:05 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id j16so4306091pgn.9
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 10:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FwThEG/heu7dcj8Q/mocOce71OZmxIqhgJRAzxdS0nM=;
	b=Y6/L7neMEzALcjfAUL1JYaFcLZ6UVeqm7xLPrgh3ahuZ9k00P+OzyuLu/CIdR+Rtvg
	vLxvtQpjNegg7KSaKbLRO3fa6DZnZKu+cxJPZbcjatmRV6jK3w9o3e1cQGZGgichLhzz
	OCtHUNQRXHVRp1a8Q7b8nlPgm+SL2hsmOdFpMIaOHVN16SSQ4ARM/Vj/qYJqWBbTEuUW
	gvl+V26Ztq96vDFfYZzZxv1i0MyXww6HwjHbRbgZXWdfRzZFvMHNdutoZ1Nucdx0FvZc
	EW5PWQTT+NEw0l7zFvjRC9R9hKhVzZ6ioIo731S2heLy0QxTFK7doWVd0HIwXwXuDrfi
	/ZsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FwThEG/heu7dcj8Q/mocOce71OZmxIqhgJRAzxdS0nM=;
	b=AR7q0qMf0TSBZbvEDtplQfKDb5yu2yxX8QANATRGWkQLR9fxoQW4J22UlFacPgGEhZ
	GQ1cYD2u44kYxdt3PV08bvOAayZfPfXuqo8XojFVC5Cgcqp8FJ5IMOj6KGczGI+DHPs/
	yAzhC159X2Md7MYA57F6cJeSGt6xZLenXl0c9Kf9CKqkiykBqLs+w8MT2x7vlmL8GD/R
	TCr5BxHMrDYNjL+jkXyIKbksKWQUM7d/CS6rDuWP7foxaD/BZN635OwQlkYm15pxNVqH
	ysgltziPWORFPNntjbBPg0msjepSlSVeT+0hLmcWjXltPSerUxLkGxhn16fdCv0gLuv8
	3gMw==
X-Gm-Message-State: AJaThX5Mmud1r9B023Cc0G14SSEY59L2UP8EXeaJAc9yMYMdmw5XClHq
	RJkRswlxvM76j9OHyI5NHt2zI0Kwzl5kYVG7MohfHw==
X-Google-Smtp-Source: AGs4zMbie1RGQkGhKOfmeq0tf6yqY0ypnayOQ6UJPwQh9XkfgLC+BnJqAqaXDggyVXiyZKUFrdXMp2G61PDP0isg8Y4=
X-Received: by 10.99.130.74 with SMTP id w71mr8601074pgd.31.1511030825320;
	Sat, 18 Nov 2017 10:47:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sat, 18 Nov 2017 10:47:04 -0800 (PST)
In-Reply-To: <CAPb0b+O6i=icrjgZ1XXLDUskpUx_qXukMaux2N7yWSaW5BufZw@mail.gmail.com>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
	<CALXw4G7YnNn=2ZmCAbUUNrvrvcii0_7tqB4-DAix+meh_SxFyQ@mail.gmail.com>
	<CAMKF1srRXBQOPNxOUqSF=HjgRj6wO8i5pNKecFNqSyEXEtU4Aw@mail.gmail.com>
	<CAPb0b+O6i=icrjgZ1XXLDUskpUx_qXukMaux2N7yWSaW5BufZw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sat, 18 Nov 2017 19:47:04 +0100
Message-ID: <CAPb0b+NOuo+mcV-nsHQ78TMCbNp+gGCYtwrDbF+N3jMD7_zM0g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Sat, 18 Nov 2017 18:47:06 -0000
Content-Type: multipart/alternative; boundary="94eb2c1169669688ec055e46473b"

--94eb2c1169669688ec055e46473b
Content-Type: text/plain; charset="UTF-8"

I have it now being compiled and created a file called
rpi-basic-image-raspberrypi0-wifi-20171118102213.rootfs.cpio.gz
but how can i burn it? it is not an img file.
Any clue is appreciated.

On Sat, Nov 18, 2017 at 12:21 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> it worked well with
>
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tini"
>
> in local.conf. However i don't know if it will work with real time kernel
> .. to be tested later
>
>  thank you
>
> On Sat, Nov 18, 2017 at 10:19 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Fri, Nov 17, 2017 at 5:34 PM, Michael Gloff <mgloff@emacinc.com>
>> wrote:
>> > This looks to be because poky-tiny.conf does not allow overriding of the
>> > kernel provider. You could try the below patch to use a different
>> kernel.
>> >
>> > Michael Gloff
>> >
>> > diff --git a/meta-poky/conf/distro/poky-tiny.conf
>> > b/meta-poky/conf/distro/poky-tiny.conf
>> > index 2032bfde32..acafd9fef4 100644
>> > --- a/meta-poky/conf/distro/poky-tiny.conf
>> > +++ b/meta-poky/conf/distro/poky-tiny.conf
>> > @@ -37,7 +37,7 @@ TCLIBC = "musl"
>> >
>> >  # Distro config is evaluated after the machine config, so we have to
>> > explicitly
>> >  # set the kernel provider to override a machine config.
>> > -PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
>> > +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-tiny"
>> >  PREFERRED_VERSION_linux-yocto-tiny ?= "4.12%"
>> >
>>
>> please submit this patch with sign off and git format, its good for
>> inclusion upstream
>>
>> >  # We can use packagegroup-core-boot, but in the future we may need a
>> new
>> > packagegroup-core-tiny
>> >
>> >
>> > On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran <
>> sherifomran2000@gmail.com>
>> > wrote:
>> >>
>> >> hi
>> >>
>> >> i am trying to compile the yocto-tiny for raspberry pi by adding the
>> >> distro to my local.conf
>> >>
>> >> DISTRO = "poky-tiny"  and i  get the following
>> >>
>> >>
>> >> ERROR: nothing provides 'virtual/kernel'
>> >> ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
>> >> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
>> >> ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:
>> >> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
>> >> ERROR: linux-yocto Provides virtual/kernel but was skipped:
>> incompatible
>> >> with machine raspberrypi0-wifi (not in compatible_machine)
>> >> ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
>> >> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
>> >> ERROR: required build target 'rpi-basic-image' has no buildable
>> providers.
>> >> Missing or unbuildable depency chain was: 'rpi-basic-image',
>> >> 'virtual/kernel'
>> >>
>> >>
>> >> any body has a clue to solve it?
>> >>
>> >> thanks
>> >>
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--94eb2c1169669688ec055e46473b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I have it now being compiled and created a file =
called rpi-basic-image-raspberrypi0-wifi-20171118102213.rootfs.cpio.gz<br><=
/div>but how can i burn it? it is not an img file.<br></div>Any clue is app=
reciated. <br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Sat, Nov 18, 2017 at 12:21 PM, Sherif Omran <span dir=3D"ltr">&lt;<a =
href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><span class=3D""><div>it worked well with<br><br>PREFERRED_PROVIDE=
R_virtual/ker<wbr>nel =3D &quot;linux-yocto-tini&quot;<br><br></div></span>=
in local.conf. However i don&#39;t know if it will work with real time kern=
el .. to be tested later<br><br>=C2=A0thank you</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote"><span class=3D"">On Sat, Nov 18, 2017 a=
t 10:19 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail=
.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br></span>=
<div><div class=3D"h5"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>On Fri, Nov 17,=
 2017 at 5:34 PM, Michael Gloff &lt;<a href=3D"mailto:mgloff@emacinc.com" t=
arget=3D"_blank">mgloff@emacinc.com</a>&gt; wrote:<br>
&gt; This looks to be because poky-tiny.conf does not allow overriding of t=
he<br>
&gt; kernel provider. You could try the below patch to use a different kern=
el.<br>
&gt;<br>
&gt; Michael Gloff<br>
&gt;<br>
&gt; diff --git a/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; b/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; index 2032bfde32..acafd9fef4 100644<br>
&gt; --- a/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; +++ b/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; @@ -37,7 +37,7 @@ TCLIBC =3D &quot;musl&quot;<br>
&gt;<br>
&gt;=C2=A0 # Distro config is evaluated after the machine config, so we hav=
e to<br>
&gt; explicitly<br>
&gt;=C2=A0 # set the kernel provider to override a machine config.<br>
&gt; -PREFERRED_PROVIDER_virtual/ke<wbr>rnel =3D &quot;linux-yocto-tiny&quo=
t;<br>
&gt; +PREFERRED_PROVIDER_virtual/ke<wbr>rnel ?=3D &quot;linux-yocto-tiny&qu=
ot;<br>
&gt;=C2=A0 PREFERRED_VERSION_linux-yocto-<wbr>tiny ?=3D &quot;4.12%&quot;<b=
r>
&gt;<br>
<br>
</span>please submit this patch with sign off and git format, its good for<=
br>
inclusion upstream<br>
<div class=3D"m_-8125658621375618980HOEnZb"><div class=3D"m_-81256586213756=
18980h5"><br>
&gt;=C2=A0 # We can use packagegroup-core-boot, but in the future we may ne=
ed a new<br>
&gt; packagegroup-core-tiny<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran &lt;<a href=3D"mailto:sh=
erifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt=
;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; hi<br>
&gt;&gt;<br>
&gt;&gt; i am trying to compile the yocto-tiny for raspberry pi by adding t=
he<br>
&gt;&gt; distro to my local.conf<br>
&gt;&gt;<br>
&gt;&gt; DISTRO =3D &quot;poky-tiny&quot;=C2=A0 and i=C2=A0 get the followi=
ng<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ERROR: nothing provides &#39;virtual/kernel&#39;<br>
&gt;&gt; ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:<b=
r>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:<br>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: linux-yocto Provides virtual/kernel but was skipped: incomp=
atible<br>
&gt;&gt; with machine raspberrypi0-wifi (not in compatible_machine)<br>
&gt;&gt; ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:<br=
>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: required build target &#39;rpi-basic-image&#39; has no buil=
dable providers.<br>
&gt;&gt; Missing or unbuildable depency chain was: &#39;rpi-basic-image&#39=
;,<br>
&gt;&gt; &#39;virtual/kernel&#39;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; any body has a clue to solve it?<br>
&gt;&gt;<br>
&gt;&gt; thanks<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/y=
octo</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</div></div></blockquote></div></div></div><br></div>
</blockquote></div><br></div>

--94eb2c1169669688ec055e46473b--
