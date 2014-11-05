Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA980E00874; Wed,  5 Nov 2014 05:15:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57ECDE0082F
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 05:15:09 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id a1so871246wgh.6
	for <yocto@yoctoproject.org>; Wed, 05 Nov 2014 05:15:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LDqSBS3s/SKyqCCLuOE83m/0WJMx6Hk6PLNXUKfYvn4=;
	b=eY404RAGXzxJy1sVr1amReDz/OCXbcm+Mr7pVFOUuq6ygliIteMj2I4KVlG5BM6bxW
	SYZSYZE9P8PAoce6UvYzOuBJYz9pyDmmyeMfgchPwMbiwpYpVcbEmt5N/ZaUE9vJmL2o
	wOYPF2SvKT7bnscMHQmTi2a0EaFVGNIwwxyVd9y5GBu3VW42gg79F737TauWxn5JPYa8
	2gEktPYpgvfLKmK+ctK2hQeXvSBQT/4Ig0HQxhFjmefYGrtktDDfj7qw64/6oycP2pBp
	S01DH03VPVQa5ad3Tq6TT8TrwduYiUQK528ey3ZiVe6llBOTb1qqAe7H35SYZOS3Vk4D
	HTkQ==
X-Gm-Message-State: ALoCoQk1gWZS2Ae7qrF0j5H44kzhmG15qyAaZ6RC3vihR/qRN2N2/o3Q1B+a/DoDHwpI/f1ctnpk
X-Received: by 10.194.77.199 with SMTP id u7mr27483394wjw.92.1415193308694;
	Wed, 05 Nov 2014 05:15:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.75.70 with HTTP; Wed, 5 Nov 2014 05:14:48 -0800 (PST)
X-Originating-IP: [195.249.189.34]
In-Reply-To: <6686EF67-F451-4B2B-87D3-F9AB644F8299@mountdrive.com>
References: <BLU436-SMTP125444BFE2825F659D2B396929A0@phx.gbl>
	<6686EF67-F451-4B2B-87D3-F9AB644F8299@mountdrive.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 5 Nov 2014 14:14:48 +0100
Message-ID: <CAK18fxEytL2hZeHfNR5gb+py0PTki2ni4Guy4mL7iH43MYWntQ@mail.gmail.com>
To: Mike Hogg <mikehogg@mountdrive.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry b+ support
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
X-List-Received-Date: Wed, 05 Nov 2014 13:15:20 -0000
Content-Type: multipart/alternative; boundary=047d7bfd061c741eec05071c5ebc

--047d7bfd061c741eec05071c5ebc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I did nothing regarding RPI b+ as i don't own a device like that. If you
guys can make it work and patches are needed in order to accomplish this,
please send them over mailing list and/or review gerrit.
Thanks.



On Fri, Oct 31, 2014 at 4:06 PM, Mike Hogg <mikehogg@mountdrive.com> wrote:

> Yes you can and I have. Search the pi forum for my posts there, last time
> I tried a yocto build for the b+ it pulled in the old pi firmware which
> doesn't work on the b+. Per my notes on the pi forum thats easily fixed b=
y
> copying firmware from another b+ image.
>
> On 31 October 2014 12:13:53 GMT+00:00, Natural Groove <
> natural_groove@hotmail.fr> wrote:
>>
>> Hi,
>>
>> I am interested in using oe to crossbuild stuff for raspberry pi b+, and
>> I wondered if someone already achieved to do this?
>>  From what I read there are some specifics to deal with, can someone
>> help me with setting this up for b+?
>>
>> Thanks in advance
>> Natural
>>
>> ---
>> Ce courrier =C3=A9lectronique ne contient aucun virus ou logiciel malvei=
llant parce que la protection avast! Antivirus est active.
>> http://www.avast.com
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*Andrei Gherzan*

--047d7bfd061c741eec05071c5ebc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I did nothing regarding RPI b+ as i don&#39;t own a device=
 like that. If you guys can make it work and patches are needed in order to=
 accomplish this, please send them over mailing list and/or review gerrit.<=
div>Thanks.<br><div><br></div><div><br></div></div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Fri, Oct 31, 2014 at 4:06 PM, Mi=
ke Hogg <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehogg@mountdrive.com" ta=
rget=3D"_blank">mikehogg@mountdrive.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div>Yes you can and I have. Search the pi forum for m=
y posts there, last time I tried a yocto build for the b+ it pulled in the =
old pi firmware which doesn&#39;t work on the b+. Per my notes on the pi fo=
rum thats easily fixed by copying firmware from another b+ image. <br><div>=
<div class=3D"h5"><br><div class=3D"gmail_quote">On 31 October 2014 12:13:5=
3 GMT+00:00, Natural Groove &lt;<a href=3D"mailto:natural_groove@hotmail.fr=
" target=3D"_blank">natural_groove@hotmail.fr</a>&gt; wrote:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
<pre>Hi,<br><br>I am interested in using oe to crossbuild stuff for raspber=
ry pi b+, and <br>I wondered if someone already achieved to do this?<br> Fr=
om what I read there are some specifics to deal with, can someone <br>help =
me with setting this up for b+?<br><br>Thanks in advance<br>Natural<br><br>=
---<br>Ce courrier =C3=A9lectronique ne contient aucun virus ou logiciel ma=
lveillant parce que la protection avast! Antivirus est active.<br><a href=
=3D"http://www.avast.com" target=3D"_blank">http://www.avast.com</a><br></p=
re></blockquote></div></div></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:center"></=
div><div style=3D"text-align:center"><div align=3D"left"><b style=3D"font-f=
amily:Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei G=
herzan</b><br></div></div></div></div>
</div>

--047d7bfd061c741eec05071c5ebc--
