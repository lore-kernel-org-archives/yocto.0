Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B952E00C5C; Mon,  3 Jul 2017 13:13:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE1A3E00C37
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 13:13:10 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id s66so104545090pfs.1
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 13:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=Ro44RooRlCLjBLgcRDU6EA+K5V//cjOttcA514YpiAc=;
	b=Qnwna6/7qTxKKfYL8lFAygBwz/hnWsV41bhjUO40//zTCCsOCy5ziBOooJmTd0f745
	NHEnjzYWkUm8lUkLmW+TZNGQP9rpFHTmHtCgy7Rzd3+jobFUZbfJr/yY/FpVxaM4JT8P
	bHbqvY+NgZlceItN/CSRurwRo0WpkFFcIx29SVTfeBo0VsEyQ/hsc+ZCC+SDOLkF/DAP
	IQigq1x0e6NN9xKBB7kqzXlL5B6SSQTJeqgQD6qsk+UsYp6HpIdhC2VFkJvbaoFb9SNX
	XYIcc0ik6gHy9pYiWHwWkCauh+m4J1SmERfK45gGzVlGhmAMUWoOWjRDYXePTUSNKo4d
	4udA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Ro44RooRlCLjBLgcRDU6EA+K5V//cjOttcA514YpiAc=;
	b=Zb606z8uEHiTGuffgCdX9wEntfP9ImFzN0WZ4edLK5+a6usZ/BAemah80BkpApEJwz
	Vf2g26h+JpBBZArV72eos0QZTqFDOoS5ITaAOiXHu1siS6R5ZU0DVztrH6RT+cKwKE0M
	f/3I0AEjARAkEsNIPZ3IN5OlWGla/XPDrO4Zt9EBZk7jUc7ddM6+Ga4j4z745lbWKngJ
	DTsIb96Cr1BqX6ldRMKrm6nfhh+V3CBqgWuRfb305c4Qf9f/O7LpqigrOLVD0XTSdrK5
	5PpHvZd7KUa+rGaF9libJjeuuWsXWBX9Dngjjqos7v4yAHaYFxtNtXHg/Xfsk2keoKXE
	2ZEQ==
X-Gm-Message-State: AIVw111zYizA03BhR1gk61er+ZMaj/oPGOMtYvIAH5eTND4cjGmGkR6H
	jyZr7YdeUmqeP4ryrE4=
X-Received: by 10.84.225.4 with SMTP id t4mr12664314plj.274.1499112789602;
	Mon, 03 Jul 2017 13:13:09 -0700 (PDT)
Received: from Khems-MacBook-Pro.local
	([2601:646:8882:b8c:5dc7:f159:402c:707c])
	by smtp.gmail.com with ESMTPSA id
	s7sm30528330pgb.53.2017.07.03.13.13.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jul 2017 13:13:08 -0700 (PDT)
To: Prasoon Kumar <prasoonkumar1295@gmail.com>, yocto@yoctoproject.org
References: <CAGAEfx5_j17h=PGTKC4WT_qi+gUEqQU9E_w_7vzRE_0OPasuow@mail.gmail.com>
	<CAGAEfx4B_sEGMb-ie+Ti9JZzQ_COf8VF+9FdptsKNwvzLqscxQ@mail.gmail.com>
	<CAGAEfx7gZt_JSdmTwWi7H5C8_9Lu8y3MvHaFdW163VRveqdfZw@mail.gmail.com>
	<CAGAEfx5M6tzcfFxhHy-gY52Bm-eu6=ExTc-h=b1D_epTD45Ozw@mail.gmail.com>
	<CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <cc436872-9b62-ae76-a119-f3627beed148@gmail.com>
Date: Mon, 3 Jul 2017 13:13:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
Subject: Re: How to make changes and build u-boot source code in yocto
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
X-List-Received-Date: Mon, 03 Jul 2017 20:13:14 -0000
Content-Type: multipart/alternative;
	boundary="------------0AD7E02D616D5EAAA8FA400B"
Content-Language: en-US

--------------0AD7E02D616D5EAAA8FA400B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 7/2/17 11:26 PM, Prasoon Kumar wrote:
> Hi,
>
> I am trying to make some changes in u-boot code and using bitbake 
> u-boot to build. But it doesn't build.
> I also tried bitbake u-boot -c compile and bitbake u-boot deploy. This 
> also didn't work.
>
> Can I Get some help on how to change and build u-boot.

you should share more information about errors for someone to 
effectively help you.

>
> Thanks,
> Prasoon
>
>


--------------0AD7E02D616D5EAAA8FA400B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 7/2/17 11:26 PM, Prasoon Kumar
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com">
      <div dir="auto">Hi,
        <div dir="auto"><br>
        </div>
        <div dir="auto">I am trying to make some changes in u-boot code
          and using bitbake u-boot to build. But it doesn't build.</div>
        <div dir="auto">I also tried bitbake u-boot -c compile and
          bitbake u-boot deploy. This also didn't work.</div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Can I Get some help on how to change and build
          u-boot. <br>
        </div>
      </div>
    </blockquote>
    <br>
    you should share more information about errors for someone to
    effectively help you.<br>
    <br>
    <blockquote type="cite"
cite="mid:CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com">
      <div dir="auto">
        <div dir="auto"><br>
        </div>
        <div dir="auto">Thanks,</div>
        <div dir="auto">Prasoon</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------0AD7E02D616D5EAAA8FA400B--
