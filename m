Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 835A1E00BAB; Tue,  5 Feb 2019 13:05:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DFFFE009AA
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 13:05:12 -0800 (PST)
Received: by mail-pl1-f196.google.com with SMTP id a14so2047832plm.12
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 13:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Z4vZhFrPxY3qa7SBK3Ywpwj0E8c0WCBtrdEHx24dBmE=;
	b=va7NB26nGl20XH00kejWveW3wJsQxmDVPrf0h/nB36OoarUYMGFxWwnm8aq9iOH8/O
	6sOV2ZMy4kWmexdu9sAsWsH0TMO1EiK54omDU88LLwrbRJTzJoocIhUrPHGyv2NXvu/G
	LrydJ+njAtdwvBJcr7sxA7r+BxIz25niN2/TcGb9maaPA3hMtCzouqBkp8PSfJAe4sgx
	DtTVCznkVPkaGmMCZF94nlVNHiADu/J+uRH4GvdDunWup/g+Tn4zcoZWnzJiJbHyyrRq
	sy9uIJ1303yCfUDwsK1KfXNy8mJ/DD/Nc4566xbOGlQ2vkKK58yNUs9onMzbWpP1Sm56
	Mw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=Z4vZhFrPxY3qa7SBK3Ywpwj0E8c0WCBtrdEHx24dBmE=;
	b=VF53XP28i72dWNIDzufNacSo4W0JcACkrsBYVADtu7almXLCl9SYfcTfR/48xcCA8g
	r3NZRljp07iAzN7Cn+3oz+zKF9qG5ADQwz3RgYTVsKArvgVGS0Rce+9IHhw3EVhVdBb4
	+GtY8zD/noeex56nEqBP7SYc/9H+ULBNqMeI1j0x2WnHREVOXsdF7OdPB2D6fXUT53rb
	niJUC8T9D9ORuhNVPuV47qt3jGh9DRX1fQJDctA/gYDo7gckdcedy4X0aJ35dGjPYe8N
	xkAdS9ENMCkQax6rzMQvDVbhljCte0ZFQJuitmvku9iG8Y73WyfQ9aKa4a6EptyDwf1v
	6rYg==
X-Gm-Message-State: AHQUAuZccXxtZn49nVVQcLBB5mgfejzDYU6AjDO7w/fs4X84FYXkq2WQ
	89YiBxcDN4yyhBc65XZ8JZym3xuVghI=
X-Google-Smtp-Source: AHgI3IYxqShSBmAuGjSybjgzTvBXY29nXrzujr1WQSQ1WXrCPNQsN68+vZ7rvIVpTDIe+qi+gzLe0Q==
X-Received: by 2002:a17:902:8d94:: with SMTP id
	v20mr7085878plo.194.1549400711769; 
	Tue, 05 Feb 2019 13:05:11 -0800 (PST)
Received: from [10.20.245.5] ([45.19.219.178])
	by smtp.gmail.com with ESMTPSA id p6sm5265998pfn.53.2019.02.05.13.05.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Feb 2019 13:05:10 -0800 (PST)
To: Joshua Watt <jpewhacker@gmail.com>, Scott Rifenbark
	<srifenbark@gmail.com>, sjolley.yp.pm@gmail.com
References: <052201d4bd70$eea45180$cbecf480$@gmail.com>
	<CAFNP8Otu3jLLi9OKhZbhf+hDcuvwYW-9SUtYgSNiAQwRZMyLSA@mail.gmail.com>
	<c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <bebc8b9f-91bb-23a3-0ddd-a604f6e8b054@gmail.com>
Date: Tue, 5 Feb 2019 13:05:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com>
X-Mailman-Approved-At: Tue, 05 Feb 2019 13:31:29 -0800
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: YPTM minutes
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
X-List-Received-Date: Tue, 05 Feb 2019 21:05:13 -0000
Content-Type: multipart/alternative;
	boundary="------------667C2AC38727CCAB9EAD3348"
Content-Language: en-US

--------------667C2AC38727CCAB9EAD3348
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 2/5/19 10:24 AM, Joshua Watt wrote:
> On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:
>>
>>
>> On Tue, Feb 5, 2019 at 8:37 AM <sjolley.yp.pm@gmail.com
>> <mailto:sjolley.yp.pm@gmail.com>> wrote:
>>>
>>> *Yocto Technical Team Minutes for Feb. 5, 2019.*
>>>
>>>  
>>>
>>> Attendees: Armin, David, Joshua, Randy, Tim, Richard G., Stephen,
>>> Jan-Simon, Manjukum, Tracey, Trevor, Nick, Richard P, Mark, Kate,
>>> Michael,
>>>
>>>  
>>>
>>> YP 2.6.1 was released on Feb. 4, 2019.
>>>
>>> YP 2.7 M2 was built and is in QA and is 79% done.  See:
>>> https://wiki.yoctoproject.org/wiki/2.7_QA_Status
>>>
>>>  
>>>
>>> Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will use in
>>> for YP 2.7
>>>
>>> We discussed that the YP 2.6 manual doesn’t have an upgrading to YP
>>> 2.6.  Tracey will look into this.
>>>
>>>
>>
>> Can I get some clarification on this.  Ubuntu 18.04 seems to be an
>> LTS.  I don't have "LTS" listed in the 2.6 ref-manual
>> (https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros)
>> but do have Ubuntu 18.04 listed as a supported distro.  What is meant
>> by "... the YP 2.6 manual doesn't have an upgrading to YP 2.6."?  -
>> Thanks Scott
>
> I think there is a little confusion here. There are actually 2 issues:
>
> 1) The Yocto 2.6 manual doesn't have the "Moving to the Yocto Project
> 2.6 Release" section to describe the changes that have been made from
> 2.5 -> 2.6
> (https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving-to-the-yocto-project-2.5-release).
> Oddly, this section *is* present in the "latest" mega manual.
>
> 2) The second (unrelated) issue has to do with reporting 18.04 as a
> supported host distro. I'm not as familiar with this one, so I'll let
> someone else chime in.

This is in thud-next:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/distro/poky.conf?h=thud-next&id=263cf203bd363a6b9d58524ff5862d23c76e6390

Once I get sumo stabilized, the same will be validated and back ported.

- armin
>
>>
>>>  
>>>
>>> We discussed the status of YP 2.7 upgrades and we are doing OK
>>> there.  We are struggling on new features YP 2.7.  Richard is
>>> primarily working to stabilize the autobuilder to produce an
>>> automated QA report to allow QA to transition from Intel.
>>>
>>>  
>>>
>>> Richard discussed maintainers of OE-Core.  AUH is sending requests
>>> but not getting feedback.
>>>
>>>  
>>>
>>> Richard discussed that we have issues with some products and need
>>> support from the community to fix.
>>>
>>>  
>>>
>>> Tim discussed ptest issues Richard has identified.
>>>
>>>  
>>>
>>> Richard asked if there were ideas about how to better communicate
>>> with the community. No specific suggestions.
>>>
>>>  
>>>
>>> Thanks,
>>>
>>>  
>>>
>>> */Stephen K. Jolley/**//*
>>>
>>> *Yocto Project Project Manager*
>>>
>>> (    *Cell*:                (208) 244-4460
>>>
>>> * *Email*:              _sjolley.yp.pm@gmail.com
>>> <mailto:sjolley.yp.pm@gmail.com>_
>>>
>>>  
>>>
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto
> -- 
> Joshua Watt <JPEWhacker@gmail.com <mailto:JPEWhacker@gmail.com>>
>


--------------667C2AC38727CCAB9EAD3348
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/5/19 10:24 AM, Joshua Watt wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:</div>
      <blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px
        #729fcf solid;padding-left:1ex">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr"><br>
            </div>
            <br>
            <div class="gmail_quote">
              <div dir="ltr" class="gmail_attr">On Tue, Feb 5, 2019 at
                8:37 AM &lt;<a href="mailto:sjolley.yp.pm@gmail.com"
                  moz-do-not-send="true">sjolley.yp.pm@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote type="cite" style="margin:0 0 0 .8ex;
                border-left:2px #729fcf solid;padding-left:1ex">
                <div lang="EN-US">
                  <div class="gmail-m_-1839387213219743606WordSection1">
                    <p style="margin:0in 0in 0.0001pt"><b><span
                          style="font-family:&quot;Arial&quot;,sans-serif;color:black">Yocto
                          Technical Team Minutes for Feb. 5, 2019.</span></b></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">Attendees:
                        Armin, David, Joshua, Randy, Tim, Richard G.,
                        Stephen, Jan-Simon, Manjukum, Tracey, Trevor,
                        Nick, Richard P, Mark, Kate, Michael, </span></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">YP
                        2.6.1 was released on Feb. 4, 2019.</span></p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">YP
                        2.7 M2 was built and is in QA and is 79% done. 
                        See: </span><a
                        href="https://wiki.yoctoproject.org/wiki/2.7_QA_Status"
                        target="_blank" moz-do-not-send="true"><span
                          style="font-family:&quot;Arial&quot;,sans-serif;color:rgb(17,85,204)">https://wiki.yoctoproject.org/wiki/2.7_QA_Status</span></a></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">Armin
                        agreed to add Ubuntu 18.4 to YP 2.6 series and
                        we will use in for YP 2.7 </span></p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">We
                        discussed that the YP 2.6 manual doesn’t have an
                        upgrading to YP 2.6.  Tracey will look into
                        this.</span></p>
                  </div>
                </div>
                <br>
              </blockquote>
              <div><br>
              </div>
              <div>Can I get some clarification on this.  Ubuntu 18.04
                seems to be an LTS.  I don't have "LTS" listed in the
                2.6 ref-manual (<a
href="https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros"
                  moz-do-not-send="true">https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros</a>)
                but do have Ubuntu 18.04 listed as a supported distro. 
                What is meant by "... the YP 2.6 manual doesn't have an
                upgrading to YP 2.6."?  - Thanks Scott</div>
            </div>
          </div>
        </div>
      </blockquote>
      <div><br>
      </div>
      <div>I think there is a little confusion here. There are actually
        2 issues:</div>
      <div><br>
      </div>
      <div> 1) The Yocto 2.6 manual doesn't have the "Moving to the
        Yocto Project 2.6 Release" section to describe the changes that
        have been made from 2.5 -&gt; 2.6 (<a
href="https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving-to-the-yocto-project-2.5-release"
          moz-do-not-send="true">https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving-to-the-yocto-project-2.5-release</a>).
        Oddly, this section *is* present in the "latest" mega manual.</div>
      <div><br>
      </div>
      <div> 2) The second (unrelated) issue has to do with reporting
        18.04 as a supported host distro. I'm not as familiar with this
        one, so I'll let someone else chime in.</div>
    </blockquote>
    <br>
    This is in thud-next:<br>
    <br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/distro/poky.conf?h=thud-next&amp;id=263cf203bd363a6b9d58524ff5862d23c76e6390">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/distro/poky.conf?h=thud-next&amp;id=263cf203bd363a6b9d58524ff5862d23c76e6390</a><br>
    <br>
    Once I get sumo stabilized, the same will be validated and back
    ported.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com">
      <div><br>
      </div>
      <blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px
        #729fcf solid;padding-left:1ex">
        <div dir="ltr">
          <div dir="ltr">
            <div class="gmail_quote">
              <div> <br>
              </div>
              <blockquote type="cite" style="margin:0 0 0 .8ex;
                border-left:2px #729fcf solid;padding-left:1ex">
                <div lang="EN-US">
                  <div class="gmail-m_-1839387213219743606WordSection1">
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">We
                        discussed the status of YP 2.7 upgrades and we
                        are doing OK there.  We are struggling on new
                        features YP 2.7.  Richard is primarily working
                        to stabilize the autobuilder to produce an
                        automated QA report to allow QA to transition
                        from Intel. </span></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">Richard
                        discussed maintainers of OE-Core.  AUH is
                        sending requests but not getting feedback. </span></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">Richard
                        discussed that we have issues with some products
                        and need support from the community to fix.</span></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">Tim
                        discussed ptest issues Richard has identified.</span></p>
                    <p class="MsoNormal"> </p>
                    <p style="margin:0in 0in 0.0001pt"><span
                        style="font-family:&quot;Arial&quot;,sans-serif;color:black">Richard
                        asked if there were ideas about how to better
                        communicate with the community. No specific
                        suggestions.</span></p>
                    <p class="MsoNormal"> </p>
                    <p class="MsoNormal">Thanks,</p>
                    <p class="MsoNormal"> </p>
                    <p class="MsoNormal" style="break-after:avoid"><b><i><span
style="font-size:16pt;font-family:&quot;Times New
                            Roman&quot;,serif;color:purple">Stephen K.
                            Jolley</span></i></b><b><i><span
style="font-size:16pt;font-family:&quot;Tahoma&quot;,sans-serif;color:purple"></span></i></b></p>
                    <p class="MsoNormal"><b><span
                          style="font-size:8pt;font-family:&quot;Courier
                          New&quot;;color:blue">Yocto Project Project
                          Manager</span></b></p>
                    <p class="MsoNormal"><span
                        style="font-size:9pt;font-family:Wingdings;color:black">(</span><span
                        style="font-size:9pt;font-family:&quot;MS Sans
                        Serif&quot;,serif;color:teal">    </span><b><span
                          style="font-size:8pt;font-family:&quot;Comic
                          Sans MS&quot;;color:teal">Cell</span></b><span
                        style="font-size:9pt;font-family:&quot;MS Sans
                        Serif&quot;,serif;color:teal">:                </span><span
                        style="font-size:9pt;font-family:&quot;MS Sans
                        Serif&quot;,serif">(208) 244-4460</span><span
                        style="font-size:9pt;font-family:&quot;MS Sans
                        Serif&quot;,serif;color:black"></span></p>
                    <p class="MsoNormal"><span
                        style="font-size:9pt;font-family:Wingdings">* </span><b><span
                          style="font-size:8pt;font-family:&quot;Comic
                          Sans MS&quot;;color:teal" lang="FR">Email</span></b><span
                        style="font-size:9pt;font-family:&quot;MS Sans
                        Serif&quot;,serif;color:teal" lang="FR">:</span><span
                        style="font-size:9pt;font-family:&quot;MS Sans
                        Serif&quot;,serif" lang="FR">              <u><span
                            style="color:blue"><a
                              href="mailto:sjolley.yp.pm@gmail.com"
                              target="_blank" moz-do-not-send="true"><span
                                style="color:rgb(5,99,193)">sjolley.yp.pm@gmail.com</span></a></span></u></span><span
style="font-size:12pt;font-family:&quot;Arial&quot;,sans-serif"
                        lang="FR"></span></p>
                    <p class="MsoNormal"> </p>
                  </div>
                </div>
                -- <br>
                _______________________________________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org" target="_blank"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
              </blockquote>
            </div>
          </div>
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

--------------667C2AC38727CCAB9EAD3348--
