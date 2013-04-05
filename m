Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F8F5E01460
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 09:26:52 -0700 (PDT)
Received: by mail-qe0-f51.google.com with SMTP id 1so387887qec.38
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 09:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=UQm35hxq8puQ0Mk/P5ipLDrmc77l9kYX6hKKEgc9IDc=;
	b=ibFmgML1Xfq4aDHLSQJNGTTZZ6FP2PXdyspThEikgF9mxqJAhP3OEhWcEQn1uBRMLV
	nWDkhIkjLxgTpbmfsmR14tysc8N1UT9wRHDtWv0TxrcOCnVUHdV+Qqg5iBS3yboxAxB/
	+XMd/XSg6Qpt4UO1tDHDsXqczSm8HRTURUE54w+PiD1gvrVeAmuG/J4jomFel7u4Uhem
	Yjm/xi9+K5aZpf5LdgSWOPC3f3Hz3oydh0HB3O9fHZ+GRFuS7ZnaCqnC3u/+pdFS4d7K
	ClrWvkkfM1jVwyUbIUCksFIldYt2FYcFbZJD/26g67elbILaBCI/udwzk5uua3rGHQWs
	/ufA==
MIME-Version: 1.0
X-Received: by 10.229.119.10 with SMTP id x10mr3226432qcq.133.1365179211552;
	Fri, 05 Apr 2013 09:26:51 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 09:26:51 -0700 (PDT)
In-Reply-To: <CAFyqS9qUZSo+s7QFkZcCOL5qfJGpnZVAD7DxBBQ8-16C6q96OQ@mail.gmail.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515ED8CA.60601@mlbassoc.com>
	<CAFyqS9pp+O=URfqZz1SGY8xvO7a6Meqk7AnhDuO6YqhdbEP-5w@mail.gmail.com>
	<1484346.WPBZMnUxrg@helios>
	<CAFyqS9qUZSo+s7QFkZcCOL5qfJGpnZVAD7DxBBQ8-16C6q96OQ@mail.gmail.com>
Date: Fri, 5 Apr 2013 18:26:51 +0200
Message-ID: <CAFyqS9oQevE-kbReAZhLv6N=Waq5wU3GXkdfr8VO8YnNJ-dWew@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: USB Ethernet problems
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
X-List-Received-Date: Fri, 05 Apr 2013 16:26:52 -0000
Content-Type: multipart/alternative; boundary=000e0cd5cfd2f5a3dc04d99f8df0

--000e0cd5cfd2f5a3dc04d99f8df0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2013 at 6:16 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>wr=
ote:

>
>
> On Fri, Apr 5, 2013 at 5:51 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> On Friday 05 April 2013 16:13:32 Hans Beck=E9rus wrote:
>> > On Fri, Apr 5, 2013 at 3:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> > > As for the timing, maybe I've just been very lucky :-)  I can see th=
at
>> > > if the device isn't present when the system runs 'ifup eth0' (or the
>> > > equivalent) you'll have a problem.  That's what connman is for - I
>> don't
>> > > use it, but it might help you out.
>> >
>> > I should take a look at it. But it already sounds like something much
>> > bigger than this simple system should really need.
>> > Thanks for all the help so far. If anything else comes to your mind,
>> please
>> > tell me. I guess I will have to live with my Q&D patch for now ;)
>>
>> One other possibility I can think of would be using a udev rule to run a
>> script when the actual hardware detection/insertion event happens.
>>
>> Cheers,
>> Paul
>>
>>
> Yea. In this case mdev. But I guess mdev as provided by poky/busybox
> should provide this facility too?
> But I can no see any mdev configuration files :(
>
> Ah. Found it in busybox config.
CONFIG_FEATURE_MDEV_CONF=3Dy should do the trick.
Also CONFIG_FEATURE_MDEV_EXEC is needed to run a script I think.

Hans

--000e0cd5cfd2f5a3dc04d99f8df0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 6:16 PM, Hans Bec=
k=E9rus <span dir=3D"ltr">&lt;<a href=3D"mailto:hans.beckerus@gmail.com" ta=
rget=3D"_blank">hans.beckerus@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br><br><div class=3D"gmail_quote">=
On Fri, Apr 5, 2013 at 5:51 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>On Friday 05 April 2013 16:13:32 Hans Beck=E9rus wrote:<br>
&gt; On Fri, Apr 5, 2013 at 3:59 PM, Gary Thomas &lt;<a href=3D"mailto:gary=
@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt; wrote:<br>
</div><div>&gt; &gt; As for the timing, maybe I&#39;ve just been very lucky=
 :-) =A0I can see that<br>
&gt; &gt; if the device isn&#39;t present when the system runs &#39;ifup et=
h0&#39; (or the<br>
&gt; &gt; equivalent) you&#39;ll have a problem. =A0That&#39;s what connman=
 is for - I don&#39;t<br>
&gt; &gt; use it, but it might help you out.<br>
&gt;<br>
&gt; I should take a look at it. But it already sounds like something much<=
br>
&gt; bigger than this simple system should really need.<br>
&gt; Thanks for all the help so far. If anything else comes to your mind, p=
lease<br>
&gt; tell me. I guess I will have to live with my Q&amp;D patch for now ;)<=
br>
<br>
</div>One other possibility I can think of would be using a udev rule to ru=
n a<br>
script when the actual hardware detection/insertion event happens.<br>
<br>
Cheers,<br>
Paul<br>
<span><font color=3D"#888888"><br></font></span></blockquote><br></div></di=
v></div>Yea. In this case mdev. But I guess mdev as provided by poky/busybo=
x should provide this facility too?<br>But I can no see any mdev configurat=
ion files :(<span class=3D"HOEnZb"><font color=3D"#888888"><br>

<br></font></span></blockquote><div>Ah. Found it in busybox config.<br>CONF=
IG_FEATURE_MDEV_CONF=3Dy should do the trick.<br>Also CONFIG_FEATURE_MDEV_E=
XEC is needed to run a script I think.<br><br>Hans<br><br></div></div><br>
<br>

--000e0cd5cfd2f5a3dc04d99f8df0--
