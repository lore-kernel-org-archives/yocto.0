Return-Path: <olivier.germain1212@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C50A4E008C6; Thu, 20 Nov 2014 22:54:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (olivier.germain1212[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E66E0085D
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 22:54:04 -0800 (PST)
Received: by mail-wg0-f50.google.com with SMTP id k14so5606647wgh.23
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 22:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=NvbrHA6Gbo8UQiBPteCoOcBBZ/QSKRPJ+Tu/LDKSgw0=;
	b=K1KuLE1takBMeXv6C7gqcaHDPexiAvmcRWkkr1qWKK2MYRe9kBn0Qr3rPcC8RWdPuT
	xB8L93ia0dwVMDqBSN8G0VGmdai2U5fi7qwEsElOeJshYsLP506Wci09gbMwT0y9gJ1x
	d9rDXo7/+DLNA+G5uf82lAS9PpNOv0wAmjEHyXsPw7xyfSEhnJlGqWTJyzxa+V3+14jd
	DzTPZ2ckfoA/8V+bYwybeWE8e1guMV0Zi4gLJ9GfFIzYIjrqfvX9nbKlGVWDfYTLhomZ
	Wi0zt0nkA8bM4zp7NtJoQ1UtYrSXitSECdnpqzvg+uU8w0dIwPoz/Yerrf/hVfGSmK2h
	x2dA==
X-Received: by 10.180.81.134 with SMTP id a6mr21787443wiy.11.1416552843489;
	Thu, 20 Nov 2014 22:54:03 -0800 (PST)
Received: from [192.168.1.37] (28.236.102.84.rev.sfr.net. [84.102.236.28])
	by mx.google.com with ESMTPSA id fv5sm6696576wjc.37.2014.11.20.22.54.01
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Nov 2014 22:54:02 -0800 (PST)
Message-ID: <546EE18C.8090808@gmail.com>
Date: Fri, 21 Nov 2014 07:54:04 +0100
From: germain <olivier.germain1212@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [Yocto installation] Yocto installation on corporate environment
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
X-List-Received-Date: Fri, 21 Nov 2014 06:54:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I am looking for some feedback on yocto distribution installation and 
deployment into corporate environment.
The context is the following: We will receive a commercial yocto 
distribution from a third party in form of a CD/DVD every year with some 
cumulative patches every months. This distribution will be used by 
different projects within the company to make products

My concern is how to share/distribute this distribution with the 
following objectives:
  - Secure all dependencies on corporate network for product maintenance 
purpose
  - Easily access and installation of a given revision of the distribution
  - Control disk space and avoid each project to duplicate the 
distribution support
  - Avoid lock down effect on third-party proprietary installation mechanism

I though about the following possibilities
  1) Mirror all source code URLs including tarball delivery onto 
corporate network
   => very costly, need to support all reference type of version control 
system(Git, SVN, ....)
   => risk to miss mirroring one url
2) Put in source control (Git) the content of the "Downloads" directory 
create by yocto
   => single Git may be very heavy with lot of binaries
   => Split Git but need then to use something to manage the forest like 
google repo tool
3) Rely on docker image and create a new version of docker image for 
each new distribution revision
  => working on a shell inside the docker image may be not much easy 
since need to rely on external volumes to access user personal data or 
environment

Thanks in advance for your return
BR
Olivier


