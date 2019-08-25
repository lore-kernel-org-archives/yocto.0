Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65660E009DC; Sun, 25 Aug 2019 10:47:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E9AE008D3
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2019 10:47:34 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id bj8so8676110plb.4
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2019 10:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=h23WvGHdhMd5CRLVGXr27lwmk7nlw8MOkNtcaLO2Z6k=;
	b=UYpTw7EDOWcWqFUYlOy71tsDhp3L4Vn203BY4lRLnMp7BnvB5IdVi5ohSDz/gOG8gb
	xWngkCPojEcnDoOTOXxO5abFsdZpd00IkmAUz8a7vT9CauHT0/gBsq4BD6xrw6DPXdMh
	5zgogf1RqDGnEWxGnkf8PM8nIv2Pl9jSEufBclDtpPAIrahCvkSXN5bHgUIoVyCZoXmH
	dhIdouMgw4icfRKYtRwdg1TwgHX6q9zVLEsJEh2ga+bg0vMg47lezSby1DMcYFu5Axjr
	zdCU1BZOQ7NZGmGqSXNx4WvWDWrq+No9RnNkcS/eKemp5o0nEq1DHA21e7lLCBLJ4WkL
	sLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=h23WvGHdhMd5CRLVGXr27lwmk7nlw8MOkNtcaLO2Z6k=;
	b=bhYWJVDw1Q0eXwQda2OaMXYs8hzKeDHm1e49uJRyk9vImAXknfjumfO2dFcSo8gbQq
	LBjehDBUTvmPxt2MAdq/0FMVZgSCLkqXYiybX9V/pjc4mB1zHRAO2CpJYjtlKx371gQB
	VD73zfoJaLLuAO+FYN2Q6b4xSJyXqSIH8jYCzCooaGJpMIkbjB4NS8s+hL3JBpr7v69t
	sSF/pGxX/YUvwaTdOtu/Th1QBWsMYIer6XnkykwUkyFCERGzT6d4JbKTpKguvnPoi3bF
	w5RVKlmZxwWioHSxE9z+i3geQyw32EHCQU8OoObeZPQ7emSaOfEy+QcXM/5OcgmmDDNQ
	mRVw==
X-Gm-Message-State: APjAAAXHt7VY4BQurJ12bGb3/fKCJ/cFxO8Q+9qDSi3JXONJfHMA5vSM
	X1FOTwXrpXY+5ag3J4frjTK2pHJscRMC5Q==
X-Google-Smtp-Source: APXvYqyoVRhIK0M51fZ85IqWh8atIMUEW2dl3/ncYmvwBnM/Lwa1+1xV1FSt9BltzH4Y4yNttHtmcg==
X-Received: by 2002:a17:902:d686:: with SMTP id
	v6mr2953576ply.134.1566755254181; 
	Sun, 25 Aug 2019 10:47:34 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:d435:11b7:8108:4569?
	([2601:202:4180:c33:d435:11b7:8108:4569])
	by smtp.gmail.com with ESMTPSA id
	a23sm3345359pfc.71.2019.08.25.10.47.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 10:47:33 -0700 (PDT)
To: nishant poorswani <nishantpoorswani@gmail.com>, yocto@yoctoproject.org
References: <CAN70yQVz5NFGR65GjNTMFvwxrpoTtNgdHKUtfRRq2VGsA4k9vg@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <e72cd70d-73a5-16c0-db8e-fb8a96896dcc@mvista.com>
Date: Sun, 25 Aug 2019 10:47:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAN70yQVz5NFGR65GjNTMFvwxrpoTtNgdHKUtfRRq2VGsA4k9vg@mail.gmail.com>
Subject: Re: U-boot recipe fails for the master branch(new sbc)
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
X-List-Received-Date: Sun, 25 Aug 2019 17:47:37 -0000
Content-Type: multipart/alternative;
	boundary="------------2C2E7219654B4C59BC8D2913"
Content-Language: en-US

--------------2C2E7219654B4C59BC8D2913
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 8/25/19 2:15 AM, nishant poorswani wrote:
> Hi,
>
> I'm trying to add a new board called rock-pi-s to the yocto project.
> I've succesfully done it for the rocko branch. Now I'm moving it to
> the master branch. I'm facing issues with u-boot. Here is the log for it:
>
> https://pastebin.com/NAxqsvcB
>
> It seems the libfdt from dtc-1.5.0 is incompatible with the older
> versions of u-boot. Can anyone recommend a method to fix it? Any help
> is appreciated.

You can try having your own recipe for the version you need and then use
PREFERRED_VERSION to set the version you want.

- armin
>
> Regards,
> Nishant Poorswani
>


--------------2C2E7219654B4C59BC8D2913
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 8/25/19 2:15 AM, nishant poorswani
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAN70yQVz5NFGR65GjNTMFvwxrpoTtNgdHKUtfRRq2VGsA4k9vg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>I'm trying to add a new board called rock-pi-s to the yocto
          project. I've succesfully done it for the rocko branch. Now
          I'm moving it to the master branch. I'm facing issues with
          u-boot. Here is the log for it:</div>
        <div><br>
        </div>
        <div><a href="https://pastebin.com/NAxqsvcB"
            moz-do-not-send="true">https://pastebin.com/NAxqsvcB</a></div>
        <div><br>
        </div>
        <div>It seems the libfdt from dtc-1.5.0 is incompatible with the
          older versions of u-boot. Can anyone recommend a method to fix
          it? Any help is appreciated. <br>
        </div>
      </div>
    </blockquote>
    <br>
    You can try having your own recipe for the version you need and then
    use PREFERRED_VERSION to set the version you want.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CAN70yQVz5NFGR65GjNTMFvwxrpoTtNgdHKUtfRRq2VGsA4k9vg@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Regards, <br>
        </div>
        <div>Nishant Poorswani<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------2C2E7219654B4C59BC8D2913--
