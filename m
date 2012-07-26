Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95657E01304
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 02:13:36 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1986757ghb.35
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 02:13:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=UtzO+uS5iD8oVR9aoLqJvBEW6nBB/tmQO6XS7kK9JRQ=;
	b=S8rg4ndLe/cC8jmHvJINK5in3y4mwssmGiXLl32PSr/DgsYTPYMBvuWzzwsr4IJiHN
	7dQ5PecJnZ/9IL5u+sRyu7wry5lJjKKFNaUBY8yi1Nh/w9qsrx6DhSZc56ajR5Ao3rdP
	Tpeg3TrJ8r5ZVu163ESVYsiF/PCpDWqB4MJ9QZGi5BIkr219kQ5YoKeqdctP5Ru9HSDF
	ahZ0NQ/KWqh2uCBUL5xMf/CXmFAwqPWzjUyf6PmKW6LFyJ/yV9R32r7NDTU03itH6N9g
	qwXYD2jchUChaTOhx6WGaXo+pkBUg9F2jB3C8u4RBzLtR7aIDHYiMsIz6X5jn1AC4e6w
	vGjQ==
Received: by 10.42.132.1 with SMTP id b1mr20499877ict.8.1343294015417; Thu, 26
	Jul 2012 02:13:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.139.164 with HTTP; Thu, 26 Jul 2012 02:13:12 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <13995260.dQec6ZRHmP@helios>
References: <CAK18fxEgmH_vMXtvXfO5JEVMWizcA5kwf6+WJi7+rPxDNsMAYA@mail.gmail.com>
	<13995260.dQec6ZRHmP@helios>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 26 Jul 2012 12:13:12 +0300
Message-ID: <CAK18fxEysJ6L2=EAKK6EVy_mRr_Gx2HV2PkvqbQX9vAbc80rUg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQmk/fSWaNO7W92ly7WXuuGgeYyqOaR26mSPHt+G9PUVvwrv4iEfa/iSa+O8W13OBgQ7vLRq
Cc: yocto@yoctoproject.org
Subject: Re: Fail to rm a 4G file...
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
X-List-Received-Date: Thu, 26 Jul 2012 09:13:36 -0000
Content-Type: multipart/alternative; boundary=90e6ba3fd4f99e2e3a04c5b80239

--90e6ba3fd4f99e2e3a04c5b80239
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jul 26, 2012 at 11:50 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 25 July 2012 21:53:26 Andrei Gherzan wrote:
> > Anybody faced this error before and can save me from searching the roots
> of
> > the problem?
> >
> > | 53135360 bytes (53 MB) copied, 1.21693 s, 43.7 MB/s
> > | rm: cannot remove `<img-name>.sdimg': Value too large for defined data
> >
> > type
> >
> > | ERROR: Function failed: do_rootfs
> >
> > P.S. Using yocto master + rpi layer.
>
> Not sure but I assume it's this issue:
>
>
> http://www.gnu.org/software/coreutils/faq/coreutils-faq.html#Value-too-large-for-defined-data-type
>
> What host distro are you using?
>
>
Ubuntu 32bits, 12.04

ag

--90e6ba3fd4f99e2e3a04c5b80239
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">On Thu, Jul 26, 2012 at 11:50 AM, Paul Eggle=
ton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" =
target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">On Wednesday 25 July 2012 21:53:26 =
Andrei Gherzan wrote:<br>
&gt; Anybody faced this error before and can save me from searching the roo=
ts of<br>
&gt; the problem?<br>
&gt;<br>
&gt; | 53135360 bytes (53 MB) copied, 1.21693 s, 43.7 MB/s<br>
&gt; | rm: cannot remove `&lt;img-name&gt;.sdimg&#39;: Value too large for =
defined data<br>
&gt;<br>
&gt; type<br>
&gt;<br>
&gt; | ERROR: Function failed: do_rootfs<br>
&gt;<br>
&gt; P.S. Using yocto master + rpi layer.<br>
<br>
</div></div>Not sure but I assume it&#39;s this issue:<br>
<br>
<a href=3D"http://www.gnu.org/software/coreutils/faq/coreutils-faq.html#Val=
ue-too-large-for-defined-data-type" target=3D"_blank">http://www.gnu.org/so=
ftware/coreutils/faq/coreutils-faq.html#Value-too-large-for-defined-data-ty=
pe</a><br>


<br>
What host distro are you using?<br><br></blockquote><div>=A0</div><div>Ubun=
tu 32bits, 12.04=A0</div><div><br></div><div>ag</div></div>

--90e6ba3fd4f99e2e3a04c5b80239--
