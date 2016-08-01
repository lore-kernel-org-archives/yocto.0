Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF097E00E74; Mon,  1 Aug 2016 07:04:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1432E00E6E
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 07:04:45 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id j124so173378861ith.1
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 07:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nuA7BgkYqtl8RygolTYrdjvzP/RbpePQHXqs4kclVkk=;
	b=zqxSa/VBCzbjDs9AIGsQijY1LiZOYxvbRAzNJDdC6WfSvcfLG+Jtwud5v7OyQcYbhw
	ge/X7a6CQ0vozgrwoaLH/3dZJgC80VG5VROlermJu1WcESPjVmMYxoDCYtd4Juuh7na5
	HGF3DYgjzI6YL2uAXO1vTL0Vg+hXY20Q+H/I/D1ooR+1gIJun5GmVkVhX/Lsmts9ZPZd
	GjS7Ix7nA3mncmgVQxTdRGswgNDk7KpANJvERNj65o8Iv/Jw+wEhCJiipdgb9EqIw8EA
	R9huYAoUBhuKm0cZnLxzqEgFD0YdlmAk5PjAx/zTfoDoz2c8+7wsS4IDKA030IVYqPNA
	1Q1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nuA7BgkYqtl8RygolTYrdjvzP/RbpePQHXqs4kclVkk=;
	b=QqDAthusvUfUoEsL+pLKCV7RBMkSD6XHQ8Qdg1kdfyt62Fh8KQgLN+R4JTfFGrrNZ8
	ewKVoUhjezBh1AFTv9BDjoqcI3hTgG6Cmc6ni3Pn6BbM1VrA2eILQsHfOtC+cDhN5i1I
	TqrRy41yPpUraCqXkWWi2j+XulCPIP24wAoAvCoXIbNhcDIjobzQ8mzC1o7EK/KTjyCU
	0qdQNu/yfN1D2f31ILD3MBj9Gx3cP/mNkZzQpmlp2dorut7E3h7gGyWDutDxi7Jm9dxM
	YcjhNTf2fRQCJ+zGDBrkytU8k8uNHn4PAp9gkHzMchgGwHNfVdoMgyhFr5LGzssRIyvo
	Jaiw==
X-Gm-Message-State: AEkoouvtrB7RYpd8blugoYeBDiCCHjaslwoVEv7OyqNTaiNvsvLqclyk4YxYaeynGd2QUH7Fd+CmfsHwVburQQ0y
X-Received: by 10.36.121.204 with SMTP id z195mr14058793itc.22.1470060285250; 
	Mon, 01 Aug 2016 07:04:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 1 Aug 2016 07:04:25 -0700 (PDT)
In-Reply-To: <579C6829.8080804@mlbassoc.com>
References: <579C6829.8080804@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Aug 2016 15:04:25 +0100
Message-ID: <CAJTo0LZ=h9Yoya4CyMNz3jeJR2XzeDqWi+cgmr6rcPRKBxZCJQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: A question of sstate and compilers
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
X-List-Received-Date: Mon, 01 Aug 2016 14:04:50 -0000
Content-Type: multipart/alternative; boundary=001a114aa46619e33f0539031523

--001a114aa46619e33f0539031523
Content-Type: text/plain; charset=UTF-8

On 30 July 2016 at 09:41, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to isolate a problem that showed up in my builds
> in the last month.  Little has changed in the sources, but
> the one big change was I moved from GCC/4.9 to GCC/5.x  On
> the surface, this seemed to be a non-consequence, but I have
> one very subtle corner case that is now broken.  In an effort
> to isolate the issue (I no longer think it was the compiler
> change), I went back to GCC/4.9.  This caused my build (tree)
> which has existed for many months (the same build tree started
> in Feb 2016) to basically rebuild everything.
>
> There's the rub - shouldn't the sstate-cache hold all of those
> old bits and just be able to re-stage?  I'm a bit confused about
> that.  Even worse, I switched back to GCC/5.x, didn't touch
> anything else in my sources or build tree, and now it's off
> again, [re]building the majority of my packages.
>

It's possible that there was some other change that caused a rebuild.
 bitbake-whatchanged, bitbake -S printdiff, etc will help you chase this if
you want to.

Ross

--001a114aa46619e33f0539031523
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 July 2016 at 09:41, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":bh" class=3D"a3s aXjCH m=
1563af8147c4b5d9">I&#39;m trying to isolate a problem that showed up in my =
builds<br>
in the last month.=C2=A0 Little has changed in the sources, but<br>
the one big change was I moved from GCC/4.9 to GCC/5.x=C2=A0 On<br>
the surface, this seemed to be a non-consequence, but I have<br>
one very subtle corner case that is now broken.=C2=A0 In an effort<br>
to isolate the issue (I no longer think it was the compiler<br>
change), I went back to GCC/4.9.=C2=A0 This caused my build (tree)<br>
which has existed for many months (the same build tree started<br>
in Feb 2016) to basically rebuild everything.<br>
<br>
There&#39;s the rub - shouldn&#39;t the sstate-cache hold all of those<br>
old bits and just be able to re-stage?=C2=A0 I&#39;m a bit confused about<b=
r>
that.=C2=A0 Even worse, I switched back to GCC/5.x, didn&#39;t touch<br>
anything else in my sources or build tree, and now it&#39;s off<br>
again, [re]building the majority of my packages.</div></blockquote></div><b=
r>It&#39;s possible that there was some other change that caused a rebuild.=
 =C2=A0bitbake-whatchanged, bitbake -S printdiff, etc will help you chase t=
his if you want to.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a114aa46619e33f0539031523--
