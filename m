Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17A78E00985; Fri,  6 Jun 2014 14:25:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8441FE0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 14:25:09 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id ho1so1541076wib.4
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 14:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HhWWlNrJv81DLITcxbdOq6OhQgqay+6XfvqY5A4JYn0=;
	b=FGqVsvE6WJueWJk5SNpqB4tUWy5Ei6m/M0+tmAa5667dLa4dQzYnsnZUaDraX5RdRP
	1ZXs5RttsfWi551iUXHLIdQQKA4QUVHQ79Nt5f6JMpBbWNSYlbOtYEVJbUw4+gryYsjv
	dW9/FoSLX+UKPu5jYzhF8Ox9CQm5qSPbS6gGcYvkrOG9qSYHHj05k8PCQYOIAn/KmhDo
	Bgq/8jGsG5XtEEPbSFcqUzooz2RwvD53cTwbqO7rF2EktHwJaBiNPDYt236n/VBwTnSt
	t658buzplwUkpEs4ub5Typ+JrWIUqVp5jwMAaQjvkbQgX3RGKsU+rRdEnd0NxhsYA4OU
	1h/Q==
MIME-Version: 1.0
X-Received: by 10.194.108.5 with SMTP id hg5mr10427141wjb.57.1402089908698;
	Fri, 06 Jun 2014 14:25:08 -0700 (PDT)
Received: by 10.194.172.164 with HTTP; Fri, 6 Jun 2014 14:25:08 -0700 (PDT)
In-Reply-To: <CAGM0ZdS=Ey035Po91o-sd+pKo4KJgVGj3d4NExF9huP9YCtzkQ@mail.gmail.com>
References: <CAGM0ZdRC1fBMcVjBXdeV5bG7Pe7LcFACzhTP0J2fvRdaMYSiGg@mail.gmail.com>
	<CAJTo0Lai3oqLkziVE_-+NK6MLMjcjh2biGNaESzPyeH9ztkeLg@mail.gmail.com>
	<CAGM0ZdS=Ey035Po91o-sd+pKo4KJgVGj3d4NExF9huP9YCtzkQ@mail.gmail.com>
Date: Fri, 6 Jun 2014 16:25:08 -0500
Message-ID: <CAGM0ZdSBSM_enFcgEZ_3-AHRzCZVf07gK_0n5E3Zg55ZvB85Ug@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: List of Binary Files from a recipe
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
X-List-Received-Date: Fri, 06 Jun 2014 21:25:15 -0000
Content-Type: multipart/alternative; boundary=089e0103defaf3864c04fb317e7a

--089e0103defaf3864c04fb317e7a
Content-Type: text/plain; charset=UTF-8

Hi Ross,

Using rpm, I was able to trace back recipe files for all the files except
for files in a folder called as media. When I try to trace for any file
inside media, it does not show me any package name. Could anyone please
tell me what is this media folder??

Thanks & Regards,
Bharath Chandra Elluru


On Thu, Jun 5, 2014 at 4:47 PM, Bharath Chandra <ellurubharath29@gmail.com>
wrote:

> Hi Ross,
>
> Thank you for the response.
> rpm -qf <filename> would give us the package name.
>
> Thanks,
> Bharath
>
>
> On Thu, Jun 5, 2014 at 4:13 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 5 June 2014 21:50, Bharath Chandra <ellurubharath29@gmail.com> wrote:
>> > I am working on a reverse enginnering project and I want to know by
>> looking
>> > at an executable , the recipe file from which it is generated. So,
>> first I
>> > need to understand by using what commands in a recipe file, we can
>> generate
>> > an executable.
>>
>> If you actually need to know what recipe produced a binary without
>> instrumenting the binaries, then use the package manager: they all
>> have a command to tell you what binary package installed a file, and
>> from the binary package  you can determine the source package, and
>> that's got the same name as the recipe.
>>
>> Ross
>>
>
>
>
> --
> Thanks & Regards,
> Bharath Chandra Elluru.
> Contact Number:785-979-4875.
>



-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--089e0103defaf3864c04fb317e7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Ross,<br><br></div>Using rpm, I was able=
 to trace back recipe files for all the files except for files in a folder =
called as media. When I try to trace for any file inside media, it does not=
 show me any package name. Could anyone please tell me what is this media f=
older??<br>
<br></div>Thanks &amp; Regards,<br></div>Bharath Chandra Elluru<br></div><d=
iv class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Jun 5, =
2014 at 4:47 PM, Bharath Chandra <span dir=3D"ltr">&lt;<a href=3D"mailto:el=
lurubharath29@gmail.com" target=3D"_blank">ellurubharath29@gmail.com</a>&gt=
;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi Ross,<br>=
<br></div>Thank you for the response. <br></div>rpm -qf &lt;filename&gt; wo=
uld give us the package name.<br>
</div><div><br></div><div>Thanks,<br></div><div>Bharath<br></div></div><div=
 class=3D"gmail_extra"><div><div class=3D"h5">
<br><br><div class=3D"gmail_quote">On Thu, Jun 5, 2014 at 4:13 PM, Burton, =
Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

<div>On 5 June 2014 21:50, Bharath Chandra &lt;<a href=3D"mailto:ellurubhar=
ath29@gmail.com" target=3D"_blank">ellurubharath29@gmail.com</a>&gt; wrote:=
<br>
&gt; I am working on a reverse enginnering project and I want to know by lo=
oking<br>
&gt; at an executable , the recipe file from which it is generated. So, fir=
st I<br>
&gt; need to understand by using what commands in a recipe file, we can gen=
erate<br>
&gt; an executable.<br>
<br>
</div>If you actually need to know what recipe produced a binary without<br=
>
instrumenting the binaries, then use the package manager: they all<br>
have a command to tell you what binary package installed a file, and<br>
from the binary package =C2=A0you can determine the source package, and<br>
that&#39;s got the same name as the recipe.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><br></div></div><div=
 class=3D"">-- <br><div dir=3D"ltr">Thanks &amp; Regards,<div>Bharath Chand=
ra Elluru.</div><div>Contact Number:<a href=3D"tel:785-979-4875" value=3D"+=
17859794875" target=3D"_blank">785-979-4875</a>.</div>
</div>
</div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Thanks=
 &amp; Regards,<div>Bharath Chandra Elluru.</div><div>Contact Number:785-97=
9-4875.</div></div>
</div>

--089e0103defaf3864c04fb317e7a--
