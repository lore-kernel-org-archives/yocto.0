Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC13FE0027E
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 09:05:35 -0700 (PDT)
Received: by mail-da0-f48.google.com with SMTP id z8so2359594dad.35
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 09:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=qBtDpmu6ZK5LBG9wvu4mHwELXJNDqWWPOeMSMWaJo1k=;
	b=aLAaYNU3FYumslok9sTWzOdoVo5TLQI+n90nX8Dw+ycRRIjkfTYLRD6OSlFXAIB1JB
	E6HqcsVayugdyTTbT6GLeGNnxPz6ruQX+VrygqotbcmPRug0jHbZJ1R1zjta2b0hKnXA
	bgZyQppLO5Sp85vEREr3ZjT4+0ppIQt5whLMeLldD/meRI0s4UQIu9cCH/oshpKX+yHx
	Vp5ZbidRsBvoPtcNphQnNVmhQ7CB60HRRy0A5ikCu/gQN36Q0gak6q+47j9E+egs+aOW
	HsL8RsRSmM61yZ9sJIRE4MQCI/UeBdKw+IxHKh42QxfthIP/LpkqGiC53RKbTJI70adO
	oikA==
Received: by 10.66.73.226 with SMTP id o2mr19637185pav.83.1350144335595;
	Sat, 13 Oct 2012 09:05:35 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id iu8sm6200811pbc.71.2012.10.13.09.05.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Oct 2012 09:05:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <507987B9.4020309@balister.org>
Date: Sat, 13 Oct 2012 20:05:28 +0400
Message-Id: <15E002D4-F284-4675-A53F-19D9F72706CB@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
	<50797A91.8080205@balister.org>
	<530FA222-35A3-4E03-9245-5D9E5B8AD079@gmail.com>
	<507987B9.4020309@balister.org>
To: Philip Balister <philip@balister.org>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Any updates to meta-zynq in the pipeline?
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
X-List-Received-Date: Sat, 13 Oct 2012 16:05:35 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
       I just took a quick look both the repos

My initial reaction is that I think Philip's repo appears to better =
structured, and attempts to use the xilinx kernel and u-boot repos, =
which for these targets is a good thing, given the state of the =
development for this new board.

I also think its probably good to take then best of both repos, and =
maintain a single meta-zynq layer, since both these repos are in its =
initial stages.

I'll give more feedback, as I progress with my build and test runs on =
the target board.

Best regards,

Elvis Dowson



