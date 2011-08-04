Return-Path: <todd_cooper@yahoo.com>
Received: from nm7.bullet.mail.bf1.yahoo.com (nm7.bullet.mail.bf1.yahoo.com
	[98.139.212.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6B99EE011B5
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 10:49:53 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [98.139.212.148] by nm7.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Aug 2011 17:50:01 -0000
Received: from [98.139.212.225] by tm5.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Aug 2011 17:50:01 -0000
Received: from [127.0.0.1] by omp1034.mail.bf1.yahoo.com with NNFMP;
	04 Aug 2011 17:50:01 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 499416.92704.bm@omp1034.mail.bf1.yahoo.com
Received: (qmail 83552 invoked by uid 60001); 4 Aug 2011 17:50:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1312480201; bh=Kc47rfHXcZgogDfJmYa8OHqdB3u157ZbkEd898npdx4=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=FKUuNqNh49ffQwKRj+eFxliCAn/sulbJG4g6hw7LNfiKCox6QrRVl0AHFIjHjuVT23BIexGcoscF+wvDFxPkG2Gfj3J1yml1MhRxF+UfNIAH+UzZ+qN6pfU1PTZ8y7scoaF3n2lOmqaqgURHh4RbdlROXTBP72m76SjHkPsu8bc=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=obTGyfjcV8KiI+lC+jNP0GfwEmKqkL8B6PSA4/GcYP4W7iqHtOD1UOclitMWDzalMrqR0hH1zVYff7D3yx/MPxemO/MgzSvqz6cGDT7d+5dekbh6XvK0D1hv4ntkQCgvzrqZjXQitP0vPFJbW/gR6pzRzDvKX/NuSf635Tc15qo=;
X-YMail-OSG: LaGHFfEVM1n9e.aO98R6uWFrYspHo4A_3MRMIbSj85nnMBf
	8JhNHvQ0kLQ6aOWzBuB5pth7SnsnEg4dmBw.f0oCEOpy7FwTsEHwNY_WAmeZ
	5jQIxzq5I4ww.GQOc71bBSci2imdvlEFTvPmMShrmeWdDqkXeCnBUi_xaBKC
	MZse0VkJ6gSWDO_DpLbXqhFXRH2TjLFP05zvvaAz0WpvwizBcKSOgUk51J_7
	udBeL2sFzNThRUkFNzAE6qX39Dtmi4yBbzXfaFxaKn3.U53YdC9gl4ZM6j7D
	GeJTfigBCj.N3SUDng5pETR7t7zjck397XG5lvMTYOFBirHsMC4dFmb3jjJj
	R6V8ZgV9pVZadXvqCtZgRCD_Z6DJDX2F2Zwb36L1hEX8cPQhr3YbciXe3NTh
	xo3PLoKtUoPx6FjFlPG9d.z_qSndPqP8b1aQ9nK.LQslQaovRfA--
Received: from [209.104.237.170] by web161219.mail.bf1.yahoo.com via HTTP;
	Thu, 04 Aug 2011 10:50:01 PDT
X-Mailer: YahooMailWebService/0.8.113.313619
References: <1312468953.58082.YahooMailNeo@web161219.mail.bf1.yahoo.com>
	<1312469993.14274.10.camel@rex>
Message-ID: <1312480201.81774.YahooMailNeo@web161219.mail.bf1.yahoo.com>
Date: Thu, 4 Aug 2011 10:50:01 -0700 (PDT)
From: Todd Cooper <todd_cooper@yahoo.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1312469993.14274.10.camel@rex>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 04 Aug 2011 17:49:54 -0000
Content-Type: multipart/alternative; boundary="0-1755967948-1312480201=:81774"

--0-1755967948-1312480201=:81774
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Would this be worth putting on the list of items wished for in the future?=
=A0 =0A=0AIt sounds like the problem is difficult, but not impossible.=0A=
=0A=0A=0A=0A>________________________________=0A>From: Richard Purdie <rich=
ard.purdie@linuxfoundation.org>=0A>To: Todd Cooper <todd_cooper@yahoo.com>=
=0A>Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=0A>Sent: Thursday=
, August 4, 2011 10:59 AM=0A>Subject: Re: [yocto] prebuilt pacakages=0A>=0A=
>On Thu, 2011-08-04 at 07:42 -0700, Todd Cooper wrote:=0A>> Is there any wa=
y to make Yocto try to get prebuilt packages from known=0A>> repositories r=
ather than trying to rebuild the world?=0A>=0A>The system supports a cache =
of prebuilt objects in the form of the=0A>sstate data to accelerate build t=
imes if nothing changes. It doesn't=0A>directly support using prebuilt pack=
ages directly though as its a much=0A>harder problem to solve than you firs=
t realise.=0A>=0A>A an example, given a package feed, its very hard to work=
 out library=0A>provision within that package feed or dependency naming.=0A=
>=0A>Cheers,=0A>=0A>Richard=0A>=0A>=0A>=0A>=0A>=0A>=0A>

--0-1755967948-1312480201=:81774
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div><span>Would this=
 be worth putting on the list of items wished for in the future?&nbsp; <br>=
</span></div><div><span>It sounds like the problem is difficult, but not im=
possible.<br></span></div><div><br><blockquote style=3D"border-left: 2px so=
lid rgb(16, 16, 255); margin-left: 5px; padding-left: 5px;"><div style=3D"f=
ont-family: times new roman, new york, times, serif; font-size: 12pt;"><div=
 style=3D"font-family: times new roman, new york, times, serif; font-size: =
12pt;"><font size=3D"2" face=3D"Arial"><hr size=3D"1"><b><span style=3D"fon=
t-weight:bold;">From:</span></b> Richard Purdie &lt;richard.purdie@linuxfou=
ndation.org&gt;<br><b><span style=3D"font-weight: bold;">To:</span></b> Tod=
d Cooper &lt;todd_cooper@yahoo.com&gt;<br><b><span style=3D"font-weight: bo=
ld;">Cc:</span></b> "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;=
<br><b><span
 style=3D"font-weight: bold;">Sent:</span></b> Thursday, August 4, 2011 10:=
59 AM<br><b><span style=3D"font-weight: bold;">Subject:</span></b> Re: [yoc=
to] prebuilt pacakages<br></font><br>On Thu, 2011-08-04 at 07:42 -0700, Tod=
d Cooper wrote:<br>&gt; Is there any way to make Yocto try to get prebuilt =
packages from known<br>&gt; repositories rather than trying to rebuild the =
world?<br><br>The system supports a cache of prebuilt objects in the form o=
f the<br>sstate data to accelerate build times if nothing changes. It doesn=
't<br>directly support using prebuilt packages directly though as its a muc=
h<br>harder problem to solve than you first realise.<br><br>A an example, g=
iven a package feed, its very hard to work out library<br>provision within =
that package feed or dependency naming.<br><br>Cheers,<br><br>Richard<br><b=
r><br><br><br><br><br></div></div></blockquote></div></div></body></html>

--0-1755967948-1312480201=:81774--
