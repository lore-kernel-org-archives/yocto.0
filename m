Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40698E00A84; Mon,  6 May 2019 09:21:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8DA0E00A7D
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 09:21:36 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id cb4so2693703plb.3
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 09:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=bCDOg7IxN5utIp4mF5Oo/8bXkV5M/cO4jb3IUfLvP6Y=;
	b=P2nS89vkS5Okgo2sKqdhw7xKCYqwC17QnmXMNFWggH4BnXhc3a0rmtNerrQePeVmtt
	FNyG/JbAHkHo3hyOPmQzOpY/DDL1nOeNbXEaab8X/N7rYGdag5HpJaiLZj7cuhQRdTJ3
	VNJWts3A4BTeoj9tn2aPDhLoVhYKUEb19/WoRvPW1YWg8rGkJYiO0faQ9nAxtzHpBm0C
	FfSLCm/KwcYkaHDAnEmQiuYRh6jiaFDxMZW+oKBBwWres//FZK7pHoJQc+2EsvAQvn86
	VqpXyAGclNuhMQrvef+OEgO1OJEcb8iAFWOxm4JNCg3nDCeiky9WcdVT+DxF9L1iA/q/
	RddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=bCDOg7IxN5utIp4mF5Oo/8bXkV5M/cO4jb3IUfLvP6Y=;
	b=qNRqUe56o1vqfQuSHrCs+hoBqeQb7hwe0j60sCnSZEl5JAWtkbTknTz/DKsBX35Lzv
	mXygpPef0Y/YoblCK6/x/F1J0l3FCCPWhTXRoYCO7pSEXBAoAc06AtIG1cp8ppyPQmuF
	TXGxgaOhSvRS20dD2NMzq/Jpzfge5w3d/o3bz93JOLZ4ce+4ULy0X2mgs0rrKZUsQ/IV
	fKXDoR+BT3ACLFWfzLubPraBy4SipeSujatSF06+N+8LOvk23kVL+kIfYVpqbNvEX0ss
	/LfWRxcOjk5QrN5iPzuMgohJZS+XCRnoO+ThM5rHUYh9jiXD8lFPL4RfGY2XFCVIYJc7
	HkUg==
X-Gm-Message-State: APjAAAWeACaDzWOj9GSkus7cnmayfTLFlH9qnXZRfsEifllxHxOaBHeH
	PZjuJENKzSCAxqvz6ZccefiHhzCimcU=
X-Google-Smtp-Source: APXvYqzEuYvD0id5GXOBFTcPStn/NkiYjq4euLQN5NbIuSp57rAl5HdZ/BkM4pR0AZ0uPjs8IWqyng==
X-Received: by 2002:a17:902:1621:: with SMTP id
	g30mr33069966plg.168.1557159695678; 
	Mon, 06 May 2019 09:21:35 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:a075:ef6e:4687:c7df?
	([2601:202:4180:c33:a075:ef6e:4687:c7df])
	by smtp.gmail.com with ESMTPSA id
	g128sm15067614pfb.131.2019.05.06.09.21.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 May 2019 09:21:33 -0700 (PDT)
To: Joshua Watt <jpewhacker@gmail.com>,
	"Volosincu, Andreea S" <andreea.volosincu@windriver.com>,
	"yocto-advocacy@yoctoproject.org" <yocto-advocacy@yoctoproject.org>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <b612267d-31b2-1a91-274c-6d04ae275cf5@mvista.com>
Date: Mon, 6 May 2019 09:21:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com>
Subject: Re: Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Mon, 06 May 2019 16:21:42 -0000
Content-Type: multipart/alternative;
	boundary="------------936A015970A8D91BD54B9BAE"
Content-Language: en-US

--------------936A015970A8D91BD54B9BAE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 5/6/19 8:06 AM, Joshua Watt wrote:
> On Fri, 2019-05-03 at 18:01 +0000, Volosincu, Andreea S wrote:
>>
>> Greetings,
>>
>>  
>>
>> Yocto Project is pleased to announce the plans for the upcoming
>> Embedded Linux Conferences in NA and Europe.
>>
>>  
>>
>> Here is a snapshot of our schedule:
>>
>>  
>>
>> ELC NA – Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfront,
>> San Diego, CA
>>
>>                    Yocto Project is a sponsor. We’ll see you on the
>> show floor
>>
>>  
>>
>> ELC NA Dev Day – Tuesday, August 20, 2019 - 8:00AM - 6:00PM
>>
>> Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
>>
>> Level: Intermediate – Advanced. Participants will receive beginner
>> material (videos and presentations) as pre-requisites
>>
>> Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with
>> light appetizers
>>
>
> Is there any registration cost for this event, and how does one register?
For the training portion there normally has been. I am sure the details
will be provided once things are setup.

- armin
>
>>  
>>
>> ELCE – Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon, France
>>
>>               Yocto Project is a sponsor. We’ll see you on the show floor
>>
>>  
>>
>> ELCE Yocto Project Summit – Dates & Times:
>>
>> Thursday, October 31, 2019 - 8:00AM - 6:00PM
>>
>>                November 1, 2019 - 8:00 am - 6:00PM
>>
>> Set-up:
>>
>> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
>>
>> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 &
>> Classroom seating for 40 (for maintainers and users)
>>
>> Includes:
>>
>> Morning Break for 2 days
>>
>> Buffet Lunch for 2 days
>>
>> Beer & Wine Reception with light appetizers for 1 day
>>
>> The goal for the second day of the summit is to build and bring the
>> community together. We are interested to hear your opinions and ideas
>> on how that day and those rooms should be used for. Please send your
>> ideas to Andreea Volosincu and Philip Balister.
>>
>>  
>>
>> We will call out an Advocacy meeting in a couple of weeks to go over
>> plans and vote on the ideas for the second day of the summit.
>>
>>  
>>
>> Thanks!
>>
>> Andreea
>>
>> Yocto Project Advocacy Lead
>>
> -- 
> Joshua Watt <JPEWhacker@gmail.com <mailto:JPEWhacker@gmail.com>>
>


--------------936A015970A8D91BD54B9BAE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 5/6/19 8:06 AM, Joshua Watt wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
      <div>On Fri, 2019-05-03 at 18:01 +0000, Volosincu, Andreea S
        wrote:</div>
      <blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px
        #729fcf solid;padding-left:1ex">
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
          <p class="MsoNormal">ELC NA Dev Day – Tuesday, August 20, 2019
            - 8:00AM - 6:00PM<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Set-up: 1
            Meeting Room - Classroom Seating ( 60 people)<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Level:
            Intermediate – Advanced. Participants will receive beginner
            material (videos and presentations) as pre-requisites<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Includes:
            Morning Break, Buffet Lunch, Beer &amp; Wine Reception with
            light appetizers</p>
        </div>
      </blockquote>
      <div><br>
      </div>
      <div>Is there any registration cost for this event, and how does
        one register?</div>
    </blockquote>
    For the training portion there normally has been. I am sure the
    details will be provided once things are setup.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com">
      <div><br>
      </div>
      <blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px
        #729fcf solid;padding-left:1ex">
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
          <p class="MsoNormal" style="text-indent:.5in">Thursday,
            October 31, 2019 - 8:00AM - 6:00PM
            <o:p></o:p></p>
          <p class="MsoNormal">               November 1, 2019 - 8:00 am
            - 6:00PM<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Set-up: <o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Day 1: 1 Meeting
            Room - Theater Seating for 100 for Yocto Project talks<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Day 2: 2 Meeting
            Rooms - Mixed Classroom/Theater seating for 60 &amp;
            Classroom seating for 40 (for maintainers and users)<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Includes:<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Morning Break
            for 2 days<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Buffet Lunch for
            2 days<o:p></o:p></p>
          <p class="MsoNormal" style="text-indent:.5in">Beer &amp; Wine
            Reception with light appetizers for 1 day<o:p></o:p></p>
          <p class="MsoNormal"><o:p></o:p></p>
          <p class="MsoNormal">The goal for the second day of the summit
            is to build and bring the community together. We are
            interested to hear your opinions and ideas on how that day
            and those rooms should be used for. Please send your ideas
            to Andreea Volosincu and Philip Balister.<o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal">We will call out an Advocacy meeting in a
            couple of weeks to go over plans and vote on the ideas for
            the second day of the summit.<o:p></o:p></p>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal">Thanks!<o:p></o:p></p>
          <p class="MsoNormal">Andreea<o:p></o:p></p>
          <p class="MsoNormal">Yocto Project Advocacy Lead<o:p></o:p></p>
        </div>
      </blockquote>
      <div><span>
          <pre>-- 
</pre>
          Joshua Watt &lt;<a href="mailto:JPEWhacker@gmail.com"
            moz-do-not-send="true">JPEWhacker@gmail.com</a>&gt;</span></div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------936A015970A8D91BD54B9BAE--
