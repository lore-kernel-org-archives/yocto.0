Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4454CE00D33; Wed, 18 Oct 2017 15:29:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0456E00C96
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 15:29:34 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id f4so12871726wme.0
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 15:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=IqPQlgagzF79kWladoCxhG3WhJhksz+NHmetng1P1nU=;
	b=QSuQFEODHPe6lPiZrder0c2r3aYu2iCrKWp39gT5yKETsp6HkEuyx08cM39VLkwfNv
	IbTIUkdwI+Qz6jA4AE+5hUkMjMG/BdJzFDX10M1lBVkvykH5YozA5F3raTUO2Ts3y+Vo
	mFOKjIGo3ikj9jH5Ki9dksDQXZ9lk6zTB3PsCytvPTTd9JMnafuSn6+DVSEQbricrBrB
	m5WxAJlKi3L0srsgZtebaXWeMIDhnGoD6dhxMkwTYLphLaUWtRfPbWYq+dT5rm8zn0M+
	7os0sTtu8H54c2I7mLbpy7X24sERBPCTFOZpiKkuIV2ucdYrgCzbDVNpE9OgFYPmTqiz
	LISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=IqPQlgagzF79kWladoCxhG3WhJhksz+NHmetng1P1nU=;
	b=eUcyQOBn7OJ9ZBE5nxCmTwR5sYkwM9knFJ93jNFAsBNcXZpbUfzETWGfY1YLaIJXFj
	I00Y6/EisLQ+eQrLFN7ssQxmIcFIkiL5JXxoXLgIlsA2VXa0K+SZorXp8Bj9wwy5ZsbM
	3uO6a5P4V7LGugtGvTlrxOHVuOl27/nauWEhPewB0QW60vDVkOdUB0w48x50fhwRY3/h
	jKIxCXYxfLZixZCRNfNxexXUcS+KXGYdVex+ubbFO8oqDDUKxwrUFbqqf58lPWgnq12P
	7gVjKUNfgPsAyeJg216huA8B1YGPT+GE14p/HvNpJm4AncD1yBjkCD0RiBEGIeHKWZ4G
	+gJA==
X-Gm-Message-State: AMCzsaVKbx9XQ0rC1bFYpYpyMRMlTlGLsTWsebufxtL9gB5d4bTlmuc5
	7c5Y29BeVEr40AhdIoxP5d2k8QF1
X-Google-Smtp-Source: ABhQp+Q2/Q4Y6n41WroBKFpDBIOo5R1qIG1JfX8osoan1I9MUHZx+zSXkrpfEVrlUbm/LbQFjclUZw==
X-Received: by 10.80.207.195 with SMTP id i3mr81217edk.55.1508365773121;
	Wed, 18 Oct 2017 15:29:33 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-168-248.home.otenet.gr.
	[2.86.168.248])
	by smtp.gmail.com with ESMTPSA id u4sm8712473edc.88.2017.10.18.15.29.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Oct 2017 15:29:32 -0700 (PDT)
To: bruce.ashfield@windriver.com,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <ee4f65eb-0da2-508c-b057-ccc25f024125@gmail.com>
Date: Thu, 19 Oct 2017 01:29:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: more efficient debug kernel
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
X-List-Received-Date: Wed, 18 Oct 2017 22:29:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I usually build a debug kernel with debug info included, which makes it 
run "suboptimal". Distros build the kernel with CONFIG_DEBUG_INFO 
enables, but strip symbols out of the resulting kernel and kernel 
modules, and place them in the separate debuginfo packages. This makes 
the kernel much smaller and also makes it run more efficiently because 
of caching.

Is this possible with the Yocto kernel tooling as well?

Regards,

Robert

