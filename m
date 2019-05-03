Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4AB9E00AD5; Fri,  3 May 2019 11:07:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6800CE00C1E
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 11:07:05 -0700 (PDT)
Received: by mail-pf1-f175.google.com with SMTP id b3so3266220pfd.1
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 11:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=hViJqIS3ql/wKjzA7+t+euTv1xUx40So+3l0RG4Vk/c=;
	b=J4g0gej7eMLr4z6pUKV1Xgk4uBFQNfqHtL/9X/EhuLBsWrbEaQN7yGa/wBmJ99Brn3
	808Ml80r/NywwUY9X0j5CGJFsDK4r8YI9z3AGnOVVyx8CPBl7fCGPZaCq/w3accbUnyg
	rijhF5XrCP/CpN3WpDflbKg1PtrXS2zoRtPah7kOdOb3exlW0u6VLQl+/EEMBt7bJvUj
	3JlJ0S2Spl4zZr+xurlAZIFwh6zRf/J2ohHn7TeDVUyIAw5BfADjTQ2Yc5/k+PMs1Vvj
	fxhSkpXkSTeyk9HBcIPAUbsBhgiPq8ypIxRdjqbQ1n5hOzy/9dIUcEzVrHDcrq5N1pdT
	Bxuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=hViJqIS3ql/wKjzA7+t+euTv1xUx40So+3l0RG4Vk/c=;
	b=RUD/bjIIa41TBbDPXHkzUjfUUvFXB5iYbZkiga/6UZE8ZkhfoP9opvaDhEmkoeDEmh
	/c2Lm5uiteNMmBHQ3+zBmsNaOIaM4g4hBg82VhwzjR12RjDFIearS9GUDOO94Ylttxfj
	qjhacYvMRh7EPygSpyI/1M1svhngnKYssnE5SUW3OzWDTMx3tPhpFYy0QWrANzLHBNED
	e3geoIW4hKe+j2yYWr+olttg5o404H3U5rU7UP6FZUz1DBEC0lqgXN1zYCWLTuKtbRL1
	iArE31QjKlmS1smVo3/i/fzHmVa4VpSSAoUwHsuoiZPk53xVMcW2iZzk/IQnj71Gu0g2
	mR8A==
X-Gm-Message-State: APjAAAV2zpbLxbMHQKB16hQLtmPoYe3ms2uzhMcF650BpMxleFIgKQgd
	WmW4qtWsIgB9uq4VzqiDByf0xrPWYVk=
X-Google-Smtp-Source: APXvYqyD8o9D/lxRSL+fAuwZqN8JbgZbZuKr5aJ7oo5NMaB2L6h+X5EBp2njWw1TOf+oDrP2BgPqjw==
X-Received: by 2002:a62:5445:: with SMTP id i66mr12559293pfb.250.1556906824462;
	Fri, 03 May 2019 11:07:04 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:b9b3:5f13:7709:822d?
	([2601:202:4180:c33:b9b3:5f13:7709:822d])
	by smtp.gmail.com with ESMTPSA id
	a6sm3718655pfn.181.2019.05.03.11.07.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 May 2019 11:07:03 -0700 (PDT)
To: "Volosincu, Andreea S" <andreea.volosincu@windriver.com>,
	"yocto-advocacy@yoctoproject.org" <yocto-advocacy@yoctoproject.org>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <96fa4aec-9557-9d7f-bff3-82f8db56e9cd@mvista.com>
Date: Fri, 3 May 2019 11:07:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
Subject: Re: [Yocto-Advocacy] Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Fri, 03 May 2019 18:07:07 -0000
Content-Type: multipart/alternative;
	boundary="------------A21224785152B0D41808E776"
Content-Language: en-US

--------------A21224785152B0D41808E776
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 5/3/19 11:01 AM, Volosincu, Andreea S wrote:
>
> Greetings,
>
>  
>
> Yocto Project is pleased to announce the plans for the upcoming
> Embedded Linux Conferences in NA and Europe.
>
>  
>
> Here is a snapshot of our schedule:
>
>  
>
> ELC NA – Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfront,
> San Diego, CA
>
>                    Yocto Project is a sponsor. We’ll see you on the
> show floor
>
>  
>
> ELC NA Dev Day – Tuesday, August 20, 2019 - 8:00AM - 6:00PM
>
> Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
>
> Level: Intermediate – Advanced. Participants will receive beginner
> material (videos and presentations) as pre-requisites
>
> Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with
> light appetizers
>
So beer is a prerequisite for Intermediate level?

This is a conflict with Linux Security summit unless someone can
convince me to be part of the training?

- armin

>  
>
> ELCE – Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon, France
>
>               Yocto Project is a sponsor. We’ll see you on the show floor
>
>  
>
> ELCE Yocto Project Summit – Dates & Times:
>
> Thursday, October 31, 2019 - 8:00AM - 6:00PM
>
>                November 1, 2019 - 8:00 am - 6:00PM
>
> Set-up:
>
> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
>
> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 &
> Classroom seating for 40 (for maintainers and users)
>
> Includes:
>
> Morning Break for 2 days
>
> Buffet Lunch for 2 days
>
> Beer & Wine Reception with light appetizers for 1 day
>
> The goal for the second day of the summit is to build and bring the
> community together. We are interested to hear your opinions and ideas
> on how that day and those rooms should be used for. Please send your
> ideas to Andreea Volosincu and Philip Balister.
>
>  
>
> We will call out an Advocacy meeting in a couple of weeks to go over
> plans and vote on the ideas for the second day of the summit.
>
>  
>
> Thanks!
>
> Andreea
>
> Yocto Project Advocacy Lead
>
>


--------------A21224785152B0D41808E776
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 5/3/19 11:01 AM, Volosincu, Andreea
      S wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com">
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
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
        <p class="MsoNormal">Greetings,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Yocto Project is pleased to announce the
          plans for the upcoming Embedded Linux Conferences in NA and
          Europe.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Here is a snapshot of our schedule:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">ELC NA – Wednesday, August 21 - 23, 2019,
          Hilton San Diego Bayfront, San Diego, CA<o:p></o:p></p>
        <p class="MsoNormal">                   Yocto Project is a
          sponsor. We’ll see you on the show floor<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">ELC NA Dev Day – Tuesday, August 20, 2019 -
          8:00AM - 6:00PM<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Set-up: 1 Meeting
          Room - Classroom Seating ( 60 people)<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Level:
          Intermediate – Advanced. Participants will receive beginner
          material (videos and presentations) as pre-requisites<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Includes: Morning
          Break, Buffet Lunch, Beer &amp; Wine Reception with light
          appetizers</p>
      </div>
    </blockquote>
    So beer is a prerequisite for Intermediate level?<br>
    <br>
    This is a conflict with Linux Security summit unless someone can
    convince me to be part of the training?<br>
    <br>
    - armin<br>
    <br>
    <blockquote type="cite"
cite="mid:A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com">
      <div class="WordSection1">
        <p class="MsoNormal" style="text-indent:.5in"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">ELCE – Monday, October 28 -30, 2019, Lyon
          Convention Centre, Lyon, France<o:p></o:p></p>
        <p class="MsoNormal">              Yocto Project is a sponsor.
          We’ll see you on the show floor<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">ELCE Yocto Project Summit – Dates &amp;
          Times: <o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Thursday, October
          31, 2019 - 8:00AM - 6:00PM
          <o:p></o:p></p>
        <p class="MsoNormal">               November 1, 2019 - 8:00 am -
          6:00PM<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Set-up: <o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Day 1: 1 Meeting
          Room - Theater Seating for 100 for Yocto Project talks<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Day 2: 2 Meeting
          Rooms - Mixed Classroom/Theater seating for 60 &amp; Classroom
          seating for 40 (for maintainers and users)<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Includes:<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Morning Break for
          2 days<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Buffet Lunch for 2
          days<o:p></o:p></p>
        <p class="MsoNormal" style="text-indent:.5in">Beer &amp; Wine
          Reception with light appetizers for 1 day<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">The goal for the second day of the summit
          is to build and bring the community together. We are
          interested to hear your opinions and ideas on how that day and
          those rooms should be used for. Please send your ideas to
          Andreea Volosincu and Philip Balister.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">We will call out an Advocacy meeting in a
          couple of weeks to go over plans and vote on the ideas for the
          second day of the summit.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks!<o:p></o:p></p>
        <p class="MsoNormal">Andreea<o:p></o:p></p>
        <p class="MsoNormal">Yocto Project Advocacy Lead<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------A21224785152B0D41808E776--
