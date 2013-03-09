Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25100E006E9
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2013 12:45:33 -0800 (PST)
Received: by mail-lb0-f179.google.com with SMTP id j14so2146437lbo.24
	for <yocto@yoctoproject.org>; Sat, 09 Mar 2013 12:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=Ch2DNXOHotwSZPqXayFzZZRsw3b1/WQ1evcSVvFWkOE=;
	b=Q+/Nbwc5EsonYnFoVMtT+bDcT2Ez78HgaJFkQggMxaNS66CAtz3LJ/q+fAfM4YT57n
	7h6hk/3vHKdkifOibT6A0cy+f/+AdZaKgfv2KZEvi61Fn3ee29P+dV0we9blQtAqn9Ow
	G+YaQl3rXtji5nqn9g02oI451EkKiBYrpK1RU4XlMosddywOWAVndaXHJCnxi3Pt7HQx
	6xiTvaruKVAV/5snx5G7PHR5W85QeBrl8YRRJHCGay8CnvI6efSyO0iLsTJuqrSELJo9
	NAeh+EVM0nSr0buMdHFZPpvD91wSBI0ogzHOxmG+B6fjTReXQGL9MDwfBsBHKqM9FFry
	OA2w==
X-Received: by 10.112.101.230 with SMTP id fj6mr2598376lbb.115.1362861932055; 
	Sat, 09 Mar 2013 12:45:32 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id f4sm2933351lbo.4.2013.03.09.12.45.30
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Mar 2013 12:45:31 -0800 (PST)
Message-ID: <513B9F69.5010109@gmail.com>
Date: Sat, 09 Mar 2013 21:45:29 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: FUSE user-space library
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
X-List-Received-Date: Sat, 09 Mar 2013 20:45:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi. Anyone started to look at including the FUSE user-space library as 
part of Yocto?

Hans



