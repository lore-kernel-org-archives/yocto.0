Return-Path: <bewithsathish@gmail.com>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C74ADE0075C
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 08:37:59 -0800 (PST)
Received: by mail-pd0-f178.google.com with SMTP id y10so5321104pdj.37
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 08:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=R/trULm8/7+9X1HipZKv+KlbinpRzWEPVVT0mLZGKUc=;
	b=x+iQhIj+J94ogCs+GdQ+EtJjcNpqjEp5WY358ZfCQ9Su1hztARPsJhCY/vbSP2mU2V
	KsWSFnGt94+ti9gmzHituu5dJCcSaugWtl6dRitulqIINOp1KoAywRAwy802gGBnuErB
	luOu55HMfJMXgLLqNYWGd80ZY1AEhV3FXtEujCrLq/SZfnYjpupxIyIeSGoXbWfx2HpI
	aMfVkLgfa2GkL8Zw6P4i4Yo/Ut+5hkvErpZzvh7DwKXLkhebvTQYhXsFp63icUxC3JFW
	XM9fJzSmwm8uAFvebjOB6WrsFx2qWo7XRUS1W30MwM4iZMVPhZY73cPMXIZlCRF8jJRb
	dXTw==
MIME-Version: 1.0
X-Received: by 10.66.119.136 with SMTP id ku8mr26872693pab.121.1387816679288; 
	Mon, 23 Dec 2013 08:37:59 -0800 (PST)
Sender: bewithsathish@gmail.com
Received: by 10.68.36.138 with HTTP; Mon, 23 Dec 2013 08:37:59 -0800 (PST)
In-Reply-To: <CAE_REAu86u_sATDxVJK2KM=hPnRD5Yp7Ce2O1EWvZSFJjqjy=A@mail.gmail.com>
References: <1161C063FEBDA543A6BFB93ABED841421B4AF870C1@SGPMBX05.APAC.bosch.com>
	<CANJvwR8ADbGvMcZUxOyWwUtqqa6tsCohE8cSqxVS6GDXiMGQ1Q@mail.gmail.com>
	<CAE_REAu86u_sATDxVJK2KM=hPnRD5Yp7Ce2O1EWvZSFJjqjy=A@mail.gmail.com>
Date: Mon, 23 Dec 2013 22:07:59 +0530
X-Google-Sender-Auth: x9JmGjVtt6SCDg31DBAZ6qYfNK4
Message-ID: <CANJvwR9cizc69x58yVk0CjzYiStXPoJPKDqxqPek5oy=g4PWaA@mail.gmail.com>
From: Sathishkumar Duraisamy <sathishkumar.duraisamy@yahoo.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build fails for eglibc
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
X-List-Received-Date: Mon, 23 Dec 2013 16:38:03 -0000
Content-Type: multipart/alternative; boundary=e89a8ffbacdf2ec27704ee3640cf

--e89a8ffbacdf2ec27704ee3640cf
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,


On Mon, Dec 23, 2013 at 10:45 AM, Gaurang Shastri <gmshastri@gmail.com>wrot=
e:

> Hi,
>
> I would like you to refer:
>
> http://lists.openembedded.org/pipermail/openembedded-core/2013-April/0777=
48.html
>  https://bugzilla.redhat.com/show_bug.cgi?id=3D304121
>
> This seems to be rpath issue with trailing "/". FYI, I already tried
> Poky-dora with "qemuarm" but didnt get this issue.
>
> Thanks for the support. I faced this problem when I used the Yocto
Project 1.5 <https://www.yoctoproject.org/download/yocto-project-15> Now I
could solve the issue by cloning the git tag: poky-dora-10.0.0.final.

//Gaurang Shastri
>
>
>
> On Sat, Dec 21, 2013 at 7:58 PM, Sathishkumar Duraisamy <
> sathishkumar.duraisamy@yahoo.com> wrote:
>
>>
>>
>>  Hi,
>>
>> I using Poky-dora-10.0.0. configured for qemuarm. I am getting failed fo=
r
>> eglibc with following errors. Any idea to fix this?
>>
>> ERROR: debugedit failed with exit code 256 (cmd was
>> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//sysroo=
ts/i686-linux/usr/lib/rpm/bin/debugedit'
>> -b
>> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/a=
rmv5te-poky-linux-gnueabi'
>> -d '/usr/src/debug' -i -l
>> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/a=
rmv5te-poky-linux-gnueabi/eglibc/2.18-r0/debugsources.list'
>> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/a=
rmv5te-poky-linux-gnueabi/eglibc/2.18-r0/package/lib/
>> libm-2.18.so'):
>> /home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp/sysroots=
/i686-linux/usr/lib/rpm/bin/debugedit:
>> canonicalization unexpectedly shrank by one character
>> ERROR: Function failed: split_and_strip_files
>> ERROR: Logfile of failure stored in:
>> /home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/ar=
mv5te-poky-linux-gnueabi/eglibc/2.18-r0/temp/log.do_package.516
>> ERROR: Task 12
>> (/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/meta/recipes-core=
/eglibc/
>> eglibc_2.18.bb, do_package) failed with exit code '1'
>>
>>
>> Mit freundlichen Gr=FC=DFen / Regards
>> Sathishkumar D
>>
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
Thanks and Regards,
Sathishkumar D

--e89a8ffbacdf2ec27704ee3640cf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Mon, Dec 23, 2013 at 10:45 AM, Gaurang Shastri <span di=
r=3D"ltr">&lt;<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gmsh=
astri@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><di=
v><div>Hi,<br><br></div>I would like you to refer:<br>=A0<a href=3D"http://=
lists.openembedded.org/pipermail/openembedded-core/2013-April/077748.html" =
target=3D"_blank">http://lists.openembedded.org/pipermail/openembedded-core=
/2013-April/077748.html</a><br>

=A0<a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D304121" target=
=3D"_blank">https://bugzilla.redhat.com/show_bug.cgi?id=3D304121</a><br><br=
></div>This seems to be rpath issue with trailing &quot;/&quot;. FYI, I alr=
eady tried Poky-dora with &quot;qemuarm&quot; but didnt get this issue.<br>

<br></div></div></blockquote><div>Thanks for the support. I faced this prob=
lem when I used the <a href=3D"https://www.yoctoproject.org/download/yocto-=
project-15">Yocto Project 1.5</a> Now I could solve the issue by cloning th=
e git tag: poky-dora-10.0.0.final. <br>
<br> </div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div></div>//Gaurang Shastri<br><div><div><br></div></div></div><div cla=
ss=3D"gmail_extra">
<br><br><div class=3D"gmail_quote"><div><div class=3D"h5">On Sat, Dec 21, 2=
013 at 7:58 PM, Sathishkumar Duraisamy <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:sathishkumar.duraisamy@yahoo.com" target=3D"_blank">sathishkumar.durais=
amy@yahoo.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div cla=
ss=3D"h5"><div dir=3D"ltr"><br><div class=3D"gmail_quote"><br>






<div>
<font face=3D"Arial, sans-serif">
<div>Hi,</div>
<div>=A0</div>
<div>I using Poky-dora-10.0.0. configured for qemuarm. I am getting failed =
for eglibc with following errors. Any idea to fix this?</div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div>ERROR: debugedit failed with exit code 256 (cmd was &#39;/home/sdu2cob=
/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//sysroots/i686-linux/usr=
/lib/rpm/bin/debugedit&#39; -b &#39;/home/sdu2cob/workspace/YoctoProject/po=
ky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi&#39;
-d &#39;/usr/src/debug&#39; -i -l &#39;/home/sdu2cob/workspace/YoctoProject=
/poky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18-r0=
/debugsources.list&#39; &#39;/home/sdu2cob/workspace/YoctoProject/poky-dora=
-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18-r0/package/l=
ib/<a href=3D"http://libm-2.18.so" target=3D"_blank">libm-2.18.so</a>&#39;)=
:</div>




<div>/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp/sysroo=
ts/i686-linux/usr/lib/rpm/bin/debugedit: canonicalization unexpectedly shra=
nk by one character</div>
<div>ERROR: Function failed: split_and_strip_files</div>
<div>ERROR: Logfile of failure stored in: /home/sdu2cob/workspace/YoctoProj=
ect/poky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18=
-r0/temp/log.do_package.516</div>
<div>ERROR: Task 12 (/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/=
meta/recipes-core/eglibc/<a href=3D"http://eglibc_2.18.bb" target=3D"_blank=
">eglibc_2.18.bb</a>, do_package) failed with exit code &#39;1&#39;</div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Bosch Office Sans, sans-serif">Mit freundlichen Gr=FC=DF=
en / Regards</font></div>
<div><font face=3D"Bosch Office Sans, sans-serif">Sathishkumar D</font></di=
v>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
</font>
</div>

</div><br></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div><div class=3D"gmail_extra">Thanks and Rega=
rds,<br>Sathishkumar D<br></div></div></div>

--e89a8ffbacdf2ec27704ee3640cf--
