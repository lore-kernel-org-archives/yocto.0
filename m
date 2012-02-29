Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5437E0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 12:32:37 -0800 (PST)
Received: by vcbfl17 with SMTP id fl17so5027265vcb.35
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 12:32:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jfabernathy@gmail.com designates
	10.52.91.47 as permitted sender) client-ip=10.52.91.47; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jfabernathy@gmail.com
	designates 10.52.91.47 as permitted sender)
	smtp.mail=jfabernathy@gmail.com;
	dkim=pass header.i=jfabernathy@gmail.com
Received: from mr.google.com ([10.52.91.47])
	by 10.52.91.47 with SMTP id cb15mr2474438vdb.76.1330547557282 (num_hops
	= 1); Wed, 29 Feb 2012 12:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=8J68TTZ3C2wqnzFykrHEugVQ595QRsooQrnEq5JTr4Y=;
	b=m7OM/BGDmjQu8XGYl8b538rLcASs49qBwkk2mPWdfj9zLE456saOmtVGS4/UkYd2k4
	OEvekc3Mc28Dp/OXOLYJfDzIA42xrE0EAaNOrC8/vUvA8QovQVj7Ab0OI8u383vuCH5h
	SGCFVa8Ls5aaKb/Un3aPrHvKh4oIgHVWyj6KA=
Received: by 10.52.91.47 with SMTP id cb15mr2118240vdb.76.1330547556996;
	Wed, 29 Feb 2012 12:32:36 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-49-18.dhcp.embarqhsd.net. [184.3.49.18])
	by mx.google.com with ESMTPS id ht6sm326191vdb.8.2012.02.29.12.32.35
	(version=SSLv3 cipher=OTHER); Wed, 29 Feb 2012 12:32:35 -0800 (PST)
Message-ID: <4F4E8B62.6010209@gmail.com>
Date: Wed, 29 Feb 2012 15:32:34 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: building with 1.2_M3
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
X-List-Received-Date: Wed, 29 Feb 2012 20:32:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Just for fun, I thought I'd build meta-cedartrail today since I saw 
1.2_M3 branch show up when I did a git pull today.  The only thing I did 
above the basic BSP was to include my meta-jfa layer which is nothing 
more than my hello world application and web-webkit, which is already in 
the meta layer.

I added to local.conf the following lines, like I alway do:

POKY_EXTRA_INSTALL += "web-webkit"

POKY_EXTRA_INSTALL += "hello"

I also added the meta-intel, meta-intel/meta-cedartrail, and meta-jfa to 
my bblayers.conf.

However, unlike the last time I ran this against master branch, I didn't 
get "hello" or "web-webkit" in my image, as I usually do.

Is this just a quirk with 1.2_M3 or did something break?

JIm A


