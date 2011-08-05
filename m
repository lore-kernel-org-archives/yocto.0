Return-Path: <todd_cooper@yahoo.com>
Received: from nm4-vm0.bullet.mail.bf1.yahoo.com
	(nm4-vm0.bullet.mail.bf1.yahoo.com [98.139.213.129])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C80A3E011B7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 18:36:58 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [98.139.212.149] by nm4.bullet.mail.bf1.yahoo.com with NNFMP;
	05 Aug 2011 01:37:06 -0000
Received: from [98.139.212.193] by tm6.bullet.mail.bf1.yahoo.com with NNFMP;
	05 Aug 2011 01:37:06 -0000
Received: from [127.0.0.1] by omp1002.mail.bf1.yahoo.com with NNFMP;
	05 Aug 2011 01:37:06 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 906613.29742.bm@omp1002.mail.bf1.yahoo.com
Received: (qmail 49581 invoked by uid 60001); 5 Aug 2011 01:37:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1312508226; bh=v0ftRxCfFWGpS5VGHCeb2bQ6EXSFo6V0xutK4sWj/Rg=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=dVe/hd77EDiF+dR5qY2oDlIKDRFbLC8mdmh0EFIYnq8OpB/xwkGmduVEV+v3peFGfqYkaqU2qYJsgav2qEgEusL8Xr+QNo3OPlgbnQKZxeaW3QTw6luA9z2UeT/KLnIPE3TcmGUcKJ0IFpkD3dDre+Lkrkm5FmLHORvK5BcRUo0=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=y3SUCYJNIow4+NutXB8fqCAaS+nKQLhPbr/A1uaX9HuPQsmp947LTh1W1ezIfUA496CuwYN1WQ10M1JeBR+1UI6VCEE8YnuTO+DAc67MT5fgrUWMN2S86Z4KBq4zd/DCGnpQh4Okd2eV4oMnk+77F0oFr5xZB0HBhFRR8u1hjjc=;
X-YMail-OSG: eobBO4AVM1lqY864j2Jr9HmoaFVksXAFsfZGfjq44B3z4VK
	Q9tPat.yD9v7E9kLcBmA5qe71oGg_Ka8GQn3pqINHM8mFrUekaH.GjMHxavt
	RZYOnKwuJMOWnIjl4elVbTyLvyxOTtPaGR8Y0uiM11Ku8vyraOfrFOjWscLi
	z2OOtOQpGTze3aoQ0p72E_Dss0LVDvPJ.BVtr.aUoEfEdUCxGuNtQAAURTGN
	5jP2P9ko64q9bAKmQkiifIpkNfBoHr6jBuJ0h13G0RsIp2vGZ_yrVV2.JHx_
	IIx4lJQgqMr2akpAW0nsEwT9EUYrvIBm7bbSlucvg8S4w7RYJOElyrmYSc77
	W0OpP7HXp47STy6OAzVW5bjkMxAt8EPdS4xH9tWtgh90b9jHPWuzAoG7.gTu
	B8qBl681VyNH6lOG.B59QjgSZ4B_DtQjCeZSgx_pjhLAHVmc-
Received: from [71.232.173.153] by web161217.mail.bf1.yahoo.com via HTTP;
	Thu, 04 Aug 2011 18:37:06 PDT
X-Mailer: YahooMailWebService/0.8.113.313619
References: <1312468953.58082.YahooMailNeo@web161219.mail.bf1.yahoo.com>
	<1312469993.14274.10.camel@rex>
	<1312480201.81774.YahooMailNeo@web161219.mail.bf1.yahoo.com>
	<1312497831.14274.53.camel@rex>
Message-ID: <1312508226.49460.YahooMailNeo@web161217.mail.bf1.yahoo.com>
Date: Thu, 4 Aug 2011 18:37:06 -0700 (PDT)
From: Todd Cooper <todd_cooper@yahoo.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1312497831.14274.53.camel@rex>
MIME-Version: 1.0
Cc: "\"yocto@yoctoproject.org\"" <yocto@yoctoproject.org>
Subject: Re: prebuilt pacakages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Todd Cooper <todd_cooper@yahoo.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Aug 2011 01:36:59 -0000
Content-Type: multipart/alternative; boundary="0-1830627252-1312508226=:49460"

--0-1830627252-1312508226=:49460
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Can I suggest that Yocto put it on the futures list, but with a lower prior=
ity?=0A=0A=0A=0A=0A>________________________________=0A>From: Richard Purdi=
e <richard.purdie@linuxfoundation.org>=0A>To: Todd Cooper <todd_cooper@yaho=
o.com>=0A>Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=0A>Sent: Th=
ursday, August 4, 2011 6:43 PM=0A>Subject: Re: [yocto] prebuilt pacakages=
=0A>=0A>On Thu, 2011-08-04 at 10:50 -0700, Todd Cooper wrote:=0A>> Would th=
is be worth putting on the list of items wished for in the=0A>> future?=A0 =
=0A>> =0A>> It sounds like the problem is difficult, but not impossible.=0A=
>=0A>Most things are possible :).=0A>=0A>The implementation isn't hard, mai=
ntaining some kind of translation=0A>table for the dependencies, shared lib=
rary provision lists and so on is=0A>a *lot* of work though.=0A>=0A>It woul=
d really take someone with a specific use case to step forward=0A>along wit=
h manpower for it to have a chance of happening. Even then it=0A>would work=
 for a specific set of packages and wouldn't translate to any=0A>other pack=
age feed.=0A>=0A>Cheers,=0A>=0A>Richard=0A>=0A>> =0A>>=A0 =A0 =A0 =A0 =0A>>=
=A0 =A0 =A0 =A0  __________________________________________________________=
____=0A>>=A0 =A0 =A0 =A0  From: Richard Purdie <richard.purdie@linuxfoundat=
ion.org>=0A>>=A0 =A0 =A0 =A0  To: Todd Cooper <todd_cooper@yahoo.com>=0A>>=
=A0 =A0 =A0 =A0  Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=0A>>=
=A0 =A0 =A0 =A0  Sent: Thursday, August 4, 2011 10:59 AM=0A>>=A0 =A0 =A0 =
=A0  Subject: Re: [yocto] prebuilt pacakages=0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =
=A0 =A0 =A0  On Thu, 2011-08-04 at 07:42 -0700, Todd Cooper wrote:=0A>>=A0 =
=A0 =A0 =A0  > Is there any way to make Yocto try to get prebuilt packages=
=0A>>=A0 =A0 =A0 =A0  from known=0A>>=A0 =A0 =A0 =A0  > repositories rather=
 than trying to rebuild the world?=0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =A0 =A0=
  The system supports a cache of prebuilt objects in the form of=0A>>=A0 =
=A0 =A0 =A0  the=0A>>=A0 =A0 =A0 =A0  sstate data to accelerate build times=
 if nothing changes. It=0A>>=A0 =A0 =A0 =A0  doesn't=0A>>=A0 =A0 =A0 =A0  d=
irectly support using prebuilt packages directly though as=0A>>=A0 =A0 =A0 =
=A0  its a much=0A>>=A0 =A0 =A0 =A0  harder problem to solve than you first=
 realise.=0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =A0 =A0  A an example, given a p=
ackage feed, its very hard to work out=0A>>=A0 =A0 =A0 =A0  library=0A>>=A0=
 =A0 =A0 =A0  provision within that package feed or dependency naming.=0A>>=
=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =A0 =A0  Cheers,=0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =
=A0 =A0 =A0  Richard=0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =
=A0 =A0 =0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =A0 =A0 =0A>>=A0 =A0 =A0 =A0 =0A>=
>=A0 =A0 =A0 =A0 =0A>=0A>> =0A>=0A>=0A>=0A>=0A>

--0-1830627252-1312508226=:49460
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div><span>Can I sugg=
est that Yocto put it on the futures list, but with a lower priority?<br></=
span></div><div><br><blockquote style=3D"border-left: 2px solid rgb(16, 16,=
 255); margin-left: 5px; padding-left: 5px;"><div style=3D"font-family: tim=
es new roman, new york, times, serif; font-size: 12pt;"><div style=3D"font-=
family: times new roman, new york, times, serif; font-size: 12pt;"><font fa=
ce=3D"Arial" size=3D"2"><hr size=3D"1"><b><span style=3D"font-weight:bold;"=
>From:</span></b> Richard Purdie &lt;richard.purdie@linuxfoundation.org&gt;=
<br><b><span style=3D"font-weight: bold;">To:</span></b> Todd Cooper &lt;to=
dd_cooper@yahoo.com&gt;<br><b><span style=3D"font-weight: bold;">Cc:</span>=
</b> "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br><b><span st=
yle=3D"font-weight: bold;">Sent:</span></b> Thursday, August 4, 2011 6:43 P=
M<br><b><span
 style=3D"font-weight: bold;">Subject:</span></b> Re: [yocto] prebuilt paca=
kages<br></font><br>On Thu, 2011-08-04 at 10:50 -0700, Todd Cooper wrote:<b=
r>&gt; Would this be worth putting on the list of items wished for in the<b=
r>&gt; future?&nbsp; <br>&gt; <br>&gt; It sounds like the problem is diffic=
ult, but not impossible.<br><br>Most things are possible :).<br><br>The imp=
lementation isn't hard, maintaining some kind of translation<br>table for t=
he dependencies, shared library provision lists and so on is<br>a *lot* of =
work though.<br><br>It would really take someone with a specific use case t=
o step forward<br>along with manpower for it to have a chance of happening.=
 Even then it<br>would work for a specific set of packages and wouldn't tra=
nslate to any<br>other package feed.<br><br>Cheers,<br><br>Richard<br><br>&=
gt; <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp=
;=20
 ______________________________________________________________<br>&gt;&nbs=
p; &nbsp; &nbsp; &nbsp;  From: Richard Purdie &lt;<a ymailto=3D"mailto:rich=
ard.purdie@linuxfoundation.org" href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a>&gt;<br>&gt;&nbsp; &nbsp; &nb=
sp; &nbsp;  To: Todd Cooper &lt;<a ymailto=3D"mailto:todd_cooper@yahoo.com"=
 href=3D"mailto:todd_cooper@yahoo.com">todd_cooper@yahoo.com</a>&gt;<br>&gt=
;&nbsp; &nbsp; &nbsp; &nbsp;  Cc: "<a ymailto=3D"mailto:yocto@yoctoproject.=
org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>" &lt=
;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctopro=
ject.org">yocto@yoctoproject.org</a>&gt;<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;=
  Sent: Thursday, August 4, 2011 10:59 AM<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp=
;  Subject: Re: [yocto] prebuilt pacakages<br>&gt;&nbsp; &nbsp; &nbsp; &nbs=
p;  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  On Thu, 2011-08-04 at 07:42 -0700,=
 Todd
 Cooper wrote:<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  &gt; Is there any way to=
 make Yocto try to get prebuilt packages<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;=
  from known<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  &gt; repositories rather t=
han trying to rebuild the world?<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  <br>&g=
t;&nbsp; &nbsp; &nbsp; &nbsp;  The system supports a cache of prebuilt obje=
cts in the form of<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  the<br>&gt;&nbsp; &n=
bsp; &nbsp; &nbsp;  sstate data to accelerate build times if nothing change=
s. It<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  doesn't<br>&gt;&nbsp; &nbsp; &nbs=
p; &nbsp;  directly support using prebuilt packages directly though as<br>&=
gt;&nbsp; &nbsp; &nbsp; &nbsp;  its a much<br>&gt;&nbsp; &nbsp; &nbsp; &nbs=
p;  harder problem to solve than you first realise.<br>&gt;&nbsp; &nbsp; &n=
bsp; &nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  A an example, given a pac=
kage feed, its very hard to work out<br>&gt;&nbsp; &nbsp; &nbsp;
 &nbsp;  library<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  provision within that =
package feed or dependency naming.<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  <br>=
&gt;&nbsp; &nbsp; &nbsp; &nbsp;  Cheers,<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;=
  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  Richard<br>&gt;&nbsp; &nbsp; &nbsp; =
&nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &=
nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &n=
bsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &nb=
sp;  <br><br>&gt; <br><br><br><br><br></div></div></blockquote></div></div>=
</body></html>

--0-1830627252-1312508226=:49460--
