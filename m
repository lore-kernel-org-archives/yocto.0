Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B8AAE00869
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 12:58:57 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id uy17so12732245igb.4
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 12:58:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=vKUUZsJubIWmMTFF/JDOXBdgBSFxe2fScRxAToYyH4g=;
	b=lZV997lTlnxKihVkighK3AOEyIwFaFSfxjrQsnEUOe5ZbZAQkeXzHja+KdFSyU5/5P
	V3k2vkLgQ9uaHu3GliuF3Oor8hEVzRfvbmbCX6uP4EkeX9Dr5Y4U7XtYqLSS/ZvD2nCy
	Y0c3R3mkLXfO8T1p4Zx9HKbMnmluhMatS9rtB40/1iht1fbHRLDUO/7iSonP+FQjX/WU
	GUR7wjBh4Vr9tkPpKMKNpLZ/EVuMEfynRhLjKZUuDcREDF0XgSpvgopJMsfmbTIqlnvz
	iovgBlmoNf8sPZLgCIT+NpQpo9+mbGANaKFfkYU0ZdkfrIe274SLxqPa5de79v0+tvC9
	maPQ==
X-Gm-Message-State: ALoCoQkFYkpV9YuKL17A5nWV4VC/dU+QwbJJO2PNSVeKbE3jCDoUMU1bX9YtMA0f4cxKs5kydUjM
X-Received: by 10.43.56.4 with SMTP id wa4mr10078776icb.18.1389905937144;
	Thu, 16 Jan 2014 12:58:57 -0800 (PST)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id g6sm13866306igg.9.2014.01.16.12.58.55
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 16 Jan 2014 12:58:56 -0800 (PST)
Message-ID: <52D8480E.9040308@linaro.org>
Date: Thu, 16 Jan 2014 15:58:54 -0500
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
References: <52D5B92C.5040001@linaro.org>
In-Reply-To: <52D5B92C.5040001@linaro.org>
Subject: Re: ** bug squashing weekend - Jan 17 to 20, 2014
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
X-List-Received-Date: Thu, 16 Jan 2014 20:59:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hopefully some of you have had the time to peruse the bugzilla database
and have chosen a bug or two you'd like to quash this weekend. The bug
hunt starts Friday Jan 16 and runs until Monday.

If you're looking for more ideas there are some janitorial tasks
outlined here:
https://wiki.yoctoproject.org/wiki/Janitors

