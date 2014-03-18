Return-Path: <grsandeep85@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10C6DE00B3A
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:50:18 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id j17so7391104oag.28
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VaAsICKJznf91bnwB/Sc/Ss43XlfePeR4eoGYCwsg7k=;
	b=pa94ttqGS3psXf6zlNJ6tThu5h9Pgfrfm+FZxFw0i0yKXQ5jJvrXSD2IR0H27A4dy6
	Xaial/C/t4Vk2hKezY8SsaTF1wLh9hyzIbCJKXC+rU5sK9d0e29g6TFQqhWrq/bUBYAM
	4THBX+4OFZ3I2gjHXraRcWd18Ks3ilnSyCDw9n9Mf6yCkUxwgZ3W36/UpyWSz4HkG/TK
	lLdEpXG1ulLBjpuU+e3Yk7gPbJC3m19jn6QDQEDmgnK3zRkh8UcwNwvg8APYnFGDPM3/
	ZYtux10d3qCItrhxqPDTejfmSY38k68VpAae74sC5jBpg0JyqAK0q836D3xJVloeFMXo
	mPSw==
MIME-Version: 1.0
X-Received: by 10.182.128.138 with SMTP id no10mr1064638obb.32.1395161417914; 
	Tue, 18 Mar 2014 09:50:17 -0700 (PDT)
Received: by 10.76.28.100 with HTTP; Tue, 18 Mar 2014 09:50:17 -0700 (PDT)
In-Reply-To: <CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
References: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>
	<532871AE.4070709@mlbassoc.com>
	<CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
Date: Tue, 18 Mar 2014 10:50:17 -0600
Message-ID: <CAKP9-Si9tD0F0rvWFbEw2EEt8GgK9Wij-Z6U0oZ1AAYzAZo3HA@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Losing Ethernet after reboot
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
X-List-Received-Date: Tue, 18 Mar 2014 16:50:21 -0000
Content-Type: multipart/alternative; boundary=089e0153852eb8613304f4e45490

--089e0153852eb8613304f4e45490
Content-Type: text/plain; charset=ISO-8859-1

Rick,

       Check the interface using the command ifconfig -a, then add the
corresponding interface in /etc/network/interfaces and restart the network
services.


On Tue, Mar 18, 2014 at 10:42 AM, Rick Bianchi
<bianchirickkutta@gmail.com>wrote:

> Sorry typing on the fly. Here is what is in interfaces:
> auto eth0
> iface eth0 inet dhcp
>
>
> On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>
>> On 2014-03-18 10:10, Rick Bianchi wrote:
>> >
>> > I losing Ethernet after every reboot. What is the process to have it
>> come up manually?
>> >
>> > Image: Dylan gumstix-console
>> >
>> > I have already added eth0 auto to my /etc/network/interfaces.
>>
>> Shouldn't this line read
>>   auto eth0
>> not the other way around?
>>
>> > At the moment I need to run the following after every reboot:
>> >
>> > ifconfig eth0 up
>> > udhcpc eth0
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Thanks & Regards,*
*Sandeep G R*

--089e0153852eb8613304f4e45490
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:trebuche=
t ms,sans-serif;color:#073763">Rick,</div><div class=3D"gmail_default" styl=
e=3D"font-family:trebuchet ms,sans-serif;color:#073763"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#073=
763">
=A0 =A0 =A0 =A0Check the interface using the command ifconfig -a, then add =
the corresponding interface in /etc/network/interfaces and restart the netw=
ork services.</div></div><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">
On Tue, Mar 18, 2014 at 10:42 AM, Rick Bianchi <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank">bianchirickkutta@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div>Sorry typing on the fly. Here is what is in interface=
s:<br></div><div>auto eth0<br>iface eth0 inet dhcp <br></div></div><div cla=
ss=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">
On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 2014-03-18 10:10, Rick Bianchi wrote=
:<br>
&gt;<br>
&gt; I losing Ethernet after every reboot. What is the process to have it c=
ome up manually?<br>
&gt;<br>
&gt; Image: Dylan gumstix-console<br>
&gt;<br>
&gt; I have already added eth0 auto to my /etc/network/interfaces.<br>
<br>
</div>Shouldn&#39;t this line read<br>
=A0 auto eth0<br>
not the other way around?<br>
<div><div><br>
&gt; At the moment I need to run the following after every reboot:<br>
&gt;<br>
&gt; ifconfig eth0 up<br>
&gt; udhcpc eth0<br>
<br>
</div></div><span><font color=3D"#888888">--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>
</div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr"><font face=3D"trebuchet ms, sans-serif" color=3D"#073763"><b>Thank=
s &amp; Regards,</b></font><div><font face=3D"trebuchet ms, sans-serif" col=
or=3D"#073763"><b>Sandeep G R</b></font><br>
<br></div></div>
</div>

--089e0153852eb8613304f4e45490--
