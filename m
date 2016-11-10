Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA37BE00A0A; Thu, 10 Nov 2016 07:19:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFB3E00815
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2016 07:19:21 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id x190so21097745qkb.0
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2016 07:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v3aAnGOv2iFsvkChkajD2S/jdvo6AogKtHNwJtmf9+c=;
	b=MIYnsbgMYgQOQjC3fHg1QZvtz3u6Nl12/zzEYnKrECJbVmCi5yiNsvvcJ7PwPJ5Air
	Sb3FsRrgX4ZOBLWcTjoY1rlfUTU57YfIb/HOMe7Ch0xCTCN/Wa0CXPAl/upTaG4Q/ySq
	dNpc4yenqI0MvzmOnd+avxdxK1i/qUNVOF5JWHVeLuSMEohiQSKTb2dafdsBfNkmULvj
	RJhCZlNmPH3o+XGnA2DWOSdFQ20S3Lv+AWDqvZhhiwtuwUYoMDzmNqsdR/J3d+/PQUnb
	4ewzZkMadhIiqdD98IiuPln9zs18SHT7EAqbGOi/4Abh1DNk4EOtjHRwaj/Zus1Xtia+
	YNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v3aAnGOv2iFsvkChkajD2S/jdvo6AogKtHNwJtmf9+c=;
	b=fTRqXU+sjya85HtA1IOjY7EWCP3WiNuv5l6WP1EtCZYDEZRsksxfx1KDIp1DpVgqTg
	JuzaoiqxTsvDVKcx1/n56ZK2Ie3DP7rpQytfkv84lf0aJTTcA9t4RjsBRGyeTak8kURL
	OPF6X4Ev1RQdMCH6xu2D2JnXsgRV2Row+NgCxGt64mQSpqvoP1qJjQ0ppbGcR2869EdC
	HQpo0deMJ/ny53sWtuLluINduCIjljqhM+TVCtLndPZCCAVGBp6vd7En1CpyioO9zJP8
	t8itWf6Cz9Xr6MsyKykoszDxqwFJothfrYzZ6yZEsoGDhgktCSikXXt3E0LTbc3Dgogf
	4/PA==
X-Gm-Message-State: ABUngve8QTwUgBgq4lbuZAMiq8f2pfv+mFD/X4lTPd3WFPM4FUZvGXxGCzVcWExI75VvvrFgHKjAuB8EXeRs6w==
X-Received: by 10.55.15.152 with SMTP id 24mr6354700qkp.45.1478791161047; Thu,
	10 Nov 2016 07:19:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.45.220 with HTTP; Thu, 10 Nov 2016 07:19:20 -0800 (PST)
In-Reply-To: <89293735-d380-2b81-b328-d9c296c2f22f@Net2Edge.com>
References: <89293735-d380-2b81-b328-d9c296c2f22f@Net2Edge.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 10 Nov 2016 10:19:20 -0500
Message-ID: <CADkTA4MHO=YfjQxZ==0bTP-4=tkKdM1_d9yF5ZhRgJA1hRXJcw@mail.gmail.com>
To: Thomas.Thorne@net2edge.com
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Linux Kernel In Temporary Source Code Directory Is Not a git repository"
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
X-List-Received-Date: Thu, 10 Nov 2016 15:19:25 -0000
Content-Type: multipart/alternative; boundary=001a114750b0d9f1b70540f3e506

--001a114750b0d9f1b70540f3e506
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 10, 2016 at 8:10 AM, Thomas A. F. Thorne MEng AUS MIET <
Thomas.Thorne@net2edge.com> wrote:

> I am having some trouble attempting to create Kernel patches as per the
> Yocto Project Development Manual, section 5.10.3. Creating the Patch:
> http://www.yoctoproject.org/docs/2.1.1/dev-manual/dev-
> manual.html#creating-the-patch
>
> When I get to the stage that says:
>
> Stage and commit your changes: These Git commands display the modified
> file, stage it, and then commit the file:
> $ git status
>
> I get the response:
>
> $ git status
> fatal: Not a git repository (or any of the parent directories): .git
>
>
> I have a rpi-layer (taken from ) which I have generated binaries for the
> RasperyPi 3 from.  I wanted to modify a couple of kernel modules to add
> support for a Quectel EC25 module.  I located the relevant module code and
> modified it in my temporary source code area: ~/work/rpi-layer/build/tmp/
> work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/linux-libc-
> headers/4.4-r0/linux-4.4/drivers/usb/serial
>


You shouldn't be modifying code in that directory, it is for the kernel ->
libc headers
only.

The actual kernel source is in work-shared/<your machine>/kernel-source/

If you are trying to modify a header that other applications / recipes
need, then that also
shouldn't be done in the libc-headers, it should be done in the source tree
and point those
applications at work-shared for their include/build needs.

Bruce


>
> I guess there is something goofy about the way the raspberrypi layer works
> and this is actually a special kernel build which is not held in a git
> repository?  If that is the case, why can I a .gitignore file in the
> ..linux-libc-headers/4.4-r0/linux-4.4 directory?
>
> I could create a git patch by hand for the next stage but it would be much
> easier to modify a clone of the correct repository.
>
> Can anyone spot my obvious mistake?
>
> Regards,
>
> --
> Thomas A. F. Thorne MEng. AUS MIET
> *Software Engineer*
>
> *NET2EDGE*
>
> Tel: +44 3450 130 030 <+443450130030>
> Email: Thomas.Thorne@Net2Edge.com
> Web: http://www.Net2Edge.com/
>
> Net2Edge Limited is a company registered in England & Wales (Company No.
> 2438435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, GU30 7RL.
> This email transmission is confidential and intended solely for the person
> or organisation to whom it is addressed. If you are not the intended
> recipient, you must not copy, distribute or disseminate the information, or
> take any action in reliance of it. Any views expressed in this message are
> those of the individual sender, except where the sender specifically states
> them to be the views of any organisation or employer. If you have received
> this message in error, do not open any attachment but please notify the
> sender (above) and delete this message from your system. Please rely on
> your own virus check. Although all outbound mail is checked for viruses, no
> responsibility is taken by the sender for any damage rising out of any bug
> or virus infection.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a114750b0d9f1b70540f3e506
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Nov 10, 2016 at 8:10 AM, Thomas A. F. Thorne MEng AUS MIET <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:Thomas.Thorne@net2edge.com" target=3D"_=
blank">Thomas.Thorne@net2edge.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
 =20

   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I am having some trouble attempting to create Kernel patches as
      per the Yocto Project Development Manual, section 5.10.3. Creating
      the Patch:
<a class=3D"m_3153623803770307983moz-txt-link-freetext" href=3D"http://www.=
yoctoproject.org/docs/2.1.1/dev-manual/dev-manual.html#creating-the-patch" =
target=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.1.1/dev-manual/de=
v-<wbr>manual.html#creating-the-patch</a></p>
    <p>When I get to the stage that says: <br>
    </p>
    <p>
      </p><blockquote type=3D"cite">Stage and commit your changes: These Gi=
t
        commands display the modified file, stage it, and then commit
        the file: <br>
        $ git status</blockquote>
      I get the response:<p></p>
    <p>$ git status<br>
      fatal: Not a git repository (or any of the parent directories):
      .git</p>
    <p><br>
    </p>
    I have a rpi-layer (taken from ) which I have generated binaries for
    the RasperyPi 3 from.=C2=A0 I wanted to modify a couple of kernel modul=
es
    to add support for a Quectel EC25 module.=C2=A0 I located the relevant
    module code and modified it in my temporary source code area:
~/work/rpi-layer/build/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-=
gnueabi/linux-libc-<wbr>headers/4.4-r0/linux-4.4/<wbr>drivers/usb/serial<br=
></div></blockquote><div><br><br></div><div>You shouldn&#39;t be modifying =
code in that directory, it is for the kernel -&gt; libc headers<br></div><d=
iv>only.<br><br></div><div>The actual kernel source is in work-shared/&lt;y=
our machine&gt;/kernel-source/<br><br></div><div>If you are trying to modif=
y a header that other applications / recipes need, then that also<br></div>=
<div>shouldn&#39;t be done in the libc-headers, it should be done in the so=
urce tree and point those<br></div><div>applications at work-shared for the=
ir include/build needs.<br><br></div><div>Bruce<br></div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    I guess there is something goofy about the way the raspberrypi layer
    works and this is actually a special kernel build which is not held
    in a git repository?=C2=A0 If that is the case, why can I a .gitignore
    file in the ..linux-libc-headers/4.4-r0/<wbr>linux-4.4 directory?=C2=A0=
 <br>
    <br>
    I could create a git patch by hand for the next stage but it would
    be much easier to modify a clone of the correct repository.=C2=A0 <br>
    <br>
    Can anyone spot my obvious mistake?=C2=A0 <br>
    <br>
    Regards, <br><span class=3D"HOEnZb"><font color=3D"#888888">
    <br>
    <div class=3D"m_3153623803770307983moz-signature">-- <br>
      Thomas A. F. Thorne MEng. AUS MIET<br>
      <b>Software Engineer</b><br>
      <br>
      <b>NET2EDGE</b><br>
      <br>
      Tel: <a href=3D"tel:+443450130030" target=3D"_blank">+44 3450 130 030=
</a><br>
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com" target=3D"_blank=
">Thomas.Thorne@Net2Edge.com</a><br>
      Web: <a href=3D"http://www.Net2Edge.com" target=3D"_blank">http://www=
.Net2Edge.com/</a><br>
      <br>
      <p><small>Net2Edge Limited is a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821)
          Passfield Oak, Liphook, Hampshire, GU30 7RL. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed. If you are not
          the intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </font></span></div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt not follow =
the NULL pointer, for chaos and madness await thee at its end&quot;</div>
</div></div>

--001a114750b0d9f1b70540f3e506--
