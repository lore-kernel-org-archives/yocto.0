Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B07EE003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 09:33:08 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id q14so3008810vbe.41
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 09:33:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ZeVvDxzZw0a2jUOa+fFbEjxYxoYV1fUDmqxibahpkig=;
	b=HLBb1u1lcV0qAUjuFGLOlF+JtXMF1IYuAe0EmVNzA+xtgLw3gWeJ+oaf7+NJmoBVho
	g4QLgjVcacGwPMnytm7F0TmABPpa1aOU0J5cu+TPmAygh6hMviII584yE5NhbzmHjgKx
	XhP+QXmZ5O8vdB72ku/BEWhd4+Pb2U52T7/DOlkX1Xxz8pYHdAyEwTDjKAYVxJlz6qOc
	PzxeLsrC2vckbCy+64cjN6poQKeC3T3W96dMjtSXkdQzXEp8gJn/W6EXYLjdHnRAoqfp
	mbxBIe2JoRVTtTGJocRnZIkzZWWAUob24W6p6MPEzt5POx9Mnk4+wprgP/Eif2wQJAvK
	OMmQ==
X-Received: by 10.58.233.8 with SMTP id ts8mr5973916vec.44.1375720387696; Mon,
	05 Aug 2013 09:33:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 5 Aug 2013 09:32:47 -0700 (PDT)
In-Reply-To: <51FFD2F4.8000103@mlbassoc.com>
References: <51FFB335.1040902@mlbassoc.com>
	<CAJTo0LbCUFz4cSmcORyfe7c+nhJDJoWURPHVVMnfpBZ9JwmYMQ@mail.gmail.com>
	<51FFD2F4.8000103@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Aug 2013 17:32:47 +0100
Message-ID: <CAJTo0Lbg-RR8tt6v0otvuiwSyk2eFV8yAqkdsQ=UpB6_1tHvKw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkhH/e9OD1SKYMeqRFI7dfcjX1KjGDzKcfNttaYgY1MKdl6ZNeaCmLXM8Ra25rQr/RrdVnl
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X11 without a desktop
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
X-List-Received-Date: Mon, 05 Aug 2013 16:33:10 -0000
Content-Type: text/plain; charset=UTF-8

On 5 August 2013 17:29, Gary Thomas <gary@mlbassoc.com> wrote:
> Can I safely just disable the dbus-wait or do I need something else
> there, e.g. sleep for a few seconds, ...?  Maybe I should patch dbus-wait
> (which you, Ross, wrote) to be able to specify the timeout?

You can safely disable that block.  Patches welcome for dbus-wait, I
wrote it a *long* time ago.

Ross

