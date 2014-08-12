Return-Path: <vinodmaverickr007@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3267E00796; Mon, 11 Aug 2014 19:22:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vinodmaverickr007[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85638E00786
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 19:22:26 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id i50so9094322qgf.34
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 19:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zRIlgoD0U9FPPNznGb+eFbj9Dgfm9txf/u/aWNdAXIU=;
	b=FnFy4d3LKbO3dMQt4h8UvcsAcQEhybDx1CWv+gTkZrLpCdWTL8b4W83yonRTdAmzMA
	f/yxYQEppJXhV3U673OByVTXkI6dW2K5eOXgsw3vTh58dnd/Dn/3ogBtaBRUaGFfwF0I
	M1IPOzeeoHApQ/fx6mZr9+AUonEpxib1NgmD1cFVefiPjSNs+BrHcjelCCuTa5N2FCib
	7PeEH1IpqnLZtu1KMr/G+L5c0z8AN+Hseq+srFyaW27WdTwCzrib4qRsGslCXbT8I41K
	wke4DytKVOR7dTz9qqN6br59YQD9CYrA72Piq8qOwNjTKX7bg7eJ0cXv2ED493JkYzKu
	Eyrg==
MIME-Version: 1.0
X-Received: by 10.140.97.117 with SMTP id l108mr2100034qge.29.1407810146314;
	Mon, 11 Aug 2014 19:22:26 -0700 (PDT)
Received: by 10.140.17.70 with HTTP; Mon, 11 Aug 2014 19:22:26 -0700 (PDT)
In-Reply-To: <CALTF=o+PNP4hVZ1zpw+w1DMWY85M5=hCVEPkChU9BG4c4A9weg@mail.gmail.com>
References: <CAGWLT1TAjjZ015Ajs7FtC9yeOU9eXTw07HTWngyRkCssKkQo7Q@mail.gmail.com>
	<CALTF=oKssqe56avB49wnHvyiTiCkAD=cq7NdD+UjXyJPe0dL2g@mail.gmail.com>
	<CAGWLT1TaQzoxbUhK2xLS=NGhYiFq3fs=Kf0=Z4Crhdri5nMJHw@mail.gmail.com>
	<CALTF=o+PNP4hVZ1zpw+w1DMWY85M5=hCVEPkChU9BG4c4A9weg@mail.gmail.com>
Date: Tue, 12 Aug 2014 07:52:26 +0530
Message-ID: <CAGWLT1SiUFL-oRBbker0rzHGzSkmn_bcq7Qf0zc0o3a35LaK_w@mail.gmail.com>
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
X-List-Received-Date: Tue, 12 Aug 2014 02:22:30 -0000
Content-Type: multipart/alternative; boundary=001a113941d6aeb4e2050065578e

--001a113941d6aeb4e2050065578e
Content-Type: text/plain; charset=UTF-8

Hi Ronaldo,

Thanks for your kind support.

I think there is no way to clean the output directory. When I run the below
commands (as you suggetsed):

   - *bitbake -c clean linux-imx*


   - *bitbake linux-imx -c cleansstate*


   - *bitbake linux-imx -c cleanall*


So all of these commands delete the contents of
git(build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/git/)
directory, which I don't want. Because I want to make a zip directory
without compilation, having the contents of git directory.

And also I don't know from where *bitbake core-image-minimal* fetch the
contents of git directory.



On Mon, Aug 11, 2014 at 6:55 PM, Ronaldo Nunez <ronaldo.viera@gmail.com>
wrote:

> Hello Vinod,
>
> To clean the output try clean command (bitbake -c clean linux-imx). You
> can check the available tasks from a recipe using the command listtasks.
>
> To patch the kernel, I believe that the easiest way is to create your own
> layer and modify the linux-imx recipe from there. You can base your
> linux-imx recipe in the recipe of linux-imx in meta-fsl-arm-extra layer.
> Check this (amazing) tutorial from Freescale Forum
> https://community.freescale.com/docs/DOC-95333
>
> Cheers,
>
> Ronaldo
>
>
>
> 2014-08-11 3:24 GMT-03:00 vinod kumar <vinodmaverickr007@gmail.com>:
>
> Hi Ronaldo,
>>
>> Thanks for your reply and valuable suggestions.
>>
>> *But cleansstate work the same way as cleanal*l. It means it also remove
>> the kernel source code from build directory.
>>
>> However the link which you share with me is very nice, I go through it
>> but also does not give the idea.
>>
>> I have the follows queries:
>>
>>
>>    -  I want to clean my kernel directory(*.o binary file only* not .c
>>    file) only. So is there any way to do that?
>>
>>
>>    - And one more thing how we can *apply the patch in kernel driver*
>>    (eg. USB driver) and add the customize configuration from source directory.
>>    Please give an example, if it is possible.
>>
>>
>>
>>
>> On Sun, Aug 10, 2014 at 9:46 PM, Ronaldo Nunez <ronaldo.viera@gmail.com>
>> wrote:
>>
>>> Hello Vinod!
>>>
>>> Cleanall command deletes all releated to the tasks on your recipe,
>>> including the source code. You should try cleansstate command.
>>>
>>> Take a look to this doc,
>>>
>>> https://www.yoctoproject.org/sites/yoctoproject.org/files/kernel-lab-1.4.pdf
>>>
>>> It's releated to kernel development using Yocto Project, I think it will
>>> help you a lot.
>>>
>>> Cheers,
>>>
>>> Ronaldo
>>>
>>>
>>> 2014-08-10 3:16 GMT-03:00 vinod kumar <vinodmaverickr007@gmail.com>:
>>>
>>>> Hi,
>>>>
>>>> I have build the yocto for I.mx6 board. After building the source code,
>>>> kernel is in build directory. So when I run
>>>> bitbake linux-imx -c cleanall, it remove the entire kernel source code.
>>>>
>>>> So I have some queries:
>>>> 1) Is it possible to modify(to made changes) the kernel source code
>>>> directly from source directory, without going into build directory.
>>>>
>>>> 2) How can I remove the compiled file(.o) file from the kernel source
>>>> code, without deleting the entire kernel source code.
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>> --
>>> Ronaldo Nunez
>>>
>>
>>
>
>
> --
> Ronaldo Nunez
>

--001a113941d6aeb4e2050065578e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Ronaldo,<br><br></div>Tha=
nks for your kind support.<br><br>I think there is no way to clean the outp=
ut directory. When I run the below commands (as you suggetsed):<br></div><u=
l>
<li><b>bitbake -c clean linux-imx</b></li></ul></div><ul><li><b>bitbake lin=
ux-imx -c cleansstate</b></li></ul></div><ul><li><b>bitbake linux-imx -c cl=
eanall</b></li></ul><br></div>So all of these commands delete the contents =
of git(build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/=
git/) directory, which I don&#39;t want. Because I want to make a zip direc=
tory without compilation, having the contents of git directory.<br>
<br>And also I don&#39;t know from where <b>bitbake core-image-minimal</b> =
fetch the contents of git directory.<br></div><br></div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">On Mon, Aug 11, 2014 at 6:55 PM,=
 Ronaldo Nunez <span dir=3D"ltr">&lt;<a href=3D"mailto:ronaldo.viera@gmail.=
com" target=3D"_blank">ronaldo.viera@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello Vinod,<div><br></div>=
<div>To clean the output try clean command (bitbake -c clean linux-imx). Yo=
u can check the available tasks from a recipe using the command listtasks.<=
/div>
<div><br></div><div>To patch the kernel, I believe that the easiest way is =
to create your own layer and modify the linux-imx recipe from there. You ca=
n base your linux-imx recipe in the recipe of linux-imx in meta-fsl-arm-ext=
ra layer. Check this (amazing) tutorial from Freescale Forum <a href=3D"htt=
ps://community.freescale.com/docs/DOC-95333" target=3D"_blank">https://comm=
unity.freescale.com/docs/DOC-95333</a></div>


<div><br></div><div>Cheers,</div><div><br></div><div>Ronaldo</div><div><br>=
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2=
014-08-11 3:24 GMT-03:00 vinod kumar <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:vinodmaverickr007@gmail.com" target=3D"_blank">vinodmaverickr007@gmail.co=
m</a>&gt;</span>:<div>
<div class=3D"h5"><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Hi Ronaldo,<br><b=
r></div>Thanks for your reply and valuable suggestions. <br><br><b>But clea=
nsstate work the same way as cleanal</b>l. It means it also remove the kern=
el source code from build directory.<br>



<br><span style=3D"color:rgb(11,83,148)">However the link which you share w=
ith me is very nice, I go through it but also does not give the idea.</span=
><br><br>I have the follows queries:<br><br><ul><li>=C2=A0I want to clean m=
y kernel directory(<b>.o binary file only</b> not .c file) only. So is ther=
e any way to do that?</li>



</ul></div><ul><li>And one more thing how we can <b>apply the patch in kern=
el driver</b> (eg. USB driver) and add the customize configuration from sou=
rce directory. Please give an example, if it is possible.<br></li></ul>



<p><br></p></div><div><div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Sun, Aug 10, 2014 at 9:46 PM, Ronaldo Nunez <span dir=3D"l=
tr">&lt;<a href=3D"mailto:ronaldo.viera@gmail.com" target=3D"_blank">ronald=
o.viera@gmail.com</a>&gt;</span> wrote:<br>



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
adding-left:1ex"><div><div><p dir=3D"ltr">Hi,</p>
<p dir=3D"ltr">I have build the yocto for I.mx6 board. After building the s=
ource code, kernel is in build directory. So when I run<br>
bitbake linux-imx -c cleanall, it remove the entire kernel source code.</p>
<p dir=3D"ltr">So I have some queries:<br>
1) Is it possible to modify(to made changes) the kernel source code directl=
y from source directory, without going into build directory.</p>
<p dir=3D"ltr">2) How can I remove the compiled file(.o) file from the kern=
el source code, without deleting the entire kernel source code.</p>
<br></div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span><font color=3D"#888888"><br><br =
clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Ronaldo Nunez</div>
</font></span></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div></div></div><span class=3D"HOEnZb"><font col=
or=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Ronaldo Nunez</div>
</font></span></div>
</blockquote></div><br></div>

--001a113941d6aeb4e2050065578e--
