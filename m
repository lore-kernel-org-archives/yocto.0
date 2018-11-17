Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A370E00A54; Sat, 17 Nov 2018 00:34:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB678E009AA
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 00:34:27 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id a2-v6so21492872edi.5
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 00:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=rmpgJxHLa4lojIQnQVLOqsbcll58RHQ8UWdlmOVq8u4=;
	b=ffMjVvzpZKgmaiD0rK0gk2wnXGo2Fp5SvkHuJLj2Ix/0H1awpN+MOYIJ24Gr0xHQHJ
	lzZQUCZGydfNeV+J6PlUtzO68iTN1KYe/3e48CGbRuEhHUSHnEmh6BP/XAL3+jo6SLDh
	bqpmCqLvBdY4p9I5NxufTyhmb6w1TPp5RLK6ht5NSkIBxAXgBxaPyp6h27OjsJD6UhRB
	UMhlQdNsiEsHNom5uqphD0QQaCgHoligeqliBXmVYwYKQFKWb1UaxtC1H1KjKVERar7Z
	svQAdyuxuhNnqEuDpYr1cqWcsvziBQzFsFMBp3AgFcX8hSTJIbNlWCU6fkbwReOQ0LDd
	Xyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=rmpgJxHLa4lojIQnQVLOqsbcll58RHQ8UWdlmOVq8u4=;
	b=teGq2rObQ4D5PpNEJ+rFbRMh6tRPvtx8k6CH0kGJ08U0TIDw3lZHQWz1qqZe89HaRw
	V2sc7peUzJV1wjVg6a0i5uqUX1z/8dax6Z9n27YL/9eLumeoQi0NGR5fwiNNDFZIZRLp
	kdrpewRAdCBxEaMFh/Xe7O360N1wXMfBWO/JI0ytl7mjrHwJUi8dLrS21vjPg97Tag/u
	cyKJ0Cggpn2gnzAhZyaQKcHTVi/2to3Xi9Qy8WhQPGqZF7XbSLrL88gtqDw2RRtWXPyq
	4UUEci3HvCOAI6bNLIQRM81VpVmQcSYUl3k3kb5D+OntDTiIZXR1oRP+KX22+gaaV/we
	ldig==
X-Gm-Message-State: AGRZ1gKvyD7gEHuZPbpsCl/rpPblpL4FITWv56JOSHCcIo+CRgFh9zJ1
	khRQh49/qoJ2gS1i0s1A0qgu3u3a
X-Google-Smtp-Source: AJdET5dQEiODfnJ/57+Un4xDxeLwkT0BMFnDWUdFa6T3Tw3J8EmHMPm3UPJTLShbcfx96ZYdBLAjTg==
X-Received: by 2002:a17:906:1a49:: with SMTP id
	j9-v6mr11057587ejf.45.1542443666818; 
	Sat, 17 Nov 2018 00:34:26 -0800 (PST)
Received: from [192.168.19.183] ([91.213.98.84])
	by smtp.gmail.com with ESMTPSA id g31sm945771eda.96.2018.11.17.00.34.26
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 17 Nov 2018 00:34:26 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <4ca1c544-6dc9-128a-59d0-5c714175a8d6@gmail.com>
Date: Sat, 17 Nov 2018 09:34:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: supplier workflow
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
X-List-Received-Date: Sat, 17 Nov 2018 08:34:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I came across a scenario, which does not seem too strange, but I am not 
sure how this can be handled with OE/YP. (just nasty hacks with SSTATE)

1) Company A provides an SDK to to Company B - no source code provided
2) Company B provides a "binary" back to Company A - no source code povided
3) Company A integrates this "binary" back into some project and 
bitbakes the image

Ideally Company B does not just provide a "binary" executable/library, 
but a package e.g. ipk.

Company A could provide an extensible SDK and Company B could create a 
package of their stuff with it.

Now comes the question: "Is it possible for Company A to add a package 
(no source code available) back into a project and bitbake this?
If yes, how?"

The advantage would be that Company B would be forced to bitbake it 
(with the additional checks done by OE/YP) and not just compile 
something somehow with a "classic" SDK and ship it.

Regards,

Robert

