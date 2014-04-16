Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B471BE00BEC
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 12:22:55 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id z11so8439259lbi.36
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 12:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zSaoFdF5mBuybv5seYXhrRkcVBgVPrOvagQ7FVkSPn8=;
	b=hohCY5GezwwPBYyB7uWGTiTGD6uWKs3sqDHWS8oCfECyFKNgXYhD2s26Fssw54WwOh
	iMqrsna8vBjndBFFEtr7eAsrovSHrJuqmgWhS1mB64x4t85DsmI8JpC7wGcf3VieZPN8
	tfSJfiyETAh8Z9ol+tkIkQPAiOBBMUtRScVQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=zSaoFdF5mBuybv5seYXhrRkcVBgVPrOvagQ7FVkSPn8=;
	b=O2ilfcD/vzNH4iVxwVl+ckFd8k5ijziIUIL9P9WF/iNHe3xQmMLEke0X+Ncsm56Zd1
	Qy/l53EsYlT+pLKE0z2cCKObUyMJNhrOhr6PPha74vql8Z2GnVqxz5lRsj6EGJB/qFPd
	ADb1aTj+otHHjiFnwaL+nZUh3lVTl7E4mQ5hiwlSgTDkQz3V5SIxI8Z5R6Izouc1Ocqe
	0nAe8DVg+O4/l2vPN3eM3jeOyyxozKPF52CfKy9bSKIFkqV+4K8RefYorALQoZtrEJLU
	lBX1mfRSZnXMy//JEPqz3uVe6kurjha6Ht+O/5OCJNbKNzUbCc9OrwwJ/XoJDB3mRiW4
	lTSA==
X-Gm-Message-State: ALoCoQkAZEBUWeFikqk0Zo2kjuB9OTNhVSTAYJL5DjkjzlYqnRougu5OQ5Alvp5fi5F4R47/HKSs
MIME-Version: 1.0
X-Received: by 10.152.9.226 with SMTP id d2mr42158lab.79.1397676174365; Wed,
	16 Apr 2014 12:22:54 -0700 (PDT)
Received: by 10.112.45.65 with HTTP; Wed, 16 Apr 2014 12:22:54 -0700 (PDT)
In-Reply-To: <CAD78y+6zPm-NkcQr3v0dFem9Q6d63SLX9hc2heVnrwmQLNKxCA@mail.gmail.com>
References: <CAD78y+6HxrYWCyVh6xbGS=4MXB1WSBzQLSpBo2kKakJ8TZgghA@mail.gmail.com>
	<CA+gsK-pDrPezFHvKKefiAFb+_YXnbadG2KkB7mQEC3JGMstUBg@mail.gmail.com>
	<CAD78y+6zPm-NkcQr3v0dFem9Q6d63SLX9hc2heVnrwmQLNKxCA@mail.gmail.com>
Date: Wed, 16 Apr 2014 12:22:54 -0700
Message-ID: <CA+gsK-ohM-Tg47h6gZmRRn3qmpFrBBVROTw5RHBS1fvgRdD88g@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Federico Vitali <fede.vitali@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Question about remote debugging via gdbserver
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
X-List-Received-Date: Wed, 16 Apr 2014 19:22:57 -0000
Content-Type: multipart/alternative; boundary=001a1132f47ce2652004f72dd778

--001a1132f47ce2652004f72dd778
Content-Type: text/plain; charset=ISO-8859-1

Hi Federico,

I knew that I can add source paths to the debugger.
>
Ok, if that's not the issue what exactly is not working for you?


> I see in your debug profiles that you have some binaries eg "ls". Did you
> import that binary from sysrootfs on your build machine? Can you please
> tell me the steps before adding the path?
>
No, that's actually sample code of a simple ls application that I use for
teaching a class on Linux APIs.

Cheers,
Rudi

--001a1132f47ce2652004f72dd778
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Federico,<div><br></div><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>I knew that I can =
add source paths to the debugger.<br>

</p></blockquote><div>Ok, if that&#39;s not the issue what exactly is not w=
orking for you?</div><div>=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>I see=
 in your debug profiles that you have some binaries eg &quot;ls&quot;. Did =
you import that binary from sysrootfs on your build machine? Can you please=
 tell me the steps before adding the path?</p>
</blockquote><div>No, that&#39;s actually sample code of a simple ls applic=
ation that I use for teaching a class on Linux APIs.</div><div><br></div><d=
iv>Cheers,</div><div>Rudi</div></div>
</div></div>

--001a1132f47ce2652004f72dd778--
