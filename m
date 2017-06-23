Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E08E00BBF; Fri, 23 Jun 2017 01:18:35 -0700 (PDT)
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
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2004BE00B9D
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 01:18:32 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id m47so4554023iti.0
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 01:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=PSsv8/4tS/WjiJCpZp1iCc7LTetasvI8B9K0JSa0asU=;
	b=hMJK6RAlyqglVIHmzgNMA0OSmpn4J70SB7JSfyqkw8cOlu/I0jGFLTyolqnifabz0G
	M6557Y34AjaMSMLsQdzNqYG/kDuVxcuzDrfIG0ZhgzfvzRM8z7hrpfa23X39tjTObsSL
	6wGuBIVML7uAzOQWaKYAN++L+S6YwEypOMfO8Lw1Job+SHhQhKNqyJo6qu1die0rsIkL
	FA6W850urkI3Q1Vp6P6TDHFO2v0T/vfJSjs+RQFV28Eq/L8KEVVXbGYF5rPpWlRs/0mo
	6urgiMzMd6w2mR212XqsHySVzyPuL/oeQoXaMMg+braii5loDg3OUppYX9lSv0oZeWhq
	tGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=PSsv8/4tS/WjiJCpZp1iCc7LTetasvI8B9K0JSa0asU=;
	b=d1TAS/J4Jp7R0OhbsjY+gvgjjnKC+AOYPtpMPGVdJ38rbOJX3PqthjS2KLw8/eKls0
	NluPdT/9nLmlp5C6BSX3B9KMEW4YlzJVWRVm/dX955ho9EH6FUA9kVOFcHA0ZVIOH1yy
	PxcHnqyTGFkHu3xaavU6GG4KAJaIiauZLZ13PJscJH8/J1NusksXYHdvC0C34HwEs30r
	n3kipZ95YcTIVXwEAdGbfSkqg8dRDjd1VUxO2fG13xrarmH6g4Cp+XhjEU72SWXa6nFS
	+UUqneQptHQq9Lk9ryYW3aPiFgPdMTKcnagDzlQjz4cUi9RP9aibXUqX7CZeN+nLt4A4
	r9iw==
X-Gm-Message-State: AKS2vOyn3jjoFBNCNTgI9129IRUBYipxA+WXR77emYcTnwW6Wt81qbCj
	zmijJqFIM5P/nLv/
X-Received: by 10.36.249.74 with SMTP id l71mr6125574ith.13.1498205911252;
	Fri, 23 Jun 2017 01:18:31 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77]) by smtp.gmail.com with ESMTPSA id
	g98sm2580543ioj.45.2017.06.23.01.18.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 01:18:30 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
Date: Fri, 23 Jun 2017 16:18:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: internet radio
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
X-List-Received-Date: Fri, 23 Jun 2017 08:18:36 -0000
Content-Type: multipart/alternative;
	boundary="------------ADCB672FB4DB2CFB0BFEAFE0"
Content-Language: en-US

--------------ADCB672FB4DB2CFB0BFEAFE0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello everyone,

What do you suggest me using for internet radio / playing multimedia on 
GUI ? Which recipe is suitable for it ?

Thanks

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------ADCB672FB4DB2CFB0BFEAFE0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello everyone,</p>
    <p>What do you suggest me using for internet radio / playing
      multimedia on GUI ? Which recipe is suitable for it ?</p>
    <p>Thanks<br>
    </p>
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

--------------ADCB672FB4DB2CFB0BFEAFE0--
