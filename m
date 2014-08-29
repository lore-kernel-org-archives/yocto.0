Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9C67E007A2; Fri, 29 Aug 2014 08:50:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31E47E00781
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 08:49:55 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id l13so9851036iga.4
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 08:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dsI7SRGyuaM8zjxpr8Yaq+WMdkAZeJXFpLO9C9aQhsM=;
	b=NeXg0Rig46Hi30ERu3VPZWlU8fYG8Hp6QemUKOu8hbYzK5qq1rrZiF8Oiwo6YMI8x3
	cMB8FFdCd0DotzZ1wRjtu/7uQyawh8Jqi6l/NwioGjxRvt+ikC1R+UlIgS/hqnOSB6AD
	sDVj6QQaCtoCxjGe1Klcvr+4C8K2W+NQODnro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=dsI7SRGyuaM8zjxpr8Yaq+WMdkAZeJXFpLO9C9aQhsM=;
	b=U2NkAdjOs3yBOy2lkiOOgJQ6duPz5EP3Ya8Oe8d47re0QWeaY5FgyKHJQDrky5innO
	4KB97mIM0y6oYJW9HNefvrS7Tp4N6Q6vq0Xl2QvDY9a8VBH6aUJcwpjYX6OrtGNQMibH
	QpkeTL7/9BHflBHtFOll+2VitQzGOZCOpfSMczMFTr+ZZ0kzE0Uz/wPc07Z6e4klDeJJ
	F5s5x/K9x0cx7m3bs7xtNtEOuTLxMH8zt5q/JSxbbvKLKHMZzJMIo7BmnrX4ig5RGmfF
	ashI9q8GXdfRtR1ef7XA5ZadIsppvNZ8boiMGjeSaoVLErnSbUQyLDvnlfDBig4pjl+h
	olNg==
X-Gm-Message-State: ALoCoQllHO2RoF0l6L4KyPOQIVsA8YeDX9H9rx1afmbQin70Sw+M8D76QNWhSr9GBe6dh1pj7JJD
MIME-Version: 1.0
X-Received: by 10.50.13.106 with SMTP id g10mr5047177igc.45.1409327395041;
	Fri, 29 Aug 2014 08:49:55 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Fri, 29 Aug 2014 08:49:54 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1408290721080.4903@localhost>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
	<alpine.LFD.2.11.1408290721080.4903@localhost>
Date: Fri, 29 Aug 2014 08:49:54 -0700
Message-ID: <CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Fri, 29 Aug 2014 15:50:03 -0000
Content-Type: multipart/alternative; boundary=089e013c69cec127050501c69a7e

--089e013c69cec127050501c69a7e
Content-Type: text/plain; charset=UTF-8

I think this is a great idea and I volunteer to help with the effort.


>   that is kinda what i was after. i realize it's an open-ended
> request, but it would be great if there was a list of "recommended"
> dev kits representing various architectures/processors that people new
> to YP could purchase for experimentation, *knowing* that those dev
> kits had a YP build that would work out of the box. not necessarily
> technically complete, but that it would just boot and let them start
> playing.
>

The "work out of the box" part is the tricky one. Unfortunately, many YP
BSP layers do not include instructions on what to do after the build has
completed. If you don't know what to do with boot loader and kernel images,
flattened device tree files, root file system archives and images then you
are at a loss. Commonly the boards also require a special boot media
partitioning and the like.

While this type of info should be in the BSP readme files I think it would
be good to have step by step instructions that gets one from setting up the
build environment to building and creating bootable media for each board.

Cheers,
Rudi

--089e013c69cec127050501c69a7e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>I think this is a great idea and I volunteer to help with the effort.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"">
</div>=C2=A0 that is kinda what i was after. i realize it&#39;s an open-end=
ed<br>
request, but it would be great if there was a list of &quot;recommended&quo=
t;<br>
dev kits representing various architectures/processors that people new<br>
to YP could purchase for experimentation, *knowing* that those dev<br>
kits had a YP build that would work out of the box. not necessarily<br>
technically complete, but that it would just boot and let them start<br>
playing.<br></blockquote><div><br></div><div>The &quot;work out of the box&=
quot; part is the tricky one. Unfortunately, many YP BSP layers do not incl=
ude instructions on what to do after the build has completed. If you don&#3=
9;t know what to do with boot loader and kernel images, flattened device tr=
ee files, root file system archives and images then you are at a loss. Comm=
only the boards also require a special boot media partitioning and the like=
.</div>
<div><br></div><div>While this type of info should be in the BSP readme fil=
es I think it would be good to have step by step instructions that gets one=
 from setting up the build environment to building and creating bootable me=
dia for each board.</div>
<div>=C2=A0</div><div>Cheers,</div><div>Rudi</div></div>
</div></div>

--089e013c69cec127050501c69a7e--
