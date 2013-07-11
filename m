Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C37DFE013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 12:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=WcO/D83FKsNQtlHNoAM80rROXe2cLPJ36pWVxdrhsSw=; 
	b=onyGDnwSGdMMR9oR26M9h8T75/55Cxbf9qYe6Y5Kd249bJEla2rSuUOMOd4RY5Iz/ncgi5TIWg8UJ/qdDM8C4pKdqOORX9VAH7RNq517DqWFGmwqVcKplC9VGzFCklvmAKVxUAfbek18iXsp+K8jU8PmMw0pw4S1UmFensAUYvQ=;
Received: from [109.224.129.17] (port=63558
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UxMeC-003Yrc-UQ; Thu, 11 Jul 2013 20:35:25 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAE_REAtBbcO=22Qj=75thh6bBjfVEmGQwt=aenrsmCTkV-x=zw@mail.gmail.com>
Date: Thu, 11 Jul 2013 20:35:23 +0100
Message-Id: <D5FC6EB3-E785-4E1C-AE37-9CFECB9D0EFA@keylevel.com>
References: <FCD3D60D-CC00-48A3-89DD-7C73AB3C8404@keylevel.com>
	<20130711120628.GA4028@gmail.com>
	<CAE_REAtBbcO=22Qj=75thh6bBjfVEmGQwt=aenrsmCTkV-x=zw@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Ubuntu 11.10 to 12.04 upgrade
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
X-List-Received-Date: Thu, 11 Jul 2013 19:35:27 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1351136F-780E-4A37-8DA8-0549FDC2AC7D"

--Apple-Mail=_1351136F-780E-4A37-8DA8-0549FDC2AC7D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Thanks for the feedback. Just waiting for a backup to complete and then =
I'll run the update...

On 11 Jul 2013, at 13:20, Gaurang Shastri wrote:

> No problems at all...I am running since long.... :)
>=20
> //Gaurang Shastri
>=20
>=20
> On Thu, Jul 11, 2013 at 5:36 PM, Eren T=FCrkay <eren@hambedded.org> =
wrote:
> On Thu, Jul 11, 2013 at 11:49:47AM +0100, Chris Tapp wrote:
> > My current build system is an Ubuntu 11.10 64-bit (server). This is
> > now out of support, so I plan to upgrade to 12.04 (LTS).
>=20
> Hello,
>=20
> > Is this likely to go smoothly, or are there some gotchas to worry
> > about? I'm currently building for Poky 8 if that makes a difference.
>=20
> I am using 12.04 without a problem. Once you install build-essential =
and
> other required packages by bitbake, there shouldn't be any problem.
>=20
> > Thanks!
> > Chris Tapp
>=20
> Regards,
> Eren
>=20
> --
>     . 73! DE TA1AET
>       http://linkedin.com/in/erenturkay
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_1351136F-780E-4A37-8DA8-0549FDC2AC7D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Thanks for the feedback. Just waiting for a backup to complete and =
then I'll run the update...<div><br><div><div>On 11 Jul 2013, at 13:20, =
Gaurang Shastri wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><div =
dir=3D"ltr"><div>No problems at all...I am running since long.... =
:)<br><br></div>//Gaurang Shastri<br></div><div =
class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Jul 11, =
2013 at 5:36 PM, Eren T=FCrkay <span dir=3D"ltr">&lt;<a =
href=3D"mailto:eren@hambedded.org" =
target=3D"_blank">eren@hambedded.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">On =
Thu, Jul 11, 2013 at 11:49:47AM +0100, Chris Tapp wrote:<br>
&gt; My current build system is an Ubuntu 11.10 64-bit (server). This =
is<br>
&gt; now out of support, so I plan to upgrade to 12.04 (LTS).<br>
<br>
</div>Hello,<br>
<div class=3D"im"><br>
&gt; Is this likely to go smoothly, or are there some gotchas to =
worry<br>
&gt; about? I'm currently building for Poky 8 if that makes a =
difference.<br>
<br>
</div>I am using 12.04 without a problem. Once you install =
build-essential and<br>
other required packages by bitbake, there shouldn't be any problem.<br>
<br>
&gt; Thanks!<br>
&gt; Chris Tapp<br>
<br>
Regards,<br>
Eren<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
&nbsp; &nbsp; . 73! DE TA1AET<br>
&nbsp; &nbsp; &nbsp; <a href=3D"http://linkedin.com/in/erenturkay" =
target=3D"_blank">http://linkedin.com/in/erenturkay</a><br>
</font></span><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br><div apple-content-edited=3D"true">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris =
Tapp</div><div><br></div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
</span><br class=3D"Apple-interchange-newline">
</div>
<br></div></body></html>=

--Apple-Mail=_1351136F-780E-4A37-8DA8-0549FDC2AC7D--
