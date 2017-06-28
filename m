Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61C38E00BB1; Tue, 27 Jun 2017 20:11:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21070E00B97
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 20:11:20 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id t186so24923600pgb.1
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 20:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=dB1inDpBe1YDrU5Lu6i9VMtTJsW3TQcK1FzdCSAr39s=;
	b=E7axHi3hYQKXAiNH9gnfSPx3IL0XcvL/pTbrIqCnityVpXNzRXxnMxEmVyMBONoeT7
	6cTxv3xDSRRO1em5dj7zkxe0hpNRpIGQeRD6Whwew5tvCgtA7jiF81lwcEDUJK/9stAe
	nfyk2VMDMRYN6Rn7EwRRUmWyh+0Oouwlq8EqIuZYOk6xc6EXta3VJOOad8/0eDLGAZ66
	x/cMEG0exSMi2c86z/tzK8Y+mn1RjkCZOjVGUtE114xREkR2OYFR8I390b0wNuvyU+kI
	X7lV1SGcdwgGqhiOUcQA/Rd94GnHBwK9bs2CueDjibPkAqIFSBYbASvR0r2jC3pwdx7C
	82/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=dB1inDpBe1YDrU5Lu6i9VMtTJsW3TQcK1FzdCSAr39s=;
	b=W1GUnBzLnzQn/RCUC90ZvK6j89kjBSBns6rBTxXa3CGmlFTc3z+DZsV89kk0jcewVo
	oOljhDhFxDqCkdygZO9WEqgiDnjngOQy9u5zSMYwv19YdM/pDmQ5e2jv8nuPrm3A2D56
	ni2Ipy9AGbGPZDeHsnYtb+RdXh04zirPoO6hScTYMo2IfioQRpAAdIZS2Th1NEU7wokP
	xMiA7YKQ6Z6G98vF2PPTkXx/p/OY7GkQvxIQ5iAtN4Ls6TFQG1uz31ECbCRY6bZ5l0Jo
	9L7mXbEhFtz0sms6+nz6au64oeyhasgLfWw/W57J0w0qWJmIYdiGj4gw7nYLDoiLwJzf
	794g==
X-Gm-Message-State: AKS2vOw6lnYxncYOTf+hAj8gsO/Sb0AUkJMXdbECMdQPK8UjWWTixTPM
	1QysEFx78zmpd0D9
X-Received: by 10.98.152.25 with SMTP id q25mr8314484pfd.47.1498619479934;
	Tue, 27 Jun 2017 20:11:19 -0700 (PDT)
Received: from [10.0.0.1] (CPE-120-145-134-12.lnse2.pie.bigpond.net.au.
	[120.145.134.12]) by smtp.gmail.com with ESMTPSA id
	e124sm1164506pfc.76.2017.06.27.20.11.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Jun 2017 20:11:18 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <9d831060-faec-8a75-a42c-382fff4d257c@gmail.com>
Date: Wed, 28 Jun 2017 11:11:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: internet radio
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
X-List-Received-Date: Wed, 28 Jun 2017 03:11:23 -0000
Content-Type: multipart/alternative;
	boundary="------------FB0EC4CDD02FB92477FB22EF"
Content-Language: en-US

--------------FB0EC4CDD02FB92477FB22EF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

How to install mplayer on xfce ? I got no luck until now.


On 23/06/17 21:42, Khem Raj wrote:
> On Fri, Jun 23, 2017 at 1:18 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>> Hello everyone,
>>
>> What do you suggest me using for internet radio / playing multimedia on GUI
>> ? Which recipe is suitable for it ?
>>
> may be you could use mplayer or kodi
>
>> Thanks
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
>> Riko Ho
>> /*******/
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------FB0EC4CDD02FB92477FB22EF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>How to install mplayer on xfce ? I got no luck until now.<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 23/06/17 21:42, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com">
      <pre wrap="">On Fri, Jun 23, 2017 at 1:18 AM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello everyone,

What do you suggest me using for internet radio / playing multimedia on GUI
? Which recipe is suitable for it ?

</pre>
      </blockquote>
      <pre wrap="">
may be you could use mplayer or kodi

</pre>
      <blockquote type="cite">
        <pre wrap="">Thanks

--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/


--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</pre>
      </blockquote>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------FB0EC4CDD02FB92477FB22EF--
