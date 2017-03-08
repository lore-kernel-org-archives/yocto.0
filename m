Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CBEBE007AA; Wed,  8 Mar 2017 09:24:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C21E0030B
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 09:24:14 -0800 (PST)
Received: by mail-wr0-f169.google.com with SMTP id u108so28161665wrb.3
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 09:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=cq0PKhTVfIb4jR8zqnrEdiSwqmDiAiIYlUGAzmPZ7jU=;
	b=OgRcEHz2379ryTt8mF3fH4xIfaaJ2xHNdetFSZWkz+H2VI8cD73xjsXyHr3CSkSSaf
	qvifMwaQVr0y3YiOHsnjRtECUVk0w7EaVum5aEQt0pfGE36VEoDAxzR9OAE4ArcftJfV
	7Bz0M0Q9Vou9a5lEJg0zx4An7x/EGVpNcpa50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=cq0PKhTVfIb4jR8zqnrEdiSwqmDiAiIYlUGAzmPZ7jU=;
	b=TQPmYdYLwPvWpNyMj/rEfpnS5Mo254K0wPWM4uarTPqTquvyCqOSS4l56X05FlI7Mc
	3oEJuBYJ21ka+Y4ttChfZOyxE3MkPYmD3iTj+3xVkOet8J/hav0Z9j4yPVDK17DM5Nvm
	rwkxG25GOlYieINVN36AvslLhKyQdnRH7B+v+j5C07OJv0Wpp+f8kfybNViwL/tKpFoS
	u48nKKElRoaIrwfJoud6PcYpvPa/TjQd20nSEBIsqhhKn4Ew4nYC+DNwTGRk2KbPM4ld
	Nm6NJMHpgm9p9pK4fLSquEx/nI0/FTgpTbjaYQRzHgD/eh8HpIgDD4ZPd2p30hUebTtn
	QepA==
X-Gm-Message-State: AMke39k0evt9wtCrSE9uaY8WmlWa+KqKlpkMZOzWCZTvntpMPOZni62TUVIuaY9gFAffOQ==
X-Received: by 10.223.167.66 with SMTP id e2mr6322257wrd.48.1488993853386;
	Wed, 08 Mar 2017 09:24:13 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-205-71.w2-13.abo.wanadoo.fr.
	[2.13.232.71])
	by smtp.gmail.com with ESMTPSA id e72sm5555651wma.5.2017.03.08.09.24.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 09:24:12 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
	<CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
	<CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
	<CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <74195435-cd89-3ad8-1f01-9357175b78dd@fridu.net>
Date: Wed, 8 Mar 2017 18:24:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 17:24:15 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Ross,<br>
      <br>
      as now the recipe is called because I have declared that I wanted
      to use vaapi.<br>
      It seems to call fo gst-plugins-bad.<br>
      <br>
      There is obviously quite a few problem with that recipe.<br>
      <br>
      Regards.<br>
      <br>
      Dominig<br>
    </font><br>
    <div class="moz-cite-prefix">Le 08/03/2017 à 16:38, Burton, Ross a
      écrit :<br>
    </div>
    <blockquote
cite="mid:CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 8 March 2017 at 15:10, Dominig Ar
            Foll <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:dominig.arfoll@fridu.net" target="_blank">dominig.arfoll@fridu.net</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex"><font
                size="-1">yes, I now that I build the latest.<br>
                I am checking in advance of phase what will break in
                Automotive Grade Linux (AGL) when 2.3 is coming out of
                the wood.<br>
              </font></blockquote>
          </div>
          <br>
          When 2.3 is released it won't be using the git gst-plugins-bad
          recipe by default either.  I'll fix the recipe, but the git
          recipes are prone to breakage as they're not that tested.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">(this is why I want to remove them)</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

