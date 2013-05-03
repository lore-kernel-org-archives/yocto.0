Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D7CCE00592
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 02:30:45 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id kw10so1246188vcb.23
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 02:30:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=pyGUclyzZ9YjTemq1DTFb25x1Sc9qfd5/5KIELLNLJY=;
	b=gtGMNjyqZKMq8xA7J7/YwkuGDGHApxxXL/kgXdlKulBRsGPY9Bc5434WMqnhS9DKSJ
	biG5lR5wUVoz6dG6mghGQpL1wQRolI1nMug+0Oh/jWkBSY9k3hus0thyW+CnMAMB/nQe
	6wOZu1SzB0mKMg5DfuP4t0aDZ+VdSWEliZ05qgElCSRxZTadFHW44QZM+0JjupQP3jwQ
	xQi65zZgHoFota+5r3ujFav05NO03ydebTM60HXrUvVzObwhvrg+MHFnhHazWURPEk38
	9KNhjdCQZASTY2rabc8IA4ocMRJ/RjmH95jydy3S9wtCD9zo5baev6qFoiVUOQ/xj72k
	1S2w==
X-Received: by 10.220.66.212 with SMTP id o20mr3396913vci.2.1367573444003;
	Fri, 03 May 2013 02:30:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.49.5 with HTTP; Fri, 3 May 2013 02:30:23 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CAK18fxFd=fXRfGj=yR=9xW6S-N8+EXT1mEgW7YgnbFXcupQ4bA@mail.gmail.com>
References: <51788033.9010908@gmail.com>
	<CANyK_8fpnN8C6-vZPyFmGx5U3_ySRQp7twsXcKO4utz+WWc2EQ@mail.gmail.com>
	<CA+JN8xOs5YL+vdtJz8ZtqCvUNVi7UO=++grHtx26n2iEpGXbGg@mail.gmail.com>
	<CANyK_8efmMZwTde9tivSDcnUmo2XtZiQ6JTv6oFDbFJTmhp3tw@mail.gmail.com>
	<CAK18fxE99emJoMTwL4mGoMNsHiToAJwEeVf7mWHTE87i9Td-Vg@mail.gmail.com>
	<CANyK_8dPT1i63xAvWGzy56SsgVfhTyLVpDjFAFxxgZT7nsAYCg@mail.gmail.com>
	<CAK18fxFd=fXRfGj=yR=9xW6S-N8+EXT1mEgW7YgnbFXcupQ4bA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 May 2013 11:30:23 +0200
Message-ID: <CAK18fxGrqp=2BNfbt8EmwkGNx-myKrMrhGXWD3yOAreYrT2_3A@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQkmiwz4MkVDQYMxkQ7b9Thv8NMBEkconQndMHNQ02ipchHlHMXOJc64VzzERmK23r67OyG+
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: Copy startup files required for 16MB GPU operation.
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
X-List-Received-Date: Fri, 03 May 2013 09:30:45 -0000
Content-Type: multipart/alternative; boundary=047d7b33da86559c7d04dbcd0114

--047d7b33da86559c7d04dbcd0114
Content-Type: text/plain; charset=ISO-8859-1

Merged to master.

Thanks a lot.


On Thu, May 2, 2013 at 2:05 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Managed to apply it. Thanks.
>
>
> On Thu, May 2, 2013 at 1:37 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>
>> On 1 May 2013 20:19, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> >
>> > Aaaaaa... I just can't make it work. My advice is to use git send-email
>> too.
>> >
>>
>> You can cherry-pick it from my repository at the moment
>> (https://bitbucket.org/betafive/meta-raspberrypi), but yes, git
>> send-email is the way forward.
>>
>> --
>> Paul Barker
>>
>> Email: paul@paulbarker.me.uk
>> http://www.paulbarker.me.uk
>>
>
>
>
> --
> *Andrei Gherzan*
> m: +40.744.478.414 |  f: +40.31.816.28.12
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b33da86559c7d04dbcd0114
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged to master.=A0<div><br></div><div>Thanks a lot.</div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu=
, May 2, 2013 at 2:05 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Managed to apply it. Thanks=
.</div><div class=3D"gmail_extra"><div><div class=3D"h5"><br><br><div class=
=3D"gmail_quote">

On Thu, May 2, 2013 at 1:37 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 1 May 2013 20:19, Andrei Gherzan &lt=
;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</=
a>&gt; wrote:<br>



&gt;<br>
&gt; Aaaaaa... I just can&#39;t make it work. My advice is to use git send-=
email too.<br>
&gt;<br>
<br>
</div>You can cherry-pick it from my repository at the moment<br>
(<a href=3D"https://bitbucket.org/betafive/meta-raspberrypi" target=3D"_bla=
nk">https://bitbucket.org/betafive/meta-raspberrypi</a>), but yes, git<br>
send-email is the way forward.<br>
<div><div><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paul=
barker.me.uk</a><br>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div></div><=
/div><div class=3D"im">-- <br><div dir=3D"ltr"><div style=3D"text-align:cen=
ter"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"fo=
nt-family:&#39;Times New Roman&#39;;font-size:medium">


<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a hre=
f=3D"tel:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.74=
4.478.414</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162=
812" target=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:center=
"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-s=
ize:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--047d7b33da86559c7d04dbcd0114--
