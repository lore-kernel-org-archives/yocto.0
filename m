Return-Path: <vishalashapur@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40ACDE00C7B; Tue, 24 Oct 2017 02:22:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vishalashapur[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D918BE00B67
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:22:20 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id r196so1910569wmf.2
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3WuKcVwqhyc4IjhTKRNAz8UscTPwchRV/PhcpZq7o+o=;
	b=lNzH39gVP6WXzTWJU6jJqGR/o/cqn5748OCNqnbsozw1obAWizA23wwEughyTApLNh
	Pr64hA8bsCKQDp6PScZJCRb0bPEXClXlf7bjOOsrtYJU1+PiktvTCws//b9aQBKVUob4
	ty14LP+i6Zueh48nbFvhZ+14FA1jSzr2oUCGFqPQXk/8gMtT9ONum/NIe1mZe9tKnxKz
	SrGFxakINVXuaBrg3xkBJpw38r/18KenS662XU7HHnbB60KNosnBPZVMv56tj0yfwQf7
	zF8UsUY+GlsSIB+MLXgE82gf2zo71VVq1JJ9MR4pnrTc1kuQBIaLJlDVhw5hCKff5n9u
	mLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3WuKcVwqhyc4IjhTKRNAz8UscTPwchRV/PhcpZq7o+o=;
	b=knLmbN3TSrzHt/DWqX3iHymAKaL3vFXfn5MczHYwA+0ryUEMBlk7jcUh+BSDTw59fL
	AixERObyeQFfq4RNj+4xgmY9Eh7T0w3YpkgTxEaRRQihIzIzdU0/b7md97neZeV7xVg+
	A8TEL0NFjLenRYRw62Jx7PgaDnyypzaRT9pV7exFV30kKQuvocV16qMmLfcftYIiwu5s
	piPhUaKygyJfc0lU5fF33HcmQvT4/oJw7snaIZJbjvRMODzMcSN5jB7P8Z82+M3AZdt5
	vNYQ7AEoYMNjH+KFc4YdIbn6IpEJrTcgcb2gO0YLu6MyxAs02TQJIa9NPN1c4SR019zp
	VO7A==
X-Gm-Message-State: AMCzsaXgzJbfo1YOaGz2m90bV5Z8Ku7T4cPgFmUZXi+x6je7V52rl48N
	LJacct/Gd5Q7aOUmM6NVAIUxycWcExoVBDazBBI=
X-Google-Smtp-Source: ABhQp+R49nM7snyBP6+cocuxA8U8wOSQiw4l5d+6oxmCQnvoDy8CPAh4fTKahe81tLbf/NY63TrINPtdl0/aRkqs0uY=
X-Received: by 10.80.182.35 with SMTP id b32mr5128974ede.205.1508836939742;
	Tue, 24 Oct 2017 02:22:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.162.7 with HTTP; Tue, 24 Oct 2017 02:22:18 -0700 (PDT)
Received: by 10.80.162.7 with HTTP; Tue, 24 Oct 2017 02:22:18 -0700 (PDT)
In-Reply-To: <CAJTo0LY-eH1hmnBwcvUW8jio8HzNJ7fJ27ra19gK==-S9_ewnQ@mail.gmail.com>
References: <CAAWyHB+xtKGGLCmGOJvWiVbjCWvhPQMttNjLq=J2SampX8QhBg@mail.gmail.com>
	<CAAWyHB+vS7nv0GHCUWiXsWQxwTc9A5qprssmU7rSV20qgjRT-A@mail.gmail.com>
	<CAAWyHBKbq=xm6DbLy9j7fx9=paFWMns=QiU5gxFB-V_NMoZ75Q@mail.gmail.com>
	<CAAWyHB+7hEg=MJY7VJWMdmzA1a8Ritts88yEdi+ciqum=PS+Qw@mail.gmail.com>
	<CAAWyHBKXgLZq7jfEAv00o32=uCUek85YnQmFev4U1U9DOVHXEQ@mail.gmail.com>
	<CAJTo0LY-eH1hmnBwcvUW8jio8HzNJ7fJ27ra19gK==-S9_ewnQ@mail.gmail.com>
From: vishal ashapur <vishalashapur@gmail.com>
Date: Tue, 24 Oct 2017 14:52:18 +0530
Message-ID: <CAAWyHBJi2zUHMuyDKGwWKLPNmAPPSXEi+cmErGxiuX4mzpuCvA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding usb-modeswitch and minicom packages on yocto
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
X-List-Received-Date: Tue, 24 Oct 2017 09:22:22 -0000
Content-Type: multipart/alternative; boundary="94eb2c0e433ad14195055c4779ad"

--94eb2c0e433ad14195055c4779ad
Content-Type: text/plain; charset="UTF-8"

Thank you!

On 24-Oct-2017 2:34 PM, "Burton, Ross" <ross.burton@intel.com> wrote:

> On 24 October 2017 at 05:16, vishal ashapur <vishalashapur@gmail.com>
> wrote:
>
>> Hi
>> I want to add USB modeswitch and minicom packages on the target image. I
>> am using raspberry pi 3 for the same. How to add those two packages so that
>> they are enabled on target machine.
>>
>>
> Find the recipes you're after using the layer index:
> https://layers.openembedded.org
>
> Then customise your image as per the documentation:
> http://www.yoctoproject.org/docs/2.3.2/dev-manual/dev-
> manual.html#usingpoky-extend-customimage
>
> Ross
>

--94eb2c0e433ad14195055c4779ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you!=C2=A0</div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On 24-Oct-2017 2:34 PM, &quot;Burton, Ross&quot; &lt=
;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wro=
te:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>On 24 October 2017 at 05:16, vishal ashapur <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vishalashapur@gmail.com" target=3D"_blank">vishalashapur@gmail.c=
om</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204=
,204);padding-left:1ex"><div dir=3D"auto">Hi<div dir=3D"auto">I want to add=
 USB modeswitch and minicom packages on the target image. I am using raspbe=
rry pi 3 for the same. How to add those two packages so that they are enabl=
ed on target machine.</div><div dir=3D"auto"><br></div></div></blockquote><=
div><br></div><div>Find the recipes you&#39;re after using the layer index:=
 =C2=A0<a href=3D"https://layers.openembedded.org" target=3D"_blank">https:=
//layers.openembedded.<wbr>org</a></div><div><br></div><div>Then customise =
your image as per the documentation: <a href=3D"http://www.yoctoproject.org=
/docs/2.3.2/dev-manual/dev-manual.html#usingpoky-extend-customimage" target=
=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.3.2/dev-manual/dev-<wbr=
>manual.html#usingpoky-extend-<wbr>customimage</a></div><div><br></div><div=
>Ross=C2=A0</div></div></div></div>
</blockquote></div></div>

--94eb2c0e433ad14195055c4779ad--
