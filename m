Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ECD5E00DD1; Sat, 13 Jan 2018 11:32:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.135.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic302-4.consmr.mail.bf2.yahoo.com
	(sonic302-4.consmr.mail.bf2.yahoo.com [74.6.135.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3378E006D2
	for <yocto@yoctoproject.org>; Sat, 13 Jan 2018 11:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1515871975; bh=iAZk/zQpMyu0hSnJMu4CGQxrn0igkeuHEUEIZ2x9Q+0=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=GUuRgh9X3GujCthhzPlZAwuf1cG51S6VvQH2nNcCdF/xJxoCbJCqnFzTLdnmEASCF103s9hgL+wojnIck5uWj3tm0fd/8BltNjPMfDcsoGT/3FcWefnVVopmV1UqrLyJ58MRbg1HUnV/ebaYB1tjumEYOeFxvzCYY+Q1HzgZ0CTNXy1aLbCVfUXILeV+p9swpwJIOke/5ZZClY8v8unFfl2LPzKooNFh8EDllFVAFbw2iS0D9u9S4Cxvx2cOXDvQwkUXbLuUOVMT+k1u4/k6ewcoHkKrLbyot/0l0SD89kEeUe3s9/HfW5Pdm70QGTlbtV1b7SfU0jIO0Vs4JsU+Gw==
X-YMail-OSG: 8x2zMHAVM1ms67k4ICbC_Ks3_A0AZaHd5Ahoe_P0LOrskfRGTcebwedg3vNUpKF
	YQlOShG9c6H0Nzqok2FVtwlMs25TYlpgSCeb2tR4z2spG0qX9BgY29w0Bwy08fXZ2lGEPONG0uyN
	m0Zwosxqmi2N4lhD.CdZtWci0Zjix7wHuOBEAjBwhJ97ZR2i6U3lPxqJqGewNvOiGSKhU6AACVR9
	XvIUL_hX9RSefwVJ.T_asr1cbREAmKzryuCfSGEekVqOOKLSxYZU.1yOlqOuKzA3bKopo1QUJx3Z
	7sQ5E2OUkqdrPX6a_BZOKMbu.7ouokNEWxpxG0bjKRuC1nJelOgu6IBXGbZMoqmDjx8DAFniQYiw
	oZZpoDoo0XqX4mSgOplPps1Bj46kLJJIXkHKLkTQ5U9DiHQCFcaj0ELn_HIrhDQWYO1S5VVak0ZJ
	9x2FHocnl3OjaO1h3Aoc1kK49wrx0XhrrnF9lXRu.lPp6cIOlyEgvdFWIxono8w2QL79.43ZWb6j
	5TV7iSiLCHkq50FwqIvDVK3AA
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 13 Jan 2018 19:32:55 +0000
Date: Sat, 13 Jan 2018 19:32:54 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: <yocto@yoctoproject.org>
Message-ID: <1970961286.255227.1515871974890@mail.yahoo.com>
MIME-Version: 1.0
References: <1970961286.255227.1515871974890.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11214 YahooMailBasic Mozilla/5.0 (Linux; Android 6.0.1;
	ASUS_Z00LD Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/56.0.2924.87 Mobile Safari/537.36
X-Mailman-Approved-At: Mon, 15 Jan 2018 08:05:32 -0800
Subject: How to install dtb file to boot directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Mostafa Farzane <farzanemostafa@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Jan 2018 19:32:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I sucssesfully installed kernel to boot directory by comment out RDEPENDS_kernel-base="" line in local.conf. now i need to install dtb file to boot directory as well. I tried use do_install_append in my kernel recipe but no success. Any suggestion?

