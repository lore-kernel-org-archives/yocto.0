Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9F99E006C2
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 02:30:54 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id d10so1304918vea.40
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 02:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=cEam9YQTKRwcX6sBboSfZU6PUw29+1xiV3U4NI16r+o=;
	b=e+GbNwX5mJdWPLja2Y48YjCwvv8oMU4hHkZ/Ai4OB5apJp/L5+i+BdPkJBPJS1ng7g
	g6TZrJ93+a4w8frV+pJFtDg+WyuP/wgB70PWOtGa2aUMwxViw348DA+j7yQP2iYR2oxZ
	UhOn7gTnGWEAuWpju3S9y4xEsK/n7bX3719K/DyWHulCIPoMV4ZvhXPDz0MVrosuCuR5
	Kpb0UidbuDJUZjW8UDfff/uNgRdKnrJZvjEiePV+LHoGqCbsP0sYA0QmWJVdcKfkRNx+
	CgsQQJFpm9Ajv70S5HXoVPS5qgVuJyvEnUx5T2G7GtM2+ukC/txSBc3qmd4UsKKv7n01
	rqRw==
X-Received: by 10.220.237.193 with SMTP id kp1mr3398154vcb.68.1367573453561;
	Fri, 03 May 2013 02:30:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.49.5 with HTTP; Fri, 3 May 2013 02:30:33 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CANyK_8e+VWmPpZBO7CMTp2_3AT_qX46JDy_nUpBT1CyeS5iGog@mail.gmail.com>
References: <51788031.7080701@gmail.com>
	<CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
	<CA+JN8xMvcoaLKufSeCLO21ozH542OG-uZSn8fDS0OVMGXkUNbw@mail.gmail.com>
	<CANyK_8dWFNWQ2UhHdQUPACfruFk9uSrUfpTVxJeNn2m3kAYX=A@mail.gmail.com>
	<CAK18fxFCE_=X57fDp8+wYQOACeOjU2NPuM3bLKYYxCNFTOiCqA@mail.gmail.com>
	<CANyK_8e+VWmPpZBO7CMTp2_3AT_qX46JDy_nUpBT1CyeS5iGog@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 May 2013 11:30:33 +0200
Message-ID: <CAK18fxEWaLm2v56VhCKGC2X483iKE2OE76M_i4FK-Udk1S7-3g@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQltTdgMmspgFnaQsQIZgQWhmTKg5cwhe/QzGiJ3xN/gYqU0HizjAxE/5B1WuD+0WxKlG+/h
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Fri, 03 May 2013 09:30:55 -0000
Content-Type: multipart/alternative; boundary=047d7b33dd82e77e5004dbcd0166

--047d7b33dd82e77e5004dbcd0166
Content-Type: text/plain; charset=ISO-8859-1

Merged to master.

Thanks a lot.


On Thu, May 2, 2013 at 1:33 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 1 May 2013 20:10, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > I think I asked Seth a while ago and he confirmed that bash was his
> shell. I
> > thought about dash as well. But as a matter of fact we should remove
> > bashisms and make things as usable as possible. So maybe his patch makes
> > sense after all.
> >
>
> Based on Paul Eggleton's reply elsewhere:
>
> On 2 May 2013 09:07, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> > On Wednesday 01 May 2013 19:13:19 seth bollinger wrote:
> >> 2.  I couldn't find a wildcard string search in dash.  Can anyone
> >> suggest a more shell agnostic way to do this?
> >
> > AFAIK grep or awk is the only way.
>
> I think this patch probably does make sense.
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b33dd82e77e5004dbcd0166
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged to master.=A0<div><br></div><div>Thanks a lot.</div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu=
, May 2, 2013 at 1:33 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mail=
to:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 1 May 2013 20:10, Andre=
i Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt=
; wrote:<br>


&gt; I think I asked Seth a while ago and he confirmed that bash was his sh=
ell. I<br>
&gt; thought about dash as well. But as a matter of fact we should remove<b=
r>
&gt; bashisms and make things as usable as possible. So maybe his patch mak=
es<br>
&gt; sense after all.<br>
&gt;<br>
<br>
</div>Based on Paul Eggleton&#39;s reply elsewhere:<br>
<br>
On 2 May 2013 09:07, Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linu=
x.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; On Wednesday 01 May 2013 19:13:19 seth bollinger wrote:<br>
&gt;&gt; 2. =A0I couldn&#39;t find a wildcard string search in dash. =A0Can=
 anyone<br>
&gt;&gt; suggest a more shell agnostic way to do this?<br>
&gt;<br>
&gt; AFAIK grep or awk is the only way.<br>
<br>
I think this patch probably does make sense.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--047d7b33dd82e77e5004dbcd0166--
