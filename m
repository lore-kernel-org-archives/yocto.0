Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD9EE01422
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 07:49:03 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so581258ggn.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=Xy8JT4bV4wgXpDNBtCcgherUddCSr6Eoa00AARgt/oc=;
	b=QbH/6E8BjkMrTBsm8KK7ERd5uWWR3J6h02KST0vtIkm1iWAx/2iJAEiRLKCqSYa6nZ
	DAccOe0GIoA8H1d/Jb2xAwUesypwp82YQvMyMczZoENhmZaoXPFSnO+NdHBNsHp8YynF
	mkr0qIaihzhlVgH7JTgB59pXRHSgo0iuvjgvvac+kxHJmr5M3VdmjFyRXnN6pBGk0J0X
	DPAp5QRiZ+QqxAsyyAqXpiUnNPW832jl6tlYcq3606Jo2sCylOPxg+D1R6bsYfxEhufJ
	QOaDG/1KjB2oP2YdDLgNjZQDFiQqzDeYp51os7njpZdNsqtlKLSTJOOIZnWdzA6fScT6
	HsNg==
Received: by 10.236.46.195 with SMTP id r43mr32282427yhb.86.1340290142587;
	Thu, 21 Jun 2012 07:49:02 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	p3sm45390560ano.11.2012.06.21.07.49.01 (version=SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 07:49:02 -0700 (PDT)
Message-ID: <4FE3345E.1000202@gmail.com>
Date: Thu, 21 Jun 2012 10:49:02 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Hob - proper way to select machine and customer layers
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
X-List-Received-Date: Thu, 21 Jun 2012 14:49:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

So I thought I'd give hob a test. Basically, I wanted to do what I could 
already do with the command line.

Normally, after I set the environment variables, I edit the local.conf 
to change my machine type and parallel processing options. Then I point 
the download directory to a centralized one on my system, and add some 
License statements and some CORE-IMAGE-EXTRA-INSTALL statements for 
extra packages. Then I edit the bblayer.conf to had the path to my layer 
and the meta-intel layers.

To use Hob, I set my environment variable and the just ran hob.  It was 
very slow going through the first 63 packages. I think this is because 
parallel options had not been set and the packages were all being 
downloaded again.  But after I got to the UI of hob, I got errors adding 
my layers to get to the meta-intel layers I wanted.  So I started over 
and edited local.conf and bblayer.conf prior to launching hob.  Now I 
could see my machine from meta-intel, but I could not add my layer in. 
Parsing errors.

Before I report an error, I wanted to see if I have the hob startup 
process right. The issues is around the right way to add 
meta-intel/meta-cedartrail and my personal layer in my home directory.

Any advice?

JIm A


