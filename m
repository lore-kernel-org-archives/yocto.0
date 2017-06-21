Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6121DE00B83; Wed, 21 Jun 2017 07:39:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C621E00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:39:36 -0700 (PDT)
Received: by mail-wr0-f172.google.com with SMTP id 77so137852091wrb.1
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=RVzuyRvC894zTcVo9OLWfgBkqrPwxgeeS2wWQkOdn9g=;
	b=TgOgraY9qJKfBAVVlH2x+E37vx+psr+q35fDzp7LEVFQ0LXgRuyVE8UALwB9rwKfhC
	D3b9AZtcIoTzlaV77WoQp3V+tn7eVX4Oj//XD6di6a9U9dTx7urbhST8dsmj1oQHh4zg
	Z53DCpXc8AY/2dXkgfGzAw8/5w986B8n5h5HQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=RVzuyRvC894zTcVo9OLWfgBkqrPwxgeeS2wWQkOdn9g=;
	b=YcKjMx7II0zzsYdv0uXb7ukvncMnfKBIqJJEo60sxeMp8ymkVJsyJKgWmRXmM0n8Li
	al9lckaWu1huhRzCPlpBfGygwoM2B1RT3HT9V1R10Z2ky7Xpd555XCoH1go+vNeRjIhQ
	DGpCx+w+L709pwuB+vOSRBxb9i6oS7XphGgUTMSr4OO3ltlS0NSfKNh0vvcHhy4jc7Se
	xyvju/aXtEI+1wQ79zpYxec5cFcJZ4pY6ahQRzQv1ayIDdc/KznkqAVTjK0Fykb0/Jq5
	gmiepA3tXiu1IGlU814vTjO7BfANiJYUTxC678/zZT/Qm6qFsVyj32BsTu3l/EYRduB/
	1d2w==
X-Gm-Message-State: AKS2vOyH3MmP/VrIyUF/H6RahIeQioHlLrZjFpiYL741NuiWlPUdnDXY
	GByiAyjgxpGCizrJIx6Z9Q==
X-Received: by 10.223.169.51 with SMTP id u48mr16331179wrc.176.1498055975960; 
	Wed, 21 Jun 2017 07:39:35 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-220-227.w92-135.abo.wanadoo.fr.
	[92.135.179.227]) by smtp.gmail.com with ESMTPSA id
	z75sm13728529wmz.8.2017.06.21.07.39.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Jun 2017 07:39:35 -0700 (PDT)
To: yocto@yoctoproject.org
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <23602da2-746d-06cd-81d8-38372ff17e74@fridu.net>
Date: Wed, 21 Jun 2017 16:39:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
Subject: Re: AppArmor
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
X-List-Received-Date: Wed, 21 Jun 2017 14:39:39 -0000
Content-Type: text/html; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <font size="-1">Anders,<br>
      <br>
      in the Automotive Grade Linux (AGL) we are using Smack + Cynara
      and that has required quite a bit of side work to make it
      operational.<br>
       - <a class="moz-txt-link-freetext" href="http://docs.automotivelinux.org/">http://docs.automotivelinux.org/</a><br>
      I have been presenting AGL  Smack based security model in quite a
      few conferences over the world and not many people have come to me
      to talk about their "solution" working either on SE Linux or
      AppArmor. So far I have the impression that AGL is quite unique in
      its full integration of an LSM module in an embedded project.<br>
      <br>
       One of the member of Genivi Alliance (I believe it was Bosh with
      its product called at the time eCore) told (about 3 years ago)
      that they would put their security framework which was based on
      AppAmor, in the Open, but I have never eared about it since that
      time.<br>
      <br>
      Initialisation and update/upgrade are where the LSM provides most
      of the pain. they rarely work out of the box once that LSM is
      active.<br>
    </font>--
    <pre class="moz-signature" cols="72">Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
    <div class="moz-cite-prefix">Le 20/06/2017 à 15:19, Anders Montonen
      a écrit :<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi">Hi,
      <br>
      <br>
      Has anyone tried using AppArmor with Yocto? The recipe in the
      meta-security layer is broken, and when fixed so it actually
      builds, it turns out the installed init script relies on functions
      not found in Yocto's version of LSB.
      <br>
      <br>
      Regards,
      <br>
      Anders </blockquote>
  </body>
</html>

