Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25631E01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 17:33:05 -0700 (PDT)
Received: from mail-qa0-f45.google.com ([209.85.216.45])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 22 Aug 2012 17:33:04 -0700
Received: by qadc10 with SMTP id c10so243466qad.4
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 17:33:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=+5++I+FA1tz19LRSGwsdnJZY+w6X4jZKhIo84CW5czA=;
	b=YBH6AnMAjtMGFXloJe6iySFktQyJN6S2AKgFuITjqTi91zDpBJsHO17TUgSnF1VAGM
	XjoYrlcMTcFuQ0q1sRnNVyhk4fNY7pspnYv97fzeopSdKOD2i40XpYeco1+hclKOPDbG
	MHBcyH9jmz149r+EnNFUaKnp1yi/OV3GudMwIjJJEzH6yq9Iw6HHOhsDSKBaevmzY0Cu
	X/sCvtsS1MEDmVmdzhhgaJEnaRP/D1A8lvZBLSpTOSQDuC8oZUa5ue/8Q0Nqxcl4anyZ
	QXtDN8PVaHw4h4BhkdRe228KkX2Vhr/1xtJ9wmZoRFBuqKbgcCBj1y9sQNtQUJYFZ2QL
	YydQ==
MIME-Version: 1.0
Received: by 10.229.137.138 with SMTP id w10mr4975920qct.144.1345681983265;
	Wed, 22 Aug 2012 17:33:03 -0700 (PDT)
Received: by 10.229.103.143 with HTTP; Wed, 22 Aug 2012 17:33:03 -0700 (PDT)
In-Reply-To: <CA+gsK-pwJ4dWQ6PyR-Lg2y3L7N19K5Ndzo-1c1n3wqbryy5vbQ@mail.gmail.com>
References: <CA+gsK-pwJ4dWQ6PyR-Lg2y3L7N19K5Ndzo-1c1n3wqbryy5vbQ@mail.gmail.com>
Date: Wed, 22 Aug 2012 17:33:03 -0700
Message-ID: <CAPhnLPDs=xECd98-AK6PZQCuVtAn5+_R=QJWBq4jaOUnNNHC2w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
X-Gm-Message-State: ALoCoQlzoraJpKLRxbgdxKHg0icqd1aDMHVDuWnImlC+/7SBJnamoZpGML+h6Dat0v5Hpx2TgOqn
Cc: yocto@yoctoproject.org
Subject: Re: [Eclipse ADT] Eclipse plugin download site is not a valid Eclipse site
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 00:33:05 -0000
Content-Type: multipart/alternative; boundary=00235452f92097dcb404c7e40047

--00235452f92097dcb404c7e40047
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 22, 2012 at 4:00 PM, Rudolf Streif <rudolf.streif@linux.com>wrote:

> The download site
> http://downloads.yoctoproject.org/releases/eclipse-plugin/1.2.1/indigo/ for
> the Eclipse plugin is not a correctly setup Eclipse download site. The site
> root does not have the correct layout for Eclipse to be able to recognize
> it:
>
> <site root>/
>     content.jar
>     artifacts.jar
>     features/
>         feature archives
>     plugins/
>         plug-in archives
>     binary/
>         binary artifact archives
>
> However, the file org.yocto.sdk-rc1-201206291755-archive.zip looks as if
> it contains the correct site layout. The
> file org.yocto.sdk-rc1-201206291755.zip does contain the features and
> plugins only however time stamps in the file names and file sizes differ
> from the ones contained in org.yocto.sdk-rc1-201206291755-archive.zip.
>
> Could anybody please shed some light on this?
>
>
Thanks for catching this, Rudolf. I've corrected this and have added a bug
entry against the release scripts.

-b

Thanks,
> Rudi
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--00235452f92097dcb404c7e40047
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Aug 22, 2012 at 4:00 PM, Rudolf =
Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:rudolf.streif@linux.com" tar=
get=3D"_blank">rudolf.streif@linux.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
<div>The download site=A0<a href=3D"http://downloads.yoctoproject.org/relea=
ses/eclipse-plugin/1.2.1/indigo/" target=3D"_blank">http://downloads.yoctop=
roject.org/releases/eclipse-plugin/1.2.1/indigo/</a>=A0for the Eclipse plug=
in is not a correctly setup Eclipse download site. The site root does not h=
ave the correct layout for Eclipse to be able to recognize it:</div>

<div><br></div><div><font face=3D"arial, helvetica, sans-serif"><tt>&lt;sit=
e root&gt;/</tt>=A0<br><tt>=A0=A0=A0 content.jar</tt>=A0<br><tt>=A0=A0=A0 a=
rtifacts.jar</tt>=A0<br><tt>=A0=A0=A0 features/</tt>=A0<br><tt>=A0=A0=A0=A0=
=A0=A0=A0 feature archives</tt><br><tt>=A0=A0=A0 plugins/</tt>=A0<br>

<tt>=A0=A0=A0=A0=A0=A0=A0 plug-in archives=A0=A0=A0</tt><br><tt>=A0=A0=A0 b=
inary/</tt>=A0<br><tt>=A0=A0=A0=A0=A0=A0=A0 binary artifact archives</tt></=
font></div><div><font face=3D"arial, helvetica, sans-serif"><tt><br></tt></=
font></div><div>However, the file org.yocto.sdk-rc1-201206291755-archive.zi=
p looks as if it contains the correct site layout. The file=A0org.yocto.sdk=
-rc1-201206291755.zip does contain the features and plugins only however ti=
me stamps in the file names and file sizes differ from the ones contained i=
n=A0org.yocto.sdk-rc1-201206291755-archive.zip.</div>

<div><br></div><div>Could anybody please shed some light on this?</div><div=
><br></div></blockquote><div><br>Thanks for catching this, Rudolf. I&#39;ve=
 corrected this and have added a bug entry against the release scripts.<br>
=A0<br>-b<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
t 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv></div><div>Thanks,</div><div>Rudi</div><table style=3D"font-family:&#39;=
Times New Roman&#39;">
<tbody><tr><td><br><br></td></tr></tbody></table>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<=
br>Yocto Project<br>Build and Release<br>

--00235452f92097dcb404c7e40047--
