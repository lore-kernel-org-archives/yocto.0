Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 857BFE00C41; Mon,  7 Mar 2016 02:24:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C56AE00BFF
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 02:23:57 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id z76so24523117iof.3
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 02:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r2NSP+bIvMAlT7ed5E1/TEaPdavisORyD/SI1V+6p40=;
	b=zglp0tVq6FjOAkdv56XwB78YpUkx7yEzVS9ovB+4grgn0CitBkOYnX0LwtBYrOwL9i
	nGtunUMMWSUQ39nAbZQteJXK5Md1RYrDUEMkT7uDNbA8Y3bnUO0uPCeM4ewJp1jS8PbB
	2hIk1rb5sgaEA0slrqch2vyHqcgks2pLempXSkMU0CTHc3k04n4N0hOTAMCty1kcLhpZ
	WE2uuRPc4xv44deSOIw5cET7A8NlpJ7kXEHGusSSIm9ITv98PbtKbb8bwvQBburM7gzF
	fe7SR2f2hLmMqhcIuOp7TRFfqMq5nnKDkHgVAzW5s8PpVeSjvK31q97nJwhW//98o8cw
	uc0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r2NSP+bIvMAlT7ed5E1/TEaPdavisORyD/SI1V+6p40=;
	b=LS7KT8xCBm6FijSGiSIxRBsqRBQTX0Lf7myZIjTccPWZzXuK5obtMmo23F9hlS/sUV
	lJrVOls3KZZGETz3eJx0h6jEZ5I7nSWHi1ewa8G2EuTqB9/WpSZTHoFGzUcm+PGDI5Nq
	vJqYSqYct7md7gv2woL7SQswLw80RzKaEmu1YGBqd2pyT/z1e2HAv8Uv7vS8tpskX834
	mIhYpAfS1acHtE8PgOZc+swa9Z4gF0vf2M6gXye36MIlqR+gwcPQixvzWtjBS4UgIW+L
	CODbriqof2UVkes9yHhaYJc0LunfQH7AaWRbcrej6GvlpXpW82ZxhV3JP5CV+KA4PJHa
	4dsQ==
X-Gm-Message-State: AD7BkJK1nL6F2YUDIOptyet3H3w2T6MnjKRzeEbUTEfKhGpajEqLfHpf6KNHhGf+bIKaUsEKM4ChBkiJVx+9UAw8
X-Received: by 10.107.137.92 with SMTP id l89mr22506726iod.133.1457346237081; 
	Mon, 07 Mar 2016 02:23:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 02:23:37 -0800 (PST)
In-Reply-To: <CALLyC8SWZ8LfnDwAWpsFxY8PZj+f6w7bySXiBmq8E7o63OVkUw@mail.gmail.com>
References: <CALLyC8SWZ8LfnDwAWpsFxY8PZj+f6w7bySXiBmq8E7o63OVkUw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 10:23:37 +0000
Message-ID: <CAJTo0LbP28EHd+Gd-Vp8PKrBoavfU-+k1BB9MmvnRV0cjcKbUg@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: How to add some additional enviroment variables to /etc/profile file while building IMAGE
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
X-List-Received-Date: Mon, 07 Mar 2016 10:24:03 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb4c6c7b3052d72dcdd

--001a113ebdb4c6c7b3052d72dcdd
Content-Type: text/plain; charset=UTF-8

On 7 March 2016 at 10:20, Vivek Per <pervivek@gmail.com> wrote:

>      i want to add some additional enviroment variables in /etc/profile
> file. How can i add these while building, so that it reflect in my target
> image.
>

base-files is the recipe that ships /etc/profile, so you can use a bbappend
to either replace the file entirely or _append a function to write your
changes during the build.

Ross

--001a113ebdb4c6c7b3052d72dcdd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 10:20, Vivek Per <span dir=3D"ltr">&lt;<a href=3D"mailto=
:pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0 =C2=A0 =C2=A0i want to a=
dd some additional enviroment variables in /etc/profile file. How can i add=
 these while building, so that it reflect in my target image.</div><div></d=
iv></blockquote></div><br>base-files is the recipe that ships /etc/profile,=
 so you can use a bbappend to either replace the file entirely or _append a=
 function to write your changes during the build.</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ebdb4c6c7b3052d72dcdd--
