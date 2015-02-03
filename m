Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A72BDE00828; Tue,  3 Feb 2015 14:57:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm23.bullet.mail.ne1.yahoo.com (nm23.bullet.mail.ne1.yahoo.com
	[98.138.90.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61E44E00757
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 14:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1423004250; bh=+CiyF4UofDGmMXA4h2HGM4Q7e0Hc87bdco2z49EaanE=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=mKxEcsdp4uChyrPzXLq59Y0Ku82qDOPm1SG65I/wCOYrRZe5J5KaJ6dzwGEFSqU0tJFQJAjIxAWXn7he3uj7iPBU/ekm+pHO9VpLdUqDmCyEyOQwZTByAvE9QLKHnUgVqav9rTJf35ayfdfk88Lgf8zAIJ6p5DMMdd8775qX0gRaoNNQ1WaYEdBPh3dX5fZDGNBwMs7vsXbwQ0abzDoR8BGUOIl2/w2r8nP8GGw+ro4AbVDSgvijxQTv0wGhPll2cLYyBkwItOLT/7/hhK+5Fn4RwuUjolIIDloyE/7Ee3yKwLJd0VqCZVdWIu0FnRbLfxYvkRFIkavhAiwCc59E0w==
Received: from [98.138.101.132] by nm23.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Feb 2015 22:57:30 -0000
Received: from [98.138.88.233] by tm20.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Feb 2015 22:57:30 -0000
Received: from [127.0.0.1] by omp1033.mail.ne1.yahoo.com with NNFMP;
	03 Feb 2015 22:57:30 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 406147.75310.bm@omp1033.mail.ne1.yahoo.com
X-YMail-OSG: 5OttfXUVM1kf9PszBR7F2cuE3G6os7MaeRiGXduZP1bsN5SHzMfbbqjUkF9Xm3t
	p1Is0LoVSuriplJgshuoR.77B3Y55LU9ZCyz_J_t2kKCVwJkRWvCh.0P88cikA5YnyQXi3LpM_CP
	w17azueQZjILH7Cz2daQ4iAEG1FTCrCW.Sgl6qB3Ed0Efi5K5FBRGUa3p2RlKxI1jgAOc6m0VHob
	DxYUWdK5QV6LOx0NO3_qrt.maeWCiqSneWxuWgLd615Vhj3.7wYfE0grur0DrOz89zDR7sx5nK6r
	XIYFzxbZUIa1zjmd6nGNS99BbvqGrqTZ_EJt0lRSVggJIRz.6NHuGrqUBj6gAm6ZrHhFRuuzbQp1
	SFKKgmgAmZCfVL3sQY6x7YQxlaKCzlu7vBvb5OdRKHenYVNkvnlgMHbineSiThnNRRdOr6q889n6
	dqfjz86q6_ms7u4trIjeks8BppBfTVKoaWjZYEkuCJaf3hhqRt0hDmsMTA8Jj22O1fRpJ4oY0BcM
	s1a9_i5IGEq4v6Kc-
Received: by 98.138.105.217; Tue, 03 Feb 2015 22:57:29 +0000 
Date: Tue, 3 Feb 2015 22:57:29 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Message-ID: <787655431.1106380.1423004249653.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAK5mtewiDEH9eg8BovSiLuZK14vOyTLsZ48k08FheX8=+pZ42Q@mail.gmail.com>
References: <CAK5mtewiDEH9eg8BovSiLuZK14vOyTLsZ48k08FheX8=+pZ42Q@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MPI support on Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Feb 2015 22:57:43 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1106379_440150239.1423004249649"

------=_Part_1106379_440150239.1423004249649
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I would suggest a layer under meta-openembeded: meta-openembedded/meta-oe/recipes-devtools/ caould be a start.

Alex Vaduva
 

     On Wednesday, February 4, 2015 12:21 AM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
   

 On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva
<vaduvajanalexandru@yahoo.com> wrote:
> I will be more then happy to help you with this.
>
>
> Alex Vaduva
>
>
> On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez <vm.rod25@gmail.com>
> wrote:
>
>
> HI team
>
> I wonder if there is any project or efforts to implement Message
> Passing Interface (MPICH ) support on Yocto ?
>
> If no I am more than happy to work on it , I just will need a little
> bit of guidance
>
> Thanks a lot
>
> Regards
>
> Victor Rodriguez
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

Thanks Alex

Does anybody knows under which meta - list should we send the patch to review?

Regards

Victor Rodriguez


    

------=_Part_1106379_440150239.1423004249649
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1422985437982_29211">I would suggest =
a layer under meta-openembeded: meta-openembedded/meta-oe/recipes-devtools/=
 caould be a start.</div><div id=3D"yui_3_16_0_1_1422985437982_29210" dir=
=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1422985437982_29209" dir=3D"ltr"=
><br></div><div id=3D"yui_3_16_0_1_1422985437982_29212" dir=3D"ltr">Alex Va=
duva<br></div><div id=3D"yui_3_16_0_1_1422985437982_29208"><span></span></d=
iv> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D"display: block=
;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Helvet=
ica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12px;"> <=
div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, =
Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <font size=
=3D"2" face=3D"Arial"> On Wednesday, February 4, 2015 12:21 AM, Victor Rodr=
iguez &lt;vm.rod25@gmail.com&gt; wrote:<br> </font> </div>  <br><br> <div c=
lass=3D"y_msg_container">On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva<=
br clear=3D"none">&lt;<a shape=3D"rect" ymailto=3D"mailto:vaduvajanalexandr=
u@yahoo.com" href=3D"mailto:vaduvajanalexandru@yahoo.com">vaduvajanalexandr=
u@yahoo.com</a>&gt; wrote:<br clear=3D"none">&gt; I will be more then happy=
 to help you with this.<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br cl=
ear=3D"none">&gt; Alex Vaduva<br clear=3D"none">&gt;<br clear=3D"none">&gt;=
<br clear=3D"none">&gt; On Tuesday, February 3, 2015 5:41 PM, Victor Rodrig=
uez &lt;<a shape=3D"rect" ymailto=3D"mailto:vm.rod25@gmail.com" href=3D"mai=
lto:vm.rod25@gmail.com">vm.rod25@gmail.com</a>&gt;<br clear=3D"none">&gt; w=
rote:<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; =
HI team<br clear=3D"none">&gt;<br clear=3D"none">&gt; I wonder if there is =
any project or efforts to implement Message<br clear=3D"none">&gt; Passing =
Interface (MPICH ) support on Yocto ?<br clear=3D"none">&gt;<br clear=3D"no=
ne">&gt; If no I am more than happy to work on it , I just will need a litt=
le<br clear=3D"none">&gt; bit of guidance<br clear=3D"none">&gt;<br clear=
=3D"none">&gt; Thanks a lot<br clear=3D"none">&gt;<br clear=3D"none">&gt; R=
egards<br clear=3D"none">&gt;<br clear=3D"none">&gt; Victor Rodriguez<br cl=
ear=3D"none">&gt; --<br clear=3D"none">&gt; _______________________________=
________________<br clear=3D"none">&gt; yocto mailing list<br clear=3D"none=
">&gt; <a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"=
mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"=
>&gt; <a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br =
clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none"><br clear=3D"n=
one">Thanks Alex<br clear=3D"none"><br clear=3D"none">Does anybody knows un=
der which meta - list should we send the patch to review?<div class=3D"yqt8=
630807097" id=3D"yqtfd38954"><br clear=3D"none"><br clear=3D"none">Regards<=
br clear=3D"none"><br clear=3D"none">Victor Rodriguez<br clear=3D"none"></d=
iv><br><br></div>  </div> </div>  </div> </div></body></html>

------=_Part_1106379_440150239.1423004249649--
