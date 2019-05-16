Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF161E00B3E; Thu, 16 May 2019 09:16:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 755E9E00942
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:16:44 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id e15so4072852wrs.4
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=n+zEkMm0TmZKo4yVZOYQ286HvM8jI/8UowBbHFdltSM=;
	b=PsBC75Mnh8mBVJ5SW4bB5YdY74IumeejWOBmMFBeS6b68wY9RFtbvTfp9NYQctG6CD
	BsVPlnH4nnr4ozcxVBeTs/jVkUwXbsObQLs+OX/ySUSR3YqIQhCagKM4P4XdoXMHkfJ5
	P1vdhNWuLVJYZYfd4ZDpfsiZmZr1cC8lxXTW/v4R8lVHxGfrqnajJFwcEWFjMZVDgYxL
	W+nkAZhgyDwF29TjRFdMA+R6f4fZu7bZtDchzMdvOoH5hJhYyKyhFcHcMVEH9V/5goJb
	aQ5YKDQMOE+U5OcatgbXbHzW0siz5d7e7xbfW7Vx4bHvps7V6BVTuSEVPLrNe7Ja1uL8
	FOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=n+zEkMm0TmZKo4yVZOYQ286HvM8jI/8UowBbHFdltSM=;
	b=F7P89FsJcXrHME0OrHQjbQhlltrRDJ/u7uF4MmMCDO/5YhH/+hi5CnMttK/pNBn+oM
	3E6FCgFwdSg9K9Y5UvT0RtcajPsa/PNSqFwAgTgXd6zORl0TNSqjiOx3Tx9NpAZcTbrP
	NridAYmUetEzvBknkJuxM69eQFUnP5E9na0KhMeh0t/IC81bDWw4aUb7MTCKI3bbqXVZ
	fyTyKTTRX6Vd53Zbgs9lJ8U2dHNn7ueObl8zErJ5c/vZ7w3kJ07hRrWmn+PZPQuw1V18
	pROtkZ9AdI3K976FOGPZKC86c2fUdxh/NMht/mQxIUgLizETYi3T3rd/gkCwMrW1ETgj
	6gLw==
X-Gm-Message-State: APjAAAVDcBnmVxnCGNtdhQ2WSBer80PqZLukxWuS+wU+05W9Ml57918l
	qbCKfW3csUTMKJI4ZnaLEQYROdSc3TA=
X-Google-Smtp-Source: APXvYqw5TJ5T2thCt4HEPB2ifzv6BK8DGhbv7DA1epCyRgSpJ8zUWawq3h9CDTnv8V0mcBVVd9e+Pw==
X-Received: by 2002:a5d:6710:: with SMTP id o16mr2291402wru.173.1558023403171; 
	Thu, 16 May 2019 09:16:43 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101])
	by smtp.gmail.com with ESMTPSA id o4sm7461887wmo.20.2019.05.16.09.16.42
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 09:16:42 -0700 (PDT)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <aa294a6f-14ce-f581-546b-56ffb6e9e1bc@gherzan.ro>
Date: Thu, 16 May 2019 17:16:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: I'm currently finishing my masters thesis and I really need a bit of help from you if possible. I have a questionnaire which I need to get some feedback about and filled by people who are deeply involved in Yocto project. Do you think you can sacrifice 10 minutes for this? Thanks in advance. Find the form here: https://docs.google.com/forms/d/e/1FAIpQLSePIfr83Eb3fgylNDJalSxS0xu_Fr7rirz2TT5wWlEqwHwTFg/viewform, , Regards,
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
X-List-Received-Date: Thu, 16 May 2019 16:16:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi guys,

I'm currently finishing my masters thesis and I really need a bit of
help if possible. The project is entitled "Empowering git repositories
with visualization tools to aid awareness of dependencies in open
source" and I have a questionnaire which I need to get some feedback on
and filled by people who are involved in Yocto project. If don't mind
and can sacrifice 10 minutes for this, please find the form here:
https://docs.google.com/forms/d/e/1FAIpQLSePIfr83Eb3fgylNDJalSxS0xu_Fr7rirz2TT5wWlEqwHwTFg/viewform
. If interested, I can come back and validate the results after one week.

Thanks in advance,

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


