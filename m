Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF85AE00723
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 11:39:33 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so615809vbj.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 11:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=4M+TxkJ7X4qOZLCCfPRC3ZlKNyuFpCbHtJ6LSlxV6cM=;
	b=KbXlG89VNaYjsutsIBW5eEsESrkNyEWVcm4M6rWgSrOrVUgWLvrrlAgIFfFthyVdhL
	GKcsL3oISU+G7Hs2AMbOcfZK0BnkmxYLQ/naEpiZZh4ekBF6jdT3htsNyAPPI25SxouT
	MTPGCoziqdumUV4/K5PQR1GMhafCNatHdDGxNSd3i7Uq3ERPCcieNypZB+LuHBj7g2Cc
	3JXHNAxOLxVAqNrNAeOgLcAAMeSxNeqGfVR6YnHeMJINlJk1vtQkkbpaTSqBdOK/YJAX
	W1oIMOAzqfttIVTpZpVlm9aEJ8gkci1AWW26GnVwrAoF6YFG51tSYIdIpsR9edl0+ODu
	rwLQ==
Received: by 10.220.16.8 with SMTP id m8mr14033036vca.10.1340303972868;
	Thu, 21 Jun 2012 11:39:32 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	s10sm30147959vdg.10.2012.06.21.11.39.30 (version=SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 11:39:32 -0700 (PDT)
Message-ID: <4FE36A62.4070300@gmail.com>
Date: Thu, 21 Jun 2012 14:39:30 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4FE3345E.1000202@gmail.com>
In-Reply-To: <4FE3345E.1000202@gmail.com>
Subject: Re: Hob - proper way to select machine and customer layers
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
X-List-Received-Date: Thu, 21 Jun 2012 18:39:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/21/2012 10:49 AM, jfabernathy wrote:
> So I thought I'd give hob a test. Basically, I wanted to do what I 
> could already do with the command line.
>
> Normally, after I set the environment variables, I edit the local.conf 
> to change my machine type and parallel processing options. Then I 
> point the download directory to a centralized one on my system, and 
> add some License statements and some CORE-IMAGE-EXTRA-INSTALL 
> statements for extra packages. Then I edit the bblayer.conf to had the 
> path to my layer and the meta-intel layers.
>
> To use Hob, I set my environment variable and the just ran hob.  It 
> was very slow going through the first 63 packages. I think this is 
> because parallel options had not been set and the packages were all 
> being downloaded again.  But after I got to the UI of hob, I got 
> errors adding my layers to get to the meta-intel layers I wanted.  So 
> I started over and edited local.conf and bblayer.conf prior to 
> launching hob.  Now I could see my machine from meta-intel, but I 
> could not add my layer in. Parsing errors.
>
> Before I report an error, I wanted to see if I have the hob startup 
> process right. The issues is around the right way to add 
> meta-intel/meta-cedartrail and my personal layer in my home directory.
>
> Any advice?
>
> JIm A
>
My experimenting tells me that currently Hob (denzil) only work with new 
added layers that are in the poky directory and not in your home 
directory.  This is a different requirement than normal command line 
usage of bitbake.

Jim A

