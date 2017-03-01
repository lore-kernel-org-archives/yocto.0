Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93413E008D0; Wed,  1 Mar 2017 12:15:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9B1E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 12:15:25 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id b129so23703915pgc.2
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 12:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=KhwpuOH8akHgwmq79CvlGhSfe+YyO74gKEhleHTRqHo=;
	b=jw6MG4kORgoAoBG4of2AfF/9q6BeXsWTJSuNX6iEfIeMTNYCiBgYwH+EYur28i6ok2
	vTBmTcZZ+pBcWEfnKd75pL/tLPt6VrotRJSzlrykxym5Gxt4M4QSPlnTiuyV+t+3HooL
	Y0+qJSJIfOe29ggQGZfPimtrc0+ms9motxcAkELww3M+xovoZCghRO7F1StHOXPFxZYn
	8f0mBZf4qeYPEgNp7lPbwGt2oXdz7H7LHDMGMSvXsklacT5JSs3YDO9Uq9SB4awfimAh
	L8iAsoKChx0VPcq/224NvacobJD/tw3aNdLqiDZHDDAU7UkYF8Gm31e7UrfO8X5w4GUI
	RRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=KhwpuOH8akHgwmq79CvlGhSfe+YyO74gKEhleHTRqHo=;
	b=Rg8M3v2n8UL+xMvhSNObde8MjUfy2KoB2NEC9+6C1Dfbh4aQ1Ys89iHYjq9v03w58V
	D8HzqAFlAL+pAp5CE8uY+uYZmocyN2keP6M1se0Pkw4sMxHquFIzLbIPFw8jH81Frf67
	1NENhVZnptDBPVQOCkHNePDx6oR08gFtOObn+L9oaYoP0369Jj4YrEVsh0QAsS37EPUm
	esAsNkj9QEp8mfIb2HwDqvubX6xTFzPnAwK2NRyxSCuOYg+zeelLXOp7TgzrxIgU34cz
	feXm3/xuKS60ShK4YafoGWyd+gmReDJyE6Y0SWdUaP9T4dKBgd0qJxfmrrcejwsP2pOR
	gAwg==
X-Gm-Message-State: AMke39mhum8T/2tT59VV8NsrN3EBdxRS4jfviCIKJir+uUm3S57pTi3zp6VZnZa48RjuQwId
X-Received: by 10.99.147.68 with SMTP id w4mr10866686pgm.32.1488399325376;
	Wed, 01 Mar 2017 12:15:25 -0800 (PST)
Received: from [192.168.1.13] (99-0-9-164.lightspeed.frokca.sbcglobal.net.
	[99.0.9.164]) by smtp.gmail.com with ESMTPSA id
	g64sm12243803pfc.57.2017.03.01.12.15.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Mar 2017 12:15:24 -0800 (PST)
To: chris warth <cswarth@gmail.com>, yocto@yoctoproject.org
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Message-ID: <b6c806a0-1196-4e70-9b1f-12fee1c7ef5f@mvista.com>
Date: Wed, 1 Mar 2017 12:15:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Wed, 01 Mar 2017 20:15:27 -0000
Content-Type: multipart/alternative;
	boundary="------------C70D64A3DB2171DC97770358"

--------------C70D64A3DB2171DC97770358
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 3/1/2017 12:06 PM, chris warth wrote:
> Can anyone suggest why my BBMASK is not working?
> Maybe I'm not putting it into the right file?
> Did I construct the regex incorrectly?
>
> In my conf/bblayers.conf I have,
>
>      BBMASK .= "qemu"

This basically concatenates qemu to what ever is already in BBMASK. It 
is a regex expression so you want to treat it as such.
You want to likely do something like:
BBMASK .= "|(qemu)"

OTOH, qemu matches anythin with qemu in the path. You likely want to use 
the full filename:
BBMASK .= "|(qemu_qoriq.bb <http://qemu_qoriq.bb>)"


>
> Then I wipe out the cache by deleting the "tmp/" directory.
>
> Now I would expect
>     bitbake -n -c fetch qemu
> to give a 'Nothing PROVIDES' error.
>
> That is not what happens.   Instead it still completes normally.
>
> I am trying to ignore recipes like
>      meta-freescale/recipes-devtools/qemu/qemu_qoriq.bb 
> <http://qemu_qoriq.bb>
>
> Thanks in advance for any help.
>
> - Chris
>
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------C70D64A3DB2171DC97770358
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/1/2017 12:06 PM, chris warth
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com"
      type="cite">
      <div dir="ltr">Can anyone suggest why my BBMASK is not working?<br>
        Maybe I'm not putting it into the right file?<br>
        Did I construct the regex incorrectly?<br>
        <br>
        <div>In my conf/bblayers.conf I have,<br>
          <br>
               BBMASK .= "qemu"<br>
        </div>
      </div>
    </blockquote>
    <br>
    This basically concatenates qemu to what ever is already in BBMASK.
    It is a regex expression so you want to treat it as such.<br>
    You want to likely do something like:<br>
    BBMASK .= "|(qemu)"<br>
    <br>
    OTOH, qemu matches anythin with qemu in the path. You likely want to
    use the full filename:<br>
    BBMASK .= "|(<a moz-do-not-send="true" href="http://qemu_qoriq.bb">qemu_qoriq.bb</a>)"<br>
    <br>
    <br>
    <blockquote
cite="mid:CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
          Then I wipe out the cache by deleting the "tmp/" directory.<br>
          <br>
          Now I would expect<br>
              bitbake -n -c fetch qemu<br>
          to give a 'Nothing PROVIDES' error.<br>
          <br>
          That is not what happens.   Instead it still completes
          normally.<br>
          <br>
          I am trying to ignore recipes like <br>
               meta-freescale/recipes-devtools/qemu/<a
            moz-do-not-send="true" href="http://qemu_qoriq.bb">qemu_qoriq.bb</a><br>
        </div>
        <div><br>
        </div>
        <div>Thanks in advance for any help.</div>
        <div><br>
        </div>
        <div>- Chris</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a>
</pre>
  </body>
</html>

--------------C70D64A3DB2171DC97770358--
