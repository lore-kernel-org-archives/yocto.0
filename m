Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3896CE00C1B; Wed,  5 Dec 2018 14:48:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B42FE00C09
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 14:47:59 -0800 (PST)
Received: by mail-pf1-f195.google.com with SMTP id y126so10735640pfb.4
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 14:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=GG4nQKPdvlYKysjKG+RoKMYimwDZhmFN4c7jggl9DRE=;
	b=MmkAAWnwxN9Xk2/h5fW2wJGLlOv5QmZhgJa+iYZiDUi+YZYs+hUFbM/n85mc6w+QLr
	HE0qlGcSOxW3eUsHq9QRK+H2TFqhasi/mAks2NWflKZfrDSVRPiIeKs45yvfJaY9Op0m
	ajmkinBIzpKlOREVDju682bsxFBnm8zIJ6LBAd2EiXrQ2jBXd2A5yCs1/Os7HYDjeJJn
	I0d7p2GffNMads5g27oFxewTlLYy4K4vBDGu3apiA+ZihSoix25H2ejL4GwapXH1qhxm
	dT5nV/ClB3UUu4rIlYTfL2olDz6Nyvd+aXElNY7g5sdTnkxiH8VQ3A925xJHgmn06qab
	5n0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=GG4nQKPdvlYKysjKG+RoKMYimwDZhmFN4c7jggl9DRE=;
	b=AigWZ/lG/J6BRUWgJbmXwi6phlswkqrgBARg7OAsS9dhjGyefK0xFWvqXEuAdNKkPd
	H9e7EjVWYwEI92WFXjboMHSXrqzwqf8sv+brB1WeI1x6zHp+u86ohvjwbT8Rb+i4KGON
	2KTVJW0Dk7dzomeWhs6Gdj5jjoZ5l2IpNOm9JtmnIfF0Uw8ujw1CQOESC6fHkaqW8p0k
	QDp9dsJGBTSR+Ue3HJPBWStajXKYYecYMgTzTKbKqHTGqz2OF145lPUuDe6I5cA9xNiJ
	yObOrnRei+nZZ2ekWgjxIg9I7FBP/Zwzv11QfeCwnu8erklFQ7DCM73OL2OHvOeNFNRF
	pNAg==
X-Gm-Message-State: AA+aEWZHc0HzQnIAMvctCzLV7p9KHdNWEG+JZuiNbITucW6M+zvPQvZi
	EWi+ideIY5e7R1OEpnXtj47+d4ss
X-Google-Smtp-Source: AFSGD/Wt/wQLWoW3BrgEc81llKgzVijuKeB2xOr96rcQzu5R398P7/7e5Q6pPQb7tj80PsYt+YoITw==
X-Received: by 2002:a63:5f95:: with SMTP id
	t143mr22262344pgb.395.1544050078362; 
	Wed, 05 Dec 2018 14:47:58 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:c581:7922:30ab:3279?
	([2601:202:4180:c33:c581:7922:30ab:3279])
	by smtp.gmail.com with ESMTPSA id
	s2sm35264956pfa.167.2018.12.05.14.47.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Dec 2018 14:47:57 -0800 (PST)
To: Joshua Watt <jpewhacker@gmail.com>, John Unland <unlandj2012@gmail.com>
References: <CAODQEo1qPsWW1apiEwzgey8cJitsbODDdg2VK4Bmi3s8wLV83A@mail.gmail.com>
	<60a92b2f51dc9156466abc8f89c8fa9d34f8cf3b.camel@gmail.com>
	<CAODQEo1o+YF_HcDrks_-yEY+7xQ-dvX8znSLDzm_Eam_1ztmFw@mail.gmail.com>
	<CAJdd5GY+2KJBohDOwhqngJ_GfoOtvrTJX+w_HeP0eLpH0ytBTw@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <c636736a-80ea-333c-229f-a1b93d932225@gmail.com>
Date: Wed, 5 Dec 2018 14:47:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAJdd5GY+2KJBohDOwhqngJ_GfoOtvrTJX+w_HeP0eLpH0ytBTw@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using ICECC to build Thud issue
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
X-List-Received-Date: Wed, 05 Dec 2018 22:48:00 -0000
Content-Type: multipart/alternative;
	boundary="------------D66CAFCBA05D8CCA5693E0E1"
Content-Language: en-US

--------------D66CAFCBA05D8CCA5693E0E1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 12/5/18 1:21 PM, Joshua Watt wrote:
>
>
> On Wed, Dec 5, 2018, 3:09 PM John Unland <unlandj2012@gmail.com
> <mailto:unlandj2012@gmail.com> wrote:
>
>         Fixed on master:
>         https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1da297d35411e923ca3b6accdd37074f5182f019
>         https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca
>
>         They should probably be backported to thud.
>
>
>     Glad it wasn't anything on the config end par say, would this be a
>     candidate to log a bug for?
>
>
> CC'ing Armi
its in stable/thud-nmut

thanks
-a rmin
>
> It wouldn't hurt to make a bug for the backport.

>
>
>
>     Thanks!
>


--------------D66CAFCBA05D8CCA5693E0E1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/5/18 1:21 PM, Joshua Watt wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJdd5GY+2KJBohDOwhqngJ_GfoOtvrTJX+w_HeP0eLpH0ytBTw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="auto">
        <div><br>
          <br>
          <div class="gmail_quote">
            <div dir="ltr">On Wed, Dec 5, 2018, 3:09 PM John Unland &lt;<a
                href="mailto:unlandj2012@gmail.com" rel="noreferrer
                noreferrer" target="_blank" moz-do-not-send="true">unlandj2012@gmail.com</a>
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div dir="ltr">
                <div dir="ltr">
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div>Fixed on master:</div>
                    <div><a
href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1da297d35411e923ca3b6accdd37074f5182f019"
                        rel="noreferrer noreferrer noreferrer"
                        target="_blank" moz-do-not-send="true">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1da297d35411e923ca3b6accdd37074f5182f019</a></div>
                    <div><a
href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca"
                        rel="noreferrer noreferrer noreferrer"
                        target="_blank" moz-do-not-send="true">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca</a></div>
                    <div><br>
                    </div>
                    <div>They should probably be backported to thud.</div>
                  </blockquote>
                  <div><br>
                  </div>
                  <div>Glad it wasn't anything on the config end par
                    say, would this be a candidate to log a bug for? <br>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">CC'ing Armi</div>
      </div>
    </blockquote>
    <div dir="auto">
      <div dir="auto">its in stable/thud-nmut<br>
        <br>
        thanks<br>
        -a rmin<br>
      </div>
    </div>
    <blockquote type="cite"
cite="mid:CAJdd5GY+2KJBohDOwhqngJ_GfoOtvrTJX+w_HeP0eLpH0ytBTw@mail.gmail.com">
      <div dir="auto">
        <div dir="auto"><br>
        </div>
        <div dir="auto">It wouldn't hurt to make a bug for the backport.</div>
      </div>
    </blockquote>
    <br>
    <blockquote type="cite"
cite="mid:CAJdd5GY+2KJBohDOwhqngJ_GfoOtvrTJX+w_HeP0eLpH0ytBTw@mail.gmail.com">
      <div dir="auto">
        <div dir="auto"><br>
        </div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div dir="ltr">
                <div dir="ltr">
                  <div><br>
                  </div>
                  <div>Thanks!<br>
                  </div>
                </div>
                <div dir="ltr"><br>
                </div>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------D66CAFCBA05D8CCA5693E0E1--
