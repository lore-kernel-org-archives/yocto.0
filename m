Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87866E00C45; Tue, 26 Jul 2016 08:44:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28814E00C09
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:44:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id BADB227EA64;
	Tue, 26 Jul 2016 15:34:24 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id eOejTVlcrcwh; Tue, 26 Jul 2016 15:34:04 +0000 (UTC)
Received: from [172.20.10.2] (unknown [46.188.200.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id F178E27EA5F;
	Tue, 26 Jul 2016 15:34:03 +0000 (UTC)
To: yocto@yoctoproject.org, Fabio Berton <fabio.berton@ossystems.com.br>
References: <1463062229-23247-1-git-send-email-fabio.berton@ossystems.com.br>
	<CAAPZna0T95H4PUNzpqxEU=6_bL7fNWA03jW=ZZp31w0+LjMFpg@mail.gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <96ae57d3-6a69-7cca-0d82-21bb8ee3b7aa@dynamicdevices.co.uk>
Date: Tue, 26 Jul 2016 17:34:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAAPZna0T95H4PUNzpqxEU=6_bL7fNWA03jW=ZZp31w0+LjMFpg@mail.gmail.com>
Subject: Re: [meta-mono][PATCH] mono-4.xx: Remove --disable-static from EXTRA_OECONF
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
X-List-Received-Date: Tue, 26 Jul 2016 15:44:12 -0000
Content-Type: multipart/alternative;
	boundary="------------F24CF36544AFAB4F50513F8B"

--------------F24CF36544AFAB4F50513F8B
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 27/06/2016 20:41, Fabio Berton wrote:
> Any update on this?
>
> Without this patch I can't build mono-4.4.0.148.

Hi Fabio - I've been otherwise occupied and only just seen this. I will
take a look at the patch.

Many thanks, Alex

--------------F24CF36544AFAB4F50513F8B
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 27/06/2016 20:41, Fabio Berton
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAAPZna0T95H4PUNzpqxEU=6_bL7fNWA03jW=ZZp31w0+LjMFpg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:monospace,monospace;font-size:small">Any
          update on this?<br>
          <br>
        </div>
        <div class="gmail_default"
          style="font-family:monospace,monospace;font-size:small">Without
          this patch I can't build mono-4.4.0.148.<br>
        </div>
      </div>
    </blockquote>
    <br>
    Hi Fabio - I've been otherwise occupied and only just seen this. I
    will take a look at the patch. <br>
    <br>
    Many thanks, Alex<br>
  </body>
</html>

--------------F24CF36544AFAB4F50513F8B--
