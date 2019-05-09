Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4014E00D5F; Thu,  9 May 2019 08:38:54 -0700 (PDT)
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
	*      [209.85.210.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5860FE00963
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 08:38:53 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id s11so1504320pfm.12
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 08:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=u0TWwCiGYNx5sfNpkWU4UNBNGnEwb2ArI23hBHfHbcQ=;
	b=CSv1nrudIau5p+8FvXihAGDjkyYWWyhjbhX5b9eYxMpnB4ovp15WQTg/0aoDvvTNDA
	EUma1QWhC92L/gx3nFLzf0Bw0LJewF8cK9P+AyD+KulLUK0wbM3GImdoGeNUzB60z75S
	3+IMhVO/T1KUj84xluaOdm92bgI0F/Bd24WBtQjNqsAI03EStWJpUvgHWeH4qtPb6KlU
	tk+lMfKMtfkdo76bY2iALqELSEihF7t+zKaziARxD+/U5Y/Bw7reDfSxSIL0HxSqX32J
	nDesKYbdyc8v48Ph0HbdDDGLh7BVb4s2zS5cuGeqd95oSVCz6gnp4mZNKmrm8QJTClG1
	L9HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=u0TWwCiGYNx5sfNpkWU4UNBNGnEwb2ArI23hBHfHbcQ=;
	b=KSdKokPqdW+mY9C8RstMwQk2LwJVDcVl0AmR6xz6KLuIueXeGN6O9avE+iGubYnJ3U
	hwNX1DMKdZZEa4NT3LMnKx3zkquxbsUyQM4nNlkFuwJbUQMdL3RJ+OqXf2+m07Mbs5/w
	0G4dw0mCIIpSBgyYst66HnBVyto8cQEhkNwS5cdlljPFYPfbZ9TBEgonclcVglLs4twk
	rSbSDN1vkWyLXVjXwl+aT84b+N7CsvyIU/HfNzKOEJahhsYdh+D/MlYxJsfmy3Wl0nul
	hzNJ6A5plZlTSU8M7oNUVLnSRM1wGePv/ClpPzzz/Dv/LrqN5/Bm9oV89tueAXtSbPnT
	sYIg==
X-Gm-Message-State: APjAAAXyf3NlfZ+bwIq594XyhD1qCzRstA325avWfPKFaMEyZaVAr/UT
	/NKMiPR34/+1GhH/fvAUYvAIbQ==
X-Google-Smtp-Source: APXvYqxkZOe4ZuElIy7H6W2l4ZghBfiSorpcB1xpUFu0L2MP5JF1HjKjfelZakEDdnVBhD2OtyklVg==
X-Received: by 2002:a65:4489:: with SMTP id l9mr6254138pgq.1.1557416332487;
	Thu, 09 May 2019 08:38:52 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	d15sm8210996pgf.22.2019.05.09.08.38.51
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 May 2019 08:38:51 -0700 (PDT)
To: Behan Webster <behanw@converseincode.com>,
	Bas Mevissen <abuse@basmevissen.nl>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<96fa4aec-9557-9d7f-bff3-82f8db56e9cd@mvista.com>
	<A084970538D2234B96D99D06FA9D974FC378C879@ALA-MBD.corp.ad.wrs.com>
	<0980DABF-86C8-4A9D-8687-B9C27EE2FF61@converseincode.com>
	<A084970538D2234B96D99D06FA9D974FC378DD57@ALA-MBD.corp.ad.wrs.com>
	<2D39B7E1-DC52-42A6-8332-50ED49F77722@converseincode.com>
	<20190506104502.e4tvj5w4i4og4ski@jholzmayr.localdomain>
	<c3cbc64b-f7ea-f2d3-32ae-7a94b8693713@emcodev.nl>
	<E403FC4D-C557-4637-B3A1-D2C895621DB6@converseincode.com>
	<713dbad763c226b6c44d691e764f7ef8@basmevissen.nl>
	<AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <e0bc55f6-eb24-9391-e47d-f2072638ffd9@ibeeto.com>
Date: Thu, 9 May 2019 08:38:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	yocto-advocacy@yoctoproject.org
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
X-List-Received-Date: Thu, 09 May 2019 15:38:54 -0000
Content-Type: multipart/alternative;
	boundary="------------46CB8CABD1269B6B0D56CBD6"
Content-Language: en-US

--------------46CB8CABD1269B6B0D56CBD6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Chiming in here

On 5/7/19 11:18 AM, Behan Webster wrote:
>> On May 7, 2019, at 2:47 AM, Bas Mevissen <abuse@basmevissen.nl 
>> <mailto:abuse@basmevissen.nl>> wrote:
>>
>> On 2019-05-07 07:20, Behan Webster wrote:
>>
>>> > On May 6, 2019, at 8:36 AM, Bas Mevissen <bas@emcodev.nl 
>>> <mailto:bas@emcodev.nl>> wrote:
>>> > On 5/6/19 12:45 PM, Josef Holzmayr wrote:
>>> > I'd actually word it a little bit differently:
>>> > If there is only *ONE* attendee who did not properly do the 
>>> homework, it
>>> > will have a massive impact an the rest of the group. And that somebody
>>> > will show up unpreparedly is absolutely certain in my opinion.
>>> > With sufficient trainers, one can continue for most and provide 
>>> some assistance to the one falling behind.
>>
>>> Usually more than one. And this is generally very disruptive to the 
>>> class as a whole.
>>
There are always people who are prepared to the T and others who just 
casually stroll into the class. We all know that as we all went through 
various stages of schooling. :) No matter what you do, there always will 
be a glitch. I tried it all from course preparation instructions, shell 
scripts setting up systems, USB sticks and network drives with downloads 
and shared state cache, virtual machine images, build systems set up in 
the cloud, you name it. If it is not somebody who is unprepared it is a 
technical issue: lack of disk space, network connectivity, corporate 
computers that do not allow USB sticks,... Instructors just have to deal 
with it.
>>> >> As someone who actually got started through the YPDD beginner 
>>> track (and
>>> >> also often recommends it to new beginners), my opinion is clearly 
>>> that
>>> >> we either should have it, be it only for a handful of attendees, or
>>> >> offer a *real* replacement, with face to face training. My 
>>> experience is
>>> >> that this personal thing in the very beginning is an absolutely
>>> >> essential part of many YP/OE careers.
>>> >
>>> > I agree. That is how I started, next to a compressed Linux 
>>> Foundation Yocto training that was offered just before the event then.
>>
>>> Yes. By me and my colleagues who train for the Linux Foundation.
>>
>>> > So it might be wise to ask LF or get something organised. It would 
>>> mostly require a room and a sponsor for some small devkit.
>>
>>> We've run the beginner track for the last few years. The discussion 
>>> is precisely that the YP event is proposing to not run the beginner 
>>> track this year at all.
>>
>> But why? There appears to be a constant demand.
>
> An excellent question. I agree with you. I don’t have an answer 
> however. Not my decision.
>
I certainly would advocate to have the beginner track. It's a good way 
of getting people interested, and eventually excited, for the Yocto 
Project. Conferences and dev days are an opportunity to do advertising 
and to grow the community. We cannot do that just by catering to people 
who are already using YP. We need new folks as we are already running 
into issues where things have to be dropped because there is nobody who 
is maintaining it.


>>> We're happy to do it again if given the space.
>>
>> Yes, both for LF and YP it are off-the-shelf trainings that do not 
>> require much preperation.
>
> Speaking as a course maintainer for LF, keeping the YP course updated 
> is actually a tremendous amount of work (I’m the co-maintainer for the 
> LF YP course).
>
> However, the beginner slides tend not to need more than a few hours of 
> updates every 6 months (which again is something I do).
>
> Either may appear off-the-shelf, but they aren’t from my perspective. ;)

I can wholeheartedly second that. I developed the original YP class of 
the LF and taught it many times and have since developed my own class 
material teaching classes. While the basic concept of course remains the 
same it is the little details that change. With every new version of the 
YP a course maintainer has to go through every single exercise and 
example in the course material and try it out again to see if it still 
works. And quite frankly, sometimes it is rather silly things that have 
changed and break something.

In particular for a beginner class lasting one day only, every single 
disruption sets the class back and there is no opportunity to recover 
from it. The day is already packed just to cover the core concepts.

Cheers,
Rudi


>
> Thanks,
>
> Behan
>
-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------46CB8CABD1269B6B0D56CBD6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Chiming in here<br>
    </p>
    <div class="moz-cite-prefix">On 5/7/19 11:18 AM, Behan Webster
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div>
        <blockquote type="cite" class="">
          <div class="">On May 7, 2019, at 2:47 AM, Bas Mevissen &lt;<a
              href="mailto:abuse@basmevissen.nl" class=""
              moz-do-not-send="true">abuse@basmevissen.nl</a>&gt; wrote:</div>
          <br class="Apple-interchange-newline">
          <div class=""><span style="caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class="">On 2019-05-07 07:20, Behan Webster
              wrote:</span><br style="caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">&gt; On May 6, 2019, at 8:36 AM, Bas Mevissen
              &lt;<a href="mailto:bas@emcodev.nl" class=""
                moz-do-not-send="true">bas@emcodev.nl</a>&gt; wrote:<br
                class="">
              &gt; On 5/6/19 12:45 PM, Josef Holzmayr wrote:<br class="">
              &gt; I'd actually word it a little bit differently:<br
                class="">
              &gt; If there is only *ONE* attendee who did not properly
              do the homework, it<br class="">
              &gt; will have a massive impact an the rest of the group.
              And that somebody<br class="">
              &gt; will show up unpreparedly is absolutely certain in my
              opinion.<br class="">
              &gt; With sufficient trainers, one can continue for most
              and provide some assistance to the one falling behind.<br
                class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">Usually more than one. And this is generally very
              disruptive to the class as a whole.<br class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
          </div>
        </blockquote>
      </div>
    </blockquote>
    There are always people who are prepared to the T and others who
    just casually stroll into the class. We all know that as we all went
    through various stages of schooling. :) No matter what you do, there
    always will be a glitch. I tried it all from course preparation
    instructions, shell scripts setting up systems, USB sticks and
    network drives with downloads and shared state cache, virtual
    machine images, build systems set up in the cloud, you name it. If
    it is not somebody who is unprepared it is a technical issue: lack
    of disk space, network connectivity, corporate computers that do not
    allow USB sticks,... Instructors just have to deal with it.<br>
    <blockquote type="cite"
      cite="mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com">
      <div>
        <blockquote type="cite" class="">
          <div class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">&gt;&gt; As someone who actually got started
              through the YPDD beginner track (and<br class="">
              &gt;&gt; also often recommends it to new beginners), my
              opinion is clearly that<br class="">
              &gt;&gt; we either should have it, be it only for a
              handful of attendees, or<br class="">
              &gt;&gt; offer a *real* replacement, with face to face
              training. My experience is<br class="">
              &gt;&gt; that this personal thing in the very beginning is
              an absolutely<br class="">
              &gt;&gt; essential part of many YP/OE careers.<br class="">
              &gt;<br class="">
              &gt; I agree. That is how I started, next to a compressed
              Linux Foundation Yocto training that was offered just
              before the event then.<br class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">Yes. By me and my colleagues who train for the
              Linux Foundation.<br class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">&gt; So it might be wise to ask LF or get
              something organised. It would mostly require a room and a
              sponsor for some small devkit.<br class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">We've run the beginner track for the last few
              years. The discussion is precisely that the YP event is
              proposing to not run the beginner track this year at all.<br
                class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class="">But why? There appears to be a
              constant demand.</span><br style="caret-color: rgb(0, 0,
              0); font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
          </div>
        </blockquote>
        <div><br class="">
        </div>
        <div>An excellent question. I agree with you. I don’t have an
          answer however. Not my decision.</div>
        <br class="">
      </div>
    </blockquote>
    <p>I certainly would advocate to have the beginner track. It's a
      good way of getting people interested, and eventually excited, for
      the Yocto Project. Conferences and dev days are an opportunity to
      do advertising and to grow the community. We cannot do that just
      by catering to people who are already using YP. We need new folks
      as we are already running into issues where things have to be
      dropped because there is nobody who is maintaining it.<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com">
      <div>
        <blockquote type="cite" class="">
          <div class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">We're happy to do it again if given the space.<br
                class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class="">Yes, both for LF and YP it are
              off-the-shelf trainings that do not require much
              preperation.</span><br style="caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
          </div>
        </blockquote>
      </div>
      <br class="">
      <div class="">Speaking as a course maintainer for LF, keeping the
        YP course updated is actually a tremendous amount of work (I’m
        the co-maintainer for the LF YP course).</div>
      <div class=""><br class="">
      </div>
      <div class="">However, the beginner slides tend not to need more
        than a few hours of updates every 6 months (which again is
        something I do).</div>
      <div class=""><br class="">
      </div>
      <div class="">Either may appear off-the-shelf, but they aren’t
        from my perspective. ;)</div>
    </blockquote>
    <p>I can wholeheartedly second that. I developed the original YP
      class of the LF and taught it many times and have since developed
      my own class material teaching classes. While the basic concept of
      course remains the same it is the little details that change. With
      every new version of the YP a course maintainer has to go through
      every single exercise and example in the course material and try
      it out again to see if it still works. And quite frankly,
      sometimes it is rather silly things that have changed and break
      something.</p>
    <p>In particular for a beginner class lasting one day only, every
      single disruption sets the class back and there is no opportunity
      to recover from it. The day is already packed just to cover the
      core concepts.</p>
    <p>Cheers,<br>
      Rudi<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com">
      <div class=""><br class="">
      </div>
      <div class="">Thanks,</div>
      <div class=""><br class="">
      </div>
      <div class="">Behan</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------46CB8CABD1269B6B0D56CBD6--
