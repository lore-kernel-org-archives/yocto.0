Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40F1FE00C4B; Wed, 14 Nov 2018 13:41:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3A23E00A6B
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 13:41:04 -0800 (PST)
Received: by mail-pf1-f171.google.com with SMTP id b85so1737560pfc.3
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 13:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=I++YftD0Upw7xKAm9x4QXVFhsZHnnyBIMt4ExbCM3fE=;
	b=WThOtp8knRFSeM5CBACcWcHEgiPRFywQlZBw8YbQ6LkuHA4mzkvReG+FtqNoOoJyfq
	0dRRoJ01WjkCNCOewC8VewIsJXDnZsSCCc2abhDZqo1IRSHC/UdKfA8doucWS/5/ye/D
	QEuRGkWHzQwX39PKIERo0c/t8QpKf/Atlt4ulaFird/kdHoS8yb7J2OmbWb1oyRBmMHs
	EWHDQQKTysEGDoWJOchMhFoELK6GzeUPF7yUUN0eiXZzgJw3qAll9NzvNUlGIY9eeY0N
	lvrybUnkbcDEwN5crfxVCockOxz6LMlCKT8Vt76/MgstJVq0E+mTWimq9R+SxkKuhoQg
	lG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=I++YftD0Upw7xKAm9x4QXVFhsZHnnyBIMt4ExbCM3fE=;
	b=E2sHIsGu2UEl9GQr9Ucjab2ctBh5W+S+Cxidm0wL/ojn20av0gqt98lxFxC3M7h2bF
	qSDb6MByPM1CpVkVgAVUBL3yTF5JZEeCQw7qpHlz+B/5IpIKtJK/aeHF6rf5SqbwkWx1
	NWBRjJtZ3Zi7PAN8wf5T/rX8ar1RB6pbZ5KlJ0yy+w/A4DlOKttuGXOQre0SRPrHVLg1
	2ouXmHuUmcYHtF2tEgsw6q3tA91gqNOsI2w2/CyfoFNHzGr0QGXafIUasfwireAI5IXO
	zRhGOTuEpZ3WDujMW22n3sPPZg6NJ1GIvaUoOaI4dQ62cXXE362rq0HaFbxzIgdafISb
	p34A==
X-Gm-Message-State: AGRZ1gJh9U6xYEKqukfeFYNCi64zNNN+12Dba3m7xBZq/niczrkhKpcW
	ch43AgaYNwO1KL9w4MKczYVkz6ni
X-Google-Smtp-Source: AJdET5dS8E3hxH3W/MTzU1nedNi0SO1OmjMOFjksa3X+Q2sXoHeUTNPxtFq0K8+2lgMSTN8QMV6few==
X-Received: by 2002:a63:594d:: with SMTP id j13mr3335926pgm.210.1542231664136; 
	Wed, 14 Nov 2018 13:41:04 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:7db3:34a2:3c95:1c57?
	([2601:202:4180:c33:7db3:34a2:3c95:1c57])
	by smtp.gmail.com with ESMTPSA id
	m17-v6sm27682945pfi.102.2018.11.14.13.41.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Nov 2018 13:41:03 -0800 (PST)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <72559C80-DE60-46D4-9736-9B46E59F3C9E@intel.com>
	<9ADD3FDE8B189B4AA2F8A3C711F8155ECFD42E3E@fmsmsx124.amr.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <13321d66-f118-a546-4468-4454238e5f6a@gmail.com>
Date: Wed, 14 Nov 2018 13:41:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155ECFD42E3E@fmsmsx124.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 14 Nov 2018 21:41:06 -0000
Content-Type: multipart/alternative;
	boundary="------------84C326C23AC7982EF90F7C2E"
Content-Language: en-US

--------------84C326C23AC7982EF90F7C2E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 11/14/18 12:47 PM, Jolley, Stephen K wrote:
>
> We will release YP 2.6 M4 rc1 shortly.=C2=A0 Please give feedback if an=
y is
> required.
>

Please add the note that Tip of Thud is not what is being released.

This will just confuse folks trying to connect the dots.


- armin

> =C2=A0
>
> Thanks,
>
> =C2=A0
>
> Stephen
>
> =C2=A0
>
> *From:* Graydon, Tracy
> *Sent:* Wednesday, November 14, 2018 12:33 PM
> *To:* Jolley, Stephen K <stephen.k.jolley@intel.com>; Michael Halstead
> <mhalstead@linuxfoundation.org>
> *Subject:* final pass on release notes....and general status of readine=
ss
>
> =C2=A0
>
> Ugh, I am not seeing the email I sent with the finalized release
> notes. I dunno if I sent it or not because I am having a nightmare
> with Outlook on Mac eating things and generally not working right.
>
>
> So, by way of sanity check, attached. =C2=A0The only changes were addin=
g
> the binutils CVES to Known issues:
>
> =C2=A0
>
> binutils: fix CVE-2018-18309, CVE-2018-18605, CVE-2018-18606,
> CVE-2018-18607
>
> =C2=A0
>
> And the gitsm known issue:
>
> =C2=A0
>
> - gitsm fixes on master-next:
>
> * The submodule name and path were assumed to be the same, which is
> not necessarily true.
>
> * Submodules refer to a specific commit, not branch, but we
> erroneously check against the branch specified in SRC_URI. This results=
 in
>
> failure if a submodule commit is not on that branch.
>
> =C2=A0
>
> So, nothing major there. Just really a sanity check on the gitsm wordin=
g.
>
> =C2=A0
>
> Everything is ready to go. Pages are set and just need to be
> published. Release announcement is ready. So we just need to do the
> final mirror and tagging magic, and announce.
>
> =C2=A0
>
> If the wording on gitsm issue looks reasonable, we are good to go.
>
> =C2=A0
>
> -t
>
> =C2=A0
>
> =C2=A0
>

--------------84C326C23AC7982EF90F7C2E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/14/18 12:47 PM, Jolley, Stephen K
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155ECFD42E3E@fmsmsx124.amr.corp.intel.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><a name="_MailEndCompose"
            moz-do-not-send="true"><span style="color:#1F497D">We will
              release YP 2.6 M4 rc1 shortly.  Please give feedback if
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
    <blockquote type="cite"
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155ECFD42E3E@fmsmsx124.amr.corp.intel.com">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <p class="MsoNormal"><span style="color:#1F497D">Stephen<o:p></o:p></span></p>
        </div>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><a name="_____replyseparator"
                moz-do-not-send="true"></a><b>From:</b> Graydon, Tracy
              <br>
              <b>Sent:</b> Wednesday, November 14, 2018 12:33 PM<br>
              <b>To:</b> Jolley, Stephen K
              <a class="moz-txt-link-rfc2396E" href="mailto:stephen.k.jolley@intel.com">&lt;stephen.k.jolley@intel.com&gt;</a>; Michael Halstead
              <a class="moz-txt-link-rfc2396E" href="mailto:mhalstead@linuxfoundation.org">&lt;mhalstead@linuxfoundation.org&gt;</a><br>
              <b>Subject:</b> final pass on release notes....and general
              status of readiness<o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Ugh, I am not seeing the email I sent with
          the finalized release notes. I dunno if I sent it or not
          because I am having a nightmare with Outlook on Mac eating
          things and generally not working right.
          <o:p></o:p></p>
        <p class="MsoNormal"><br>
          So, by way of sanity check, attached.  The only changes were
          adding the binutils CVES to Known issues:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">binutils: fix CVE-2018-18309,
          CVE-2018-18605, CVE-2018-18606, CVE-2018-18607<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">And the gitsm known issue: <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">- gitsm fixes on master-next:<o:p></o:p></p>
        <p class="MsoNormal">* The submodule name and path were assumed
          to be the same, which is not necessarily true.<o:p></o:p></p>
        <p class="MsoNormal">* Submodules refer to a specific commit,
          not branch, but we erroneously check against the branch
          specified in SRC_URI. This results in<o:p></o:p></p>
        <p class="MsoNormal">failure if a submodule commit is not on
          that branch.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So, nothing major there. Just really a
          sanity check on the gitsm wording.
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Everything is read<span
            style="color:#1F497D">y</span> to go. Pages are set and just
          need to be published. Release announcement is ready. So we
          just need to do the final mirror and tagging magic, and
          announce.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">If the wording on gitsm issue looks
          reasonable, we are good to go.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">-t<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"> <o:p></o:p></p>
      </div>
    </blockquote>
  </body>
</html>

--------------84C326C23AC7982EF90F7C2E--
