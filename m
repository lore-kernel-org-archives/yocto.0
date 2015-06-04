Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3E67E009AE; Thu,  4 Jun 2015 07:44:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A13E00985
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 07:44:30 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so16984362igb.0
	for <yocto@yoctoproject.org>; Thu, 04 Jun 2015 07:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=5PNFs0FcHfDWyu2e3MViimf8Rw3tt517RjLK+ib5Hl0=;
	b=sw46/zstPiZ0VzaAATXTn+Dm597ZjKgpjexqBvsSXqcSJos3SpDwBa4ix8+Orcilj1
	eP0F2sSVzjkPskz88Fv851QtKYUJQzciFdtdtAkqn9gJm7d1fX04CGmSJaxljkYkaptZ
	66qAz9V/rlsw2zbrV742bea8+VJDp1fIYnyaptvxxWyrYTwzWu5VSQfjJPXU3LqqsOtn
	jwzNdZCexUdpVFfFaW/bu2hk7QEtGtbZNwcUNzAH4PrLtADAR4sWc/RJWRtzkdIvw5Qj
	Hf4rzk1/A0ELiwPkS3GrG/y8xf2xEuN/4h2W0ELFLUuDKruc5X/VPOFu+vTkKCTUztQY
	V4IQ==
X-Received: by 10.107.32.73 with SMTP id g70mr48118227iog.23.1433429069282;
	Thu, 04 Jun 2015 07:44:29 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	o9sm1330991ioe.35.2015.06.04.07.44.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Jun 2015 07:44:28 -0700 (PDT)
Message-ID: <55706448.6020308@gmail.com>
Date: Thu, 04 Jun 2015 10:44:24 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <556F8111.2030201@gmail.com>
	<CA+aJhH2wjWZR1M_H+uMAL1r1Xd7k_qJRp7=mgD-U-JYYE=p7PA@mail.gmail.com>
	<2953899.Q7o9RDS9aT@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2953899.Q7o9RDS9aT@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: layerindex
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
X-List-Received-Date: Thu, 04 Jun 2015 14:44:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Thanks Nathan and Paul!

Any chance the database schema drawing is available somewhere?

I'm guessing the machines.layerbranch points to layerItems.id?

