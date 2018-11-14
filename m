Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 518F3E00C4E; Wed, 14 Nov 2018 14:02:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A56AE00C19
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 14:02:49 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id d39so11721895edb.12
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 14:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=72q9Ny0xJ2d0UhiKkzjdmhga7FbqpmHchNPpYlK/w1c=;
	b=o2x0t9wObaFDQe71KmkxFOWzxS7Qt+d8hrY4Ehn8mAo9t7gnx627IjKbd/eG0s9Fx2
	7fkPoEVW2x7vceO/jkBF1mN3Nqas8wPIiVkECZ2q/9dRUXKw3uQDO10TQ6T6kuK0lGZE
	fM3NEXIWHsmpj4WCibjtvHavWcnT14CPYWeKShIFzbMH6FiFelpTw0Wonx5+GQkqFiTW
	0/BsuFyJZ+bZtfsaXZP+IfrBzf0sFCmUvKJEJGTqHXHURElh1slDq8X7k6Ngy+jAf6lE
	JfR/YuCaPBRivoTlteeacyBOv3eD7e6839r2SZwB5RCoXR53FBALJBbrC8FLdwx0Ke9j
	wXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=72q9Ny0xJ2d0UhiKkzjdmhga7FbqpmHchNPpYlK/w1c=;
	b=YH7CVpzYSBb8NK57q8h0yN5jCvzGG6xCyY0H+6XasnFFapno89Quc/dO4fT77gPQsI
	P1RXEuoLwzbSITB3fSgfwwp1SRWReof5H2vmjNHTas+8UNPZCoLUNm/twe0kSanJ15dO
	UeUIEcbbikEvLaM7ZECz9pAA4ONNcoWm+Iob2d1+jpSQHBUFjhWOdpPjlz8sCgpuHy0q
	O8TJIDTbv0VxF12ZZBr9oNLRiuVRSuszuMijp+K8HHdDQW6mj1D3V+76b2PEs1YXttup
	vTlsqR28vvVLAvsEZKbm0VHHkPsUlbCgLS8WorZY0p5fWDcUkyQRXJgWAUEKMGGxuEI4
	ksEA==
X-Gm-Message-State: AGRZ1gJ675K1YCNBRbk1Vy7Mrs5mwYX/DTk0M1Tj2huvSJ9UhprXsQmb
	XP2VMpFdrKT4gbAQFmOHkU5+LEsvJ5sside1AQsP2Q==
X-Google-Smtp-Source: AJdET5emACIVjUG6rTV703elNzsK+FTsCNuDITMejn4kSlbenEZ3Vjor6XbaSL7BirKEjM1efIoqP/XWFq9zyOEFMMA=
X-Received: by 2002:a50:b964:: with SMTP id
	m91-v6mr3358252ede.234.1542232968386; 
	Wed, 14 Nov 2018 14:02:48 -0800 (PST)
MIME-Version: 1.0
References: <72559C80-DE60-46D4-9736-9B46E59F3C9E@intel.com>
	<9ADD3FDE8B189B4AA2F8A3C711F8155ECFD42E3E@fmsmsx124.amr.corp.intel.com>
	<13321d66-f118-a546-4468-4454238e5f6a@gmail.com>
In-Reply-To: <13321d66-f118-a546-4468-4454238e5f6a@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 14 Nov 2018 14:02:37 -0800
Message-ID: <CAFNP8OsXdnXx5-xma65S4boL8poZc8NFigDgV2tfjWWpcGVswQ@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: final pass on release notes....and general status of readiness
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
X-List-Received-Date: Wed, 14 Nov 2018 22:02:50 -0000
Content-Type: multipart/alternative; boundary="0000000000003de08d057aa718e1"

--0000000000003de08d057aa718e1
Content-Type: text/plain; charset="UTF-8"

Especially true for the manuals... always go to the website for best set of
manuals.

Scott

On Wed, Nov 14, 2018 at 1:41 PM akuster808 <akuster808@gmail.com> wrote:

>
> On 11/14/18 12:47 PM, Jolley, Stephen K wrote:
>
> We will release YP 2.6 M4 rc1 shortly.  Please give feedback if any is
> required.
>
>
> Please add the note that Tip of Thud is not what is being released.
>
> This will just confuse folks trying to connect the dots.
>
>
> - armin
>
>
>
> Thanks,
>
>
>
> Stephen
>
>
>
> *From:* Graydon, Tracy
> *Sent:* Wednesday, November 14, 2018 12:33 PM
> *To:* Jolley, Stephen K <stephen.k.jolley@intel.com>
> <stephen.k.jolley@intel.com>; Michael Halstead
> <mhalstead@linuxfoundation.org> <mhalstead@linuxfoundation.org>
> *Subject:* final pass on release notes....and general status of readiness
>
>
>
> Ugh, I am not seeing the email I sent with the finalized release notes. I
> dunno if I sent it or not because I am having a nightmare with Outlook on
> Mac eating things and generally not working right.
>
>
> So, by way of sanity check, attached.  The only changes were adding the
> binutils CVES to Known issues:
>
>
>
> binutils: fix CVE-2018-18309, CVE-2018-18605, CVE-2018-18606,
> CVE-2018-18607
>
>
>
> And the gitsm known issue:
>
>
>
> - gitsm fixes on master-next:
>
> * The submodule name and path were assumed to be the same, which is not
> necessarily true.
>
> * Submodules refer to a specific commit, not branch, but we erroneously
> check against the branch specified in SRC_URI. This results in
>
> failure if a submodule commit is not on that branch.
>
>
>
> So, nothing major there. Just really a sanity check on the gitsm wording.
>
>
>
> Everything is ready to go. Pages are set and just need to be published.
> Release announcement is ready. So we just need to do the final mirror and
> tagging magic, and announce.
>
>
>
> If the wording on gitsm issue looks reasonable, we are good to go.
>
>
>
> -t
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000003de08d057aa718e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Especially true for the manuals... always go to the w=
ebsite for best set of manuals.</div><div><br></div><div>Scott<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 14, 2018 at =
1:41 PM akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"m_1823094080113469226moz-cite-prefix">On 11/14/18 12:47 P=
M, Jolley, Stephen K
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div class=3D"m_1823094080113469226WordSection1">
        <p class=3D"MsoNormal"><a name=3D"m_1823094080113469226__MailEndCom=
pose"><span style=3D"color:#1f497d">We will
              release YP 2.6 M4 rc1 shortly.=C2=A0 Please give feedback if
              any is required.</span></a></p>
      </div>
    </blockquote>
    <p><br>
    </p>
    Please add the note that Tip of Thud is not what is being released.
    <br>
    <p>This will just confuse folks trying to connect the dots. <br>
    </p>
    <p><br>
    </p>
    <p>- armin<br>
    </p>
    <blockquote type=3D"cite">
      <div class=3D"m_1823094080113469226WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<=
u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1f497d">Thanks,<u></u>=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<=
u></u></span></p>
        <div>
          <p class=3D"MsoNormal"><span style=3D"color:#1f497d">Stephen<u></=
u><u></u></span></p>
        </div>
        <p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<=
u></u></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:=
3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><a name=3D"m_1823094080113469226______re=
plyseparator"></a><b>From:</b> Graydon, Tracy
              <br>
              <b>Sent:</b> Wednesday, November 14, 2018 12:33 PM<br>
              <b>To:</b> Jolley, Stephen K
              <a class=3D"m_1823094080113469226moz-txt-link-rfc2396E" href=
=3D"mailto:stephen.k.jolley@intel.com" target=3D"_blank">&lt;stephen.k.joll=
ey@intel.com&gt;</a>; Michael Halstead
              <a class=3D"m_1823094080113469226moz-txt-link-rfc2396E" href=
=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank">&lt;mhalstead@l=
inuxfoundation.org&gt;</a><br>
              <b>Subject:</b> final pass on release notes....and general
              status of readiness<u></u><u></u></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Ugh, I am not seeing the email I sent with
          the finalized release notes. I dunno if I sent it or not
          because I am having a nightmare with Outlook on Mac eating
          things and generally not working right.
          <u></u><u></u></p>
        <p class=3D"MsoNormal"><br>
          So, by way of sanity check, attached.=C2=A0 The only changes were
          adding the binutils CVES to Known issues:<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">binutils: fix CVE-2018-18309,
          CVE-2018-18605, CVE-2018-18606, CVE-2018-18607<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">And the gitsm known issue: <u></u><u></u></p=
>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">- gitsm fixes on master-next:<u></u><u></u><=
/p>
        <p class=3D"MsoNormal">* The submodule name and path were assumed
          to be the same, which is not necessarily true.<u></u><u></u></p>
        <p class=3D"MsoNormal">* Submodules refer to a specific commit,
          not branch, but we erroneously check against the branch
          specified in SRC_URI. This results in<u></u><u></u></p>
        <p class=3D"MsoNormal">failure if a submodule commit is not on
          that branch.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">So, nothing major there. Just really a
          sanity check on the gitsm wording.
          <u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Everything is read<span style=3D"color:#1f49=
7d">y</span> to go. Pages are set and just
          need to be published. Release announcement is ready. So we
          just need to do the final mirror and tagging magic, and
          announce.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">If the wording on gitsm issue looks
          reasonable, we are good to go.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">-t<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
      </div>
    </blockquote>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000003de08d057aa718e1--
