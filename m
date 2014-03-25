Return-Path: <trevor.woerner@linaro.org>
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A062CE00975
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 17:11:22 -0700 (PDT)
Received: by mail-yh0-f44.google.com with SMTP id f10so6015909yha.31
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 17:11:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=alaEu1pOhlqd9a3XnyekC/NbdLo61xTjBlNWSklTgPo=;
	b=KHR+4EgzbOxC3Qc4xx6p3MmBXL3BrtGQyrZv1qLv3s+sVehUrZzHCuWOyEW2diVS/2
	DBrrqVR0YYCgrNrwB9oKcwp9HcMZ4ghubKiI1/2femO/Dp/By+BYRP388r10LE0/79mp
	4OonUeUSZCKDB2JfkmBiE19WmMguvm7u+oQtI+UjFMIqqXPW5j5qPjuxLRz0lwPJMY9o
	HmyejKLxZ9PDLlwa2R+6hNeLBsElBR/uSqBmmbDpt26CQ3n6hEuw3K6AkPoDlmH22AEv
	Ga7YDZerCwhWFp65DX2moKJ8SB3nLVJ1GnE6ihW3YMpkwcYJ2oK/0Vpxrb8uKaMikaJ6
	0HSg==
X-Gm-Message-State: ALoCoQl9F9Du+T64tmihr8PzdHChAazQyA1J0yMzNGRLEBTApALmtr9KiU58cufXS59+jX2Uu+N4
X-Received: by 10.236.61.45 with SMTP id v33mr69209632yhc.20.1395706282426;
	Mon, 24 Mar 2014 17:11:22 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158]) by mx.google.com with ESMTPSA id
	u21sm25797984yhb.24.2014.03.24.17.11.21 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 24 Mar 2014 17:11:21 -0700 (PDT)
Message-ID: <5330C9A8.904@linaro.org>
Date: Mon, 24 Mar 2014 20:11:20 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>,
	yocto <yocto@yoctoproject.org>
References: <1395676843.24890.7.camel@ted>
In-Reply-To: <1395676843.24890.7.camel@ted>
Subject: --conf Was: [OE-core] Features in Yocto Project 1.7
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
X-List-Received-Date: Tue, 25 Mar 2014 00:11:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/24/14 12:00, Richard Purdie wrote:
> I think from my perspective, in 1.7 I'd like to see us looking at
> "Developer Workflow".

Maybe I'm using things incorrectly :-)

But I often find that I'm switching between building different images.
For example, one moment I might be building core-image-minimal (CIM),
then later I'll want to build a GUI image with Wayland.

Switching between CIM and the GUI image requires changes to both
conf/local.conf and conf/bblayers.conf. I will either have two separate
sets of files and symlink between them, or I'll need to edit them by
hand to comment/uncomment out various blocks. I often get this wrong and
will need to restart a couple times before the build can hope to
complete successfully.

If I could wish for one workflow change, it would be the ability to
switch between various build configurations with the minimum of fuss:
- maybe the layer information could be contained within the
configuration file, then on the bitbake cmdline I could just say
"bitbake --conf wayland" or "bitbake --conf mycim" and it would know to
find and use conf/wayland.conf or conf/mycim.conf?
- maybe the local.conf could be renamed wayland.conf and the
bblayers.conf could be renamed wayland.bblayers then I could type
"bitbake --conf wayland" and it would know to look for wayland.conf and
wayland.bblayers?

Does this sort of workflow make sense to others? Or have people noticed
this and solved it in some clever way?

