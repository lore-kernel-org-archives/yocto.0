Return-Path: <mulhern@gmail.com>
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A582E01492
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 07:57:19 -0700 (PDT)
Received: by mail-oa0-f42.google.com with SMTP id j6so4653900oag.29
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 07:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5fFOL6NFSZAW+jCG3YKX5yEwoeU3iAQLMYGIRuQDQ5U=;
	b=ulKVXI+lmLYmMj8LzkSuPcAYhSXhtAY+vsfzPs0X6CziLlOjgdIRpR0VAnO/V1UCrN
	WUjH8GfaJdP+y1oJxX2RO0wyPBqmowgDnjKiZeitldDYWzvGUXVr6ZGQnydZ5YZRVHkT
	WkB5Yl2V/tQ0vgQtQyLXPakg5Fi6nUWPrdqWBsSabvfkjwLWxx7+7S1jAAzL0CkLfmPb
	uo7braZhM1MGstQ7hEt4HUi0Pcsy4Cwx8L4mFypOsO8j2kBHwgQEVIQvJe4SyZhqAm/c
	kqGq3HJ3B89I+HZwI2xM7FdCLaopMbxvHMeqF7E80QtceM/7o9NxEjL22l0UesNYYD1m
	OH3w==
MIME-Version: 1.0
X-Received: by 10.60.162.67 with SMTP id xy3mr42195359oeb.26.1374764238956;
	Thu, 25 Jul 2013 07:57:18 -0700 (PDT)
Received: by 10.76.154.97 with HTTP; Thu, 25 Jul 2013 07:57:18 -0700 (PDT)
In-Reply-To: <CALmOhgmFsHmjwzcQP2wHQ1y9HoqBmAN-JRK3zXqEPBMa1bF2_Q@mail.gmail.com>
References: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
	<CALmOhg=b9JaHpH9+bRsebAoE+pq9K0QYziwT7Ji7uYjsCfOtCQ@mail.gmail.com>
	<CADM5y7v6xs5iaUtnt8hWypAgRz981Sx90nSLHb9NM5F6BoNidw@mail.gmail.com>
	<CALmOhgmFsHmjwzcQP2wHQ1y9HoqBmAN-JRK3zXqEPBMa1bF2_Q@mail.gmail.com>
Date: Thu, 25 Jul 2013 10:57:18 -0400
Message-ID: <CADM5y7tJzOvP_XFokd+ZYg1k0_oVCqZr-7gdAgJ6v+QHAk+W4w@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Thu, 25 Jul 2013 14:57:20 -0000
Content-Type: multipart/alternative; boundary=047d7b5d47b81cec3304e2573e72

--047d7b5d47b81cec3304e2573e72
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jul 25, 2013 at 10:22 AM, Trevor Woerner
<trevor.woerner@linaro.org>wrote:

> On 25 July 2013 09:25, mulhern <mulhern@gmail.com> wrote:
> > It's
> > nice of you to point out for me the location of that one but what about
> the
> > more like 15 or so others I didn't list and where they might or might
> not be
> > hiding?
>
> I was hoping you'd notice that there is a web-based search tool you
> can use to try to find various already-written recipes:
> http://layers.openembedded.org/layerindex/


I did. It's only as good as the occasionally inaccurate description
strings, though. I was hoping for something more programmatic and less
susceptible to programmer error.

>
> If you can't find a module you're interested in through that interface
> then you'll have to write it yourself (and hopefully contribute it
> back to the community) :-)
>

I'm interning for Yocto this summer, so I think that withholding isn't an
option ;) But I don't want to litter the project with unnecessary and
redundant recipe files.

- mulhern

--047d7b5d47b81cec3304e2573e72
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Jul 25, 2013 at 10:22 AM, Trevor Woerner <span dir=3D"ltr">=
&lt;<a href=3D"mailto:trevor.woerner@linaro.org" target=3D"_blank">trevor.w=
oerner@linaro.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 25 July 2013 09:25, mulhern &lt;<a hr=
ef=3D"mailto:mulhern@gmail.com">mulhern@gmail.com</a>&gt; wrote:<br>

&gt; It&#39;s<br>
&gt; nice of you to point out for me the location of that one but what abou=
t the<br>
&gt; more like 15 or so others I didn&#39;t list and where they might or mi=
ght not be<br>
&gt; hiding?<br>
<br>
</div>I was hoping you&#39;d notice that there is a web-based search tool y=
ou<br>
can use to try to find various already-written recipes:<br>
<a href=3D"http://layers.openembedded.org/layerindex/" target=3D"_blank">ht=
tp://layers.openembedded.org/layerindex/</a></blockquote><div><br></div><di=
v>I did. It&#39;s only as good as the occasionally inaccurate description s=
trings, though. I was hoping for something more programmatic and less susce=
ptible to programmer error.</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
If you can&#39;t find a module you&#39;re interested in through that interf=
ace<br>
then you&#39;ll have to write it yourself (and hopefully contribute it<br>
back to the community) :-)<br></blockquote><div><br></div><div>I&#39;m inte=
rning for Yocto this summer, so I think that withholding isn&#39;t an optio=
n ;) But I don&#39;t want to litter the project with unnecessary and redund=
ant recipe files.</div>
<div><br></div><div>- mulhern=A0</div><div><br></div><div>=A0</div></div><b=
r></div></div>

--047d7b5d47b81cec3304e2573e72--
