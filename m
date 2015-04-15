Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFAE2E00997; Wed, 15 Apr 2015 16:08:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AA93E00949
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 16:08:03 -0700 (PDT)
Received: by pdea3 with SMTP id a3so68832276pde.3
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 16:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:openpgp:content-type:content-transfer-encoding;
	bh=ikFVr8zE4yR4clmsykDA47W9wtLK2FL8El1/3Wwb0o4=;
	b=h+rSqOKyBq4pPT5lrdaA9KKmhNUe1Em+1WvxsbUyNl7ZcOhnUX0RmGmlHR6nXPTk9S
	qi9cijq8JKvxIBxi6/+gT6h6NqDtk6LfWWxsO3Cnt1AQ1kTc48SHw89/E8ZBE6BQyVbx
	vAdqPH6f36xvjrU+Uv35B7+uaXntqLbC/iPgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:openpgp:content-type
	:content-transfer-encoding;
	bh=ikFVr8zE4yR4clmsykDA47W9wtLK2FL8El1/3Wwb0o4=;
	b=QUgnIsbzCMCYmSgkZv9bypnNc9+FCCrW0fwhorC57WkNE7F7CCA2HzXo46yywV13Ia
	cZ/pJTne8PzO5iDmxe3qjEHlcLLxiiyhT18cx7NnmZmwReODTFN4oL6l9eDXiADzIyCS
	cA1OH3YMQh6cDACXOkIq05cMczpIKifJK2/NiZb0M0siIcjnUiyCJRNtJ2kiIDhBJRe6
	i9UGbXVZWwlqtIrAd+0O9pOpQgRJpP46cLXbIFI7WlsHGtVfepyYDWrblJPBmNW6K5YH
	6ZVmA7JKUeAz+fBrWoIC1S5opOaGapLGr9NDMGVcQt4J5K+qncCn/KTru2rcLNX+VQx5
	qcYg==
X-Gm-Message-State: ALoCoQkFLvyRly+U0Vtdmj97bkIw53RRC61GzD4Jf6dSKZomC94O76R4voG3O7RbyagKsURUaNpN
X-Received: by 10.68.97.2 with SMTP id dw2mr50686740pbb.89.1429139283336;
	Wed, 15 Apr 2015 16:08:03 -0700 (PDT)
Received: from [192.168.17.102] (static-50-43-13-43.bvtn.or.frontiernet.net.
	[50.43.13.43])
	by mx.google.com with ESMTPSA id k4sm5117863pdg.87.2015.04.15.16.08.01
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Apr 2015 16:08:02 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <552EEF51.40703@yoctoproject.org>
Date: Wed, 15 Apr 2015 16:08:01 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
OpenPGP: id=D1F2407285E571ED12A407A73373170601861969
Subject: adtrepo clean-up
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
X-List-Received-Date: Wed, 15 Apr 2015 23:08:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

After examining download logs it appears we could safely delete versions
1.0-1.3.x from http://adtrepo.yoctoproject.org/. They are only accessed
by web crawlers at this point. Removing them would make room for more
releases and save on hardware budget.

Are there any reasons to keep versions 1.0-1.3.x in
http://adtrepo.yoctoproject.org/?

-- 
Michael Halstead
Yocto Project / SysAdmin

