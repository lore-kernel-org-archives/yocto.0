Return-Path: <jbduro2@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10773E014B5
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:01:00 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id c50so184741eek.18
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=FVPEadHtEh0n5wGaKMk+FdfA+hHRbDGKfx16ChkpLkc=;
	b=U56ZeQCGy9d4E1+4vVHZurWQt+H97OguwXDxSsw6RsdnJ3A2l1xrzO/Gu+BedQjEsi
	i3f8PHwloQO83TjSpiLEUPjVT9st2aEGHgX3sGP0HxZ0DTagsfHWuF3PblFBc2oFRD+8
	ptZyqRXxaGdNCmlBbmOcPm4GCzui9vYprK0asy91KLKCiglcMX60Y6DfX4DpVeahgrkh
	NqyOvD4OYtYg20ISlKR2PYeq6f07lELXqNhs+eXT5HELwr3iGTgJaSdLrUWOm0HAY89z
	6ldKHO8NKa14rK6q2p8m6P6hYpN049/9xMtNhh2Zgd6QlxaysoPrsePG2LcSJqYxbYnh
	ePGA==
X-Received: by 10.15.43.73 with SMTP id w49mr5070308eev.12.1365595259886;
	Wed, 10 Apr 2013 05:00:59 -0700 (PDT)
Received: from [192.168.31.102] (186.140.6.109.rev.sfr.net. [109.6.140.186])
	by mx.google.com with ESMTPS id i53sm14000840eeu.5.2013.04.10.05.00.57
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Apr 2013 05:00:58 -0700 (PDT)
Message-ID: <51655477.8000106@gmail.com>
Date: Wed, 10 Apr 2013 14:00:55 +0200
From: Jean-baptiste DUONEA <jbduro2@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
In-Reply-To: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
X-Mailman-Approved-At: Wed, 10 Apr 2013 11:13:06 -0700
Subject: Re: "trap: 80: SIGHUP: bad trap" comes up when building core-image-sato.
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
X-List-Received-Date: Wed, 10 Apr 2013 12:01:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Problem comes from Dash shell, which is used by default on Ubuntu.
You have to reconfigure your terminal and disable the usage of Dash :
Type in your console : sudo dpkg-reconfigure dash
Choose the answer "No"
Close and launch your terminal, now it will works !

