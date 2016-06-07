Return-Path: <juancarlos.trujillo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A83E00C81; Tue,  7 Jun 2016 14:57:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (juancarlos.trujillo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13761E00C49
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 14:57:28 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id u63so31062589qkh.0
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 14:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=gEvE+l4Od+p2DaXk9dxdm721UG+umIcNjNMGd0LzzKQ=;
	b=qhN+T5AlJj7HWiAVrw5u0Pz82jwpRRmxeJoGNxA0UfnDoE7DSBr05z9PJqKC0Llwvg
	AD5hXeplEmbZoBsP0VEqpVMiey9KXnqn8pefEPeIp8EAWYgYxYWsiBJcwLCklSQRrtgj
	q6JDMMI3fE6BCLSe1wE9lZzu6aZzkaIOA5BjRXJK5NWUyQ5BKo54yge6H4RD9ccT+Bs/
	Pea7onErO8TGt6WuhS+lJsO7PhWJrw1N9DwuAZRXjr6u3ScIC22V89fpGnixN3xDw73o
	tT4EG5YGvZsay5VJKvDcXRhQ33E65/nxyFeCUtBcks44gqZCeiSkEly5PpzaitPJ4bD9
	fLMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gEvE+l4Od+p2DaXk9dxdm721UG+umIcNjNMGd0LzzKQ=;
	b=fiS0lGTt8MfJ+nnQLRIPv4BTE1De83jfAhvlW4vVAUoUNXOVNl7fRKTc9L/SbeZf1E
	UVtx8mlqA6ASk+rrioxlY17mr02zYx0X8kUKIZTM2JLRC/ebTDcVcbHLa0C/AXswnz53
	y013mLWhdh6fAMaLdGGrtSzwAO6UXO/OPn0XheHsxvgTyIZ5KVTdRwIFLpheAJDprp3c
	sEFIWO3hkPdEJeP8RqsOOhdPh7U9c0mLwUDBABka1YnZ4Yb/F7Zxc0V7oEM6eQRxnZqD
	462otH/oSkVZ37Ux8UqDsCIMXgSmgDy6TaOpy87nETPm4RN7fg1CGQWAWmg+rb+fZmyN
	uWRQ==
X-Gm-Message-State: ALyK8tJbzSqp9OEqxrP/rxEfDyOldXEQ9z++vFbLCuDeEKgYHneaiqnM1IQItrzXfdI71lzvw3wgDXsOi7L3Ng==
X-Received: by 10.55.65.210 with SMTP id o201mr1750011qka.133.1465336647678;
	Tue, 07 Jun 2016 14:57:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.99 with HTTP; Tue, 7 Jun 2016 14:57:26 -0700 (PDT)
From: Juan Carlos Trujillo <juancarlos.trujillo@gmail.com>
Date: Tue, 7 Jun 2016 14:57:26 -0700
Message-ID: <CA+rEFdHnzYYZfZ6i_dhr0eCHDH7jpAXARAw8KsdUO_xgJcxuqA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Secure remote access
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
X-List-Received-Date: Tue, 07 Jun 2016 21:57:30 -0000
Content-Type: multipart/alternative; boundary=001a114ac6125caa800534b746da

--001a114ac6125caa800534b746da
Content-Type: text/plain; charset=UTF-8

Has anyone used successfully any secure remote access utility (like Weaved
for RPi) on Yocto?

--001a114ac6125caa800534b746da
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Has anyone used successfully any secure remote access utility (like Weaved for RPi) on Yocto?</div>

--001a114ac6125caa800534b746da--
