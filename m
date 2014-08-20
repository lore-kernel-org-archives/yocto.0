Return-Path: <alex.r.damian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD681E00824; Wed, 20 Aug 2014 02:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,LOTS_OF_MONEY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.r.damian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41869E00814
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 02:39:37 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id x13so7420673qcv.26
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 02:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PIWwnBDKtyvQOfaNKngrgojIDwrysdRqSsN3O8ckamw=;
	b=i72TXcPpZVe2buCehp/nXuBUwhk3694W63Jby+FHShnds7nb51N0szzew83EP9uuDS
	DuH8kJxTTQqHJJn+509Ya9EeUTwGBtBNYwRs74Ig1KUMjaimYxOKFXXXV5QwYN6bEsZw
	pYjRjwG4i4e64l7KCEmjl2n30JbhxwNbgGG5yMiZ5eBL0nAg38bbaPMubjfrAUIhz4sc
	CBxBj1dZeCbBn33gPDJ5KQJvAwbZx27dHMIRoqy5WoXsbvFak68V4eyQ4trFhgFe3+N6
	s/lbZpdyTUxo7NTBpcKjlKM66UJV7lJy22MlPILHCayOfkIAgkmmSx37w6BhbHUXQ3nU
	CAMg==
MIME-Version: 1.0
X-Received: by 10.224.127.74 with SMTP id f10mr76913348qas.100.1408527576834; 
	Wed, 20 Aug 2014 02:39:36 -0700 (PDT)
Received: by 10.224.127.66 with HTTP; Wed, 20 Aug 2014 02:39:36 -0700 (PDT)
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAB1169@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAB0C92@G08CNEXMBPEKD01.g08.fujitsu.local>
	<CAL7ttbfTFowvtX+3=WFed+N2O=g4fxjzzCes25qQwzivHtQP0g@mail.gmail.com>
	<1B56A49860EB2D45ADE3731B15C959FDAB1169@G08CNEXMBPEKD01.g08.fujitsu.local>
Date: Wed, 20 Aug 2014 10:39:36 +0100
Message-ID: <CAL7ttbdfAxw6UELopj0z8NB-DR6_m66_E8K_z2QHRnWMB-_dRw@mail.gmail.com>
From: Alex Damian <alex.r.damian@gmail.com>
To: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use the new features of the toaster
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
X-List-Received-Date: Wed, 20 Aug 2014 09:39:48 -0000
Content-Type: multipart/alternative; boundary=001a11c2cc18dfaa3005010c6118

--001a11c2cc18dfaa3005010c6118
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

This week's meeting is today at 4PM London time, hosted on WebEx - see the
information below.

We have a dedicated toaster mailing list, toaster@yoctoproject.org (see
https://lists.yoctoproject.org/listinfo/toaster) where meetings get
scheduled, and all toaster-related discussions take place.


Cheers,
Alex

--=20
Meeting Number: 597 120 055
Meeting Password: This meeting does not require a password.

-------------------------------------------------------
To start this meeting
-------------------------------------------------------
1. Go to *https://windriver.webex.com/windriver/j.php?J=3D597120055*
<https://windriver.webex.com/windriver/j.php?J=3D597120055>
2. If you are not logged in, log in to your account.



-------------------------------------------------------
Teleconference information
-------------------------------------------------------
Provide your phone number when you join the meeting to receive a call back.
Alternatively, you can call:
Conference dial-in number: 1-8007302996  (US)
Chairperson Passcode: 9052
Access Code: 749 452 9

*http://www.webex.com* <http://www.webex.com>



On Wed, Aug 20, 2014 at 3:45 AM, leimaohui@cn.fujitsu.com <
leimaohui@cn.fujitsu.com> wrote:

>  Hi Alex
>
>
>
>    Thanks for your reply
>
>
>
>    I=E2=80=99m glad to join the phone conference if I can, although my En=
glish is
> not very good. J
>
>    Could you tell me the date of the conference and how to join.
>
>
>
> Thanks,
>
> Lei Maohui
>
>
>
>
>
>
>
> *From:* Alex Damian [mailto:alex.r.damian@gmail.com]
> *Sent:* Wednesday, August 20, 2014 12:08 AM
> *To:* Lei, Maihui
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] how to use the new features of the toaster
>
>
>
> Hi,
>
> Thanks for keeping an eye on Toaster !
>
> The builder part is still a work in progress. The building-related
> features are being outlined here:
>
> https://wiki.yoctoproject.org/wiki/Toaster_1.7_design#Feature_list
>
> While
>
>
>
> A mockup of the functionality is here:
>
> http://www.yoctoproject.org/toaster/project-no-targets.html
>
>  We currently work on implementing the project settings design part, and
> you can follow progress on the bugzilla items here:
>
>
> https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D266662&resolution=
=3D---&classification=3DBuild%20System%20%26%20Metadata&query_format=3Dadva=
nced&bug_status=3DNEW&bug_status=3DACCEPTED&bug_status=3DIN%20PROGRESS%20DE=
SIGN&bug_status=3DIN%20PROGRESS%20DESIGN%20COMPLETE&bug_status=3DIN%20PROGR=
ESS%20IMPLEMENTATION&bug_status=3DIN%20PROGRESS%20REVIEW&bug_status=3DREOPE=
NED&bug_status=3DNEEDINFO&bug_status=3DWaitForUpstream&target_milestone=3D1=
.7&target_milestone=3D1.7%20M1&target_milestone=3D1.7%20M2&target_milestone=
=3D1.7%20M3&target_milestone=3D1.7%20M4&product=3DToaster
>
>
> We also meet every week on a phone conference, let me know if you would
> like to attend.
>
> Cheers,
> Alex
>
>
>
>
>
> On Tue, Aug 19, 2014 at 3:25 AM, leimaohui@cn.fujitsu.com <
> leimaohui@cn.fujitsu.com> wrote:
>
> Hi,
>
>  Because I noticed that in poky(master), the toaster has the ability to
> trigger a build command, and have
>  the build executed.
>  --------------------------------------------------
>  commit 6e71c276b582135228419d95174b7e7784d496b2
>  Author: Alexandru DAMIAN <alexandru.damian@intel.com>
>  Date:   Mon Jun 30 18:33:04 2014 +0100
>
>     bitbake: toaster: add project main edit page
>
>     This is the first commit on the project main edit page.
>
>     At this point we have:
>     * the default settings for a newly created project
>     * the ability to add targets
>     * the ability to trigger a build command, and have
>     the build executed
>     ......
>  -----------------------------------------------------------
>
>  So, I tried to use the new features of the toaster. But I don't know how=
 .
>
>  Is there anybody tell me where can I find the documentation how to use
> the new features?
>
>  Best Regards,
>  Lei Maohui
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a11c2cc18dfaa3005010c6118
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>This week&#39;s meeting is=
 today at 4PM London time, hosted on WebEx - see the information below.<br>=
<br></div>We have a dedicated toaster mailing list, <a href=3D"mailto:toast=
er@yoctoproject.org">toaster@yoctoproject.org</a> (see <a href=3D"https://l=
ists.yoctoproject.org/listinfo/toaster">https://lists.yoctoproject.org/list=
info/toaster</a>) where meetings get scheduled, and all toaster-related dis=
cussions take place.<br>
<br><br></div>Cheers,<br>Alex<br><div><div><br>-- <br><font face=3D"Calibri=
"><span style=3D"font-size:11pt"><div>Meeting Number: 597 120 055</div>
<div>Meeting Password: This meeting does not require a password. </div>
<div>=C2=A0</div>
<div>-------------------------------------------------------</div>
<div>To start this meeting</div>
<div>-------------------------------------------------------</div>
<div>1. Go to <a href=3D"https://windriver.webex.com/windriver/j.php?J=3D59=
7120055" target=3D"_blank"><font color=3D"blue"><u>https://windriver.webex.=
com/windriver/j.php?J=3D597120055</u></font></a></div>
<div>2. If you are not logged in, log in to your account.</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>-------------------------------------------------------</div>
<div>Teleconference information</div>
<div>-------------------------------------------------------</div>
<div>Provide your phone number when you join the meeting to receive a call =
back. Alternatively, you can call:</div>
<div>Conference dial-in number: 1-8007302996=C2=A0 (US)</div>
<div>Chairperson Passcode: 9052</div>
<div>Access Code: 749 452 9</div>
<div>=C2=A0</div>
<div><a href=3D"http://www.webex.com" target=3D"_blank"><font color=3D"blue=
"><u>http://www.webex.com</u></font></a></div></span></font><br></div></div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed=
, Aug 20, 2014 at 3:45 AM, <a href=3D"mailto:leimaohui@cn.fujitsu.com">leim=
aohui@cn.fujitsu.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:leimaohui@=
cn.fujitsu.com" target=3D"_blank">leimaohui@cn.fujitsu.com</a>&gt;</span> w=
rote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"JA">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">Hi Alex<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">=C2=A0=C2=A0 Thanks for yo=
ur reply<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0I=E2=80=
=99m glad to join the phone conference if I can,=C2=A0although=C2=A0my Engl=
ish is not very good.
</span><span style=3D"font-size:10.0pt;font-family:Wingdings" lang=3D"EN-US=
">J</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;" lang=3D"EN-US">
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0Could yo=
u tell me the date of the conference and how to join.<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US"><u></u>=C2=A0<u></u></span=
></p>
<p><span lang=3D"EN-US">Thanks,<u></u><u></u></span></p>
<p><span lang=3D"EN-US">Lei Maohui<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;" lang=3D"EN-US"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1f497d" lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1f497d" lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0mm 0mm 0mm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0mm =
0mm 0mm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">From:</span></b><span =
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&q=
uot;" lang=3D"EN-US"> Alex Damian
 [mailto:<a href=3D"mailto:alex.r.damian@gmail.com" target=3D"_blank">alex.=
r.damian@gmail.com</a>] <br>
<b>Sent:</b> Wednesday, August 20, 2014 12:08 AM<br>
<b>To:</b> Lei, Maihui<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] how to use the new features of the toaster<u></=
u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
Hi,<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
Thanks for keeping an eye on Toaster !<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
The builder part is still a work in progress. The building-related features=
 are being outlined here:<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Toaster_1.7_design#Feature_li=
st" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Toaster_1.7_design=
#Feature_list</a><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">While <u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
A mockup of the functionality is here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/toaster/project-no-targets.html" tar=
get=3D"_blank">http://www.yoctoproject.org/toaster/project-no-targets.html<=
/a><br>
<br>
<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
We currently work on implementing the project settings design part, and you=
 can follow progress on the bugzilla items here:<br>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D266662&a=
mp;resolution=3D---&amp;classification=3DBuild%20System%20%26%20Metadata&am=
p;query_format=3Dadvanced&amp;bug_status=3DNEW&amp;bug_status=3DACCEPTED&am=
p;bug_status=3DIN%20PROGRESS%20DESIGN&amp;bug_status=3DIN%20PROGRESS%20DESI=
GN%20COMPLETE&amp;bug_status=3DIN%20PROGRESS%20IMPLEMENTATION&amp;bug_statu=
s=3DIN%20PROGRESS%20REVIEW&amp;bug_status=3DREOPENED&amp;bug_status=3DNEEDI=
NFO&amp;bug_status=3DWaitForUpstream&amp;target_milestone=3D1.7&amp;target_=
milestone=3D1.7%20M1&amp;target_milestone=3D1.7%20M2&amp;target_milestone=
=3D1.7%20M3&amp;target_milestone=3D1.7%20M4&amp;product=3DToaster" target=
=3D"_blank">https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D266662&=
amp;resolution=3D---&amp;classification=3DBuild%20System%20%26%20Metadata&a=
mp;query_format=3Dadvanced&amp;bug_status=3DNEW&amp;bug_status=3DACCEPTED&a=
mp;bug_status=3DIN%20PROGRESS%20DESIGN&amp;bug_status=3DIN%20PROGRESS%20DES=
IGN%20COMPLETE&amp;bug_status=3DIN%20PROGRESS%20IMPLEMENTATION&amp;bug_stat=
us=3DIN%20PROGRESS%20REVIEW&amp;bug_status=3DREOPENED&amp;bug_status=3DNEED=
INFO&amp;bug_status=3DWaitForUpstream&amp;target_milestone=3D1.7&amp;target=
_milestone=3D1.7%20M1&amp;target_milestone=3D1.7%20M2&amp;target_milestone=
=3D1.7%20M3&amp;target_milestone=3D1.7%20M4&amp;product=3DToaster</a><br>

<br>
<br>
We also meet every week on a phone conference, let me know if you would lik=
e to attend.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Cheers,<br>
Alex<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Tue, Aug 19, 2014 at 3:25 AM=
, <a href=3D"mailto:leimaohui@cn.fujitsu.com" target=3D"_blank">
leimaohui@cn.fujitsu.com</a> &lt;<a href=3D"mailto:leimaohui@cn.fujitsu.com=
" target=3D"_blank">leimaohui@cn.fujitsu.com</a>&gt; wrote:<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<br>
<br>
=C2=A0Because I noticed that in poky(master), the toaster has the ability t=
o trigger a build command, and have<br>
=C2=A0the build executed.<br>
=C2=A0--------------------------------------------------<br>
=C2=A0commit 6e71c276b582135228419d95174b7e7784d496b2<br>
=C2=A0Author: Alexandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@intel=
.com" target=3D"_blank">alexandru.damian@intel.com</a>&gt;<br>
=C2=A0Date:=C2=A0 =C2=A0Mon Jun 30 18:33:04 2014 +0100<br>
<br>
=C2=A0 =C2=A0 bitbake: toaster: add project main edit page<br>
<br>
=C2=A0 =C2=A0 This is the first commit on the project main edit page.<br>
<br>
=C2=A0 =C2=A0 At this point we have:<br>
=C2=A0 =C2=A0 * the default settings for a newly created project<br>
=C2=A0 =C2=A0 * the ability to add targets<br>
=C2=A0 =C2=A0 * the ability to trigger a build command, and have<br>
=C2=A0 =C2=A0 the build executed<br>
=C2=A0 =C2=A0 ......<br>
=C2=A0-----------------------------------------------------------<br>
<br>
=C2=A0So, I tried to use the new features of the toaster. But I don&#39;t k=
now how .<br>
<br>
=C2=A0Is there anybody tell me where can I find the documentation how to us=
e the new features?<br>
<br>
=C2=A0Best Regards,<br>
=C2=A0Lei Maohui<br>
<span><span style=3D"color:#888888">--</span></span><span style=3D"color:#8=
88888"><br>
<span>_______________________________________________</span><br>
<span>yocto mailing list</span><br>
<span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a></span><br>
<span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_=
blank">https://lists.yoctoproject.org/listinfo/yocto</a></span></span><u></=
u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--001a11c2cc18dfaa3005010c6118--
