Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F710E00BD6; Fri, 23 Jun 2017 21:58:47 -0700 (PDT)
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
	*      [74.125.83.49 listed in list.dnswl.org]
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAA1DE00B28
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 21:58:40 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id f127so28687183pgc.0
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 21:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=PUOQiBB7zDu5Qh16i6BffjWauNjaOXKZD3p0r1ChFmo=;
	b=As/LubtFDrrjUg3QDg4mx+Z7JRZelTA9CvZE9nNNlrRJyBnaVUt0CRfF0DIemr0zTm
	EJW4u+hRza8+CGdJukOCvZVLTDbK6n0+fMJ2tgaXmY+z0jcaH0yg5kxLTUleym9sZnj6
	BFhX9QuAAKph+aJmtwftUkcH4PZMe33NA2Rice2paxLCEToFKWQP3Ma9RI3mO+CPRKfa
	Hg56NTdSuafa/vAY+nLa2asauFu72ELe0X1RtMhyr0fRjhrVXswbnG1gNuZFIzQo5NVj
	N6mPZ9xGshZMDw3n9Rbf5V/7igE40AmtjiC9DGrn4dgUL/TKNITbMUDqKlP9bjv8J5K8
	4LgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=PUOQiBB7zDu5Qh16i6BffjWauNjaOXKZD3p0r1ChFmo=;
	b=TwFOkkXQLWHozuHPyw2K3iLg87IlKGCkxX5qhgnwAQbzNvlWBA0XY83H/6NKiJeJy1
	zV1NZJKbDCMSYaxpNdQDZP3xteFSgvzsm3BgUqyrhqRC/Y/GzrevKYX5BzBKXFD7AzS3
	6MEiytpU+Q4tyxt949UqjRJwWtOnRWw4AH9Xmny6UrZDOWF9FG4oJCy5Do3oKXLOm0aR
	GQCubSh77R88+5FZlXraUXxACppnQfxHjd+8u8SYRuPu0cWUie8J1GMo522U7x0gOhbQ
	kaWUEMm0Eq14ZLWAiAtxEWyDmxhR/wLbZAmmQEZVy8EsfoeNkdy4zGiml62GndVJKA9N
	Nupw==
X-Gm-Message-State: AKS2vOxZfwZoAWc3m/S+YfRz6nc3/JM+xUvxQ/Z1MHjJX2NYDgkuumJm
	snjrmYEP16CvPFv6
X-Received: by 10.99.66.193 with SMTP id p184mr3868882pga.253.1498280319423;
	Fri, 23 Jun 2017 21:58:39 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77]) by smtp.gmail.com with ESMTPSA id
	m11sm13158208pfg.85.2017.06.23.21.58.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 21:58:38 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <4a5385b6-9c10-fb25-3b9d-bb6d87ce9ea2@gmail.com>
Date: Sat, 24 Jun 2017 12:58:35 +0800
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
X-List-Received-Date: Sat, 24 Jun 2017 04:58:47 -0000
Content-Type: multipart/alternative;
	boundary="------------8498E0CB9B47E4BD8C5874C6"
Content-Language: en-US

--------------8498E0CB9B47E4BD8C5874C6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

This one ?

http://layers.openembedded.org/layerindex/branch/master/layer/meta-multimedia/


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

--------------8498E0CB9B47E4BD8C5874C6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>This one ?</p>
    <p><a class="moz-txt-link-freetext" href="http://layers.openembedded.org/layerindex/branch/master/layer/meta-multimedia/">http://layers.openembedded.org/layerindex/branch/master/layer/meta-multimedia/</a><br>
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

--------------8498E0CB9B47E4BD8C5874C6--
