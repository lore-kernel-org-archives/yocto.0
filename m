Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61E01E003D6
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2012 06:14:04 -0700 (PDT)
Received: from mail-wi0-f200.google.com ([209.85.212.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 20 Oct 2012 06:13:38 -0700
Received: by mail-wi0-f200.google.com with SMTP id hm4so910870wib.11
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2012 06:14:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=Vn6U2qnaeqc4Te0xyFRMXKK3HjyEmkGvtnEHcngPF+M=;
	b=cJ5PgRIavlB28PfOsBnM4hRWKTTOf1B92NmR1ULBeGcEfCYQTUNk1po8kxnO1AbMpB
	og/A7x2HQdIJY4KGsXIzVl36BYK34rVbuSZbBoyI/nXhT5beofWZsv9KGuLt9jAKfWaw
	abpXYXxaxpQXVQsVUKGnm4Stoq/ClQSU8kPn65gwFp+wEfCt2W8Gm+jM5X6R67TOn+rw
	5GId6DZTZJXIm1iLY4k8PHtnW1V0gCNhB1PfFGOKY0B7yRZo/PFv/vj0GQS1ozeSoVvO
	6lRuPJA+V4YR8tzBhM3LQPb7Ne7KM8JNdl5q/cbAkngXVv9K3MsUfMJHTcN5AlmWj1Xp
	9EXw==
Received: by 10.216.197.104 with SMTP id s82mr2359167wen.62.1350738841762;
	Sat, 20 Oct 2012 06:14:01 -0700 (PDT)
Received: by 10.216.197.104 with SMTP id s82mr2359162wen.62.1350738841625;
	Sat, 20 Oct 2012 06:14:01 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id ei1sm9515843wid.7.2012.10.20.06.13.54
	(version=SSLv3 cipher=OTHER); Sat, 20 Oct 2012 06:13:55 -0700 (PDT)
Date: Sat, 20 Oct 2012 14:13:53 +0100
From: Ross Burton <ross.burton@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <F64E08712DD6411382AF9D687D4A9F51@intel.com>
In-Reply-To: <1377035.Z5LEapOdJV@helios>
References: <508164D0.1020408@r-finger.com>
	<50819565.5090604@linux.intel.com> <1377035.Z5LEapOdJV@helios>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQlyEiRGCISZpdAlWW3xF2Rl0xW7n3jsOY/eFgnJlgSXUXbCa66Jlwgro6R9SD0FtaNRVwoewkGtCLsg3B8TbMoBHRBdtaywuIHuac96koiqFP/azGQMDEyc4mE6MTNuN+kEQD+FvQlmbka7sdC7jJwlyq06DQ==
Cc: Tomas Frydrych <tf@r-finger.com>, yocto@yoctoproject.org
Subject: Re: why was meta-dlna submodule history stripped out?
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
X-List-Received-Date: Sat, 20 Oct 2012 13:14:04 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Saturday, 20 October 2012 at 13:16, Paul Eggleton wrote:
> Long term however I'd rather see the additional unique recipes in meta-
> guacamayo itself go into more official OE community layers. meta-dlna would
> continue to take them from there using combo-layer though I suspect. (This is
> the plan I have for meta-baryon.)

Agreed.  I've been attempting to push the obvious fixes to packages in oe-core back there, and meta-oe/meta-multimedia is an obvious home for the bulk of the rest.  Guacamayo should ideally be an integration and customisation home consisting of bbappends and guacamayo-specific recipes only, IMHO. 

Ross

