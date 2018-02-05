Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3519CE00E51; Mon,  5 Feb 2018 12:07:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B037E00CF1
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 12:07:12 -0800 (PST)
Received: by mail-pg0-f49.google.com with SMTP id m28so2995494pgc.9
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 12:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=eLN09EUHAGPhC+PlTlmNoYz9anClRNExeDR+s20fcjQ=;
	b=nuxi51ARvLTtR4KajeQsyX9Dd6nNF2Q1pJaF4pSC6a8AvO20qJn7Rb684hSeFlBgU7
	yjWM/BsPnsg/1ZZfEYIrPkKF6RiIYEn6jtP6WNvZ7Thb/7uRtlVzENO7lPA92uzsQjoy
	Eta5gnsTC9gram+T4J151LUJD5z4M/YM4D9HL3VOUpPVZOUS8Y8bZjSUaJ/dDe7lf1E5
	j8pm7uUbtUEuc4rWZIYI3QrZOAOgMG/2pEmDs2BtrLIkyNHm43DXwb9saWcKU/vegqlj
	LOm4DdFSIy8k+0+J8gkcWUgmDunWMQXvLO1yR07pr8FIIjZYu/RR/slq2zOYMhOINopI
	zdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=eLN09EUHAGPhC+PlTlmNoYz9anClRNExeDR+s20fcjQ=;
	b=uWtlqhbr3xR86SY+KlBl5BVe0RNXJFRb1y5dgqaXh0NxWNMNEwPknxvMCh/dfJzE5V
	/NypmGWh3VvIDl6QMLhKFAXPbKzSVDRtkSmV+w2XxGdjHvJSBxRaU74psslbo6nPHz1V
	46wtPeldipf0mCyVpa29f1hPxR6MT8v4nfe0qY6JpoE49Us1fvSKGAzWC6aFB0NEIPWI
	rg4g8Uy5zSP+3HmuZne9e2WQiJ4Xwo7948NfPEsyv8+y35Vzth2u8FxBW9wlDH2UJz7+
	UW/C+/5YBjMcZXTY5MuLIPhxJLvZwSUrZP3639JbBGbJ9AYJs01qs0nLA+/kZk7IpJQB
	WGOg==
X-Gm-Message-State: APf1xPDxldUuxmJQKLQml8YM0WPKZxr3pmcHbzSGoqAQXOsFDqpaBUzp
	G/o/fESP3INAwqOiC0iVl6PIA76x
X-Google-Smtp-Source: AH8x2274zrVa7RTfBnRZGzAWito9Kt/S6up8kWeXC220k2I6wlJB6MVS+teKBU6YD3xfSPUmUj2f7w==
X-Received: by 10.101.101.84 with SMTP id a20mr4341755pgw.163.1517861232053;
	Mon, 05 Feb 2018 12:07:12 -0800 (PST)
Received: from ?IPv6:2601:647:4c00:6cf9:8c68:858d:e4d9:273b?
	([2601:647:4c00:6cf9:8c68:858d:e4d9:273b])
	by smtp.gmail.com with ESMTPSA id
	c29sm17843483pfd.172.2018.02.05.12.07.10 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Feb 2018 12:07:11 -0800 (PST)
To: yocto@yoctoproject.org
References: <ee89ad67e5a34d4986cdcf3f708199f5@ERDCSEXCH01.SMITHSSII.NET>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <ec1d089c-4606-00b5-4ab2-f5b84e1b1838@gmail.com>
Date: Mon, 5 Feb 2018 12:07:09 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <ee89ad67e5a34d4986cdcf3f708199f5@ERDCSEXCH01.SMITHSSII.NET>
Subject: Re: changing the apache2 conf (meta-webserver)
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
X-List-Received-Date: Mon, 05 Feb 2018 20:07:15 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/5/18 11:45 AM, Bishop, Mark (STRT) wrote:
> Let me start with that I'm new to Yocto.
> 
>  
> 
> I've been able to get apache2 onto my zynq board but I need to change
> the config.  I'm using a read-only rootfs and apache won't start because
> it wants to write to a log file.  I know what I need to change in the
> apache config but I have no idea how to do that in Yocto.  Could anyone
> walk me through it and if I am in the wrong spot, my apologies.

you might need to provide some r/w storage here it seems. Either you can
symlink back /tmp to /var/log ( a hack ) or provide a  proper storage
thats persistent and mount it on /var/log or whereever it is expecting
to write.

