Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF49BE00BDA; Fri, 23 Jun 2017 22:00:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A990E00B28
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 22:00:44 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id 132so28725234pgb.2
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 22:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=t8s8SjYllRDPLG+qOlevhDsvq1xWXF58pcfEkmWK0NM=;
	b=LK4PtDEos6n70cC+W4XKC7DQYRxVy/ao9/0c+RMncGbx9WMPDtippPOVjfLzNlZBAK
	IxttWGZte4+j3e74SleyqqL0ZLPOgEZzVfFUF7tXVWqIk4PbbkZATVO3IX0NR6nG6C+0
	hzoDo5j5wnrF1AjNkTACahfWe7riGGQvsw+jB7Lalr+W7pcBv/HGpsAcU4BBQMp03ejG
	yL4YpW+ycciZ6AYoFXvBqCKNPIW1hisQEn/Lu7TsK/osZx4XrEfBP1eHNHCGTATDgfAh
	ywV+WCXfuoyUCJRCFzOZAp3eC0LubP+z0bHepZdwoG1TBQqBFAeNXMDOZIIvxpFzMqJR
	nu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=t8s8SjYllRDPLG+qOlevhDsvq1xWXF58pcfEkmWK0NM=;
	b=ni6ohg2zWGySBI/7pfBkZGP7OVePVdLN2abRVCAKk820dTnT6j02xecmZLd3ddiGsa
	tmPqLD6vhtz0bHssezAeQ0BIOvYLul6ojHqKXarFiNWCKWX7156exIuc04gxW6lNxXLA
	hse5Lp0YkqlKMUkgWud/M8mIMBlL+gRRcj5Jtbu/hfYbRhpNJkPBs7KM2wdQ3avHFeAE
	wIjPz1tVLi6eXRtS9IBu7mjpwgz0mo6usb/eFsP2Xrjybe6GJMpsPX85NIqa7HlP3Orl
	6vI+QrS3b1PIYehF6EQ65/g8WqcxW2tahmx/Hud6pURH0EToqOd2HKH5peGgb1ERy9IK
	/SJQ==
X-Gm-Message-State: AKS2vOyrWSKSXQ/BblyzSX0iB/2ZQY3+nQXJ/1mOvVaxpR6H5rH8Brd8
	wLNxEJlrVcJD2sCW
X-Received: by 10.98.101.6 with SMTP id z6mr11732043pfb.221.1498280444070;
	Fri, 23 Jun 2017 22:00:44 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77]) by smtp.gmail.com with ESMTPSA id
	x64sm13575416pfk.20.2017.06.23.22.00.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 22:00:43 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <945b9940-8544-d53d-1628-c12c778c8124@gmail.com>
Date: Sat, 24 Jun 2017 13:00:40 +0800
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
X-List-Received-Date: Sat, 24 Jun 2017 05:00:46 -0000
Content-Type: multipart/alternative;
	boundary="------------37A5A7759FAAEB4472539BA0"
Content-Language: en-US

--------------37A5A7759FAAEB4472539BA0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

and this one ?

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-multimedia/mplayer

is it gui or text based ?


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
谢谢,
Regards,
Riko Ho
/*******/

*

--------------37A5A7759FAAEB4472539BA0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>and this one ?</p>
    <p><a class="moz-txt-link-freetext" href="http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-multimedia/mplayer">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-multimedia/mplayer</a></p>
    <p>is it gui or text based ?<br>
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
          谢谢,<br>
          Regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------37A5A7759FAAEB4472539BA0--
