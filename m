Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71AF2E00750; Tue, 24 Feb 2015 13:45:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5516DE00477
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 13:45:57 -0800 (PST)
Received: by wevk48 with SMTP id k48so28014588wev.0
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 13:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=Igkk7DiIgJKyhCml3YqvcxKevidrLCr+Q20is2XgoL8=;
	b=arHQZ3ykyzeeSwJ7XQsoKYzqc6XKP/nVEP8VCUfMf7vWQtG8rO43igibnlLTBK75eH
	XPd9HkKAFWrm9GCClBaHUaa3Q8DRI66CgN9QRCeOYNo3/0hzSYyCstElw9I5VWsT8/Cw
	gRxU2/tnHnkjfinfQ74n8xUDWh4EmDqvmtnNPaot90Ks5zScCC0vAIs7WyCdsN4XqO41
	Sp2Lkx7njc0R27g4+vrEqpaS87SFyp2le61sWgmVPEkVp2VcOSU5KZjJpqxmulenSSQo
	Fyk/5NBJW8sFvtX5i0YctjzVtZEzYRpRJQufUB+jRWbtsatpMI7+TDgL106xtmHgrHAq
	fwZQ==
X-Received: by 10.194.8.2 with SMTP id n2mr82129wja.46.1424814357173;
	Tue, 24 Feb 2015 13:45:57 -0800 (PST)
Received: from [192.168.23.113]
	(HSI-KBW-149-172-9-244.hsi13.kabel-badenwuerttemberg.de.
	[149.172.9.244]) by mx.google.com with ESMTPSA id
	cf12sm61954975wjb.10.2015.02.24.13.45.56 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Feb 2015 13:45:56 -0800 (PST)
Message-ID: <54ECF114.8060203@gmail.com>
Date: Tue, 24 Feb 2015 22:45:56 +0100
From: Christian Ege <k4230r6@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54ECE7FD.4070503@mlbassoc.com>
In-Reply-To: <54ECE7FD.4070503@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Pi-2 support?
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
X-List-Received-Date: Tue, 24 Feb 2015 21:45:59 -0000
Content-Type: multipart/alternative;
	boundary="------------090606050409080002000303"

--------------090606050409080002000303
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Am 24.02.2015 um 22:07 schrieb Gary Thomas:
> Any ideas when this layer might support the new Pi-2?
> Is anyone working on it?
>
Andrei Gherzan already sended some Patches to this ML
http://comments.gmane.org/gmane.linux.embedded.yocto.general/23265

It looks like those are already merged:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=54c5451a04a2b6601ca729038780d4e4eb69437e

regards,
Christian



--------------090606050409080002000303
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Am 24.02.2015 um 22:07 schrieb Gary
      Thomas:<br>
    </div>
    <blockquote cite="mid:54ECE7FD.4070503@mlbassoc.com" type="cite">Any
      ideas when this layer might support the new Pi-2?
      <br>
      Is anyone working on it?
      <br>
      <br>
    </blockquote>
    <meta http-equiv="content-type" content="text/html;
      charset=windows-1252">
    Andrei Gherzan already sended some Patches to this ML<br>
    <a class="moz-txt-link-freetext" href="http://comments.gmane.org/gmane.linux.embedded.yocto.general/23265">http://comments.gmane.org/gmane.linux.embedded.yocto.general/23265</a><br>
    <br>
    It looks like those are already merged:<br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=54c5451a04a2b6601ca729038780d4e4eb69437e">http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=54c5451a04a2b6601ca729038780d4e4eb69437e</a><br>
    <br>
    regards,<br>
    Christian<br>
    <br>
    <br>
  </body>
</html>

--------------090606050409080002000303--
