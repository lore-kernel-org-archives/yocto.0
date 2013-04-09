Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A3D7E00AFC
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 10:30:16 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id d7so5541167wer.12
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 10:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=T7ectMK+PLbrTKUepNnXgAn6Z2f4w2IeMro+iy3+f8E=;
	b=uQaR+E3okGSmwB+vFOW0Xmu6amVIW+KMVfA5ujLnM/KnNUyBc508scR6vkceLYS5I1
	O06ijxxHNy4MFW/99LLBPus7M3SHWELM0OPtxwFZ3UZykQiSo5GJkwuRUAapRXnhkzcJ
	GCgojG6KzM5rX5y7XX7a9z3j2jqbdodZIOXc8kYNQ8BX89V1vhW+oM6gC9JuYcBcPvLG
	8d1B5o7YvsSxIeWNRvXtsFPab5Rc1Ri9TRHVC2LciC+tXy9cP2h4gKss56NmlvE+4m7E
	kisnziBCdimzjvYpSZmaXv/ZmacRgstWUxHlmkTncRIfq31v+B8i6kKVSRtoTv7yq16w
	6PRQ==
MIME-Version: 1.0
X-Received: by 10.194.178.100 with SMTP id cx4mr40385594wjc.47.1365528614364; 
	Tue, 09 Apr 2013 10:30:14 -0700 (PDT)
Received: by 10.194.243.137 with HTTP; Tue, 9 Apr 2013 10:30:14 -0700 (PDT)
In-Reply-To: <CAFMfyz+04EeUJ2QqqzBsKoFDOe5YXX7HtTRWWmBvSvK5nZHqVw@mail.gmail.com>
References: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
	<20130409125403.GC2474@jama>
	<CAFMfyz+04EeUJ2QqqzBsKoFDOe5YXX7HtTRWWmBvSvK5nZHqVw@mail.gmail.com>
Date: Tue, 9 Apr 2013 19:30:14 +0200
Message-ID: <CA+chaQewTUOhCotVwyM2S7nqjH0aHHEcbvqvEUsw4=Co5gKRRA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemd vs sysvinit
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
X-List-Received-Date: Tue, 09 Apr 2013 17:30:16 -0000
Content-Type: multipart/alternative; boundary=089e013d1be8fd99b904d9f0e71c

--089e013d1be8fd99b904d9f0e71c
Content-Type: text/plain; charset=UTF-8

I meant this thread
http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/037660.html

But looking at it again, it probably won't help you much :/.


On Tue, Apr 9, 2013 at 3:53 PM, Satya Swaroop Damarla <
swaroop.damarla@gmail.com> wrote:

> Hello Martin, I didnot find it.. Is it possible to send me a link so that
> I can work on it
>
> Greets,
> Satya
>
>
> On Tue, Apr 9, 2013 at 2:54 PM, Martin Jansa <martin.jansa@gmail.com>wrote:
>
>> On Tue, Apr 09, 2013 at 01:21:31PM +0200, Satya Swaroop Damarla wrote:
>> > Hi, I created two images first by using sysvinit and the other using
>> > systemd... The image using sysvinit works perfectly but the image with
>> > systemd works only from the second boot. In the first boot it hangs.
>> What
>> > could be the possible reasons?
>>
>> run-postinst service probably, see my e-mail in oe-core ML
>>
>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>>
>
>

--089e013d1be8fd99b904d9f0e71c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>I meant this thread</div><a href=3D"http://list=
s.linuxtogo.org/pipermail/openembedded-core/2013-March/037660.html">http://=
lists.linuxtogo.org/pipermail/openembedded-core/2013-March/037660.html</a><=
br>
<div><br></div><div style>But looking at it again, it probably won&#39;t he=
lp you much :/.</div></div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Tue, Apr 9, 2013 at 3:53 PM, Satya Swaroop Damarla <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blan=
k">swaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><div dir=3D"ltr"><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">Hello Martin, I didnot f=
ind it.. Is it possible to send me a link so that I can work on it</span><d=
iv style=3D"font-family:arial,sans-serif;font-size:13px">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Greets=
,</div><div style=3D"font-family:arial,sans-serif;font-size:13px">Satya</di=
v></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"=
><div class=3D"im">
On Tue, Apr 9, 2013 at 2:54 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=
=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com=
</a>&gt;</span> wrote:<br>
</div><div><div class=3D"h5"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div>On Tu=
e, Apr 09, 2013 at 01:21:31PM +0200, Satya Swaroop Damarla wrote:<br>
&gt; Hi, I created two images first by using sysvinit and the other using<b=
r>
&gt; systemd... The image using sysvinit works perfectly but the image with=
<br>
&gt; systemd works only from the second boot. In the first boot it hangs. W=
hat<br>
&gt; could be the possible reasons?<br>
<br>
</div></div>run-postinst service probably, see my e-mail in oe-core ML<br>
<span><font color=3D"#888888"><br>
--<br>
Martin &#39;JaMa&#39; Jansa =C2=A0 =C2=A0 jabber: <a href=3D"mailto:Martin.=
Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div></div></div><br></div>
</blockquote></div><br></div>

--089e013d1be8fd99b904d9f0e71c--
