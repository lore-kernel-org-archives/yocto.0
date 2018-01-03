Return-Path: <j_r.cash@yahoo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EE5AE00DA3; Wed,  3 Jan 2018 08:07:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (j_r.cash[at]yahoo.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [87.248.110.59 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic307-34.consmr.mail.ir2.yahoo.com
	(sonic307-34.consmr.mail.ir2.yahoo.com [87.248.110.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2BBEE00D20
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 08:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s2048;
	t=1514995640; bh=6hXG1z/z59dXrlX/ZzkvBjD1/7znewaI5uIoVuoYuOc=;
	h=To:From:Subject:Date:From:Subject;
	b=PkFnfsB4JCeVeV19SFoaSKRSbpjA8QvorqUNvQQKkYjE1WdBD9rPZsAzypFbs0apD+0EZVnI+VBcFEoNHls3vcgcqPqQ3Us469ie7Fc5SsHRuWHEesqXFGmtp++n7p06agKa6U/msx9B+HE9tp0PI+UBKJnRWpw9g/5Psw3+QKfxOXQLqcBFAmF5pfG6QvOdwH7sI0j9lAmkxiyJhMklw8fyMykcu3blzx+f3rxBJQttp292YEvczrahSYqxzFEQgpmMNXGqwdDIFBAKB6A5avK9Hd9jR40Xi/Hp1xdPyYR5cokyYnUoDoXKyE3/djBf5jXf4ld3t7+LfvqTLm0PTw==
X-YMail-OSG: m51MpUoVM1lmkM8bEA1ogK60QK2d9f8VnOhMM8baMmtesRodCEXva0ZC1oEBfXD
	h7_i_xjORt2Y88Uc5_hIBVe6mdysOhYTa2Y5_Lhvy1Yddd9IY5fnhIMHHN8E0td5mw7Dk7paYAti
	sYuuW1rMwEGrFq75jirhQrA2ybKF7rt73NkxxhMVqlbgb4Ttoq1ntUjzFNWapXaiIWcc5bL_s64o
	AGuHoSRSLk1M4U0Wm1k7Ah16MzjcVoDFmjr3.zoq3I1.cM8cY7jkWnpWgq29saXqVx719ynQSICJ
	d24vM6dXOlBNQ.3gUr5q4hlQk8q_SGSrOgW8siJiXupRgM_x5oA9U.WFpSTReACkwGlV7kpempEi
	JRm2mxUr.eZrcTIRJuVle4qz2nNcQR3yXFicZwKp3zAKi3g3uI5n_h6p.7R9MEgZp.aMSwh1mWSe
	gKxTkLT2hXZjC88ePlydnmTm.62.YW5RfbjYInc5XEGJgW2dY0e62RLDg2ELqQbG9b6PT5crh4um
	Po_nT6Dtf8..JGBf3Uw.SSgc-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.ir2.yahoo.com with HTTP;
	Wed, 3 Jan 2018 16:07:20 +0000
Received: from smtp157.mail.ir2.yahoo.com (EHLO [172.16.11.152])
	([46.228.39.120])
	by smtp401.mail.ir2.yahoo.com (JAMES SMTP Server ) with ESMTPA ID
	d0f006485b09b0a2262243540d4f3fd7 for <yocto@yoctoproject.org>;
	Wed, 03 Jan 2018 16:03:19 +0000 (UTC)
To: yocto@yoctoproject.org
From: Johnny R Cash <j_r.cash@yahoo.de>
Message-ID: <f899db3d-d08e-8f30-c181-11c437995ec4@yahoo.de>
Date: Wed, 3 Jan 2018 17:03:25 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: Test, please ignore
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
X-List-Received-Date: Wed, 03 Jan 2018 16:07:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Just a test, as previous mail didnt get through after 2 hours, nor did a 
moderation mail arrive.



