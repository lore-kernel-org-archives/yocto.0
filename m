Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A2FCE00D5F; Wed, 26 Oct 2016 12:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47CE7E00D59
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 12:48:09 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id n85so320176pfi.3
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 12:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=6i2g8rGuTaEOvL9TzaXzXR2wIThD+pCDgd6/090YcZI=;
	b=ncVp6o/Z0ZPBoaeIJh46TtPzn2UumZCEer+cLdjJKeZWL8Gz9qNbUlc0ShSARF/4fu
	oCZEqNlU2NL7hMOnuaqJHJo7Rb/nU6ZOwHtLeck5clMgIl+jgozNkQTYfwsk5wgjw3Ch
	dNdxY1/zlovqva5nHIHZb5GFgMEmJjatxBFbZciGGD2Z1Q7do/mWGXZ7X5DG/z3lgJ+3
	L+sA1H3IRK0Bvq3EGu4IafH68/SHJGAMEZhEaoWoA4swEhLuspEMRbBZKg7n4m95YNlE
	7WiLesi0fzgR+J88C8XkIydCDEsQrPExJsjhwv46fLBzk4vBqiqoifuMCyCUF7ZqBwoW
	kQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=6i2g8rGuTaEOvL9TzaXzXR2wIThD+pCDgd6/090YcZI=;
	b=TM1FG+UCVQLZ0sPJVYNR4weMY3wnQRD+Ozz8fRPPghI1LgPp8ueg9pnSHrG9UGRhJ3
	pPOs2b4ZNg1wQLbk6wQOyAX4C8J/W6uf13D3MDljm0KyEnmsTDjGurnOWPVRg0XBVmoN
	O9Vu1G7Pq2jILxa+ov5PZyMj6eXPWWe51BilunoCl9HBN0j+4Uoije4eubfSfgiov/t8
	Ls6beyzTs8kbv4++v9B1csWcInXdO3IbbJn8VOSqOk9nnB5JspRKilQ6ESnkJcecuuMn
	PbxZ/wDhaNu736/RHShKmpX0e7xO4zrDFYCT6Kjv+GEpBV4Sk7qp9X1FPvehy/UqbYIn
	eLFQ==
X-Gm-Message-State: ABUngveKS/jiZxEJIv/p2/8njkknW71HiWtYT37ero/R3dxw7MVQzzzunCMKaIkmMMhbUQ==
X-Received: by 10.99.126.74 with SMTP id o10mr5877162pgn.66.1477511288954;
	Wed, 26 Oct 2016 12:48:08 -0700 (PDT)
Received: from [10.22.11.115] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	l187sm6095591pfc.0.2016.10.26.12.48.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 26 Oct 2016 12:48:08 -0700 (PDT)
To: "Anup Maheshwari (anumahes)" <anumahes@cisco.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <dfde59a4f3f4400bafdcd08c33b0b84d@XCH-RCD-014.cisco.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <f22ebf94-cdcd-dcb5-36d3-822733b46a26@gmail.com>
Date: Wed, 26 Oct 2016 12:48:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <dfde59a4f3f4400bafdcd08c33b0b84d@XCH-RCD-014.cisco.com>
Cc: "Venkat Movva \(vemovva\)" <vemovva@cisco.com>,
	"Eshwar Yedavalli \(eshwar\)" <eshwar@cisco.com>,
	"Anirudh Murali \(anirumur\)" <anirumur@cisco.com>
Subject: Re: Reg porting of CVE-2016-5195 Linux Kernel Local Privilege Escalation (Dirty CoW) to 3.14 kernel
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
X-List-Received-Date: Wed, 26 Oct 2016 19:48:14 -0000
Content-Type: multipart/alternative;
	boundary="------------657A5A82463B15D6524271B4"

--------------657A5A82463B15D6524271B4
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/26/2016 11:40 AM, Anup Maheshwari (anumahes) wrote:
>
> Hi Team,
>
> Ref - mm: remove gup_flags FOLL_WRITE games from __get_user_pages()
>
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619
>
> The above issue was recently patched in 4.8 kernel. When are we 
> backporting this to 3.14 ?
>

I am glad you said "we". Does that  mean you are willing to send a patch?

regards,
Armin

> Can you give us an ETA ?
>
> Regards,
>
> Anup
>
>
>


--------------657A5A82463B15D6524271B4
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/26/2016 11:40 AM, Anup Maheshwari
      (anumahes) wrote:<br>
    </div>
    <blockquote
      cite="mid:dfde59a4f3f4400bafdcd08c33b0b84d@XCH-RCD-014.cisco.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
        <p class="MsoNormal">Hi Team,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Ref - mm: remove gup_flags FOLL_WRITE games
          from __get_user_pages()<o:p></o:p></p>
        <p class="MsoNormal"><a moz-do-not-send="true"
href="https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619">https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The above issue was recently patched in 4.8
          kernel. When are we backporting this to 3.14 ?</p>
      </div>
    </blockquote>
    <br>
    I am glad you said "we". Does that  mean you are willing to send a
    patch?<br>
    <br>
    regards,<br>
    Armin<br>
    <br>
    <blockquote
      cite="mid:dfde59a4f3f4400bafdcd08c33b0b84d@XCH-RCD-014.cisco.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"> Can you give us an ETA ?</p>
      </div>
    </blockquote>
    <blockquote
      cite="mid:dfde59a4f3f4400bafdcd08c33b0b84d@XCH-RCD-014.cisco.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Regards,<o:p></o:p></p>
        <p class="MsoNormal">Anup<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------657A5A82463B15D6524271B4--
