Return-Path: <grsandeep85@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B02AE0163E
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 07:10:16 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id va2so7617194obc.12
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 07:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=v1CFISIRehQlpZagDRqocbbGvRGjPfqPrr12+If8eFw=;
	b=XDNC35lZ7TDoym9WzYwEoTQLB/n28dLuaa5arUt9ZOMc5SHUUfouco2p7cuDgP4QWq
	z4nyBNelZjD2oAslVS9DUIjBSr6Gg5tF+R525XdkH/WZHIhlmndeRrz25xBWRA8GT5vQ
	z4pMjv0lT6doE1dbBhlg1mdK9QmjWN9tt2OhgHSW2VkPHPQPU64ZOncNT3FSaV8CXrv9
	wCh5mL5Wdk3zTqgcCR7KbcVtTq/VbarO46SzfLOjRprvPaZasbFh1PMbbeRQtduH0ZI0
	14xkl+1K84OWEdnUFwMJ2SPgH369xEumA/AQTQ1lLLKIpvCOsnirh9oUtKYy6EftfbFP
	ljgA==
MIME-Version: 1.0
X-Received: by 10.60.125.138 with SMTP id mq10mr23921oeb.90.1382451015368;
	Tue, 22 Oct 2013 07:10:15 -0700 (PDT)
Received: by 10.76.20.102 with HTTP; Tue, 22 Oct 2013 07:10:15 -0700 (PDT)
In-Reply-To: <CAE_REAucf4Epi1v=xfEGYhLvc1bG_cDDTrUfzxrYJX1jjPyHMQ@mail.gmail.com>
References: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
	<CAE_REAucf4Epi1v=xfEGYhLvc1bG_cDDTrUfzxrYJX1jjPyHMQ@mail.gmail.com>
Date: Tue, 22 Oct 2013 08:10:15 -0600
Message-ID: <CAKP9-Siz-+PmGtvc+BG6bNq3M8uPMG_qxGx+s75wD=T81hUxzA@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to bring up "apt and dpkg" packages on yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 14:10:16 -0000
Content-Type: multipart/alternative; boundary=047d7b33ce86b0c4f704e954f58e

--047d7b33ce86b0c4f704e954f58e
Content-Type: text/plain; charset=ISO-8859-1

Hi,

      I have selected PACKAGE_CLASSES ?= "package_rpm package_deb" and
IMAGE_FSTYPE is tar.gz


On Mon, Oct 21, 2013 at 11:05 PM, Gaurang Shastri <gmshastri@gmail.com>wrote:

> hi,
>
> what packaging method you have selected while creating your image ??
>
> //Gaurang Shastri
>
>
>
> On Tue, Oct 22, 2013 at 4:36 AM, Sandeep G.R <grsandeep85@gmail.com>wrote:
>
>> Hi All,
>>
>> I have ported Embedded Linux using yocto opensource for Freescale QorIQ
>> T4240QDS processor. I need to bring up "apt and dpkg" on T4240QDS using
>> yocto.
>>
>> For this i need to modify in some .conf or .bb files. Can you please let
>> me know in which files i need to do these changes in order to bring up "apt
>> and dpkg" on T4240QDS using yocto.
>>
>> --
>> *Thanks & Regards,*
>> *Sandeep G R*
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


-- 
*Thanks & Regards,*
*Sandeep G R*

--047d7b33ce86b0c4f704e954f58e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:trebuche=
t ms,sans-serif;color:#073763">Hi,</div><div class=3D"gmail_default" style=
=3D"font-family:trebuchet ms,sans-serif;color:#073763"><br></div><div class=
=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#0737=
63">
=A0 =A0 =A0 I have selected PACKAGE_CLASSES ?=3D &quot;package_rpm package_=
deb&quot; and IMAGE_FSTYPE is tar.gz</div></div><div class=3D"gmail_extra">=
<br><br><div class=3D"gmail_quote">On Mon, Oct 21, 2013 at 11:05 PM, Gauran=
g Shastri <span dir=3D"ltr">&lt;<a href=3D"mailto:gmshastri@gmail.com" targ=
et=3D"_blank">gmshastri@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><div dir=3D"ltr"><div dir=
=3D"ltr"><div>hi,<br><br>what packaging method you have selected while crea=
ting your image ??<br>
<br></div>//Gaurang Shastri<br></div><br></div></div><div class=3D"gmail_ex=
tra"><br><br><div class=3D"gmail_quote"><div class=3D"im">
On Tue, Oct 22, 2013 at 4:36 AM, Sandeep G.R <span dir=3D"ltr">&lt;<a href=
=3D"mailto:grsandeep85@gmail.com" target=3D"_blank">grsandeep85@gmail.com</=
a>&gt;</span> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div><div class=3D"h5">
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)"><div class=3D"gmail_default" =
style=3D"font-size:13px">Hi All,</div><div class=3D"gmail_default" style=3D=
"font-size:13px">


<br></div><div class=3D"gmail_default" style=3D"font-size:13px">I have port=
ed Embedded Linux using yocto opensource for Freescale QorIQ T4240QDS proce=
ssor. I need to bring up=A0&quot;apt and dpkg&quot; on=A0T4240QDS using yoc=
to.</div>


<div class=3D"gmail_default" style=3D"font-size:13px"><br></div><div class=
=3D"gmail_default" style=3D"font-size:13px">For this i need to modify in so=
me .conf or .bb files. Can you please let me know in which files i need to =
do these changes in order to bring up &quot;apt and dpkg&quot; on T4240QDS =
using yocto.</div>

<span><font color=3D"#888888">
</font></span></div><span><font color=3D"#888888"><div><br></div>-- <br><di=
v dir=3D"ltr"><font color=3D"#073763" face=3D"trebuchet ms, sans-serif"><b>=
Thanks &amp; Regards,</b></font><div><font color=3D"#073763" face=3D"trebuc=
het ms, sans-serif"><b>Sandeep G R</b></font><br>

<br>
</div></div>
</font></span></div>
<br></div></div><div class=3D"im">_________________________________________=
______<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></div></blockquote></div><br></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><font face=3D"trebuchet ms, sans-serif" color=3D"#073763"><b>Thanks &a=
mp; Regards,</b></font><div><font face=3D"trebuchet ms, sans-serif" color=
=3D"#073763"><b>Sandeep G R</b></font><br>
<br></div></div>
</div>

--047d7b33ce86b0c4f704e954f58e--
