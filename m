Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30FF0E0054B
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 13:36:12 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id w16so4779642vbf.27
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 13:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=9PYm9NhUzoIP1gce7uH14lzVAPyi0YXWcGR0tmwKdew=;
	b=I8F+UYvvg5X6jWQbCPzu1lW1XTMP2b9Pfq13tXqs0V2urZN25HMtyNWOHpva1GCMiC
	sCAkrPui4Q0A9p0h64OceshuFIK4tvHPG9Jh07QRvhl5S84lZ2ne3GrRbL6HC0V5kQKS
	vy4t4WCjCEBZqXObeu8yM3YydKX3A7N3kMRoLHwvIWXbTSEputd94tA72wJ2NSSYQDy/
	gJHKaxrYsmaC/UJ7KC90RWPny8WeaE/gydtkP/xYtmwFYmsGusUIGEeMJ70c0dN4uK/O
	h/73iUlwiuI/EDcj9bQRWiTJDhoMzqF8flI83AihhkaXxbWBpsDZvWHno/3geuXu82Xn
	gfBA==
X-Received: by 10.220.104.20 with SMTP id m20mr14996831vco.70.1366490171310;
	Sat, 20 Apr 2013 13:36:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Sat, 20 Apr 2013 13:35:51 -0700 (PDT)
X-Originating-IP: [213.143.48.113]
In-Reply-To: <CANyK_8dNtrKOT=dqueYHBTUPm6scULOO-qAURY41hZdzeX_yqA@mail.gmail.com>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
	<20130419142509.GJ2489@jama>
	<alpine.DEB.2.02.1304191038530.5636@oneiric>
	<CANyK_8ehX8Bsgd35pvx54EGeCG6=WLBoDFV0h=5Suz3uXPyREw@mail.gmail.com>
	<51716F8F.2080408@linux.intel.com>
	<CANyK_8dNtrKOT=dqueYHBTUPm6scULOO-qAURY41hZdzeX_yqA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 20 Apr 2013 23:35:51 +0300
Message-ID: <CAK18fxGrJ+9+-OzgOA9VRj34=_jV2nhiPQA_w3yjjGzAjHqBaQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQnk3OZ8WD0QCVffX9xESOnwCygs582wxI4K451pFaiiSV3kybdYsSBsqZTkN6LRs7CWZsYo
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Sat, 20 Apr 2013 20:36:12 -0000
Content-Type: multipart/alternative; boundary=047d7b3437b840181604dad0c91a

--047d7b3437b840181604dad0c91a
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Apr 20, 2013 at 4:05 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 19 April 2013 17:23, Saul Wold <sgw@linux.intel.com> wrote:
> > Just another note about the netbase, for 1.4 the interfaces file moved to
> > init-ifupdown, so that file should move to a new recipe with bbappends
> for
> > init-ifupdown-1.0.
> >
> > We just fixed meta-yocto for the beagleboard  in the final 1.4 release.
> >
>
> Ok, had a look at this now.
>
> As originally pointed out by Robert, the hosts and interfaces files
> are not picked up as the wrong directory is named in
> netbase_5.0.bbappend. However, the image I've just built works fine
> with the stock files in openembedded-core. Both eth0 and lo interfaces
> come up fine. Other interfaces listed in the stock files don't have an
> "auto" line so no attempt is made to bring them up at boot.
>
> If we look at the interfaces file in meta-raspberrypi
> (
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces
> ),
> it doesn't even list eth0 so I can't see how it would work.
>
> The hosts file (
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-core/netbase/netbase-5.0/raspberrypi/hosts
> )
> just adds the names 'raspberrypi' and 'rpi' as aliases for localhost,
> which I don't see the purpose of myself.
>
> So I'd recommend dropping these from meta-raspberrypi completely. Just
> my opinion though, anyone else got any thoughts on this?
>
>
Hello guys. Probably dropping would be the best thing here. I don't think
that the issue is reproduced anymore with netbase on rpi. If you submit
patch I can give it a try.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b3437b840181604dad0c91a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sat, Apr 20, 2013 at 4:05 PM, Paul Barker <span dir=3D"=
ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@pa=
ulbarker.me.uk</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 19 April 2013 17:23, Sa=
ul Wold &lt;<a href=3D"mailto:sgw@linux.intel.com">sgw@linux.intel.com</a>&=
gt; wrote:<br>


&gt; Just another note about the netbase, for 1.4 the interfaces file moved=
 to<br>
&gt; init-ifupdown, so that file should move to a new recipe with bbappends=
 for<br>
&gt; init-ifupdown-1.0.<br>
&gt;<br>
&gt; We just fixed meta-yocto for the beagleboard =A0in the final 1.4 relea=
se.<br>
&gt;<br>
<br>
</div>Ok, had a look at this now.<br>
<br>
As originally pointed out by Robert, the hosts and interfaces files<br>
are not picked up as the wrong directory is named in<br>
netbase_5.0.bbappend. However, the image I&#39;ve just built works fine<br>
with the stock files in openembedded-core. Both eth0 and lo interfaces<br>
come up fine. Other interfaces listed in the stock files don&#39;t have an<=
br>
&quot;auto&quot; line so no attempt is made to bring them up at boot.<br>
<br>
If we look at the interfaces file in meta-raspberrypi<br>
(<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree=
/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces" target=3D"_blank"=
>http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-co=
re/netbase/netbase-5.0/raspberrypi/interfaces</a>),<br>


it doesn&#39;t even list eth0 so I can&#39;t see how it would work.<br>
<br>
The hosts file (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-r=
aspberrypi/tree/recipes-core/netbase/netbase-5.0/raspberrypi/hosts" target=
=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree=
/recipes-core/netbase/netbase-5.0/raspberrypi/hosts</a>)<br>


just adds the names &#39;raspberrypi&#39; and &#39;rpi&#39; as aliases for =
localhost,<br>
which I don&#39;t see the purpose of myself.<br>
<br>
So I&#39;d recommend dropping these from meta-raspberrypi completely. Just<=
br>
my opinion though, anyone else got any thoughts on this?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div style>Hello guys. Probably dropping would be the best thing h=
ere. I don&#39;t think that the issue is reproduced anymore with netbase on=
 rpi. If you submit patch I can give it a try.=A0</div>

</div><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:cente=
r"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"font=
-family:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(5=
1,51,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherza=
n</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7b3437b840181604dad0c91a--
