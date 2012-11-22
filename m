Return-Path: <saul.wold@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A92E00294
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 16:38:52 -0800 (PST)
Received: from mail-pa0-f72.google.com ([209.85.220.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 21 Nov 2012 16:38:52 -0800
Received: by mail-pa0-f72.google.com with SMTP id hz10so8791316pad.11
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 16:38:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding:x-gm-message-state;
	bh=ORNv3JNoWIJG0jVEZtB6lMW2G37ijlexU+hWz6wOsPg=;
	b=TCNGTjRwM7b34bq/sBpaMXzYUDsorHx5TYmylwWxmth8RBtgln27ZcheP0ybyN1N6N
	JAcZYRRWX850YxdelV1nhg9sJno1QXcZg2fxe8CunBWzsH/w3vSR6b41impzB877AQez
	iWzt0S3e4fGzvWOmZRASSEF7zFTIIDFIHXIkHzbg2w2vk+xGU/5u/Ot0doLo9OcsfmF/
	gooyyHyCUPZpxfboQ7vIuiIn8rpN+dAXf7iVSYNFbQ5TLwajEWKUlzj0/5xp1EOSANr6
	dpzf0C1OhtCS5gBMsQAr9uzrPrdktMYmEkamMbAe2pviAg5Az0S1Why3mXENPKpoOqLN
	EeJQ==
Received: by 10.66.88.41 with SMTP id bd9mr21689473pab.46.1353544731769;
	Wed, 21 Nov 2012 16:38:51 -0800 (PST)
Received: by 10.66.88.41 with SMTP id bd9mr21689466pab.46.1353544731711;
	Wed, 21 Nov 2012 16:38:51 -0800 (PST)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id ok3sm1031448pbb.11.2012.11.21.16.38.50
	(version=SSLv3 cipher=OTHER); Wed, 21 Nov 2012 16:38:51 -0800 (PST)
Message-ID: <50AD741A.9070201@intel.com>
Date: Wed, 21 Nov 2012 16:38:50 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlxRxtNXPV2QCuBf5rbaH0S6dYN+Us8hXo0hDyVDlmzo+7o4HoMEjAj2YnRYLNvTWGB5BykWvldBtGPPbeo7yzVZERcF06L2cT5scj41qHbqj5MWLjKlL/ZPX8X8CTqez4CSIA1cruR1AuG0lQPlrpyIuP1mA==
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
X-List-Received-Date: Thu, 22 Nov 2012 00:38:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


We have done nightly build, while there are a couple of failures in the 
Atom-PC build (kernel issue, Bruce has addressed) and Beagle board, 
(xf86 issue which will be looked at tomorrow).  Testing can start on as 
many platforms that we got binaries for the fixes for these issues will 
not require re-testing of other platforms.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1b4dcf10b0fe9b4e95ca84f32de0c7dcfee2b729

This contains the build artifacts.

http://autobuilder.yoctoproject.org/pub/nightly/20121121-3/

Please do standard weekly testing.

Thanks
	Sau!
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto



