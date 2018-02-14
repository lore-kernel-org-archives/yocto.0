Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB708E00DD9; Wed, 14 Feb 2018 12:58:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07605E007E1
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 12:58:14 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id r78so24333445wme.0
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 12:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=/xmhvejJELPqbzqQHCJPuphjtb4M+w7p3FCHwojy/CE=;
	b=sCdZ6FonZQzX0Akajumg6G968+HXK9BNdtgYIf2BkXEIrixVKArDXTgVghZWqaJjpp
	2c1Sbd83EQ0hnykV33XQUZh4MeAnIWiYpDI0BUN74iyyad14NHSioCS8HeeizkgyLcNW
	aNYwzxPXzC5kQgyqGpE6eNOA5q+6H8fhqDgEBUDh7+t3WCqVAulHbwlrbIzpbSt3QStJ
	F7Llf/29/AvJ3pDBax9ovL15uSzCmJFB7+QaHXCC2lW6XsvOnZO+CRBPSdxkyweCbqTM
	uEIO5iDsNG1CFEpxHJBrKAit2Pb6Qp7Y+Su4e1//XdcOM4iACFO3HYNhkqZlRigazpac
	ucjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=/xmhvejJELPqbzqQHCJPuphjtb4M+w7p3FCHwojy/CE=;
	b=rHkCsShZeWo/L2tHuAbjd/wmuXu6ygpuVH+3M+36P+tpPw7j7STyhAHS4nKnhbQWAT
	NqT+8VeLNGKOs8xAEogEupfhnZWt1RyMd3SrT17VfBbSTyB60mWhEdCJJXufnv/Nqtyc
	csxTLmqdWAbRqYTfpb+g+OmRYkNmboZVX9n3g3ywyBC1gcE/QRH26VElNnROulm6ye0+
	5FifQN6t4ypeWSe8a8JxRCorD1jIPRA6q8SL+cz7Xx7UspxoP9lBjEwqo51qy9EP8C4M
	7Y/UI0QMnQBqOb25YKLSNivnCSonwxR/xHSSL59cbVrSokF5NiUVdPyug90q+NIkHGmy
	eaZA==
X-Gm-Message-State: APf1xPAC5smUN+44spyJucxDKGN9qQj04WTwJ2o12MRiLOmDhl9PhV2d
	9BYxlhVJIXMcXGbzZhgm06PlujbZQNiG0L9NHBk=
X-Google-Smtp-Source: AH8x227d5tjuiNP7wm538uCsm3V6svA981prD6v41+xAkLpcQ/RMJAL7V+ayhWPbEIIeQKST4RsH8xsOz1qGye1q/fw=
X-Received: by 10.28.154.67 with SMTP id c64mr292569wme.125.1518641893693;
	Wed, 14 Feb 2018 12:58:13 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.223.134.15 with HTTP; Wed, 14 Feb 2018 12:57:53 -0800 (PST)
In-Reply-To: <CAEv37YucHQ7Oa8YzngU0kQOKrMBEez1_udeAcWqrX7D4-C6jmg@mail.gmail.com>
References: <CAEv37YucHQ7Oa8YzngU0kQOKrMBEez1_udeAcWqrX7D4-C6jmg@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Wed, 14 Feb 2018 12:57:53 -0800
X-Google-Sender-Auth: DFEW9JV_UGImHEbTXob_QjoaFw4
Message-ID: <CA+YB3rZST=NZTGC14w1_wD9t5bYH+_Z5dv-ApBwt=CLbO4BrMw@mail.gmail.com>
To: Jean-Pierre Sainfeld <jean-pierre@anki.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: useradd-example.bb
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
X-List-Received-Date: Wed, 14 Feb 2018 20:58:15 -0000
Content-Type: multipart/alternative; boundary="001a114b458e9d60fd0565325ee8"

--001a114b458e9d60fd0565325ee8
Content-Type: text/plain; charset="UTF-8"

Can anyone help Jean-Pierre? This seems at first like a simple issue during
do_populate.

On Tue, Feb 13, 2018 at 1:32 PM, Jean-Pierre Sainfeld <jean-pierre@anki.com>
wrote:

> Hi,
> I am working on yocto system at the jethro rev level.
> I am looking to use the meta-skeleton useradd-example.bb recipe
> So far I have been successful in adding the required users and group
> and creating files in the /usr/share directory
> The current issue I am facing is the ownership of the created file
> I see the right permissions at the do_install() time
> however when the image is loaded in the target
> those files are reverted to the root:root permissions
>
> The requirement of our platform is that we can create specific users and
> make some specific processes  and data files having the proper uid and
> ueid.
>
> I have been able to do all this successfully on the target
> but not through the yocto build system
>
> Any assistance in this regard would be fantastic and very cool :-)
>
>
>
> --
> Jean-Pierre Sainfeld
> 408-508-1741 <(408)%20508-1741>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Jeff Osier-Mixon - Open Source Community Manager, Intel Corporation

--001a114b458e9d60fd0565325ee8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anyone help Jean-Pierre? This seems at first like a si=
mple issue during do_populate.<br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Tue, Feb 13, 2018 at 1:32 PM, Jean-Pierre Sainfel=
d <span dir=3D"ltr">&lt;<a href=3D"mailto:jean-pierre@anki.com" target=3D"_=
blank">jean-pierre@anki.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">Hi,<div>I am working on yocto system at the jethr=
o rev level.=C2=A0</div><div>I am looking to use the meta-skeleton <a href=
=3D"http://useradd-example.bb" target=3D"_blank">useradd-example.bb</a> rec=
ipe</div><div>So far I have been successful in adding the required users an=
d group=C2=A0</div><div>and creating files in the /usr/share directory=C2=
=A0</div><div>The current issue I am facing is the ownership of the created=
 file=C2=A0</div><div>I see the right permissions at the do_install() time=
=C2=A0</div><div>however when the image is loaded in the target=C2=A0</div>=
<div>those files are reverted to the root:root permissions=C2=A0</div><div>=
<br></div><div>The requirement of our platform is that we can create specif=
ic users and=C2=A0</div><div>make some specific processes=C2=A0 and data fi=
les having the proper uid and ueid.</div><div><br></div><div>I have been ab=
le to do all this successfully on the target=C2=A0</div><div>but not throug=
h the yocto build system=C2=A0</div><div><br></div><div>Any assistance in t=
his regard would be fantastic and very cool :-)</div><span class=3D"HOEnZb"=
><font color=3D"#888888"><div><br></div><div><br></div><div><div><br></div>=
-- <br><div class=3D"m_3168566518044118465gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr">Jean-Pierre Sainfeld<div><a href=3D"t=
el:(408)%20508-1741" value=3D"+14085081741" target=3D"_blank">408-508-1741<=
/a></div></div></div>
</div></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Jeff O=
sier-Mixon - Open Source Community Manager, Intel Corporation</div></div></=
div>
</div>

--001a114b458e9d60fd0565325ee8--
