Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E8A0E00D14; Mon, 14 Aug 2017 20:17:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEBF5E00B67
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 20:17:15 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id l64so59083509pge.5
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 20:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=f1C7yHW3pA+JR5CiLwc20NiMalVpOjX3ezfOhxkxUTo=;
	b=CQalgb4SUGx7HbAowWUMbx8I0Xd0dKXk03JyV3Cs+bKgVK0Iphwwm8Um+tPXfWtE7z
	T0x8Nwj+6aonS7DPT50pHenDv+B9MLV/d5NIGDPE4vihW+7GfFDuiEDrwNc9VYT47/Bq
	XOk92UIEwEIPTFTFojrnTrstMjsXh6ujccaovG+vO7xw8dF+4cukFjOR0ijQ1NUd4rMz
	GtHgYHwwC/SsZnz36Kk6uXzZ2XWejFKMoQjeIrALXgFpLqhNoWgWr4FLWMKgvMfrfSzh
	wQfdRcAlYuloJzw1jE5JOTcB90JT2+KDK87PGEHErFzd5IOcy+Kz+V6hbxihdJIWWpM+
	53NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=f1C7yHW3pA+JR5CiLwc20NiMalVpOjX3ezfOhxkxUTo=;
	b=p08Vz4ExivoiRWDqYtWfktfiuTEDILLlbpFFov3FKitpAcqwsruNGpo7Ur5l0+zQRP
	HQ1tm6d0GkxlPcbuFjjmWDPinI1Sxl7iYsymTYkk2gd/7Rs1sk3YYi/jRd8TQhng4WzW
	q9MC0v/t+VFMCXlMSGR8kl+kk9OQqRPfKLPVku+HQK4Bo4z+pUYQ4MFTeiEOtb1VgLwC
	ycYtQFSjMZaPSKYHlvQuiLROPvyjWe5+XDwVMp2+/wEfnmlhPaXEu1iiFki32PDgR62l
	M9pzjP2rs5FTFQr1muiWVncCEkEEUlyymr2KTkZ50Nh3Yt+6uKWqzhtX494UgBUh00Zs
	4nyQ==
X-Gm-Message-State: AHYfb5jpYOAxiXqBIGUSSp0ErCp9gSnA3t3Se0r9B5Cjw/DRT4xL5hqB
	QMPeuCLxmoX6VuIlEEk=
X-Received: by 10.84.194.131 with SMTP id h3mr30685332pld.82.1502767034973;
	Mon, 14 Aug 2017 20:17:14 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	o73sm17361141pfj.1.2017.08.14.20.17.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Aug 2017 20:17:13 -0700 (PDT)
To: "N:" <yocto@yoctoproject.org>
From: Riko <antonius.riko@gmail.com>
Message-ID: <fa204cca-0d00-307d-8ebd-18aa68437679@gmail.com>
Date: Tue, 15 Aug 2017 11:17:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch:
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
X-List-Received-Date: Tue, 15 Aug 2017 03:17:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dear Yocto Team Member,

How can I get this file : 'file://0002-uclibc-conf.patch'. ?

I got this error :

ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL: 
'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.

Regards,

Riko


