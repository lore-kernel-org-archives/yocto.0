Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 599C5E00AA9; Tue, 16 Dec 2014 08:41:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAA81E008FB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 08:41:36 -0800 (PST)
Received: by mail-pd0-f176.google.com with SMTP id r10so12197831pdi.7
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 08:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=gJPOubXqYIvPJZB0iwgpex36vllFwEeeunsSKhZeUAI=;
	b=PqnxDRteSN5Y14vfFI7oKXG2tN7GCAKP023qLJXa8UeKEMr1hoymaFj9oawJGyDcSR
	hzy7jWkXtRswVmE8Y0962evQZJ4qBbJajZMHOugu8lL0jlg0tMFAZLngb2GigJ2bPV+X
	FARijz+SXCohhmlpiOQOHKI5qm0GaLIkcwkbazPDnr5HQLyAAKNq8m+EuZb4DgVP/oB9
	fZrilS8s6TJVOLFHfNDwuqFCpraWdzDHGKont0QCnGfKzVK/BnW1lGclrTdp1AA9ogc+
	Ha8N1Dlfjja9MIVQlPKbk2haYvdlSXxPjM+UpJx/U7flOoVqhy+QsWYgBpXJ6w/ju+D/
	nmZA==
X-Received: by 10.66.66.231 with SMTP id i7mr17049719pat.143.1418748096535;
	Tue, 16 Dec 2014 08:41:36 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:9dc7:efd2:dfe8:df95?
	([2601:c:9380:601:9dc7:efd2:dfe8:df95])
	by mx.google.com with ESMTPSA id z3sm1484904pdp.17.2014.12.16.08.41.34
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Dec 2014 08:41:35 -0800 (PST)
Message-ID: <549060BC.7040209@gmail.com>
Date: Tue, 16 Dec 2014 08:41:32 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: OE-core <openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Request for Dizzy patches for 1.7.1
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
X-List-Received-Date: Tue, 16 Dec 2014 16:41:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I am collection patches for the up coming 1.7.1 release. Please let me 
know which patches should be in 1.7.1 by including "[Dizzy]" in the 
subject line.

kind regards,
Armin

