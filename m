Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C751E01443
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 17:49:35 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 06 Jun 2012 17:49:28 -0700
Received: by lbbgh12 with SMTP id gh12so122249lbb.25
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2012 17:49:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=/OrUpKqGFpGF2Q67MrR2g6uK+AzH952+vraIojm70/U=;
	b=UHbVQwP+2Gq7ipenkfOmkJE8GHVogZkpZuUTV2VWFzuLn2jBv3y0SJcHm51uxY82mb
	WFPoymO6Uh0FR/lp13bwPvOywVU9c8UccXdv2c8/4JS3oppAswDiH8v4bdGJAhX9Yhf2
	Bpi5nIQQ0fFibM5luIDtueaHZ7MeC4zzCchqYjCHoBuMBsdTbpdFIipgP71XNT1Sldj4
	RlDmxXzAtM9CfHiL2TFbWybbADI+raDcwEuA5y6NC8vCRzY2rc4f4UCGuAKZWMi9faPC
	TDHjvwuetBOLpny25mwY/GdgZlCq+K5OM3lFn4YUTWnP+bFKVVZ9fcI5ddcjKGVJpurz
	r6IA==
MIME-Version: 1.0
Received: by 10.112.48.169 with SMTP id m9mr290509lbn.93.1339030166581; Wed,
	06 Jun 2012 17:49:26 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 6 Jun 2012 17:49:26 -0700 (PDT)
Date: Wed, 6 Jun 2012 17:49:26 -0700
Message-ID: <CAPhnLPBtE3qBgPE5+BfOkTfiLvHz6zqPzYNH82VcXH_RtCqw8A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmlRfVhemORaSV4LM9J86ec0+n1yN/utCD0MDwOVSg19HCHAYw6DFbJLYpyYJgtB5DDGu2i
Subject: Weekly build 1.3_M4 Week 4
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Jun 2012 00:49:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build of 1.3_M4 Week 4 will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20120606-1

Some minor issues with the buildhistory sync step have been identified
and fixed in the autobuilder. They are pending testing before being
pushed to the autobuilder master. These issues do not effect build
artifacts and are safe to ignore for QA purposes.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

