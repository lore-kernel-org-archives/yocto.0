Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81547E00D67; Sat, 11 May 2019 14:00:08 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3AD7E00C1E;
	Sat, 11 May 2019 14:00:07 -0700 (PDT)
Received: by mail-pf1-f182.google.com with SMTP id n19so5052345pfa.1;
	Sat, 11 May 2019 14:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=bWVIyeSSFpKUoiLF6mNX31mrI9Y+ffsSJcuJUWsUgUc=;
	b=kO09aiolvT78kV2WKa6N9zhRZrbW4VWxxvkLqUIRJXorQG7qXmeernItwXV4xY1wO6
	2uRRZv2Rnkc2jiduSgDQjKvCNszTnywxvHbHEXZInmWAWR3E7/o60wAnZOyS86MdyCvU
	VNCgxxiKok4C2gaujQdeTGvemT2kEb6sKAg53yzN7dzYojO0TVSLYpDBLefSYUsmQzWp
	IKZgtmehuzyrTZwNG6+scw2+pQnfIy3Mruq98qkJKVCNokSD6HAlgEXFa/6blOcyVGOH
	gQWLyqlJInkpdEFsOR5Rsc4UlDEgUdV4df8YBAUYe5tb0hX/XzIcRTbnXDbVJa6x5O8h
	xKjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=bWVIyeSSFpKUoiLF6mNX31mrI9Y+ffsSJcuJUWsUgUc=;
	b=OjvumLAypFmceAYAWkdUQnuIJhVzwkS/4rgC7nojf5kkCHF7Pp7/33OgYLLFy+Y1+y
	mfg89w2rAMgzrsrIW9bzzH0nW1/B+T8u0f+A5EDebeInghvRRnRgtk7A2aqn+eMEPYMs
	K3w2wVmI81T6zL5cynEp9EQxcdFO/7jwVpXP95GzdBoxvLC++njT6RVVd0l5/IC0ysXR
	dCDO9W6Kuk1VMs/5dEFQH3kkKTsr1YCy5KN9CCXim2EwyLJammAutsEoD/i1KxbeUaQ4
	mVAZN2o8vJF/UZkEFSkg4tif0Vb92PqSdZSkQXBeg7TKi6eGoxI9Qgwm41qIXb7llcVX
	QhRg==
X-Gm-Message-State: APjAAAXON6UCSz8yM5o3BOzcZLdipmnlc8ccl2e3xmJm1n03wEWnP35q
	utnV/bHgAB+cz67snUTuoonX93Fg
X-Google-Smtp-Source: APXvYqyGJyYAe+pWjAL36CTIyZk59AIIKlkN8QWzofzgfc+fZeV5smO2gIwkGTlrOwXU32+PTFFraQ==
X-Received: by 2002:a62:1846:: with SMTP id 67mr5099375pfy.33.1557608407137;
	Sat, 11 May 2019 14:00:07 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:2909:a937:370d:1a54?
	([2601:202:4180:c33:2909:a937:370d:1a54])
	by smtp.gmail.com with ESMTPSA id
	r74sm16266382pfa.71.2019.05.11.14.00.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 May 2019 14:00:06 -0700 (PDT)
To: Michael Halstead <mhalstead@linuxfoundation.org>,
	Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
References: <CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <0ac93492-e1a3-a0df-35bb-d639ed718bb3@gmail.com>
Date: Sat, 11 May 2019 13:59:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com>
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
X-List-Received-Date: Sat, 11 May 2019 21:00:08 -0000
Content-Type: multipart/alternative;
	boundary="------------4B87B8AD1192B353C2F2F1A8"
Content-Language: en-US

--------------4B87B8AD1192B353C2F2F1A8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 5/10/19 4:21 PM, Michael Halstead wrote:
> What: 30-minute network outage to Portland-hosted services
> When: Fri, May 17, between 10PM-3AM PDT (Sat, 05:00-10:00 UTC)
> Why : Network equipment replacement by our service provider
>
> Services Impacted:  autobuilder.yoctoproject.org
> <http://autobuilder.yoctoproject.org>, downloads.yoctoproject.org
> <http://downloads.yoctoproject.org>, sstate.yoctoproject.org
> <http://sstate.yoctoproject.org>
>
> Our Portland hosting provider needs to replace some of their main 
> network equipment, which will require rerunning some cables. They are 
> asking us to prepare for up to a 30-minute network outage between the 
> hours listed above in order to complete this work.

Thanks for the heads up.

Is there a time on Sat that if things are not back to normal that we
should contact you? I hope and don't expect you to be working @ 3am.

regards,
Armin
>
> -- 
> Michael Halstead
> Linux Foundation / SysAdmin
>
>


--------------4B87B8AD1192B353C2F2F1A8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 5/10/19 4:21 PM, Michael Halstead
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div>What: 30-minute network outage to Portland-hosted
                  services</div>
                <div>When: Fri, May 17, between 10PM-3AM PDT (Sat,
                  05:00-10:00 UTC)</div>
                <div>Why : Network equipment replacement by our service
                  provider</div>
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
    Is there a time on Sat that if things are not back to normal that we
    should contact you? I hope and don't expect you to be working @ 3am.<br>
    <br>
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
  </body>
</html>

--------------4B87B8AD1192B353C2F2F1A8--
