Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 884ACE00BBF; Wed,  2 Mar 2016 23:22:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
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
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59C32E00AEA
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 23:22:03 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id l127so18564689iof.3
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 23:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=fCUHUBSik8Qg/s0hgmeSIQIuqkaNjnYHkeZjcGa9Tu0=;
	b=TKQjoi0PHaW5mXccJqDTIzgbHzGUTgGh71Ode9KYkyoQL0kLzjIOE3/yBF6BMz8VqK
	wHmPoEaokMILfb9UeJLAzvvJBG2j28xYjrCqIg0Nuqun7b0fyI3Y3DkmFOWzZ2x33qKc
	egps6272iLNYjj0XvyLmIpzaZ8DjtcPfElqbiH5wtjx0fcVfSJcZ1DRzBfSqvreuOWpb
	TsNXWg6+P0TKQwmROysB8r92EyLDVXJdcGK3fDxUC0NCAigjJS8huViIQmfX8aJ6vJ5z
	5JX23N/PCZi/g2CizcC2Z1a5ija6oOFmu280COh97m1HMsYqz9Z+eVvySM4gOeuq8/rW
	I73g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=fCUHUBSik8Qg/s0hgmeSIQIuqkaNjnYHkeZjcGa9Tu0=;
	b=F+Tn0xrbCa1C7WkGRgXp1Z8e4EZMfDPHqLX9CTxrL0A8tUBf3aZeRFxtqUADOZ6EvX
	cGCnA0OyHMbRZPWOivL8KPWCZewIANIiZ0RkCfIx1Z4ryl+ocxP70AI8ed1ZUH6tzHYJ
	SIT6Uvh57T0nt1XXVWcJUDWeQeG9J3aklOumkTBqlNt22T57Ch2WUrfRDvNiul2zkxqo
	OIrKcqDPpEX4NMoAi0vBf2EoF6aORW/MFlQUXUVpJY81ysQHyY/UTG/vdh/nYJj5lhe5
	DetJLg37wH00ID9FOQnP3GUp5igxQFDcj4FYMj0SpSVwH/KBVTQtumuqzSVW/ky15X6z
	NKIQ==
X-Gm-Message-State: AD7BkJIsdvv8v0oAiBxAUD0KpuYiuxb5TRWexrdKncUhoLdBR1a3LUcn1GN3fVAqJETNvzsJvbDjKr/x3QZCMQ==
MIME-Version: 1.0
X-Received: by 10.107.128.209 with SMTP id k78mr1508363ioi.26.1456989723429;
	Wed, 02 Mar 2016 23:22:03 -0800 (PST)
Received: by 10.107.41.7 with HTTP; Wed, 2 Mar 2016 23:22:03 -0800 (PST)
In-Reply-To: <56D681C5.7090007@twobit.us>
References: <56D669FE.8080203@twobit.us>
	<56D681C5.7090007@twobit.us>
Date: Thu, 3 Mar 2016 12:52:03 +0530
Message-ID: <CALwQErodJaop9s2kzmYrK8Oi83zC7pRX9Nj=_7bDQyvGg_To2w@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: Philip Tricca <flihp@twobit.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] Jethro branch
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
X-List-Received-Date: Thu, 03 Mar 2016 07:22:12 -0000
Content-Type: multipart/alternative; boundary=001a113f91e2e839a1052d1fda2a

--001a113f91e2e839a1052d1fda2a
Content-Type: text/plain; charset=UTF-8

Checked jethro branch, image booting successfully, policy loads well &
label file-system thanks !
used distro : poky-selinux & image: core-image-selinux

meta-yocto-bsp    = "branch_jethro:b1f23d1254682866236bfaeb843c0d8aa332efc2"
meta-selinux      = "branch_jethro:4c75d9cbcf1d75043c7c5ab315aa383d9b227510"


Thanks
Shrikant


On Wed, Mar 2, 2016 at 11:31 AM, Philip Tricca <flihp@twobit.us> wrote:

> On 03/01/2016 08:20 PM, Philip Tricca wrote:
> > Hey all,
> >
> > meta-selinux has been tracking release branches for a while but we're
> > missing a Jethro. I've had a Jethro branch on my github fork for a bit.
> > It's pointing at 4c75d9cbc from master with no additional changes. Both
> > images build, boot, login and pass the basic smoke test. Seems like this
> > may be useful to others so I'll put it up in the yocto repo as well.
>
> I've just pushed this branch. I've tested all 3 kernels in both images
> for basic boot / smoke tests. The root user can login and the shell ends
> up in the right context. The filesystem is labeled properly. Please post
> issues and patches to the list.
>
> Philip
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f91e2e839a1052d1fda2a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div><br><br>Checked jethro branch, image booti=
ng successfully, policy loads well &amp; label file-system thanks ! <br></d=
iv><div>used distro : poky-selinux &amp; image: core-image-selinux<br></div=
><div></div><div><br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;branch_jeth=
ro:b1f23d1254682866236bfaeb843c0d8aa332efc2&quot;<br>meta-selinux=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;branch_jethro:4c75d9cbcf1d75043c7c5ab315aa3=
83d9b227510&quot;<br><br><br></div><div>Thanks<br></div><div>Shrikant<br></=
div><div><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On W=
ed, Mar 2, 2016 at 11:31 AM, Philip Tricca <span dir=3D"ltr">&lt;<a href=3D=
"mailto:flihp@twobit.us" target=3D"_blank">flihp@twobit.us</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D""=
>On 03/01/2016 08:20 PM, Philip Tricca wrote:<br>
&gt; Hey all,<br>
&gt;<br>
&gt; meta-selinux has been tracking release branches for a while but we&#39=
;re<br>
&gt; missing a Jethro. I&#39;ve had a Jethro branch on my github fork for a=
 bit.<br>
&gt; It&#39;s pointing at 4c75d9cbc from master with no additional changes.=
 Both<br>
&gt; images build, boot, login and pass the basic smoke test. Seems like th=
is<br>
&gt; may be useful to others so I&#39;ll put it up in the yocto repo as wel=
l.<br>
<br>
</span>I&#39;ve just pushed this branch. I&#39;ve tested all 3 kernels in b=
oth images<br>
for basic boot / smoke tests. The root user can login and the shell ends<br=
>
up in the right context. The filesystem is labeled properly. Please post<br=
>
issues and patches to the list.<br>
<div class=3D""><div class=3D"h5"><br>
Philip<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div></div>

--001a113f91e2e839a1052d1fda2a--
