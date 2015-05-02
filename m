Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A9ABE009A1; Sat,  2 May 2015 04:20:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFC2FE0098A
	for <yocto@yoctoproject.org>; Sat,  2 May 2015 04:20:47 -0700 (PDT)
Received: by igbhj9 with SMTP id hj9so54856670igb.1
	for <yocto@yoctoproject.org>; Sat, 02 May 2015 04:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=KwivkvetfPThLaAqgiWmXwGPkjj0Pfw2ixtx7T9wLTQ=;
	b=zNrND/LmY386a7UPqe/Q7Il7FPp51VmULfaIe4ruIVPMqZEZET8i0JWdx+/Vvu88e8
	E8SPNEhlZUWjvZpdpoKjwYmWLzlGHlNLwaKEgdv9G1qmoj5yk7j2LU9W9+3CzTuc/n1H
	yfw4c70g8x/od/t8BU3J/X9eCnMGRESdar1DKCCypWpnD7/jccaUVgKaOowr7DtiGEGK
	KF+L0tAh9ytVf0VlCZmK0Wm2T8D6IYm6dvsH4f58WLg0xX7yi5/g1Vu7KGk3bWw0msYk
	4qmrdHVVtgNINUT2s88iYoY4eADWRneQfwrXZYz9pOYl8txqkuFPCiEWOQ9GMrAjsdVI
	n4rQ==
X-Received: by 10.50.132.71 with SMTP id os7mr2737186igb.24.1430565646697;
	Sat, 02 May 2015 04:20:46 -0700 (PDT)
Received: from [192.168.141.85] ([66.49.234.10])
	by mx.google.com with ESMTPSA id
	i185sm5410165ioi.24.2015.05.02.04.20.45
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 02 May 2015 04:20:46 -0700 (PDT)
Message-ID: <5544B307.7010804@gmail.com>
Date: Sat, 02 May 2015 07:20:39 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <D1682DBC.1AE81%alexandru.c.georgescu@intel.com>
In-Reply-To: <D1682DBC.1AE81%alexandru.c.georgescu@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Replacing HOB in Build Appliance for YP 1.9
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
X-List-Received-Date: Sat, 02 May 2015 11:20:51 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/30/15 12:06, Georgescu, Alexandru C wrote:
> Since HOB is started
> automatically in BA in order to help users get started quickly with YP, I
> have the following proposal for updating BA in 1.9 and to replace HOB:

...

and updating relevant documentation, such as:
https://www.yoctoproject.org/documentation/build-appliance-manual


