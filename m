Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D1AE009EA; Sat,  5 Dec 2015 13:33:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFA6E007B4
	for <yocto@yoctoproject.org>; Sat,  5 Dec 2015 13:33:04 -0800 (PST)
Received: by lfdl133 with SMTP id l133so131190694lfd.2
	for <yocto@yoctoproject.org>; Sat, 05 Dec 2015 13:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rCSEXUaAPTDApsuixUAoT7A+JvnAT+OomGidtdWVVds=;
	b=SYVPsYEHH5auGvQj5fnBvSLIgZQim1/WnvB9aVO1NT/ucNtZD1NuD44GirzU6ULoEu
	98R7/SIDZZnBU/24x9upcr0f4wh+i8kDoyDDJurKpqcvTIlI5DYZbCJ1F3jXCrc1dxZz
	xmdgYmrdRot/h0KkZ/OmLNBnt498kYQZgR1GtAcYE8MSKdtn+PlZvix/GxCjr+v4M/d6
	xegxqbtnThhhsNJWUbAEFUcCVTcp0zvW0fGVkq0UynJ09Nq3AvZmCq2Zvip80znc2JBr
	/6WFzvgwHko8SFNOiItBAMnmVjpF2CDikOu26kI2nNAT+ctfHtVWOmqOVRvHNZpuc8R0
	+a2g==
MIME-Version: 1.0
X-Received: by 10.25.7.8 with SMTP id 8mr10663092lfh.111.1449351183711; Sat,
	05 Dec 2015 13:33:03 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Sat, 5 Dec 2015 13:33:03 -0800 (PST)
In-Reply-To: <1662652.5xsLZHLjE9@peggleto-mobl.ger.corp.intel.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<1662652.5xsLZHLjE9@peggleto-mobl.ger.corp.intel.com>
Date: Sat, 5 Dec 2015 15:33:03 -0600
Message-ID: <CAOsp8o9PLJsPCO9bNWKGYWkW33L7j_Y398KYYL+POrfy274NvQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Sat, 05 Dec 2015 21:33:09 -0000
Content-Type: multipart/alternative; boundary=001a113ea93a75c7fa05262d5e31

--001a113ea93a75c7fa05262d5e31
Content-Type: text/plain; charset=UTF-8

Yes you're right thanks for correcting - I meant rootfs!

On Sat, Dec 5, 2015 at 3:23 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Michael,
>
> On Tue, 01 Dec 2015 09:26:15 Michael Habibi wrote:
> > I am working on potentially migrating our distribution to Yocto (will be
> a
> > long, long process). We have an area of our filesystem where any file
> > placed will go directly into the rootfs of the target. This works well
> with
> > our product, as we have certain binaries and scripts that need to be
> copied
> > directly, and there's no other real step involved (no compilation, etc).
> Is
> > there a best practice or existing class that handles this? I saw mention
> of
> > a binary/ directory but I wasn't sure if that was for this or something
> > else.
>
> I see you got your answer - but I wanted to point out when you wrote
> "sysroot"
> you meant "rootfs" - these two aren't the same thing. The sysroot is the
> area
> used to share files between recipes (e.g. libraries and headers); whilst
> it can
> look a bit similar to what ends up in the rootfs it's actually completely
> separate.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a113ea93a75c7fa05262d5e31
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes you&#39;re right thanks for correcting - I meant rootf=
s!</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, D=
ec 5, 2015 at 3:23 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Michael,<b=
r>
<span class=3D""><br>
On Tue, 01 Dec 2015 09:26:15 Michael Habibi wrote:<br>
&gt; I am working on potentially migrating our distribution to Yocto (will =
be a<br>
&gt; long, long process). We have an area of our filesystem where any file<=
br>
&gt; placed will go directly into the rootfs of the target. This works well=
 with<br>
&gt; our product, as we have certain binaries and scripts that need to be c=
opied<br>
&gt; directly, and there&#39;s no other real step involved (no compilation,=
 etc). Is<br>
&gt; there a best practice or existing class that handles this? I saw menti=
on of<br>
&gt; a binary/ directory but I wasn&#39;t sure if that was for this or some=
thing<br>
&gt; else.<br>
<br>
</span>I see you got your answer - but I wanted to point out when you wrote=
 &quot;sysroot&quot;<br>
you meant &quot;rootfs&quot; - these two aren&#39;t the same thing. The sys=
root is the area<br>
used to share files between recipes (e.g. libraries and headers); whilst it=
 can<br>
look a bit similar to what ends up in the rootfs it&#39;s actually complete=
ly<br>
separate.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a113ea93a75c7fa05262d5e31--
