Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0949E00D4D; Tue, 14 May 2019 08:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C6ACE0097C
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 08:09:47 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id g9so9280202pfo.11
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 08:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=yeTUEDgry14rb2cvaPSFpRuZEhYhyqGtv7uk4yGKBnw=;
	b=GnhleoSH9/YVSiwIxkNf9euoFwK5K0zozoAWQhLW0aLTUrn5yiODAkmg2GUPF+H+Ry
	HkcVKzFrsm0ps+Ykh8Jaewfd8aRLffArMVmDIX65YJgbjwZm/UJJkrpir03iX7pDvJqj
	oH6F7RXyU1bhspninxDDrjn12TPNNUFQXTZSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=yeTUEDgry14rb2cvaPSFpRuZEhYhyqGtv7uk4yGKBnw=;
	b=WYVmNi4BfGaITvjdecq/c00OjEh0fAqclMGLETHA5MGOirzYr2Cv7R9MDPXN1UEITB
	hwayHPxYA3umoUA6qFhCAECnXT5j/aRg0LlRj5I1x+ehVWJ35lfkEsQQLLQd+IAhF4JO
	GnSucba31bP95I+KKN+EB8/vA4G68p6al7SCD2dfJNExzTQ+9HZywTJXu/l4FtZA4Lfg
	dMHuoTgWHKoNvVZgnvL+A9Hx7Uk6N50zxuZRxzBWjvBEEN9Az6UsxvzZOiW/HS/VswT2
	r6SIORh6hN/HAy4p2PGBl89vP4F/I2ujSqCVEwoiu1nSg+2B6TdNu14Jai2ePmmAlRS4
	o6cA==
X-Gm-Message-State: APjAAAX6FuX+6t74y//cNrrwohh5yFgl7M2TRPwYq0X8AEPOaOq5sNZT
	3uGwH/eq6Cds0TFVSIEwSRFDQw==
X-Google-Smtp-Source: APXvYqyQEpY4025W8nu4/kZYgEsue53U1zgIuVlps0MRhmQt7BtZIBgGJ2L7oiPweV0/2mnfWC0h8w==
X-Received: by 2002:a63:4710:: with SMTP id u16mr27318805pga.447.1557846586196;
	Tue, 14 May 2019 08:09:46 -0700 (PDT)
Received: from [10.0.0.244] (c-67-189-24-112.hsd1.or.comcast.net.
	[67.189.24.112]) by smtp.gmail.com with ESMTPSA id
	d186sm22019519pfd.183.2019.05.14.08.09.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 May 2019 08:09:45 -0700 (PDT)
To: akuster808 <akuster808@gmail.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
References: <CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com>
	<0ac93492-e1a3-a0df-35bb-d639ed718bb3@gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mhalstead@linuxfoundation.org; prefer-encrypt=mutual; keydata=
	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
	6RA=
Organization: Linux Foundation
Message-ID: <767321ce-fc78-2f15-1c3c-b3d5d6240378@linuxfoundation.org>
Date: Tue, 14 May 2019 08:09:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <0ac93492-e1a3-a0df-35bb-d639ed718bb3@gmail.com>
Subject: Re: [yocto-infrastructure] Upcoming network outage: Fri, May 17 starting 10PM PDT (Sat, 5:00Z)
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
X-List-Received-Date: Tue, 14 May 2019 15:09:47 -0000
Content-Type: multipart/alternative;
	boundary="------------77C07EAA1D757DFC22C2AF71"
Content-Language: en-US

--------------77C07EAA1D757DFC22C2AF71
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


On 5/11/19 1:59 PM, akuster808 wrote:
>
>
> On 5/10/19 4:21 PM, Michael Halstead wrote:
>> What: 30-minute network outage to Portland-hosted services
>> When: Fri, May 17, between 10PM-3AM PDT (Sat, 05:00-10:00 UTC)
>> Why : Network equipment replacement by our service provider
>>
>> Services Impacted:  autobuilder.yoctoproject.org
>> <http://autobuilder.yoctoproject.org>, downloads.yoctoproject.org
>> <http://downloads.yoctoproject.org>, sstate.yoctoproject.org
>> <http://sstate.yoctoproject.org>
>>
>> Our Portland hosting provider needs to replace some of their main 
>> network equipment, which will require rerunning some cables. They are 
>> asking us to prepare for up to a 30-minute network outage between the 
>> hours listed above in order to complete this work.
>
> Thanks for the heads up.
>
> Is there a time on Sat that if things are not back to normal that we
> should contact you? I hope and don't expect you to be working @ 3am.


Please ping if services are un-available after 7am on Saturday. That's
when I'm planning to check in on my alerts.


>
> regards,
> Armin
>>
>> -- 
>> Michael Halstead
>> Linux Foundation / SysAdmin
>>
>>
>
-- 
Michael Halstead
Linux Foundation / SysAdmin


--------------77C07EAA1D757DFC22C2AF71
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/11/19 1:59 PM, akuster808 wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0ac93492-e1a3-a0df-35bb-d639ed718bb3@gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <br>
      <br>
      <div class="moz-cite-prefix">On 5/10/19 4:21 PM, Michael Halstead
        wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com">
        <meta http-equiv="content-type" content="text/html;
          charset=UTF-8">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div dir="ltr">
                  <div>What: 30-minute network outage to Portland-hosted
                    services</div>
                  <div>When: Fri, May 17, between 10PM-3AM PDT (Sat,
                    05:00-10:00 UTC)</div>
                  <div>Why : Network equipment replacement by our
                    service provider</div>
                  <div><br>
                  </div>
                  <div>Services Impacted:  <a
                      href="http://autobuilder.yoctoproject.org"
                      moz-do-not-send="true">autobuilder.yoctoproject.org</a>,
                    <a href="http://downloads.yoctoproject.org"
                      moz-do-not-send="true">downloads.yoctoproject.org</a>,
                    <a href="http://sstate.yoctoproject.org"
                      moz-do-not-send="true">sstate.yoctoproject.org</a></div>
                  <div><br>
                  </div>
                  <div>
                    <div>Our Portland hosting provider needs to replace
                      some of their main </div>
                    <div>network equipment, which will require rerunning
                      some cables. They are </div>
                    <div>asking us to prepare for up to a 30-minute
                      network outage between the </div>
                    <div>hours listed above in order to complete this
                      work.</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </blockquote>
      <br>
      Thanks for the heads up.<br>
      <br>
      Is there a time on Sat that if things are not back to normal that
      we should contact you? I hope and don't expect you to be working @
      3am.<br>
    </blockquote>
    <p><br>
    </p>
    <p>Please ping if services are un-available after 7am on Saturday.
      That's when I'm planning to check in on my alerts.<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:0ac93492-e1a3-a0df-35bb-d639ed718bb3@gmail.com"> <br>
      regards,<br>
      Armin<br>
      <blockquote type="cite"
cite="mid:CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div dir="ltr">
                  <div><br>
                  </div>
                  <div>-- </div>
                  <div>Michael Halstead</div>
                  <div>
                    <div>Linux Foundation / SysAdmin</div>
                  </div>
                  <div><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
      <br>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Michael Halstead
Linux Foundation / SysAdmin
</pre>
  </body>
</html>

--------------77C07EAA1D757DFC22C2AF71--
