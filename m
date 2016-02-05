Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8BD0E00D2A; Fri,  5 Feb 2016 11:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1453E00BA4
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 11:53:57 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id f81so139734250iof.0
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 11:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=FSDBYDQnuYh5tcfC8lSCtSc5xPcOrl9PDBc04kzt+Jk=;
	b=Rsi1uK7vANS/1ezrD5QUd/64/Z6eyLFGln4gHQrXDdmAIWbMgiPL4JENmdG63tMa2b
	RFAY2b2hG4AJJbKbMbI0MVBMHrK+9rmQCUbnLYb0WEkBFe/LHjH6HvNbMZrRNAAqru9a
	9l50hR0BV/VeT5xtgtMwRLAccges3DMSxhhSuE1s8v96twLmFgH+ocYh7IEfcsWP0L7O
	xiZqvjHb00NpN+Pk+IFkMnmzCqw22SbxsIJu8YRtPpERi1Ny1fvzIgfOgiBWHzxKxa/X
	xzugPRTh8GIgjUYia7Lixar0GEyMHvxdGTOBMW+zTX8XFrrtjKEdQqkFYChEF4tcap9d
	tqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FSDBYDQnuYh5tcfC8lSCtSc5xPcOrl9PDBc04kzt+Jk=;
	b=NUOsmUc5wKJ2fwnERAVZlPCnM5zG1bMs20je/TcKhOVo76fxREGnCKXobbMvOMCa+s
	4alSKc7afLS3qgsYB4J1YnoTezb2w2VYsqg+2L/QDOp/wm5wjrnb/NREhABsehYi7SHb
	yPRgxCrTliG7PG3HOkNHZ0gBnKIzJTj95//FBduHBXUvR3NegYGF3RQ0T+zU9zbHoFpy
	HpPqL5AR93QINDIy1yp5nJTk2VlXJRg9tSBFFX8srF+ecG4K+Iqe4gfOC7inxaK5RQmQ
	oYDFApULwOghzdKKjJLJ5ByeJ/9e2MfBfxOV5KZqwgKK2I0QUbATXZbT92Ue+UGywJiK
	cY8A==
X-Gm-Message-State: AG10YOSaAUKG52TCMjWQP9oR0iJhONhHB+r1XtfhR6hnewTB8iLBQ1N8Fn6wI0N6q9uibGdgxAMT7MxiFcVX+EYv
X-Received: by 10.107.164.15 with SMTP id n15mr15263207ioe.148.1454702036719; 
	Fri, 05 Feb 2016 11:53:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 11:53:37 -0800 (PST)
In-Reply-To: <D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 19:53:37 +0000
Message-ID: <CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 19:53:59 -0000
Content-Type: multipart/alternative; boundary=001a11377682275e25052b0b36ab

--001a11377682275e25052b0b36ab
Content-Type: text/plain; charset=UTF-8

On 5 February 2016 at 18:12, Nathan Sowatskey <nathan@nathan.to> wrote:

> interpreter /lib64/ld-linux-x86-64.so.2


Does the loader hunt around for this, as this is certainly not present in a
default OE image?

Ross

--001a11377682275e25052b0b36ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 18:12, Nathan Sowatskey <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nathan@nathan.to" target=3D"_blank">nathan@nathan.to</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">interpreter /lib64/ld-linux-x8=
6-64.so.2</blockquote></div><br>Does the loader hunt around for this, as th=
is is certainly not present in a default OE image?</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11377682275e25052b0b36ab--
