Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32425E00CC4; Mon, 20 Nov 2017 07:35:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09311E00BEA
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 07:35:48 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id 72so12198669itl.5
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 07:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NVTjXMy9zaSKPoKF1WSL3e3GmrrEEze/KO89G/7XVCA=;
	b=RJdjfd5mpqgtD1PB/CXcJr5fUkZ9nPc4EhqBSymCMhQjF2FSn0YPRQ5yz5rqAye9rx
	NixTvpxD2fEWRXaBPIQRBt81PepMqC6yI+ixxcn9dP5yMbnhe1JF5itnYYkiCbJgfKVX
	QHEcbsFund6iGWEIUx2kJJUnmDp2IHFKt/o13j8UfSNDVkS6jHYa3mAXy6nhQy7a+F0Y
	rt2//iD6qNs25DTejNZEb7zAjV5s8XvQbsOvSGfIBxXQxSdWnxyWTe+1ulcieDKZ+ROx
	juEhp7OEECDS7VI8o3g56XMjtBdPGCtUCAUgwGOudLYTLUQikmDoxSmOGdC+FTGqJDuN
	Of5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NVTjXMy9zaSKPoKF1WSL3e3GmrrEEze/KO89G/7XVCA=;
	b=HCvkM6QioXMICrO/p71LGeFLn6QUM5ONzQm0Rj+roRf9FcGqoZsaejwrfsOx8+LFNd
	aKf9lqrmKV+gDDQ/ngSzgvajeUg5sz9szDXV3AHzTwY/PodEu/YBGzsqkmmuKzN3xNKC
	FxgX9KYvNsbf4couPSNmVPqT2Uha0x/SeBgBGebZcR4BFShG5ss5SLlCj67V9ZCFl+JK
	STSNiy4oodV4bmWdNnk5zzioCoyxhvmO5qUSZCqQ6KTo3jZjXXPfdOVpT/0iPCnUwb2N
	kSaHTZ95rMuObw5Uyckr/FS/kOV3ZLe/m8lp3lh2+4sVEhNGks3JH+rCcfnfgRRw9GYc
	un8g==
X-Gm-Message-State: AJaThX4dgXmH2p0zhFy5EvzwzkHtDlgDKI8Poq9Ie0O2RQyCBLm1X8eE
	Vz9PYsVilj60BWJLQRHVOBNH2RNEhdE//NFc2zhA6w==
X-Google-Smtp-Source: AGs4zMbFXAhy/pOFAhkBesPQsDEX+Y5UsMafL0e9+jJo61uXplyHUewpe17/ksIHp29Vxgoho86g+LRj+QIZtUw9w6c=
X-Received: by 10.36.71.74 with SMTP id t71mr19296682itb.53.1511192148011;
	Mon, 20 Nov 2017 07:35:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Mon, 20 Nov 2017 07:35:27 -0800 (PST)
In-Reply-To: <HK2PR02MB11556DBBA901FAB12B35D192FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB11556DBBA901FAB12B35D192FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Nov 2017 15:35:27 +0000
Message-ID: <CAJTo0LaiH0AYQMOjniQyCMhW2fKoZ7zWK++C6TOUK2WQ_3f-UA@mail.gmail.com>
To: Amit Gondaliya <amit.gondaliya@einfochips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build is using host x86_64 python2.7 instead of cross-compiled
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
X-List-Received-Date: Mon, 20 Nov 2017 15:35:50 -0000
Content-Type: multipart/alternative; boundary="001a113f6a202b979c055e6bd797"

--001a113f6a202b979c055e6bd797
Content-Type: text/plain; charset="UTF-8"

During the build it wont/can't use the target python as that won't be
compatible (say x86-64 host, ARM target).  This isn't a problem.

Ross

On 20 November 2017 at 14:52, Amit Gondaliya <amit.gondaliya@einfochips.com>
wrote:

> Hello All,
>
>
> I am configuring one package and found the following error.
>
>
>
>
>
>
>
>
> * File "/usr/lib/python2.7/subprocess.py", line 567, in check_output
> process = Popen(stdout=PIPE, *popenargs, **kwargs)  File
> "/usr/lib/python2.7/subprocess.py", line 711, in __init__    errread,
> errwrite)  File "/usr/lib/python2.7/subprocess.py", line 1343, in
> _execute_child    raise child_exception OSError: [Errno 2] No such file or
> directory*
>
> it is looking like bitbake is taking host (x86_64) python rather than
> using * <package_name>/0.8-r1/recipe-sysroot/usr/lib/python2.7*
>
> does anyone know why this is happening ..?
>
>
>
>
> *Best Regards, Amit Gondaliya*
>
>
>
>
>
> ************************************************************
> ************************************************************
> ************************************* eInfochips Business Disclaimer:
> This e-mail message and all attachments transmitted with it are intended
> solely for the use of the addressee and may contain legally privileged and
> confidential information. If the reader of this message is not the intended
> recipient, or an employee or agent responsible for delivering this message
> to the intended recipient, you are hereby notified that any dissemination,
> distribution, copying, or other use of this message or its attachments is
> strictly prohibited. If you have received this message in error, please
> notify the sender immediately by replying to this message and please delete
> it from your computer. Any views expressed in this message are those of the
> individual sender unless otherwise stated. Company has taken enough
> precautions to prevent the spread of viruses. However the company accepts
> no liability for any damage caused by any virus transmitted by this email.
> ************************************************************
> ************************************************************
> *************************************
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113f6a202b979c055e6bd797
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">During the build it wont/can&#39;t use the target python a=
s that won&#39;t be compatible (say x86-64 host, ARM target).=C2=A0 This is=
n&#39;t a problem.<div><br></div><div>Ross</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On 20 November 2017 at 14:52, Amit Gon=
daliya <span dir=3D"ltr">&lt;<a href=3D"mailto:amit.gondaliya@einfochips.co=
m" target=3D"_blank">amit.gondaliya@einfochips.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-3318420928506930724divtagdefaultwrapper" style=3D"font-size:1=
1pt;color:#006fc9;font-family:Verdana,Geneva,sans-serif" dir=3D"ltr">
<p>Hello All,</p>
<p><br>
</p>
<p>I am configuring one package and found the following error.</p>
<p><br>
</p>
<p></p>
<div><i>=C2=A0File &quot;/usr/lib/python2.7/<wbr>subprocess.py&quot;, line =
567, in check_output<br>
=C2=A0=C2=A0 process =3D Popen(stdout=3DPIPE, *popenargs, **kwargs)<br>
=C2=A0File &quot;/usr/lib/python2.7/<wbr>subprocess.py&quot;, line 711, in =
__init__<br>
=C2=A0=C2=A0 errread, errwrite)<br>
=C2=A0File &quot;/usr/lib/python2.7/<wbr>subprocess.py&quot;, line 1343, in=
 _execute_child<br>
=C2=A0=C2=A0 raise child_exception<br>
OSError: [Errno 2] No such file or directory</i></div>
<div><i><br>
</i></div>
<div>it is looking like bitbake is taking host (x86_64) python rather than =
using <b>
&lt;package_name&gt;<span>/0.8-r1/recipe-<wbr>sysroot/usr/lib/python2.7</sp=
an></b><br>
</div>
<div><br>
</div>
<div>does anyone know why this is happening ..?<br>
</div>
<br>
<p></p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"m_-3318420928506930724Signature">
<div id=3D"m_-3318420928506930724divtagdefaultwrapper" dir=3D"ltr" style=3D=
"font-size:11pt;color:rgb(0,0,0);background-color:rgb(255,255,255);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sy=
mbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<span style=3D"font-family:&quot;Comic Sans MS&quot;,fantasy,cursive"></spa=
n>
<table style=3D"margin:0px;padding:0px;max-width:100%;border-collapse:colla=
pse;border-spacing:0px;font-family:Arial,Helvetica,sans-serif" cellspacing=
=3D"0">
<tbody style=3D"margin:0px;padding:0px">
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-family:Calibri,sans-=
serif;font-size:14px;color:rgb(0,75,118)">
<b style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;line-=
height:19.6000003814697px"><span style=3D"font-family:Verdana,Geneva,sans-s=
erif;font-size:10pt">Best Regards,</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Verdana,Ge=
neva,sans-serif;font-size:10pt">Amit Gondaliya</span></b><br style=3D"margi=
n:0px;padding:0px">
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td style=3D"margin:0px;padding:0px;font-size:13px" valign=3D"top"><br>
</td>
<td style=3D"margin:0px;padding:13px 0px 0px;font-family:Calibri,sans-serif=
;font-size:14px;color:rgb(0,75,118)" valign=3D"top">
<br>
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-size:13px"><br>
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-family:Calibri,sans-=
serif;font-size:14px;color:rgb(0,75,118)">
<br>
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-family:Calibri,sans-=
serif;font-size:14px;color:rgb(0,75,118)">
<br>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
******************************<wbr>******************************<wbr>*****=
*************************<wbr>******************************<wbr>**********=
********************<wbr>******* eInfochips Business Disclaimer: This e-mai=
l message and all attachments transmitted with it are intended
 solely for the use of the addressee and may contain legally privileged and=
 confidential information. If the reader of this message is not the intende=
d recipient, or an employee or agent responsible for delivering this messag=
e to the intended recipient, you
 are hereby notified that any dissemination, distribution, copying, or othe=
r use of this message or its attachments is strictly prohibited. If you hav=
e received this message in error, please notify the sender immediately by r=
eplying to this message and please
 delete it from your computer. Any views expressed in this message are thos=
e of the individual sender unless otherwise stated. Company has taken enoug=
h precautions to prevent the spread of viruses. However the company accepts=
 no liability for any damage caused
 by any virus transmitted by this email. ******************************<wbr=
>******************************<wbr>******************************<wbr>****=
**************************<wbr>******************************<wbr>*******
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113f6a202b979c055e6bd797--
