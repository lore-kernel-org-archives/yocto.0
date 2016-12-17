Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7C81E0081E; Sat, 17 Dec 2016 11:38:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF38E00563
	for <yocto@yoctoproject.org>; Sat, 17 Dec 2016 11:38:37 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id g1so5561827pgn.0
	for <yocto@yoctoproject.org>; Sat, 17 Dec 2016 11:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=ylPrtXnuCNcR5BKIVNzq9CQFmD/Y09JZYJWxZtdbYLA=;
	b=Muo0u5Gjb331YSYRd9j6KvbaOiWtER60YtpG0/UFRxJy0L5uKEWdKi4Utp0MIEm7eL
	B2Xy8avC7SE20KXKxsN/iD2v0F653ks+reZYjX0x68phzLWQf6zQTLpxLm1DAaXWntZe
	72fa/gKcQNcy4DI5TVlOmfGTL/f5qOGsAT5AERNY+8OWBFFULgictoEM+FAcR0+lX7+S
	S0meRni9lb33f308trgOrBsYg9tNtjgkzLVtiLerN4tV8NDt8ptr291GmaIMvODt2ZP5
	coACG54GIDYpK7YgIZJ/bVegLI7juz1wqNEuI3iNOYdoDmlf5xXZ4Hw1YKGrTTQdiYrZ
	pj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=ylPrtXnuCNcR5BKIVNzq9CQFmD/Y09JZYJWxZtdbYLA=;
	b=CE8nrVDtY0B0GxUgTeDS1auw0L5BZOrXVilfgs+MLs9COFZW4nXBUrHNn7un/mfUIV
	4fi2rYTDr/RTbVAZZLR4DxS+CgmxmO02X8IOEGFQYXUFsuPHziQTZcw+1vK15vkhGmxU
	+XL9EZOlM3E+OCqL+nz4rARGyrJUPePrWfbte8x4ccdrHsLcy88SWm838+CKT82p8BKu
	7ZHZVzRFkMYpC4VOvGGF3ZbAdOlV1xSsgbSfxcEHNHTpOlm/CUOP7wMUKHrbNQvsuwTw
	dJlEO2YPmSsTAF9/1uvW1QVuI8HSVasWpRWWx4ZlsCBc0rnVlzU59C2Bn+/SfMbVJpY6
	EMQw==
X-Gm-Message-State: AKaTC009Wx3d9oa00ZkPJD4HV5FCdTP0COaBB01UvJ9fObZSJnP8rsMyScBeltki+WytYQ==
X-Received: by 10.99.124.20 with SMTP id x20mr15886336pgc.142.1481996613043;
	Sat, 17 Dec 2016 09:43:33 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:d8a0:7bba:e039:841?
	([2601:202:4001:9ea0:d8a0:7bba:e039:841])
	by smtp.googlemail.com with ESMTPSA id
	p64sm20272213pfi.88.2016.12.17.09.43.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 17 Dec 2016 09:43:32 -0800 (PST)
To: OE-core <openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <7e10dcec-0477-3710-eec4-0f3da9a99691@gmail.com>
Date: Sat, 17 Dec 2016 09:43:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: is yoctoproject.org and openenembedded.org down?
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
X-List-Received-Date: Sat, 17 Dec 2016 19:38:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

Can anyone get to yoctoproject.org or openembedded.org?

they where working earlier this morning.

- Armin

