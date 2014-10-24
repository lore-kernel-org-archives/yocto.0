Return-Path: <prashanthg@vtitan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AED3FE00830; Fri, 24 Oct 2014 04:09:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2679 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Oct 2014 04:09:05 PDT
Received: from sender1.zohomail.com (sender1.zohomail.com [74.201.84.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD212E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:09:05 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1414148943519757.9008576323428;
	Fri, 24 Oct 2014 04:09:03 -0700 (PDT)
Date: Fri, 24 Oct 2014 16:39:03 +0530
From: prashanthg <prashanthg@vtitan.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Message-ID: <14941d86e6b.116a9d361135092.818914563188503181@vtitan.com>
In-Reply-To: <CAMCfZKHH88UfJgTsAze-Osu70CppqZ-iQPxU+kYpxEJ7MozHbw@mail.gmail.com>
References: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
	<CAMCfZKHH88UfJgTsAze-Osu70CppqZ-iQPxU+kYpxEJ7MozHbw@mail.gmail.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Daisy - Beaglebone Black - core-image-minimal - Error: do_compile
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
X-List-Received-Date: Fri, 24 Oct 2014 11:09:07 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_178198_664526835.1414148943466"

------=_Part_178198_664526835.1414148943466
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Diego Sueiro,

Thanks for the information, will try that out.


Cheers!

Prashanth Gandhiraj


---- On Fri, 24 Oct 2014 16:36:00 +0530 Diego Sueiro &lt;diego.sueiro@gmail.com&gt; wrote ---- 

Hi prashanthg,

On Fri, Oct 24, 2014 at 8:24 AM, prashanthg &lt;prashanthg@vtitan.com&gt; wrote:
I have been facing issues with 'bitbake core-image-minimal' with Qt5 library added for BBB.

Error Log: http://pastebin.com/ADdyJnz8

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-13.10"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6.1"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU        = "vfp-neon"
meta              
meta-yocto        
meta-yocto-bsp    = "daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37"
meta-oe           = "daisy:518cd119a8724dbd485a5d5c5047de59e8fbd652"
meta-ti           = "daisy:80924d3bba59d6920217216c73af43fdd40d0152"
meta-qt5          = "daisy:c29c317e0f22202bfaa85329a580564bbc179089"

It would be great if you can help me solve this issue.

Thanks and Regards,
Prashanth

I have Qt5.3.2 (meta-qt5 on master branch) with accelerated graphics built and running on BBB.
I did not have seen this error.


Note that you need to remove meta-yocto-bsp from your bblayers.conf to get the BSP support from meta-ti.


Regards,


--
*dS
Diego Sueiro

Administrador do Embarcados
http://www.embarcados.com.br/?utm_source=assinatura_diego&amp;utm_medium=e-mail&amp;utm_campaign=Assinatura%20Email%20Diego

/*long live rock 'n roll*/


 

 





------=_Part_178198_664526835.1414148943466
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'>Hi&nbsp;Diego Sueiro,<div><br></div><div>Thanks for the infor=
mation, will try that out.</div><div><br></div><div>Cheers!<br><br>Prashant=
h Gandhiraj<br><div id=3D""><br></div><div class=3D"zmail_extra"><div id=3D=
"1">---- On Fri, 24 Oct 2014 16:36:00 +0530 <b>Diego Sueiro &lt;diego.sueir=
o@gmail.com&gt;</b> wrote ---- <br></div><blockquote style=3D"border-left: =
1px solid #0000FF;padding-left: 6px; margin: 0 0 0 5px"><div dir=3D"ltr"><d=
iv>Hi prashanthg,</div><div><br><div>On Fri, Oct 24, 2014 at 8:24 AM, prash=
anthg <span dir=3D"ltr">&lt;<a href=3D"mailto:prashanthg@vtitan.com" target=
=3D"_blank">prashanthg@vtitan.com</a>&gt;</span> wrote:<br><blockquote styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><font f=
ace=3D"verdana">I have been facing issues with 'bitbake core-image-minimal'=
 with Qt5 library added for BBB.<br><br>Error Log: <a href=3D"http://pasteb=
in.com/ADdyJnz8" target=3D"_blank">http://pastebin.com/ADdyJnz8</a><br><br>=
Build Configuration:<br>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =3D "1.22.0"<br>BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D "i686-linux"<br>NATIVELSBSTRING&nbsp;&nbsp; =3D "Ubuntu-13.10"<br>TARG=
ET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueab=
i"<br>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "beaglebone"<br>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; =3D "poky"<br>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "1.6.1=
"<br>TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D "armv7a vfp neon callconvent=
ion-hard cortexa8"<br>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "vfp-neon"<br>meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; <br>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D "daisy:bda51ee7821de9120f6=
f536fcabe592f2a0c8a37"<br>meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D "daisy:518cd119a8724dbd485a5d5c5047de59e8fbd652"<br>=
meta-ti&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "da=
isy:80924d3bba59d6920217216c73af43fdd40d0152"<br>meta-qt5&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "daisy:c29c317e0f22202bfaa85329a58=
0564bbc179089"<br><br>It would be great if you can help me solve this issue=
.<br><br>Thanks and Regards,<br>Prashanth</font></blockquote></div><br>I ha=
ve Qt5.3.2 (meta-qt5 on master branch) with accelerated graphics built and =
running on BBB.</div><div>I did not have seen this error.</div><div><br></d=
iv><div>Note that you need to remove meta-yocto-bsp from your bblayers.conf=
 to get the BSP support from meta-ti.<br><br><br clear=3D"all"><div><div di=
r=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><b=
r>Administrador do Embarcados<br><a href=3D"http://www.embarcados.com.br/?u=
tm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAss=
inatura%20Email%20Diego" target=3D"_blank">http://www.embarcados.com.br/?ut=
m_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssi=
natura%20Email%20Diego</a><br><br>/*long live rock 'n roll*/<br></div></div=
> </div></div> </blockquote><br></div><br></div></div></body></html>

------=_Part_178198_664526835.1414148943466--
