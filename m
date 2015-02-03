Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88132E0076F; Tue,  3 Feb 2015 10:14:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.209 listed in list.dnswl.org]
Received: from nm21-vm2.bullet.mail.ne1.yahoo.com
	(nm21-vm2.bullet.mail.ne1.yahoo.com [98.138.91.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4C4FE005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 10:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1422987267; bh=4PntibQaNffMyiG8ZYbZsW2imERRshY/VubiVQnwVeo=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=PgYDbjncexsKhWcXWrJGZKbKiUUaqfPMis42lbRcvdh+2YXcsw3OJG4usFNWblhCA2NzGozgKR/t5Z9SKyBwtSBPTfp5jUPz9VgP/O8yx4XtkCySzh4z/kPS+EklNysuT/yNbY4Me5mlYpEbOyDnmckEqKASDt3yWP6UF7CgYMSU7ZOR0mC/nIR8A2SqEJJhlHCt1g533Kc/Q9sIyP4TPQbu8qW5/ZjVMvGcqA0zckAwsyAsFDgAU9R3r5dzM7aIdl2vUOjRb95jg90hNHHkGCJVOMmffmkK/AJQkTzD+UawgyXfoIvb6rS3TIKuOuqS4JC2MaJRn48VmlTGgT43MQ==
Received: from [98.138.100.102] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Feb 2015 18:14:27 -0000
Received: from [98.138.89.173] by tm101.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Feb 2015 18:14:27 -0000
Received: from [127.0.0.1] by omp1029.mail.ne1.yahoo.com with NNFMP;
	03 Feb 2015 18:14:27 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 132293.55043.bm@omp1029.mail.ne1.yahoo.com
X-YMail-OSG: YjMnrysVM1mJGNfozxItjCjKKuTGUjiL_RU8YRZssdeWZXDFzYkDEt61ueJpwMB
	wSBS.82iOgwfyNVoI_V._yC.sMPtQlrRWCvwKWr5NKiq4gIbqp_6kNWiunKPJ8yP4ycUDc1sOmUI
	oxBQdUnrweCNvJHF8kQH.czpFf2Eyipm9DwhbQPesLBXz3tbYxHn56dRgXFdwxtcK7_AbrfRCpyP
	6KQ3fSnwAgxdrc0pl4sH9hvKjyMQuhiRpHeugbOQ2q6Wc1XWmlqZENYqGRqc_vQTva7Wqo00dwsg
	NyeHCgf0UabPjgsNLJlSELLLkb68haOYd4ha5vCEb1ibNENrOA.dNqfZqt5mbXa9sKTIzD0LslWM
	B8_MbKEE_OTWQcYDC33lcF2h2qiVV4lRzn4rOJc64_rRgIASt7h1Em_aVEBhs67bLqfAJUPcqMLu
	Ov6SAiMrb7oYEl0oW5oODMtpRfFmT.NPw1gUeQsTs45jEeNu._1GWKMs.5g4pf1.eFfT1TYaSLf2
	4vyP3p5ETYXFypfL3lw--
Received: by 98.138.105.246; Tue, 03 Feb 2015 18:14:26 +0000 
Date: Tue, 3 Feb 2015 18:14:26 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Victor Rodriguez <vm.rod25@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <589519159.1002526.1422987266318.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAK5mtex_6VYORqocsd3A6H44h_=jn2+BjE2GeVhh8nfhMgLzBQ@mail.gmail.com>
References: <CAK5mtex_6VYORqocsd3A6H44h_=jn2+BjE2GeVhh8nfhMgLzBQ@mail.gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 03 Feb 2015 18:14:37 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1002525_126457821.1422987266313"

------=_Part_1002525_126457821.1422987266313
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I will be more then happy to help you with this.

Alex Vaduva
 

     On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
   

 HI team

I wonder if there is any project or efforts to implement Message
Passing Interface (MPICH ) support on Yocto ?

If no I am more than happy to work on it , I just will need a little
bit of guidance

Thanks a lot

Regards

Victor Rodriguez
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


    

------=_Part_1002525_126457821.1422987266313
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1422985437982_11284">I will be more t=
hen happy to help you with this.</div><div id=3D"yui_3_16_0_1_1422985437982=
_11279" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1422985437982_11278" =
dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1422985437982_11277" dir=3D"l=
tr">Alex Vaduva<br></div><div id=3D"yui_3_16_0_1_1422985437982_11276"><span=
></span></div> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D"dis=
play: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaN=
eue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size=
: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helveti=
ca, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> =
<font size=3D"2" face=3D"Arial"> On Tuesday, February 3, 2015 5:41 PM, Vict=
or Rodriguez &lt;vm.rod25@gmail.com&gt; wrote:<br> </font> </div>  <br><br>=
 <div class=3D"y_msg_container">HI team<br><br>I wonder if there is any pro=
ject or efforts to implement Message<br>Passing Interface (MPICH ) support =
on Yocto ?<br><br>If no I am more than happy to work on it , I just will ne=
ed a little<br>bit of guidance<br><br>Thanks a lot<br><br>Regards<br><br>Vi=
ctor Rodriguez<br>-- <br>_______________________________________________<br=
>yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D=
"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=3D"ht=
tps://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://list=
s.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  </d=
iv> </div></body></html>

------=_Part_1002525_126457821.1422987266313--
