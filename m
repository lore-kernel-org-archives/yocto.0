Return-Path: <seth.boll@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47766E01634
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 08:17:14 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id t60so2694806wes.40
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 08:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=l2ZeyzbfEdvAkQHXh5OF+LEW8liCuPEfhdXIWMZZT+k=;
	b=gUe19Ekb/JGKLa2a46qeQJBvnsd8AQ3otNJY2BHMG79NEDM7hXoZiJVuaQn/Gl+KCJ
	90rcyWe7bOu/tZAOhklb0qDnoIk+q2e0SRzYkuhpDQ2+252aUIZWAlh9bf+z0hGU6xbS
	00WYnDl73p+lbfg29TMPzDUgIYvuAz+eZ3WhA8tOux0Oa87N8UAow7OR4JBjySlTxT/+
	x0Ep9imkpaFRpt8MvfYPzipB8pZ9jGTnoZui0M+PQczbnjrN3FVEcPxy5/fn0fUFQejC
	Dpl6G4qPV1YisKM+95ZHLY4dKBB3sgkQPIYpdhvL2Zm/spy1b1A/9E22As08gqUclwLp
	dp5A==
MIME-Version: 1.0
X-Received: by 10.194.24.168 with SMTP id v8mr12883510wjf.28.1381418233582;
	Thu, 10 Oct 2013 08:17:13 -0700 (PDT)
Received: by 10.216.59.133 with HTTP; Thu, 10 Oct 2013 08:17:13 -0700 (PDT)
In-Reply-To: <CAJTo0LY_q=zpNvZqbVHhFvxYiqNs2jg4PqREg2gF0EbZ7=n21w@mail.gmail.com>
References: <5255F1CF.8020203@gmail.com> <2034055.AmVRsnPTrY@helios>
	<CA+JN8xPBG_V4MMGxnQv49FC8qC3WJNwgOFKKvkqE73NnnFAWXA@mail.gmail.com>
	<CAJTo0LaNxxcuLPtwoh-ryLObhp4sVV4ESj_VnUhx4-Q=y=ciRw@mail.gmail.com>
	<CA+JN8xP7dhToPUhpor-C3LJOVY9ZyYP5giOTJjwUMfKNSfOkrQ@mail.gmail.com>
	<CAJTo0LY_q=zpNvZqbVHhFvxYiqNs2jg4PqREg2gF0EbZ7=n21w@mail.gmail.com>
Date: Thu, 10 Oct 2013 10:17:13 -0500
Message-ID: <CA+JN8xMYpvDAcgw6j6qh9G+gvEgxb=+1QA96qM_M_ENgHwO9mA@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipes that update a shared file
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
X-List-Received-Date: Thu, 10 Oct 2013 15:17:16 -0000
Content-Type: multipart/alternative; boundary=047d7b86daaa1965f304e8647f4d

--047d7b86daaa1965f304e8647f4d
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 10, 2013 at 10:09 AM, Burton, Ross <ross.burton@intel.com>wrote:

> Use $D instead of ${D}. ${D} will get expanded when the package is
> created but you want to use the environment variable $D.
>

Looks like that worked!  I apologize for missing the curly braces in your
previous response.

Thanks very much!

Seth

--047d7b86daaa1965f304e8647f4d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Oct 10, 2013 at 10:09 AM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Use $D instead of ${D}. ${D} will get expand=
ed when the package is<br>
created but you want to use the environment variable $D.<br></blockquote><d=
iv><br></div><div>Looks like that worked! =A0I apologize for missing the cu=
rly braces in your previous response.</div><div><br></div><div>Thanks very =
much!</div>
<div><br></div><div>Seth</div></div><br></div></div>

--047d7b86daaa1965f304e8647f4d--
