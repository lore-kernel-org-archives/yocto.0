Return-Path: <vinodmaverickr007@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A19FDE00576; Sun, 10 Aug 2014 23:25:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vinodmaverickr007[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E6BBE004D1
	for <yocto@yoctoproject.org>; Sun, 10 Aug 2014 23:24:53 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id x13so1225320qcv.8
	for <yocto@yoctoproject.org>; Sun, 10 Aug 2014 23:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DOYtRw7iZ71qxR2yEDUrwoscic6PBtYSsLk6vl6JJ/g=;
	b=AqZ/rPT2tNZyIzgrl89RQnxgbxWq/oCOM8XgHZ5Az54pgx8bU8qa2LgasX38MB7ZB/
	DAsR7ak6zU96eClwqE7uw1ImxdVbW/3y2p5bFaydVA0Z6h05636+8a/MTIDdAf86hHtZ
	ldN6I17Oz6zYACYLUMChPeW0uJm4dtH/BuZvwKDWuIbqN1Jwa4AYzPBWlojMKIF4OxgV
	J74y1MfpX9rVHS8yu30W95l91fw4P+Z5k7uqx5/vPNFSdn741cs8tv7xB7SSASkWjDOW
	aZzC4XWUnCi61bj2E80Zdo1POvw0sJweAQg50KaDcbVxbq/uv8Mtn302ODZgFrLZZT2m
	G3zA==
MIME-Version: 1.0
X-Received: by 10.224.123.8 with SMTP id n8mr60713135qar.40.1407738293088;
	Sun, 10 Aug 2014 23:24:53 -0700 (PDT)
Received: by 10.140.17.70 with HTTP; Sun, 10 Aug 2014 23:24:52 -0700 (PDT)
In-Reply-To: <CALTF=oKssqe56avB49wnHvyiTiCkAD=cq7NdD+UjXyJPe0dL2g@mail.gmail.com>
References: <CAGWLT1TAjjZ015Ajs7FtC9yeOU9eXTw07HTWngyRkCssKkQo7Q@mail.gmail.com>
	<CALTF=oKssqe56avB49wnHvyiTiCkAD=cq7NdD+UjXyJPe0dL2g@mail.gmail.com>
Date: Mon, 11 Aug 2014 11:54:52 +0530
Message-ID: <CAGWLT1TaQzoxbUhK2xLS=NGhYiFq3fs=Kf0=Z4Crhdri5nMJHw@mail.gmail.com>
From: vinod kumar <vinodmaverickr007@gmail.com>
To: Ronaldo Nunez <ronaldo.viera@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build the kernel for I.mx6 board
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
X-List-Received-Date: Mon, 11 Aug 2014 06:25:00 -0000
Content-Type: multipart/alternative; boundary=089e0149ca70e579660500549c73

--089e0149ca70e579660500549c73
Content-Type: text/plain; charset=UTF-8

Hi Ronaldo,

Thanks for your reply and valuable suggestions.

*But cleansstate work the same way as cleanal*l. It means it also remove
the kernel source code from build directory.

However the link which you share with me is very nice, I go through it but
also does not give the idea.

I have the follows queries:


   -  I want to clean my kernel directory(*.o binary file only* not .c
   file) only. So is there any way to do that?


   - And one more thing how we can *apply the patch in kernel driver* (eg.
   USB driver) and add the customize configuration from source directory.
   Please give an example, if it is possible.




On Sun, Aug 10, 2014 at 9:46 PM, Ronaldo Nunez <ronaldo.viera@gmail.com>
wrote:

> Hello Vinod!
>
> Cleanall command deletes all releated to the tasks on your recipe,
> including the source code. You should try cleansstate command.
>
> Take a look to this doc,
>
> https://www.yoctoproject.org/sites/yoctoproject.org/files/kernel-lab-1.4.pdf
>
> It's releated to kernel development using Yocto Project, I think it will
> help you a lot.
>
> Cheers,
>
> Ronaldo
>
>
> 2014-08-10 3:16 GMT-03:00 vinod kumar <vinodmaverickr007@gmail.com>:
>
>> Hi,
>>
>> I have build the yocto for I.mx6 board. After building the source code,
>> kernel is in build directory. So when I run
>> bitbake linux-imx -c cleanall, it remove the entire kernel source code.
>>
>> So I have some queries:
>> 1) Is it possible to modify(to made changes) the kernel source code
>> directly from source directory, without going into build directory.
>>
>> 2) How can I remove the compiled file(.o) file from the kernel source
>> code, without deleting the entire kernel source code.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Ronaldo Nunez
>

--089e0149ca70e579660500549c73
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Ronaldo,<br><br></div>Thanks for your reply a=
nd valuable suggestions. <br><br><b>But cleansstate work the same way as cl=
eanal</b>l. It means it also remove the kernel source code from build direc=
tory.<br>
<br><span style=3D"color:rgb(11,83,148)">However the link which you share w=
ith me is very nice, I go through it but also does not give the idea.</span=
><br><br>I have the follows queries:<br><br><ul><li>=C2=A0I want to clean m=
y kernel directory(<b>.o binary file only</b> not .c file) only. So is ther=
e any way to do that?</li>
</ul></div><ul><li>And one more thing how we can <b>apply the patch in kern=
el driver</b> (eg. USB driver) and add the customize configuration from sou=
rce directory. Please give an example, if it is possible.<br></li></ul>
<p><br></p></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Sun, Aug 10, 2014 at 9:46 PM, Ronaldo Nunez <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ronaldo.viera@gmail.com" target=3D"_blank">ronaldo.viera@gm=
ail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello Vinod!<div><br></div>=
<div><div>Cleanall command deletes all releated to the tasks on your recipe=
, including the source code. You should try cleansstate command.<br>
</div></div><div><br></div><div>Take a look to this doc,</div>

<div><a href=3D"https://www.yoctoproject.org/sites/yoctoproject.org/files/k=
ernel-lab-1.4.pdf" target=3D"_blank">https://www.yoctoproject.org/sites/yoc=
toproject.org/files/kernel-lab-1.4.pdf</a><br></div><div><br></div><div>It&=
#39;s releated to kernel development using Yocto Project, I think it will h=
elp you a lot.</div>


<div><br></div><div>Cheers,<br></div><div><br></div><div>Ronaldo</div><div =
class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-08-10 3:16 GM=
T-03:00 vinod kumar <span dir=3D"ltr">&lt;<a href=3D"mailto:vinodmaverickr0=
07@gmail.com" target=3D"_blank">vinodmaverickr007@gmail.com</a>&gt;</span>:=
<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div><div class=3D"h5"><p dir=3D"ltr">Hi,</p>
<p dir=3D"ltr">I have build the yocto for I.mx6 board. After building the s=
ource code, kernel is in build directory. So when I run<br>
bitbake linux-imx -c cleanall, it remove the entire kernel source code.</p>
<p dir=3D"ltr">So I have some queries:<br>
1) Is it possible to modify(to made changes) the kernel source code directl=
y from source directory, without going into build directory.</p>
<p dir=3D"ltr">2) How can I remove the compiled file(.o) file from the kern=
el source code, without deleting the entire kernel source code.</p>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"=
#888888"><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Ronal=
do Nunez</div>
</font></span></div></div>
</blockquote></div><br></div>

--089e0149ca70e579660500549c73--
