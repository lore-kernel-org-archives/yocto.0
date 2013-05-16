Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC39BE0149A
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 22:19:46 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id g10so1388099eak.25
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 22:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=8YYhZd+a7owUEM+klRiAUU/blaMebmvkMx9sR+Q43xA=;
	b=GFbe4m67HD7FSMfHzTDSE7IpEuueAmHCFNZzp5TJAWbfnLmNRJxvCIQhXSx65MlcWy
	Uxt66A6JHoAbJfLL67l56zf9NAHjUNbLX44PEe15a03agZpt4BnmX6x7hf5EETqF5CJ9
	yyNTRiRbyNr0LgX3cdGTkuNit2+IEls+aWOvk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=8YYhZd+a7owUEM+klRiAUU/blaMebmvkMx9sR+Q43xA=;
	b=Itxq/YRLIP3Ho8Kg1A/rynzbpn7RTun1ybxDBlHDYxd1voLOtJV+Fhdf1nCJ8gzTmo
	tiHfrK544G/W+OwlAmHYeXQgCEtaKqL2dRe7JtV3UwUiTDHD2JxcDpXFuRq27Xdr2Mvw
	v5lv0qW1HAkY+3g8Gq9VZngLAe1lLdTdXPb3GOUFTz9m+BCXOIP6XQ8sFf4XC9ShhcrQ
	+L9tKtErTrPFsSYYNPiOk6AKK2ZukDTc8nZErJEjnE5CqYVelG1aTok1ck2ZXjBQm1+o
	1SxF/9O37stjDuPo3F4DmWd3Qt/Z2p29l55RTvc44zg/ePJ4M7/654rr74YpKObvobST
	+Hog==
MIME-Version: 1.0
X-Received: by 10.15.44.10 with SMTP id y10mr110920095eev.5.1368681585840;
	Wed, 15 May 2013 22:19:45 -0700 (PDT)
Received: by 10.223.96.71 with HTTP; Wed, 15 May 2013 22:19:45 -0700 (PDT)
In-Reply-To: <CA+gsK-rnDcEMdc3i49qdqw73T+4qvx_OrmgRPVuKzHOWUcg71A@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF393A2@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-rnDcEMdc3i49qdqw73T+4qvx_OrmgRPVuKzHOWUcg71A@mail.gmail.com>
Date: Wed, 15 May 2013 22:19:45 -0700
Message-ID: <CA+gsK-oFUTZH7SFqsg_D7H7STH+TTMoKUGaE58OAJj0VijyszQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmsgej1NlRY7XJr8ktkyFraoJaX5QwHPXCf1mZ2ZOVlapQJKFXkYQrrZS5N0BaXjeaEo1Pe
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building the BitBake manual
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
X-List-Received-Date: Thu, 16 May 2013 05:19:47 -0000
Content-Type: multipart/alternative; boundary=089e016813b4bc4a1e04dccf03b1

--089e016813b4bc4a1e04dccf03b1
Content-Type: text/plain; charset=ISO-8859-1

And I hit the send button too early: on FC18 you also have to install
texlive-multirow.

:rjs

On Wed, May 15, 2013 at 10:16 PM, Rudolf Streif <rstreif@linuxfoundation.org
> wrote:

> Scott,
>
> On FC18 these packages are also called xmlto and dblatex.
>
> xmlto has a dependency on flex which the package manager should install
> automatically.
> dblatex has dependencies on texlive-*.
>
> :rjs
>
>
>
> On Wed, May 15, 2013 at 9:07 PM, Rifenbark, Scott M <
> scott.m.rifenbark@intel.com> wrote:
>
>> When running "make" on the BB docs, my Ubuntu system was missing two
>> packages: dblatex, xmlto.  Currently, the "Required Packages for the Host
>> Development System" section in the YP Reference Manual does not list these
>> packages as part of the "Documentation" packages.  I am thinking we should
>> add these in for Ubuntu.  Can anyone tell me what the packages would be for
>> Fedora, OpenSUSE, and CentOS?  Are they named the same?
>>
>> Thanks,
>> Scott
>>
>> Scott Rifenbark
>> Intel Corporation
>> Yocto Project Documentation
>> 503.712.2702
>> 503.341.0418 (cell)
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
>
>

--089e016813b4bc4a1e04dccf03b1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

And I hit the send button too early: on FC18 you also have to install texli=
ve-multirow.<div><br></div><div>:rjs<br><br><div class=3D"gmail_quote">On W=
ed, May 15, 2013 at 10:16 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoun=
dation.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Scott,<div><br></div><div>On FC18 these pack=
ages are also called xmlto and dblatex.</div><div><br></div><div>xmlto has =
a dependency on flex which the package manager should install automatically=
.</div>
<div>dblatex has dependencies on texlive-*.</div>
<div><br></div><div>:rjs</div><div class=3D"HOEnZb"><div class=3D"h5"><div>=
<br></div><div><br><br><div class=3D"gmail_quote">On Wed, May 15, 2013 at 9=
:07 PM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.=
rifenbark@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;<=
/span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">When running &quot;make&quot; on the BB docs=
, my Ubuntu system was missing two packages: dblatex, xmlto. =A0Currently, =
the &quot;Required Packages for the Host Development System&quot; section i=
n the YP Reference Manual does not list these packages as part of the &quot=
;Documentation&quot; packages. =A0I am thinking we should add these in for =
Ubuntu. =A0Can anyone tell me what the packages would be for Fedora, OpenSU=
SE, and CentOS? =A0Are they named the same?<br>


<br>
Thanks,<br>
Scott<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702" value=3D"+15037122702" target=3D"_blank">503.7=
12.2702</a><br>
<a href=3D"tel:503.341.0418" value=3D"+15033410418" target=3D"_blank">503.3=
41.0418</a>=A0(cell)<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div><div><font face=3D"=
garamond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,=
102);font-family:arial,sans-serif;font-size:13px"><br></span></font></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>
</div>

--089e016813b4bc4a1e04dccf03b1--
