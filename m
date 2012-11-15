Return-Path: <saul.wold@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F70E0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 16:17:19 -0800 (PST)
Received: from mail-pa0-f72.google.com ([209.85.220.72])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 14 Nov 2012 16:17:18 -0800
Received: by mail-pa0-f72.google.com with SMTP id fb11so3187196pad.11
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 16:17:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding:x-gm-message-state;
	bh=EQdmvi7HbqzhESfZXEJ/Mzy0XreZu3g8IKp4ShOV2pQ=;
	b=nP19yylSdz4lxpTOXqZYENetNnTZD+CODSK2cr0WkZWWwVhhfMpMnAv3eqR6p2kr7o
	xeB9tieIjbjoV9JSAnOdefoJq2xL/b759Pfh4ywOUgLYEaW5GzZnYstVEY11EtXsHL+P
	ctThCCeUGazgQm/N1Hn+Rl4jNPuZU3EHLz7UCQINbWjGDK2WpX/lVPaBVyHvd5jBRHjN
	w3HiTRfK1ml75HswrEtYhPngPxLu520a4hkYnAxgDg0o5qpeJnxZ2QoO4zv7NyG572C8
	Z29KtO9t7HMz/enfKPow/2Xmn57GoMMMF+liIXlFI4TlJfy2JXIXMZS6pt91C91TguHW
	3PGQ==
Received: by 10.66.78.169 with SMTP id c9mr2561269pax.30.1352938637754;
	Wed, 14 Nov 2012 16:17:17 -0800 (PST)
Received: by 10.66.78.169 with SMTP id c9mr2561230pax.30.1352938637492;
	Wed, 14 Nov 2012 16:17:17 -0800 (PST)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id o1sm8678048paz.34.2012.11.14.16.17.16
	(version=SSLv3 cipher=OTHER); Wed, 14 Nov 2012 16:17:16 -0800 (PST)
Message-ID: <50A4348B.9040200@intel.com>
Date: Wed, 14 Nov 2012 16:17:15 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkHut52AjfD8mt3hf1Viczh1du6DM1C1T8m/oj5WhfSSKvt38ivIqcAmjEU4fAZaCtfaW0I0BXHQC7WA6cuTNzD+PTdazHf99C1JOKmfYLUxOettbzlbDi98pq+vwca0bRQy8hB0K1RMFOPBozgNeWgN4S13w==
Subject: Nightly Build for Weekly Testing
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
X-List-Received-Date: Thu, 15 Nov 2012 00:17:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


We have done nightly build, while it's showing red the failures are due 
to a shared state issue which Richard fixed quickly.  The build was done 
with the commit prior to what I list here.  This is to ensure we
have Richard's sstate version bump and won't see these issue.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=9e0d3c0faa9cc80ce8f2ce0eb31dcd20ef875955

This contains the build artifacts.

http://autobuilder.yoctoproject.org/pub/nightly/20121114-1/machines/

Please do standard weekly testing.

Thanks
	Sau!

