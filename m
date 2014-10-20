Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A016CE00849; Mon, 20 Oct 2014 13:44:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB8EEE00830
	for <yocto@yoctoproject.org.>; Mon, 20 Oct 2014 13:44:56 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id rl12so5432597iec.23
	for <yocto@yoctoproject.org.>; Mon, 20 Oct 2014 13:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=PUG5efGm0hSVRyCj1OAEuVzd6znHKTsSc4Q3qPl68qY=;
	b=SBgSyQHc/UbbAFH5rjVUpUM+Yvw8oTcr78WEFRlybvBdNhVGcU2AF+FEdpYlHmzLGr
	dYjfCpgTE71K/oX8PrToyN2JGk/WrD1QaAQ4B0JbFkp/yXunES3ugayQZONGwYwVmjUz
	eZLNsjvLY/PImEODtnR+A4pmQ0+sLeJsj/M5uJrFc95GhvYBU79rzT5oYO34jNk85Opo
	0RU/naGBdU84CeqhrF64SiYfz4D1pQhrXKoBrq6B1Ci+I31tKdQ8Z4oCmRgdJjNOmdFX
	UE6Cks7cu0wS9+z5foHtlvDmFLD9GcHUsqzkAQIiSaiC3hl2QbHJ3bNzoMGQXdg6tjO2
	DKFg==
X-Received: by 10.43.153.131 with SMTP id la3mr28903039icc.38.1413837895191;
	Mon, 20 Oct 2014 13:44:55 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id b4sm5037791iod.37.2014.10.20.13.44.54
	for <yocto@yoctoproject.org.>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Oct 2014 13:44:54 -0700 (PDT)
Message-ID: <54457446.5090809@gmail.com>
Date: Mon, 20 Oct 2014 16:44:54 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 22 Oct 2014 11:11:03 -0700
Subject: Time To Build Yocto
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
X-List-Received-Date: Mon, 20 Oct 2014 20:44:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

I am wondering from your experience how long is the largest build you have ever seen and what was it building. I am 
considering a high powered build system for Yocto and want to known about build times in order to help me with
purchasing decisions.
Cheers Nick 

