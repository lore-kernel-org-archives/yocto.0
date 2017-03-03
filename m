Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94149E00A26; Fri,  3 Mar 2017 05:44:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7037E009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 05:44:44 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id n127so175899536qkf.0
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 05:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OGQ1lLGwA8fqqxNa4g4CBSjim2IWsDrJtfDNVypbz9E=;
	b=2FuRhqMuMI4XQV5OsQvLfyq/nU+X4ep3byXGU3V4LKmSj9qH0NNXrmk6UR6M2HnvKc
	jTcmyYoKoc46uppgnyWuOt5TA33U8BPotE4jUCfZu98RJNrybEF+znUsMANqsglSRHUD
	MaApm3eNKPHxEi4SDHjbwBNoH5pozkoVlIbgqMHGftxln5b9fbU4FUVW0FzIhoTy0shJ
	uTStM2yJMymqmTnUriQ4tMVRxq842bKJTt1XFzJnWnWjqHVVo7c9xH5W3zGruYIaNPcp
	GFdVoKdspOyPRXX+hYa0ZoytnPcY7+a6mqOm4MTUZs+XJOCJ9aiU1svIXG4lpySL40Ww
	o4BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OGQ1lLGwA8fqqxNa4g4CBSjim2IWsDrJtfDNVypbz9E=;
	b=i9RDSKFfVEmbtTJKNpJyJERUk2H/IhCSj6nb4eTjILnbN607+wBkno/tx/TESVgQAv
	Sk5sNRl9uuRp3CzVJwqOGYiMwwRgqueIodWUBDAIlW3SXHAGIjeu/+abVK8lxb0Dosfd
	HF6KHQDTUtthiO0lz6qunSfbqz+oMEd1lZLr/cwNTvF/MSmXKzdjg4K9jbxFjgi4QyaE
	Jg/00wXoVe5I4iFFhk1YQuHgDna1nzGnfIPebZa2d+/laQmKHEVLYVZqDiqWXf0pwUHS
	j97k7+NWsiCUNFjzbjSeMg8EK5Bjb9ebwGcer7dpvlTz1xofbQzF56tT3i9cvvQ2Jam9
	isaQ==
X-Gm-Message-State: AMke39mmGRChb9bfvlccpzxFYBtBSTG+pd6wY9qHMxw4boo5KOYUBzQ1ZvUgB7toGlelF5ewAO69Znf/8GNP2Dmc
X-Received: by 10.55.1.134 with SMTP id u6mr2960583qkg.36.1488548683855; Fri,
	03 Mar 2017 05:44:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 3 Mar 2017 05:44:23 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1703030552420.8760@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703030552420.8760@uk63952.mitel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 Mar 2017 13:44:23 +0000
Message-ID: <CAJTo0LYeZMoB6Z19vEWWX7sKjUESnryZV9FH5jP7tixf1-9PtQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP "sub-layer" examples -- better example than meta-intel?
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
X-List-Received-Date: Fri, 03 Mar 2017 13:44:47 -0000
Content-Type: multipart/alternative; boundary=001a114046c488687f0549d3bf85

--001a114046c488687f0549d3bf85
Content-Type: text/plain; charset=UTF-8

On 3 March 2017 at 10:59, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>   also, not sure how meta-yocto-bsp fits that description. it neither
> contains sub-layers, nor is itself a sub-layer of a higher-level
> layer. sure, it comes along as part of the checkout of "poky", but the
> poky checkout itself is not a layer.
>

meta-yocto-bsp being a sub-layer in the meta-yocto repository, I guess.

Ross

--001a114046c488687f0549d3bf85
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 March 2017 at 10:59, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D=
"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2m7" class=
=3D"a3s aXjCH m15a93d3f43a48523">=C2=A0 also, not sure how meta-yocto-bsp f=
its that description. it neither<br>
contains sub-layers, nor is itself a sub-layer of a higher-level<br>
layer. sure, it comes along as part of the checkout of &quot;poky&quot;, bu=
t the<br>
poky checkout itself is not a layer.<br></div></blockquote></div><br>meta-y=
octo-bsp being a sub-layer in the meta-yocto repository, I guess.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--001a114046c488687f0549d3bf85--
