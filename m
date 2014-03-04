Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4820EE00A0D
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 09:35:55 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id ks9so4527091vcb.25
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 09:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=q5AyC4HhiC1MlkTjhumupVPJyMUm2ozmqkhYTlQ65ng=;
	b=W9p9UYmhKT02VCXtAYFVBoQoh72ZzqvGOamQa/57AeVdVGId4iPDuLLnWRzf1tnQwO
	5sewZMj2CiyzJAZRx9C+2+vWynjOw5AVkupBJc8cu+Tk8KDpMpiMSqPeWt77BiLzjhh4
	nI7768CpKmjDfxZxipTagBulWp7mz+T78f1KVHFHz/0SN8CcgnAmncxj09FZh82Z7qlf
	piGNlz2pM0dfcTGR18jY6yB/AiK3d8DvUyZY3Gmmx2cptgJLx47x2rfwIgf1aDBr1eK2
	bwA1eHXKsOIxFF0tMuv3VMsJYJBOaV77PKkhsvx2FEVePtWH6FZPmLcOTrzsi8zZ/nMp
	VtCA==
MIME-Version: 1.0
X-Received: by 10.58.37.232 with SMTP id b8mr369804vek.27.1393953222753; Tue,
	04 Mar 2014 09:13:42 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Tue, 4 Mar 2014 09:13:42 -0800 (PST)
In-Reply-To: <CANyK_8dF8U-jiVjuZ5xk5DBF_iqQuyKupahz4F1X+hKv4D_Avw@mail.gmail.com>
References: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
	<5315DC71.3080904@dynamicdevices.co.uk>
	<1393942977.87424.YahooMailNeo@web163101.mail.bf1.yahoo.com>
	<CANyK_8fGoQe1XaeU+Kt_CAiba2bUb9kKyu4KDCvXWXuzj5SBvg@mail.gmail.com>
	<26D5BB52-5D73-4746-ACEE-4A21BD130B77@yahoo.com>
	<CANyK_8dF8U-jiVjuZ5xk5DBF_iqQuyKupahz4F1X+hKv4D_Avw@mail.gmail.com>
Date: Tue, 4 Mar 2014 10:13:42 -0700
Message-ID: <CAA7h+ErKdDhkax_PVzDJ2gh4c9oZZJcsP+G1akHFdJbXe-i7cw@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add Packages to Recipie
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
X-List-Received-Date: Tue, 04 Mar 2014 17:35:56 -0000
Content-Type: multipart/alternative; boundary=089e01176de5ad038604f3cb06ff

--089e01176de5ad038604f3cb06ff
Content-Type: text/plain; charset=ISO-8859-1

Paul,
My question is in the vain as Joel's, I need to add the program usbip (I
have already added the kernel modules) to the build, but I cannot find any
recipes for it. I have search in the package manager (smart) and it is not
there either "error: 'usbip' matches no packages". Is there a way for me to
add it during the build process?

Thanks,
Rick


On Tue, Mar 4, 2014 at 7:56 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 4 March 2014 14:47, Joel Parker <joelparker27@yahoo.com> wrote:
> > Ok, thanks for that but what do you do for things that aren't in the
> extended recipes list ? Specifically, I need sqlite3, sqlite3-devel and
> iconv
> >
>
> I don't understand your query: I can find sqlite3 and libiconv using
> the recipe search link I posted.
>
> You won't find '-devel' packages though, I think the OE convention is
> to use '-dev' instead. The recipe index doesn't show them, but most
> packages offer '-dbg', '-dev', etc as appropriate.
>
> Thanks,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01176de5ad038604f3cb06ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Paul,<br></div><div>My question is in the vain as Joe=
l&#39;s, I need to add the program usbip (I have already added the kernel m=
odules) to the build, but I cannot find any recipes for it. I have search i=
n the package manager (smart) and it is not there either &quot;error: &#39;=
usbip&#39; matches no packages&quot;. Is there a way for me to add it durin=
g the build process?</div>
<div><br></div><div>Thanks,</div><div>Rick</div></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">On Tue, Mar 4, 2014 at 7:56 AM, Pa=
ul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" ta=
rget=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 4 March 2014 14:47, Joel =
Parker &lt;<a href=3D"mailto:joelparker27@yahoo.com">joelparker27@yahoo.com=
</a>&gt; wrote:<br>

&gt; Ok, thanks for that but what do you do for things that aren&#39;t in t=
he extended recipes list ? Specifically, I need sqlite3, sqlite3-devel and =
iconv<br>
&gt;<br>
<br>
</div>I don&#39;t understand your query: I can find sqlite3 and libiconv us=
ing<br>
the recipe search link I posted.<br>
<br>
You won&#39;t find &#39;-devel&#39; packages though, I think the OE convent=
ion is<br>
to use &#39;-dev&#39; instead. The recipe index doesn&#39;t show them, but =
most<br>
packages offer &#39;-dbg&#39;, &#39;-dev&#39;, etc as appropriate.<br>
<br>
Thanks,<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--089e01176de5ad038604f3cb06ff--
