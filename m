Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BBD6E00924; Thu,  2 Mar 2017 08:41:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77AC0E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:41:57 -0800 (PST)
Received: by mail-wr0-f172.google.com with SMTP id u108so56581310wrb.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:references:to:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=NBDUwvfNXTqE7Tz/hKI18ACJlPJb7n3U0wRJ/UwJS2w=;
	b=JaBIPATw9Ltmkzea7MMH6lLBzV+V/kJfKcVrF9xeud+MkwxkMHV9AAEl78GW8rdvDe
	uXFUSRs7wjasOY30DZgcFgUhBzayvmhOBx7ZRZexXJL2BpZuIJMSsY6cGb8YbM7JybaC
	nSjiFAYbfveWzMcjrT4GIrJMrU2uzlexCea3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:references:to:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=NBDUwvfNXTqE7Tz/hKI18ACJlPJb7n3U0wRJ/UwJS2w=;
	b=N2PCsGO2OFzhQnyU66pTvksEarmpKP2kKFVZDtd+TmbV8fjiyNbc5Q78uTYwYoZ4pR
	vQJaCBfJZg2XDuKScVNZqsG7FHO/fe0SYHVYwHlBmzrNtTghlwhLY3LBgIeOF/jqJEj3
	xLqlyToYamlPaJK59gBmAIzuuQglshK0QYyBR2s0OQAtt1fmpB/qGHNdyNVavwaOV2fB
	fUnWq0t+YnqERnaLqC1J6wjZtYdP3ntf7iiP2c50lbhsRqIrbzqt3CaKnI80guQeMmri
	M1iMgYbrOYnpX0e8ksi6X8J7uBrRATkX8HtIF+c22R0ydSVnq4dTfCjomrwnm9l1KRP2
	mRGw==
X-Gm-Message-State: AMke39ncrp4V6fmg0EZPEzf3mK/bxVt0+UeebCF4OqZW8pKhJepc/fK5ztIHjepnT6Jisw==
X-Received: by 10.223.169.1 with SMTP id u1mr13299110wrc.53.1488472916562;
	Thu, 02 Mar 2017 08:41:56 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-68-26.w2-12.abo.wanadoo.fr.
	[2.12.195.26]) by smtp.gmail.com with ESMTPSA id
	o2sm11837454wmb.28.2017.03.02.08.41.55 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Mar 2017 08:41:55 -0800 (PST)
References: <ba80e4dc-87af-327e-4f92-00c2f09d3e35@fridu.net>
	<1488471551.7785.242.camel@intel.com>
To: yocto@yoctoproject.org
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <8092f731-dea8-a5b4-92fd-13214f481ef4@fridu.net>
Date: Thu, 2 Mar 2017 17:41:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1488471551.7785.242.camel@intel.com>
Subject: Re: Error with Cynara pkg_postinst when updating AGL to from morty master (solved)
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
X-List-Received-Date: Thu, 02 Mar 2017 16:41:59 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Patrick,<br>
      <br>
      thanks for the trick. I is a good one.<br>
      <br>
      Dominig<br>
    </font><br>
    <div class="moz-cite-prefix">Le 02/03/2017 à 17:19, Patrick Ohly a
      écrit :<br>
    </div>
    <blockquote cite="mid:1488471551.7785.242.camel@intel.com"
      type="cite">
      <pre wrap="">On Thu, 2017-03-02 at 16:33 +0100, Dominig ar Foll (Intel Open Source)
wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello,

I am trying to move AGL from morty to master in order to get a stock
Kernel 3.9.
I have moved meta-intel, poky and open embedded to master branches.

I am blocked on an error that I do not understand in th pkg_postinst
section.
the error code is: AttributeError: 'module' object has no attribute
'getVar'

As the only getVar is happening  in the Version setting
VERSION=${@bb.data.getVar('PV',d,1).split('+git')[0]}
I wonder if something has hanged in bb.data but I could not find
anything obvious.
</pre>
      </blockquote>
      <pre wrap="">
bb.data.getVar() has been deprecated for a while and was finally
removed. Use d.getVar('PV') instead on master (no additional parameters
needed, expansion is on by default).

</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

