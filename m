Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1880CE009BF; Thu, 16 Jun 2016 23:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E35E00874
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 23:47:14 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id f126so76276732wma.1
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 23:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=fL8q2m4HtU1GgrqXcOLkaRoldrOeDBBeet882YDGGAE=;
	b=Bq5gdjEEDuOXQdoen+xNwi451pc7eFYArWW6UBF17v89u2SLct5vdV4rZlVgMa1v9s
	KfKfiYI8nO0M90LyMWLjrYg8pt9E596tFbnciFkXC67hymykU+M5w3H970ptKhEIsIQJ
	mP2UJvQfxLNRXM8+OGHzZioj2q4KqLKSOSxaK8bgtBwTtEWgaNNOk33HhL0jQDXIpdeo
	iM8P3lQJgYwq9nNPxnZVb2xraGvO/Xp/cawZonO+/kgVNwI3YsR90YicQSBNA8HZEd+1
	stxRTUyrwRi603BnHUiZi0TnzCW7fZjZvnV30pIGZO7Cg5OVwS5a8OoYsiH/ya/TNOOH
	DSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=fL8q2m4HtU1GgrqXcOLkaRoldrOeDBBeet882YDGGAE=;
	b=FNiRRWagGGwuLCOlfbJS2pS+9LROVkX1fVwdoyffKdcfJAZv2lzSFyxZFI8URyaI0m
	2QKBvQPb0ydZ+YJXxkh/hmwPmCBhWUOcs0Z4lqBq2qPDYFY5Gb+daRweQ1qlP1jX5uQs
	VEzGInRAgMU6+HUO4Erv1u1P+HP8uEQYPIQfrn29/y5ZNKyxLXBhJwvdQpjXTI+O6rvr
	i0ILOJmkr1MH70guud6I563zRX2T4t6fthwjLDf0uR+1siaotkI86MnvrOAzw7BfAb+8
	bRQA39TiNl3Jxxum/za7kjlyOoFclfZFd8muruEksSkCwH48jWC/dGTssxHOyD22dhgR
	s8ng==
X-Gm-Message-State: ALyK8tKkx0dF5YFm2S5UDFZvKfoPNS4YeX06a7NIiwoxsoFyC/+hlHR3tIrRov0Up50fxA==
X-Received: by 10.194.177.230 with SMTP id ct6mr580021wjc.170.1466146033344;
	Thu, 16 Jun 2016 23:47:13 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	jf3sm16448549wjb.41.2016.06.16.23.47.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 16 Jun 2016 23:47:12 -0700 (PDT)
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <57639CF0.70105@elfin.de>
Date: Fri, 17 Jun 2016 08:47:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
Subject: Re: NTP
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
X-List-Received-Date: Fri, 17 Jun 2016 06:47:18 -0000
Content-Type: multipart/alternative;
	boundary="------------040707000609020801050406"

--------------040707000609020801050406
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 17.06.2016 08:33, Anicic Damir (PSI) wrote:
> Hi!
>
> I just realised that ntpd + ntpdate is not part of Yocto 2.1
What do you mean by "not part of Yocto"?
>
> I found http://layers.openembedded.org/layerindex/recipe/2299/ 
> <http://layers.openembedded.org/layerindex/recipe/2299/>
>
> but how to get it?
You need to add a layer "meta-networking" which is a part of 
"meta-openembedded" and the recipe is there at 
meta-openembedded/meta-networking/recipes-support/ntp
Link: http://cgit.openembedded.org/meta-openembedded/

Best Regards
Piotr Lewicki

--------------040707000609020801050406
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 17.06.2016 08:33, Anicic Damir (PSI)
      wrote:<br>
    </div>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style id="owaParaStyle" type="text/css">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">Hi!<br>
        <br>
        I just realised that ntpd + ntpdate is not part of Yocto 2.1<br>
      </div>
    </blockquote>
    What do you mean by "not part of Yocto"?<br>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch"
      type="cite">
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">
        <br>
        I found <a moz-do-not-send="true"
          href="http://layers.openembedded.org/layerindex/recipe/2299/"
          target="_blank">
          http://layers.openembedded.org/layerindex/recipe/2299/</a><br>
        <br>
        but how to get it?<br>
      </div>
    </blockquote>
    You need to add a layer "meta-networking" which is a part of
    "meta-openembedded" and the recipe is there at
    meta-openembedded/meta-networking/recipes-support/ntp<br>
    Link: <a class="moz-txt-link-freetext" href="http://cgit.openembedded.org/meta-openembedded/">http://cgit.openembedded.org/meta-openembedded/</a><br>
    <br>
    Best Regards<br>
    Piotr Lewicki<br>
  </body>
</html>

--------------040707000609020801050406--
