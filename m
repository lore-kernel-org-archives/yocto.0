Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F73AE00AF6; Thu, 20 Apr 2017 00:30:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A602E00AE0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 00:30:29 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id k87so58812745ioi.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 00:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=PUbTJrvbjDSSF+HLsUoAxilwfd8vpCCoS9CINNaN02U=;
	b=VyeCquzLJRIB1pcPEHXa+7nGt5XEgQJ13FWjH4f4/ErWGNvZbpV4D5n9vVVRIDICx3
	RqoW2M9ntqJIahU07TZXJtxEaH4y9WyXRPG4KMZqi+8oHBJ4CkW4E5gt8JSbPRPf54OW
	f8ur7/Gzx5RTdkj90AUEOWcCICffJRf9ji+L5S0xXDdGHGlCnzH5KJxP9LqWfg/gcQNj
	JpnhLbs1CjAm4q08H3WlCtpoAh5wRN7I4cbkczJRJnF6cP7efGaPIOyeYoQGW1IK61Xk
	A5Wsnot1+ItqyxACqNTaUlqe6sR9I4UJiz3z4dWNSMJ+BUkQYcUYy/3P3DjjPBEEL2M8
	fysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PUbTJrvbjDSSF+HLsUoAxilwfd8vpCCoS9CINNaN02U=;
	b=UdncDSXRpHPlFDeIjJ+5Fy7zfI9Pru7Zb0GAsz+xm5vMdhpSYy8gYJNBIAn8WWDxsW
	xBgfvtSqsICJ/wt+rwGgx0ZlRw2WW7ke+snFTtk33GhINqZJlW7DX+GvUok90cKCn36Q
	xjNCtGj5pGzXJJi3dqGoNGoFZ2oYKzYJJw8kd9z6jn5+WQ9AE8nt4V6xhObQFzAAaPg7
	0lULzO/z9IeAwLH3UMc+vqIZAJv3/sAV4MEWYrXhzjvQbRpjK7+NfAPYo33UwqvECNHG
	9Jk5WIVMrZ8Ve6fP7MtBpeFMtyEK9ETo37mp0B2cbm8N582r8C07iet3pS61Xc7SRpKN
	P/JA==
X-Gm-Message-State: AN3rC/5hhmcIKDZg7brc0oAEuXDJTK8Ht5IWZAxTTQssEZDSzTWOYhy2
	KcaunO/uaoJb1W9uhAk=
X-Received: by 10.36.94.138 with SMTP id h132mr2255088itb.104.1492673405762;
	Thu, 20 Apr 2017 00:30:05 -0700 (PDT)
Received: from linux-uys3 ([108.161.123.115]) by smtp.gmail.com with ESMTPSA id
	j130sm2440719ioj.19.2017.04.20.00.30.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 00:30:04 -0700 (PDT)
Date: Thu, 20 Apr 2017 03:30:03 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170420073003.GC25443@linux-uys3>
References: <20170420072609.GB25443@linux-uys3>
MIME-Version: 1.0
In-Reply-To: <20170420072609.GB25443@linux-uys3>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: overzealous packagedata
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
X-List-Received-Date: Thu, 20 Apr 2017 07:30:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

...or let me ask this question another way...

Does anyone have accelerated graphics working on the beagleboard with x11
(ti-sgx-ddk-um?) and if so, what did you do to get it to build (and run)?

