Return-Path: <ronaldo.viera@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79E76E0079A; Tue, 12 Aug 2014 04:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ronaldo.viera[at]gmail.com)
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
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D5B7E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 04:56:06 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id eu11so12949482pac.31
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 04:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=U0qPZbTvmlTWZHbH+WXm3InbQq/HP9H6NwaBBdbIA/g=;
	b=drB+vUyOR5HXIa4gFveAs97bvP9IH8YhXnVLLFt4RyQ8DIwCNXzHq61gzvuknHMVf/
	i0cWNzPBLGaS2AGjJjSqt5dlzOlFbKuRI/aj439rDZ7olN9fS9T1oPj5b/ZN16nrCPN3
	Cm+QT2ApzPrC2+zBPBUy0KdpoB+WtcM2kjOyFAst0LLHFcJGRIxjufDwHEEJd+JuMyOI
	jlyRRNOq6ha/R/mNxbD++lhCeAJcc7YaKzcYlnNGxtzAV8h3XwgvF+ICpRyaQCBTsACs
	mB1M//p2ErndL1kKdbFphF3z7TyOF1HJL87cpLmlaHEP5lI09qYINoeT05YmhNpWWhXA
	XrGQ==
X-Received: by 10.70.88.39 with SMTP id bd7mr3799659pdb.68.1407844566051; Tue,
	12 Aug 2014 04:56:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.69.6 with HTTP; Tue, 12 Aug 2014 04:55:25 -0700 (PDT)
In-Reply-To: <CAGWLT1SiUFL-oRBbker0rzHGzSkmn_bcq7Qf0zc0o3a35LaK_w@mail.gmail.com>
References: <CAGWLT1TAjjZ015Ajs7FtC9yeOU9eXTw07HTWngyRkCssKkQo7Q@mail.gmail.com>
	<CALTF=oKssqe56avB49wnHvyiTiCkAD=cq7NdD+UjXyJPe0dL2g@mail.gmail.com>
	<CAGWLT1TaQzoxbUhK2xLS=NGhYiFq3fs=Kf0=Z4Crhdri5nMJHw@mail.gmail.com>
	<CALTF=o+PNP4hVZ1zpw+w1DMWY85M5=hCVEPkChU9BG4c4A9weg@mail.gmail.com>
	<CAGWLT1SiUFL-oRBbker0rzHGzSkmn_bcq7Qf0zc0o3a35LaK_w@mail.gmail.com>
From: Ronaldo Nunez <ronaldo.viera@gmail.com>
Date: Tue, 12 Aug 2014 08:55:25 -0300
Message-ID: <CALTF=oJiV_ZEd9Hupf4BcfsbXCA=0JWvWi_Quqqb=kgXZytVQw@mail.gmail.com>
To: vinod kumar <vinodmaverickr007@gmail.com>
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
X-List-Received-Date: Tue, 12 Aug 2014 11:56:10 -0000
Content-Type: multipart/alternative; boundary=001a11c22bea422f6705006d5ba1

--001a11c22bea422f6705006d5ba1
Content-Type: text/plain; charset=UTF-8

Hello Vinod,

You are right. I should have tested it before answering. My apologies.

But, if you want to zip ( I suggest you to use tar.gz instead) the source
code, check the SRC_URI variable in
sources/meta-fsl-arm/recipes-kernel/linux/linux-imx.inc . This variable
defines the repository address of the kernel.

And, also, take a look at linux-imx_3.10.17.bb or linux-imx_2.6.35.3.bb (if
you're using daisy branch) to check the correct branch for the version that
you need.

Also, take a look at meta-freescale mailing list. Freescale's layers
related questions are solved from there.

[]'s,

Ronaldo


2014-08-11 23:22 GMT-03:00 vinod kumar <vinodmaverickr007@gmail.com>:

> Hi Ronaldo,
>
> Thanks for your kind support.
>
> I think there is no way to clean the output directory. When I run the
> below commands (as you suggetsed):
>
>    - *bitbake -c clean linux-imx*
>
>
>    - *bitbake linux-imx -c cleansstate*
>
>
>    - *bitbake linux-imx -c cleanall*
>
>
> So all of these commands delete the contents of
> git(build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/git/)
> directory, which I don't want. Because I want to make a zip directory
> without compilation, having the contents of git directory.
>
> And also I don't know from where *bitbake core-image-minimal* fetch the
> contents of git directory.
>
>
>
> On Mon, Aug 11, 2014 at 6:55 PM, Ronaldo Nunez <ronaldo.viera@gmail.com>
> wrote:
>
>> Hello Vinod,
>>
>> To clean the output try clean command (bitbake -c clean linux-imx). You
>> can check the available tasks from a recipe using the command listtasks.
>>
>> To patch the kernel, I believe that the easiest way is to create your own
>> layer and modify the linux-imx recipe from there. You can base your
>> linux-imx recipe in the recipe of linux-imx in meta-fsl-arm-extra layer.
>> Check this (amazing) tutorial from Freescale Forum
>> https://community.freescale.com/docs/DOC-95333
>>
>> Cheers,
>>
>> Ronaldo
>>
>>
>>
>> 2014-08-11 3:24 GMT-03:00 vinod kumar <vinodmaverickr007@gmail.com>:
>>
>> Hi Ronaldo,
>>>
>>> Thanks for your reply and valuable suggestions.
>>>
>>> *But cleansstate work the same way as cleanal*l. It means it also
>>> remove the kernel source code from build directory.
>>>
>>> However the link which you share with me is very nice, I go through it
>>> but also does not give the idea.
>>>
>>> I have the follows queries:
>>>
>>>
>>>    -  I want to clean my kernel directory(*.o binary file only* not .c
>>>    file) only. So is there any way to do that?
>>>
>>>
>>>    - And one more thing how we can *apply the patch in kernel driver*
>>>    (eg. USB driver) and add the customize configuration from source directory.
>>>    Please give an example, if it is possible.
>>>
>>>
>>>
>>>
>>> On Sun, Aug 10, 2014 at 9:46 PM, Ronaldo Nunez <ronaldo.viera@gmail.com>
>>> wrote:
>>>
>>>> Hello Vinod!
>>>>
>>>> Cleanall command deletes all releated to the tasks on your recipe,
>>>> including the source code. You should try cleansstate command.
>>>>
>>>> Take a look to this doc,
>>>>
>>>> https://www.yoctoproject.org/sites/yoctoproject.org/files/kernel-lab-1.4.pdf
>>>>
>>>> It's releated to kernel development using Yocto Project, I think it
>>>> will help you a lot.
>>>>
>>>> Cheers,
>>>>
>>>> Ronaldo
>>>>
>>>>
>>>> 2014-08-10 3:16 GMT-03:00 vinod kumar <vinodmaverickr007@gmail.com>:
>>>>
>>>>> Hi,
>>>>>
>>>>> I have build the yocto for I.mx6 board. After building the source
>>>>> code, kernel is in build directory. So when I run
>>>>> bitbake linux-imx -c cleanall, it remove the entire kernel source code.
>>>>>
>>>>> So I have some queries:
>>>>> 1) Is it possible to modify(to made changes) the kernel source code
>>>>> directly from source directory, without going into build directory.
>>>>>
>>>>> 2) How can I remove the compiled file(.o) file from the kernel source
>>>>> code, without deleting the entire kernel source code.
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>>
>>>>
>>>> --
>>>> Ronaldo Nunez
>>>>
>>>
>>>
>>
>>
>> --
>> Ronaldo Nunez
>>
>
>


-- 
Ronaldo Nunez

--001a11c22bea422f6705006d5ba1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Vinod,<div><br></div><div>You are right. I should ha=
ve tested it before answering. My apologies.</div><div><br></div><div>But, =
if you want to zip ( I suggest you to use tar.gz instead) the source code, =
check the SRC_URI variable in sources/meta-fsl-arm/recipes-kernel/linux/lin=
ux-imx.inc . This variable defines the repository address of the kernel.=C2=
=A0</div>

<div><br></div><div>And, also, take a look at=C2=A0<a href=3D"http://linux-=
imx_3.10.17.bb">linux-imx_3.10.17.bb</a> or <a href=3D"http://linux-imx_2.6=
.35.3.bb">linux-imx_2.6.35.3.bb</a> (if you&#39;re using daisy branch) to c=
heck the correct branch for the version that you need.</div>

<div><br></div><div>Also, take a look at meta-freescale mailing list. Frees=
cale&#39;s layers related questions are solved from there.</div><div><br></=
div><div>[]&#39;s,</div><div><br></div><div>Ronaldo</div></div><div class=
=3D"gmail_extra">

<br><br><div class=3D"gmail_quote">2014-08-11 23:22 GMT-03:00 vinod kumar <=
span dir=3D"ltr">&lt;<a href=3D"mailto:vinodmaverickr007@gmail.com" target=
=3D"_blank">vinodmaverickr007@gmail.com</a>&gt;</span>:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Ronaldo,<br><br></div>Tha=
nks for your kind support.<br><br>I think there is no way to clean the outp=
ut directory. When I run the below commands (as you suggetsed):<br></div>

<ul>
<li><b>bitbake -c clean linux-imx</b></li></ul></div><ul><li><b>bitbake lin=
ux-imx -c cleansstate</b></li></ul></div><ul><li><b>bitbake linux-imx -c cl=
eanall</b></li></ul><br></div>So all of these commands delete the contents =
of git(build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/=
git/) directory, which I don&#39;t want. Because I want to make a zip direc=
tory without compilation, having the contents of git directory.<br>


<br>And also I don&#39;t know from where <b>bitbake core-image-minimal</b> =
fetch the contents of git directory.<br></div><br></div><div class=3D"HOEnZ=
b"><div class=3D"h5"><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">

On Mon, Aug 11, 2014 at 6:55 PM, Ronaldo Nunez <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ronaldo.viera@gmail.com" target=3D"_blank">ronaldo.viera@gmail.=
com</a>&gt;</span> wrote:<br>
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


<div><br>

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
</div></div></blockquote></div></div></div><span><font color=3D"#888888"><b=
r><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Ronaldo Nunez</d=
iv>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr">Ronaldo Nunez</div>
</div>

--001a11c22bea422f6705006d5ba1--
