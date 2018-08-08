Return-Path: <jdhanasekarmca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0233CE00875; Wed,  8 Aug 2018 08:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdhanasekarmca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72C5BE00708
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 08:31:16 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id h23-v6so4073274ita.5
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2018 08:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=f8HHrlkX4ZaEP1Asr5mDOa8zG1Dq1k2j3eWxB5yFvqQ=;
	b=LwhifZmN07/95QOkwRKILS7jJTT5OBF5fEHKbvzkgDCE6NGEybjszBloHqcJ5N/0vO
	fdKODUit9CWZNIQG9KsJNQ405XzCIg3ksGqgFkEH9J9joB53U90b0PtFZXTv+sz2eT7L
	72WlLUS6F6IScFUt+oEiJgUzw+2d1JfM9BxoVfp+7ezXMISu3Vpm1lXqqA5QxlX/+aP4
	XmPw1RT7p81S/mK//kiyHqQ+adO3SBeZFZWc6lqrjstLQebDy3bXPbfkMSI2FICwcjW7
	WDPFzZQdUkkZ0zp3YTXXfHwW+oyOn757QT9/Bugzzndm/CfDankVg6XBJ0fV0FyZqg/k
	6hxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=f8HHrlkX4ZaEP1Asr5mDOa8zG1Dq1k2j3eWxB5yFvqQ=;
	b=fAYK1bT2yVidCbuVYXMmiuw+FX4dulDkuKDByeg3ZArs7jK7gwwIqY5qBcIRGSZ0lE
	FOvd9W29jEhb7a0jrNEMvOyb0C8glh/Q+6piGNY5aLkxE7+bF28k3BxA/TV5zVJA70jB
	X3SnqZklCjfZMKvok7ZjT0CF/RVxOKiA41YAFXvvagZursOPy75u0yNgl60Gq6jQB5Pj
	rf6dU0ZofWI8Y+5vOG3woCiZo1ZrRuuQmPgtUpR9Spd4Qubet/8aCOY6zugBonwWET10
	9VD/s1nlJNlFI4dSSxjJWNGsjcCrABWCYjdJJy83AuxHWRP5Y+fzwPaGmk+Yez/+lD79
	0kQw==
X-Gm-Message-State: AOUpUlG8VM5PnXtN816XdMVMdyWqJyiYHkoce59GGrMnZXzPXqaLjIyg
	Sc0DY51TYp+6TFhWjIM0IBIeMWoGUGRjOuvz6mg=
X-Google-Smtp-Source: AA+uWPzJQz8/tPbq5x+SNCAAQN5+p6Syj4YfcuMjpRLt40vUhO+G134KkZ25U2o5o6qru7kG/PuMk8sFn2bSyoxuqMA=
X-Received: by 2002:a24:be8f:: with SMTP id
	i137-v6mr2710447itf.61.1533742275426; 
	Wed, 08 Aug 2018 08:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAE4v+fRrFSmqOR_rfkdhRTh7emfam5MPimncM7PgUJok+hTXeg@mail.gmail.com>
	<d49dcac3-4e53-67c8-6b7e-6f6019b02fb6@intel.com>
In-Reply-To: <d49dcac3-4e53-67c8-6b7e-6f6019b02fb6@intel.com>
From: Dhanasekar Jaganathan <jdhanasekarmca@gmail.com>
Date: Wed, 8 Aug 2018 21:01:02 +0530
Message-ID: <CAE4v+fSOb=sYna8741eS83oc8FAuPf3vZh3+qABNxnUrrFRPfg@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel] Getting black screen for Install option
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
X-List-Received-Date: Wed, 08 Aug 2018 15:31:18 -0000
Content-Type: multipart/alternative; boundary="0000000000008101110572ee332e"

--0000000000008101110572ee332e
Content-Type: text/plain; charset="UTF-8"

Hi Anuj..... You want me to add this change in systemd-boot..? If wrong ,
please correct me.

On Wed 8 Aug, 2018, 7:10 PM Anuj Mittal, <anuj.mittal@intel.com> wrote:

> On 08/08/2018 08:58 PM, Dhanasekar Jaganathan wrote:
> >
> > Hi All,
> >
> > I have created yocot bootable USB live image by this command "*sudo dd
> > if=core-image-sato-intel-core2-32.hddimg of=/dev/sdb1"*
> > "
> >
> > After power on my system, I have got three options,
> >
> > 1. boot
> > 2. install
> > 3. Reboot into firmware.
> >
> >
> > When I select "install" to install yocto on mSata, I am getting black
> > screen.
> > I am using com port serial console for video propose. My board has no
> > support for onboard or offboard VGA.
> >
>
> May be try adding serial console 'console=ttyS0,115200' in kernel boot
> line when using 'install'.
>
>

--0000000000008101110572ee332e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Anuj..... You want me to add this change in systemd-bo=
ot..? If wrong , please correct me.</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Wed 8 Aug, 2018, 7:10 PM Anuj Mittal, &lt;<a href=3D"mailt=
o:anuj.mittal@intel.com">anuj.mittal@intel.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On 08/08/2018 08:58 PM, Dhanasekar Jaganathan wr=
ote:<br>
&gt; <br>
&gt; Hi All,<br>
&gt; <br>
&gt; I have created yocot bootable USB live image by this command &quot;*su=
do dd<br>
&gt; if=3Dcore-image-sato-intel-core2-32.hddimg of=3D/dev/sdb1&quot;*<br>
&gt; &quot;<br>
&gt; <br>
&gt; After power on my system, I have got three options,<br>
&gt; <br>
&gt; 1. boot<br>
&gt; 2. install<br>
&gt; 3. Reboot into firmware.<br>
&gt; <br>
&gt; <br>
&gt; When I select &quot;install&quot; to install yocto on mSata, I am gett=
ing black<br>
&gt; screen.<br>
&gt; I am using com port serial console for video propose. My board has no<=
br>
&gt; support for onboard or offboard VGA.<br>
&gt; <br>
<br>
May be try adding serial console &#39;console=3DttyS0,115200&#39; in kernel=
 boot<br>
line when using &#39;install&#39;.<br>
<br>
</blockquote></div>

--0000000000008101110572ee332e--
