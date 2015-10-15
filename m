Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B84B1E00B04; Thu, 15 Oct 2015 07:39:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC9CE00978
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 07:39:32 -0700 (PDT)
Received: by lffy185 with SMTP id y185so30077942lff.2
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 07:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=KJtTM/FdgYcNwkn+IOD+4m+jcQpSU1DPGqmIXnPgvAc=;
	b=yS+zUnbCDzNh0vqU0fjBrJCY/l+cypCMMIHnDY7XKDOIHJpq5Suk1Tbrsv7p0OAAGN
	yZTQUh0DKfJHyttnEcnUqr7iA4cjtw3ld3QChtIIcTO7GUYKPFCDWXTXaInuBDJUKw+Q
	9obmpdhjyN6zwCTfbNe+CmVz2PfGrUZeJuE+Liox6q/3XakrXUjVHGIMaiEyr44DdTQU
	hg33PrOkfL/N39VzKlGSTFxPiHpakKHjHoA+YE2LDcSnxU74t/YAFP52IM4uOeK04x86
	Vk2K+++GGngm+aGGBMy51cGp+wTf9FM8R6Vb46HeCqCz4vVq+zUpd9yU4xcQCp4Q9wj/
	ynew==
X-Received: by 10.25.170.206 with SMTP id t197mr3134232lfe.64.1444919970393;
	Thu, 15 Oct 2015 07:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
	<1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
	<CAF3SDA4=VmqYw7J3M2nR7cNfCEWZfvqTNP4ifnQJdAoxJ_NxCQ@mail.gmail.com>
In-Reply-To: <CAF3SDA4=VmqYw7J3M2nR7cNfCEWZfvqTNP4ifnQJdAoxJ_NxCQ@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Thu, 15 Oct 2015 14:39:21 +0000
Message-ID: <CAP2S6e62xwV-sOU2xChjHZ0r7u6gtq16ArfQdqgw-rsSLxs2Lw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>, winfried.dobbe@xmsnet.nl
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to deploy gdbserver ?
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
X-List-Received-Date: Thu, 15 Oct 2015 14:39:35 -0000
Content-Type: multipart/alternative; boundary=001a11411c90907689052225a597

--001a11411c90907689052225a597
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello

I believe tools-debug works but unfortunately I have errors building libaio
and other stuff (it says
"tmp/sysroots/raspberrypi/usr/include/gnu/stubs.h:10:29: fatal error:
gnu/stubs-hard.h: No such file or directory")

Anyway, to stick with the initial question, thanks !


Le jeu. 15 oct. 2015 =C3=A0 15:58, Daniel. <danielhilst@gmail.com> a =C3=A9=
crit :

> Works fine with emacs also.
>
> 2015-10-15 10:44 GMT-03:00 <winfried.dobbe@xmsnet.nl>:
>
>> > Hi everyone,
>> >
>> > I want to be able to debug my target machine (raspberrypi) remotely
>> > through
>> > qtcretor on host.
>> >
>> > I can't seem to find a way to deploy the gdbserver software though.
>> > I built the gdb-cross-arm but don't see any gdbserver on the target wi=
th
>> > hob (poky 1.7.2) ?
>> >
>> > What am I missing ?
>>
>> When I build my image with
>>
>> EXTRA_IMAGE_FEATURES +=3D "tools-debug"
>>
>> both gdb and gdbserver are installed in the target rootfs. Remote
>> debugging worked out-of-the-box with QtCreator.
>>
>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
Valentin LE BESCOND

--001a11411c90907689052225a597
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello <br><br></div>I believe tools-debug w=
orks but unfortunately I have errors building libaio and other stuff (it sa=
ys &quot;tmp/sysroots/raspberrypi/usr/include/gnu/stubs.h:10:29: fatal erro=
r: gnu/stubs-hard.h: No such file or directory&quot;)<br><br></div>Anyway, =
to stick with the initial question, thanks ! <br><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0jeu. 15 oct. 2015 =C3=A0=C2=
=A015:58, Daniel. &lt;<a href=3D"mailto:danielhilst@gmail.com">danielhilst@=
gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr">Works fine with emacs also.<br></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote"></div></div><div class=3D"gmail_ext=
ra"><div class=3D"gmail_quote">2015-10-15 10:44 GMT-03:00  <span dir=3D"ltr=
">&lt;<a href=3D"mailto:winfried.dobbe@xmsnet.nl" target=3D"_blank">winfrie=
d.dobbe@xmsnet.nl</a>&gt;</span>:<br></div></div><div class=3D"gmail_extra"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>&gt; Hi ev=
eryone,<br>
&gt;<br>
&gt; I want to be able to debug my target machine (raspberrypi) remotely<br=
>
&gt; through<br>
&gt; qtcretor on host.<br>
&gt;<br>
&gt; I can&#39;t seem to find a way to deploy the gdbserver software though=
.<br>
&gt; I built the gdb-cross-arm but don&#39;t see any gdbserver on the targe=
t with<br>
&gt; hob (poky 1.7.2) ?<br>
&gt;<br>
&gt; What am I missing ?<br>
<br>
</span>When I build my image with<br>
<br>
EXTRA_IMAGE_FEATURES +=3D &quot;tools-debug&quot;<br>
<br>
both gdb and gdbserver are installed in the target rootfs. Remote<br>
debugging worked out-of-the-box with QtCreator.<br>
</blockquote></div></div><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><span><font color=3D"#888888"><br>
<br>
<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div><div=
 style=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i=
><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><div>Vale=
ntin LE BESCOND<br></div></div>

--001a11411c90907689052225a597--
