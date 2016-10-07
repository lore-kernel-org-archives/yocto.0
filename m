Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 310E1E00C31; Fri,  7 Oct 2016 01:39:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C759DE00A64
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 01:39:40 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id b201so22248567wmb.0
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 01:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=iJntypCSW++8LTn4Y0eZN7d3bInJtPBqU4A+hILfBU4=;
	b=N+LjOnx260B3K3C54Zrd23HJUXVL2gXhvF0M3MDU7r9/c8e8Dg/fyfVJpfhWt/t7vD
	al91k/0igScinLEZ2iaAtAHPDBu/L6m6NR0h5Zo/B7mGJhJmlSfImyzXtv/3SC2u+9Se
	l8Kxkve4Hu/ABlFXagA9+xHRCdnA9/ysq6m/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=iJntypCSW++8LTn4Y0eZN7d3bInJtPBqU4A+hILfBU4=;
	b=h2qU4dg0CySzIs0EEs8mWzoVYExP++JbStjXApZYM42F3I9oUZRC/cU2us971tCb4x
	hOBQyz1wV5xvbNEdORS4n9IynZ+V2G03OnHSLPl4PmP/vpsLQ/eSH+qghF1jBWF0p8ql
	qx7oDBzRjR41GIXYNTN3P3dyv4YptPy9v9aj+FfzQTlsCZaPg47/lUGs2P4jlZ/wMIeN
	5I24CCtGDLd3Xd73djQ9UrMzuH9G4RJBaOaCHsHfzFbr9fmvCQOMicNVoK6BnC1GFzw1
	TQ7CoRdULYbjWtQfshUTzTP+Twp65ouI3pAlsUvjjrow3Lve0G87Lhi4smSuHMBE+Hxa
	OTUg==
X-Gm-Message-State: AA6/9Rlsa/MQOuJqNsHbn54NngHLACdoJqLIO/UljaX1R4Dm0M17o966sFcwv74y7S1enQ==
X-Received: by 10.28.32.198 with SMTP id g189mr26032488wmg.130.1475829579455; 
	Fri, 07 Oct 2016 01:39:39 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-188-142.w2-14.abo.wanadoo.fr.
	[2.14.91.142]) by smtp.gmail.com with ESMTPSA id
	u72sm1875783wmu.10.2016.10.07.01.39.38 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Oct 2016 01:39:38 -0700 (PDT)
To: yocto@yoctoproject.org
References: <098d3839-cbc0-d22b-67c0-48f15179e453@fridu.net>
	<CAMKF1soaF3FowAOv7hRPiU+H3u_4SjYRtUhz0w+cZ89WSxhU7w@mail.gmail.com>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <13a915a2-18e2-544a-b542-321b2af3ab2a@fridu.net>
Date: Fri, 7 Oct 2016 10:39:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1soaF3FowAOv7hRPiU+H3u_4SjYRtUhz0w+cZ89WSxhU7w@mail.gmail.com>
Subject: Re: which meta-intel woudl build a kernel 4.8 (solved)
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
X-List-Received-Date: Fri, 07 Oct 2016 08:39:43 -0000
Content-Type: multipart/alternative;
	boundary="------------00CAB77832C44E67549428CF"

--------------00CAB77832C44E67549428CF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



Le 06/10/2016 à 20:19, Khem Raj a écrit :
>
> Use poky or oe-core master with master of meta-intel is best shot
>
>
thanks updating as well to 'master' my oe-core and poky has fixed that
issue.

-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre


--------------00CAB77832C44E67549428CF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">Le 06/10/2016 à 20:19, Khem Raj a
      écrit :<br>
    </div>
    <blockquote
cite="mid:CAMKF1soaF3FowAOv7hRPiU+H3u_4SjYRtUhz0w+cZ89WSxhU7w@mail.gmail.com"
      type="cite">
      <p dir="ltr">Use poky or oe-core master with master of meta-intel
        is best shot</p>
      <div class="gmail_extra"><br>
      </div>
    </blockquote>
    thanks updating as well to 'master' my oe-core and poky has fixed
    that issue.<br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

--------------00CAB77832C44E67549428CF--
