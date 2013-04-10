Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43B16E014D0
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 09:29:16 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id r3so510060wey.31
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 09:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=AEPqckqomh3lT6Q18Es30l+7fkwFLNQ+xxNwpa4+GSg=;
	b=R2zIlHLZRmCwPLBTX84G+hAmGDJw3qk5QCP34kCxmx9T5xuR98rpitnJfp2BPl55zz
	20a/2QCcyVEkPW5mF/8VtG/8uI7GXEec/xd4FpgSG/8sMG3Ej0XAZ2FwSTOjEHCd95L6
	vjeD5hMKtFAb/ulNyp6rFDhW2eQ3sO1v71Z9FjB8LthYM6Jzj8V2MDd3l+6r8ub4jDkD
	lH7E1IDzlWlghWoWRaFJOM/gRXkNjG49//wS7fgG4f2UCgqoQeZp4eM3kXnU+A6EJAav
	jJSkLGc2XYzxBHaS9RDUnXUaJMIcROTpO1ohTGCiBKxKk4wmkVFaYjgaw8kvhX3I4myU
	0fSA==
MIME-Version: 1.0
X-Received: by 10.180.181.72 with SMTP id du8mr4624799wic.27.1365611355121;
	Wed, 10 Apr 2013 09:29:15 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Wed, 10 Apr 2013 09:29:15 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304101215110.26509@oneiric>
References: <alpine.DEB.2.02.1304101215110.26509@oneiric>
Date: Wed, 10 Apr 2013 12:29:15 -0400
Message-ID: <CAHUNapT06NQXefMFEEKLqXhNnDyGWUEZ3koU796o50TUHWsppA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: building a rootfs for a mips SEAD-3, and DEFAULTTUNE
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
X-List-Received-Date: Wed, 10 Apr 2013 16:29:16 -0000
Content-Type: multipart/alternative; boundary=e89a8ffba159b92bec04da042b2b

--e89a8ffba159b92bec04da042b2b
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 10, 2013 at 12:20 PM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:
> p.s.  i was originally going to suggest the SEAD-3 as the next MIPS
> board until he told me it cost $2K. ouch.

You clearly didn't read the marketing drivel closely enough:

"The MIPS=AE SEAD=99 -3 System engineering and development board is designe=
d to
provide a *low-cost* means to support various CPU cores"

:-)

--e89a8ffba159b92bec04da042b2b
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Apr 10, 2013 at 12:20 PM, Robert P. J. Day &lt;<a =
href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<=
br>&gt; p.s. =A0i was originally going to suggest the SEAD-3 as the next MI=
PS<br>
&gt; board until he told me it cost $2K. ouch.<br><br>You clearly didn&#39;=
t read the marketing drivel closely enough:<br><br>&quot;The MIPS=AE SEAD=
=99 -3 System engineering and development board is designed to provide a <b=
><i>low-cost</i></b> means to support various CPU cores&quot;<div>
<br></div><div>:-)</div></div>

--e89a8ffba159b92bec04da042b2b--
