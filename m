Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05BF2E011DB
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 13:50:10 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 29 Sep 2012 13:49:54 -0700
Received: by wibhm2 with SMTP id hm2so893413wib.11
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 13:50:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=O3p4G6dqIp2aYf+5FHiRNSJoO6JrHFXUL3sCPXTWMyI=;
	b=AwByvQ6hLUVVyS/o5cvNbTrGIPpbJHEX0v4GxplXLSLlb57ma9oKbh4ydpFuNODisx
	1rHyF6lhBnlfHPKOyyPH4jyNIkerb004kYjpg4qhA/sLjbGn32GGk5oCaTCC/hqW08VU
	XlFgad01MNUlxJ/9pQDDd5cXv5mPBqCGdHSubET9J+Yvo2RTZMGyi8G3xgy3UsCEC69V
	kNC8p9c461S9HxifsxdfRbCy238yR+fNhHV+YvCnN0RM7XhPJcq7UWJJ2ul26Igruo5p
	N5d3BCVXHkpNitNClwy7FA5Uc4L3FRRudQguKp5RLs1hH0X+s3o+GA7A8gx8EJGicUdP
	T+5A==
Received: by 10.217.1.7 with SMTP id m7mr5499424wes.158.1348951808165;
	Sat, 29 Sep 2012 13:50:08 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id do5sm7971832wib.10.2012.09.29.13.50.06
	(version=SSLv3 cipher=OTHER); Sat, 29 Sep 2012 13:50:07 -0700 (PDT)
Date: Sat, 29 Sep 2012 21:50:11 +0100
From: Ross Burton <ross.burton@intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Message-ID: <9EAF22A4DBD743CEA7903B14F00DB03F@intel.com>
In-Reply-To: <1348765649.32215.1.camel@empanada>
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
	<50645E48.7050208@linux.intel.com> <1348765649.32215.1.camel@empanada>
X-Mailer: sparrow 1.6.3 (build 1172)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQm+E/1absqsnGil7LA0ECQEromwfFX5/ehGg/3MvdZAAkPGlo1/jMhO+Lf60z+nu4PuGJNU
Cc: yocto@yoctoproject.org
Subject: Re: Cannot do atom-pc build with meta-cedartrail
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
X-List-Received-Date: Sat, 29 Sep 2012 20:50:11 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Thursday, 27 September 2012 at 18:07, Tom Zanussi wrote:
> Yeah, looks like the other SRC_URIs do that, but it's missing from that
> SRC_URI - I just pushed a fix for this one to meta-intel/master.

Thanks Tom, I've been frequently flipping between atom-pc and cedartrail and this was getting annoying.

Ross 



