Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0B38E006C2
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 09:56:42 -0800 (PST)
Received: by mail-oa0-f51.google.com with SMTP id n12so1690093oag.24
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 09:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qzIWqnG0pf6jld9EKdTGs4v5yKrL4nvrdLZK0WV1wg4=;
	b=xfw5GgHBXnMZTz6L9jQqZ6PvgHGcCYXQl9fSK9LmqyXngOaSyCF88dXQAKK6aqwbQ9
	x8jaHOFIjHTSxFQqkBxopnM11wg8NI+XvPeUPIk8F31ysXORUFD0Zl6LpwujIDRtCEyk
	UbhYMKVIdMxZ16s3bWRbuzwrsxi4mxdQyXruCQ9RZf3kShmSF/d+K6ABYGaAuK79GgyQ
	nelJtJyp6g46rTrWVjvedhAeGKwcAVXSzUHxiQRjE8UQK48AJX9KvUY/FT7akp227wLK
	VmLo8YbzD0x4/dcAhLbv5O7PaMM5PUJaMHTr/FFJK25XtsgjreMnZIX4AaNF7FLJ9lwk
	Ouzw==
X-Received: by 10.60.19.231 with SMTP id i7mr1581424oee.34.1358359001814; Wed,
	16 Jan 2013 09:56:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.14.2 with HTTP; Wed, 16 Jan 2013 09:56:20 -0800 (PST)
In-Reply-To: <CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 16 Jan 2013 23:26:20 +0530
Message-ID: <CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 17:56:43 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c60ac7d89b04d36b9998

--e89a8ff1c60ac7d89b04d36b9998
Content-Type: text/plain; charset=ISO-8859-1

I tried the same but again ended up with error. As of now i am removing all
unwanted things from rootfs by making changes in image_types.bbclass. I am
sure this is not the correct way, any ideas are appreciated..

Thanks
Navani


On Thu, Dec 27, 2012 at 11:08 PM, Jon Szymaniak <jon.szymaniak@gmail.com>wrote:

> >>
> >> Hi,
> >>
> >> I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.
> >>
> >>
> >>
> >> At the time of integrating qt-embedded with rootfs, I am getting qtopia
> >> directory in usr/share path of rootfs.
> >>
> >> I tried removing qtopia directory through qt recipe but ended in
> >> compilation error. Please suggest any idea to remove qtopia from share
> >> directory.
> >>
> >>
> >>
> >> Thanks and Regards
> >>
> >> Navani Kamal Srivastava
> >
> > I ran into this as well after using a bbappend to disable a number of
> > Qt features, including the building of demos that get staged in the
> > aforementioned path.  In my case, that qtopia directory (and any
> > subdirectories) wound up either being empty or containing files that
> > were unnecessary for my build.
> >
> > My quick and dirty solution was to just to add a install_append()
> > containing a 'rm -rf ${D}${datadir}/qtopia' in my bbappend. (Be sure
> > you don't have anything important in there!) I'd be curious to hear if
> > there's a better approach to this as well...
> >
> > Regards,
> > Jon
>
> Oops...just wanted to note the typo in my above response -- I'm not at
> a machine where I have access to my recipes.
>
> That should be a do_install_append(), not install_append().  I'd also
> double check the qtopia path, as I wrote that from memory, which may
> not be reliable. ;)
>
> Apologies,
> Jon
>

--e89a8ff1c60ac7d89b04d36b9998
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I tried the same but again ended up with error. =
As of now i am=20
removing all unwanted things from rootfs by making changes in=20
image_types.bbclass. I am sure this is not the correct way, any ideas=20
are appreciated..<br>
<br></div>Thanks<br></div>Navani<br></div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">On Thu, Dec 27, 2012 at 11:08 PM, Jon Szymania=
k <span dir=3D"ltr">&lt;<a href=3D"mailto:jon.szymaniak@gmail.com" target=
=3D"_blank">jon.szymaniak@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">&gt;=
&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architect=
ure.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; At the time of integrating qt-embedded with rootfs, I am getting q=
topia<br>
&gt;&gt; directory in usr/share path of rootfs.<br>
&gt;&gt;<br>
&gt;&gt; I tried removing qtopia directory through qt recipe but ended in<b=
r>
&gt;&gt; compilation error. Please suggest any idea to remove qtopia from s=
hare<br>
&gt;&gt; directory.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thanks and Regards<br>
&gt;&gt;<br>
&gt;&gt; Navani Kamal Srivastava<br>
&gt;<br>
&gt; I ran into this as well after using a bbappend to disable a number of<=
br>
&gt; Qt features, including the building of demos that get staged in the<br=
>
&gt; aforementioned path. =A0In my case, that qtopia directory (and any<br>
&gt; subdirectories) wound up either being empty or containing files that<b=
r>
&gt; were unnecessary for my build.<br>
&gt;<br>
&gt; My quick and dirty solution was to just to add a install_append()<br>
&gt; containing a &#39;rm -rf ${D}${datadir}/qtopia&#39; in my bbappend. (B=
e sure<br>
&gt; you don&#39;t have anything important in there!) I&#39;d be curious to=
 hear if<br>
&gt; there&#39;s a better approach to this as well...<br>
&gt;<br>
&gt; Regards,<br>
&gt; Jon<br>
<br>
</div></div>Oops...just wanted to note the typo in my above response -- I&#=
39;m not at<br>
a machine where I have access to my recipes.<br>
<br>
That should be a do_install_append(), not install_append(). =A0I&#39;d also=
<br>
double check the qtopia path, as I wrote that from memory, which may<br>
not be reliable. ;)<br>
<br>
Apologies,<br>
Jon<br>
</blockquote></div><br></div>

--e89a8ff1c60ac7d89b04d36b9998--
