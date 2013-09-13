Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F0CCE005B3
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 15:34:31 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id w62so1727139wes.32
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 15:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=Y3kCoDuSpG4ACKXASepb3ykwgK7wOPdZczgjUr0js/E=;
	b=SRPi7ICgOnIedoadR4ve6g+yawTOCj1NLlVrl6Xli2XuJWjS6KTR7skU5EHmI9/EY/
	NCFG/SWN3Qb5Q/GeSlYTMrYd3MonAdV+0zL97yLN+6J/OTFP2MVmW2MlvJ9ShZ8LR05H
	JgHFdSQlC81qy/jNdJvy6mNW4oOU9o+ilp2g52FJqQ+Mxt7EmUhtrcEDxzxZxGY455uv
	iG1I1tGh5Hjan3PmwEpZuDFlM3D20DTTIVAaIF4O7pnKDbD2PAT00q2EXtxEylz/rS5x
	QVEJD1c7y/2fHMwo2OAHVQD6cwxnhnWOScEJD5ROdsRLxV6bo6OqWinkIDbZ0nbBvUJN
	447Q==
X-Gm-Message-State: ALoCoQmCLtJPomCTyPqidDS1VJJbii2Q9t3XU6tocI8z3wsZ7LBZNY6CxxfkL3doe60MuWzn3z6I
X-Received: by 10.180.89.225 with SMTP id br1mr4350855wib.50.1379111670315;
	Fri, 13 Sep 2013 15:34:30 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id mw9sm6070605wib.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 13 Sep 2013 15:34:29 -0700 (PDT)
Message-ID: <523392F3.4000907@vtkloud.com>
Date: Sat, 14 Sep 2013 00:34:27 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: broken meta-baryon?
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
X-List-Received-Date: Fri, 13 Sep 2013 22:34:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I was trying to give a look at Baryon, but I can't bake it. It seems 
there's a package whose sources have vanised :

ERROR: Fetcher failure for URL: 
'http://code.entropywave.com/download/orc/orc-0.4.5.tar.gz;name=orc'. 
Checksum mismatch!
File: '/media/yocto/downloads/orc-0.4.5.tar.gz' has md5 checksum 
5b6d74f1453e20c09d6a20d909779ad7 when e26e59428b13ec251916f34bea96eee5 
was expected
File: '/media/yocto/downloads/orc-0.4.5.tar.gz' has sha256 checksum 
6f0e2620a2a986c8329612f1db92f273949a58480290ace72eca7f1dba1a5c98 when 
4e04953643cd8e67f8d9796da9547a606954e3944e42e7ce5a099440fd8e729e was 
expected
If this change is expected (e.g. you have upgraded to a new version 
without updating the checksums) then you can use these lines within the 
recipe:
SRC_URI[orc.md5sum] = "5b6d74f1453e20c09d6a20d909779ad7"
SRC_URI[orc.sha256sum] = 
"6f0e2620a2a986c8329612f1db92f273949a58480290ace72eca7f1dba1a5c98"
Otherwise you should retry the download and/or check with upstream to 
determine if the file has become corrupted or otherwise unexpectedly 
modified.


Is the Baryon maintainer aware of this or is this just me ?

Regards
Jay


