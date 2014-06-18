Return-Path: <ldhave@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F7B3E00B67; Wed, 18 Jun 2014 06:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ldhave[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7445E00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 06:32:24 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hi2so8539551wib.4
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 06:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=/yzII3A5jwvzh77dKNpJ5O1TVwj2KXFFOXes/h6lbt4=;
	b=EeM+Fcx/kvhYQ8CEP9N7ZW7hqpzWNIIeScccWTzmHqMPDuP03SAQtihlzIt67dRFE2
	gazBs7gfg9OVg7K8wbknu/g1Xos5B/clP6ZgX4J4pql9PpINLTBSiHJdRvIQP4dqwSax
	q4J2KRrDLch3mHfNd5u21BkfTSalZPMWp5lJKXazOyYVXFnuXav7dEDIBvIqxwXWTw+M
	SnNJRJeI4iFyiyCPJNvjYDUNGM07Or6tlFql4upOU3xgSTE567A22eKTll/gwGWyCUR7
	Joq2bQEY6A/KwBkpq+93XdtaQ2v3yi9Q+WD2XKZemyQlaIHIo3tFLT2tretirgaOnSj/
	+yvQ==
X-Received: by 10.194.179.170 with SMTP id dh10mr47318511wjc.7.1403098342809; 
	Wed, 18 Jun 2014 06:32:22 -0700 (PDT)
Received: from [192.168.0.101] (ip-83-134-141-19.dsl.scarlet.be.
	[83.134.141.19])
	by mx.google.com with ESMTPSA id h48sm5294907eeo.33.2014.06.18.06.32.21
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 18 Jun 2014 06:32:22 -0700 (PDT)
Message-ID: <53A194E1.1080206@gmail.com>
Date: Wed, 18 Jun 2014 15:32:17 +0200
From: =?ISO-8859-1?Q?Laurent_d=27Hav=E9?= <ldhave@gmail.com>
User-Agent: Postbox 3.0.11 (Windows/20140602)
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 18 Jun 2014 08:33:37 -0700
Subject: Recipe to Copy JAR files, not extract it
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
X-List-Received-Date: Wed, 18 Jun 2014 13:32:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello
In a recipe i'm writing, i need to simply copy a .jar file.
Since it's specified in SRC_URI , bitbake extracts it, making WORKDIR a 
complete mess, and makes it impossible to copy the .jar file to destination.


How would i go about simply copying it ? Anyway to tell bitbake NOT to 
extract content of it ?

